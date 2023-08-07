package edu.global.golf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.global.golf.dto.GolfSalesDTO;

public class GolfSalesDAO {
	private DataSource dataSource = null;
	
	public GolfSalesDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<GolfSalesDTO> getSalesResults() {
		List<GolfSalesDTO> salesResults = new ArrayList<>();
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select t.teacher_code as teacher_code, t.class_name as class_name,"
				+ " t.teacher_name as teacher_name, sum(c.tuition) as sale"
				+ " from tbl_golf_class c, tbl_golf_teacher t"
				+ " where t.teacher_code = c.teacher_code"
				+ " group by t.teacher_code, t.class_name, t.teacher_name"
				+ " order by teacher_code";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				GolfSalesDTO sales = new GolfSalesDTO();
				
				sales.setTeacher_code(rs.getString("teacher_code"));
				sales.setClass_name(rs.getString("class_name"));
				sales.setTeacher_name(rs.getString("teacher_name"));
				sales.setSale(rs.getInt("sale"));
				
				salesResults.add(sales);
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
		return salesResults;
	}
		
}
