package edu.global.golf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.global.golf.dto.GolfMemberDTO;

public class GolfMemberDAO {
	private DataSource dataSource = null;
	
	public GolfMemberDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<GolfMemberDTO> getMemberList(){
		List<GolfMemberDTO> memberList = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select c.regist_month as regist_month, c.c_no as c_no, m.c_name as c_name,"
				+ " t.class_name as class_name, c.class_area as class_area,"
				+ " c.tuition as tuition, m.grade as grade"
				+ " from tbl_golf_class c, tbl_golf_teacher t, tbl_golf_member m"
				+ " where c.teacher_code = t.teacher_code and c.c_no = m.c_no";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				GolfMemberDTO member = new GolfMemberDTO();
				
				member.setRegist_month(rs.getString("regist_month"));
				member.setC_no(rs.getString("c_no"));
				member.setC_name(rs.getString("c_name"));
				member.setClass_name(rs.getString("class_name"));
				member.setClass_area(rs.getString("class_area"));
				member.setTuition(rs.getInt("tuition"));
				member.setGrade(rs.getString("grade"));
				
				memberList.add(member);
			}
		} catch (Exception e) {
			
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		return memberList; 
	}

	public int registClass(GolfMemberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into tablename (regist_month, c_name, c_no, class_area, class_name,"
				+ " tuition, grade) values(?, ?, ?, ?, ?, ?, ?, ?)";
		int result =0;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
	
			pstmt.setString(1, member.getRegist_month());
			pstmt.setString(2, member.getC_name());
			pstmt.setString(3, member.getC_no());
			pstmt.setString(4, member.getClass_area());
			pstmt.setString(5, member.getClass_name());
			pstmt.setInt(6, member.getTuition());
			pstmt.setString(7, member.getGrade());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		return result; 
	}
	
}
