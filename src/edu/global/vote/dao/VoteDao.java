package edu.global.vote.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import edu.global.vote.dto.VoteDto;
import edu.global.vote.dto.ResultDto;
import edu.global.vote.dto.MemberDto;

public class VoteDao {
   private DataSource datasource = null;
    
   public VoteDao() {
      try {
         Context context = new InitialContext();
         datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public List<VoteDto> VoteList() {
      ArrayList<VoteDto> list = new ArrayList<VoteDto>();

      Connection con = null;
      PreparedStatement stmt = null;
      ResultSet rs = null;
      String sql = "SELECT v_name,";
      sql+= " '19'||substr(v_jumin,1,2)||";
      sql+= " '년'||substr(v_jumin,3,2)||";
      sql+= " '월'||substr(v_jumin,5,2)||";
      sql+= " '일생' v_jumin,";
      sql+= " '만 '||(to_number(to_char(sysdate,'yyyy'))";
      sql+= " - to_number('19'||substr(v_jumin,1,2)))||'세' v_age,";
      sql+= " DECODE(substr(v_jumin,7,1),'1','남','여') v_gender, ";		   
      sql+= " m_no, ";
      sql+= " substr(v_time,1,2)||':'||substr(v_time,3,2) v_time, ";
      sql+= " DECODE(v_confirm,'Y','확인','미확인') v_confirm ";
      sql+= " FROM TABLE_VOTE ";
      try {
    	  con = datasource.getConnection();
          stmt = con.prepareStatement(sql);
          rs = stmt.executeQuery();
          
          while(rs.next()) {
        	  VoteDto vote = new VoteDto();
        	  
        	  vote.setV_name(rs.getString("v_name"));
        	  vote.setV_jumin(rs.getString("v_jumin"));
        	  vote.setV_age(rs.getString("v_age"));
        	  vote.setV_gender(rs.getString("v_gender"));
        	  vote.setM_no(rs.getString("m_no"));
        	  vote.setV_time(rs.getString("v_time"));
        	  vote.setV_confirm(rs.getString("v_confirm"));
        	  
        	  list.add(vote);
          }
      } catch (Exception e) {
    	  e.printStackTrace();
      } finally {
    	  try {
    		  if(rs != null)
    		  rs.close();
    		  if(stmt != null)
    		  stmt.close();
    		  if(con != null)
    		  con.close();
    	  }catch(Exception e2) {
    		  e2.printStackTrace();
    	  }
      }
  return list;
}
   
   public List<ResultDto> VoteResult(){
	   ArrayList<ResultDto> list = new ArrayList<>();
	   Connection con = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      try {
	    	  String sql = "SELECT ";
		       sql+= " M.m_no, M.m_name, count(*) AS v_total";
		       sql+= " FROM TABLE_MEMBER M, TABLE_VOTE V";
		       sql+= " WHERE M.m_no = V.m_no AND V.v_confirm = 'Y' ";
		       sql+= " GROUP BY M.m_no, M.m_name";
		       sql+= " ORDER BY v_total DESC";
		con = datasource.getConnection();
		stmt = con.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		while(rs.next()) {
			ResultDto result = new ResultDto();
			
			result.setM_no(rs.getString(1));
			result.setM_name(rs.getString(2));
			result.setV_total(rs.getString(3));
			list.add(result);
		}
	} catch (Exception e) {	
		e.printStackTrace();
	} finally {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (con != null)
				con.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}	
	return list;	      
   }
   
   public List<MemberDto> MemberList(){
	   ArrayList<MemberDto> list = new ArrayList<>();
	      Connection con = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      try {
	    	  String sql =  "select d.m_no AS m_no, d.m_name AS m_name, a.p_name as p_name,"
	                  + " case when substr(d.p_school,1,1) = '1' then '고졸'"
	                  + " when substr(d.p_school,1,1) = '2' then '학사'"
	                  + " when substr(d.p_school,1,1) = '3' then '석사'"
	                  + " end as p_school,"
	                  + " substr(d.m_jumin,1,6)||'-'||substr(d.m_jumin,7,14) AS m_jumin,"
	                  + " d.m_city AS m_city, a.p_tel1||'-'||a.p_tel2"
	                  + "||'-'||a.p_tel3 as p_tel"
	                  + " from TABLE_PARTY a, TABLE_MEMBER d"
	                  + " where a.p_code=d.p_code";

		con = datasource.getConnection();
		stmt = con.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		while(rs.next()) {
			MemberDto member = new MemberDto();
			
			member.setM_no(rs.getString(1));
			member.setM_name(rs.getString(2));
			member.setP_name(rs.getString(3));
			member.setP_school(rs.getString(4));
			member.setM_jumin(rs.getString(5));
			member.setM_city(rs.getString(6));
			member.setP_tel(rs.getString(7));
			list.add(member);
		}
	} catch (Exception e) {	
		e.printStackTrace();
	} finally {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (con != null)
				con.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}	
	return list;	
   }
   
   public int insertVote(HttpServletRequest request, HttpServletResponse response) {
	   Connection con = null;
	   PreparedStatement stmt = null;
	      int result = 0;
	      try {	    	  
	    	    String v_jumin = request.getParameter("v_jumin");
				String v_name = request.getParameter("v_name");
				String m_no = request.getParameter("m_no");
				String v_time = request.getParameter("v_time");
				String v_area = request.getParameter("v_area");
				String v_confirm = request.getParameter("v_confirm");
				
				String sql = "INSERT INTO table_vote VALUES(?,?,?,?,?,?)";
				con = datasource.getConnection();
				stmt = con.prepareStatement(sql);
				stmt.setString(1, v_jumin);
				stmt.setString(2, v_name);
				stmt.setString(3, m_no);
				stmt.setString(4, v_time);
				stmt.setString(5, v_area);
				stmt.setString(6, v_confirm);
				
				result = stmt.executeUpdate(); // 0실패, 1성공
				System.out.println(result);	
				con.close();
				stmt.close();
	      } catch (Exception e) {
	    	  e.printStackTrace();
	      } return result;
   } 
}