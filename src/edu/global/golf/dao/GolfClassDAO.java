package edu.global.golf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.global.golf.dto.GolfClassDTO;

public class GolfClassDAO {
	private DataSource dataSource =null;

	public GolfClassDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<GolfClassDTO> getClassList(){
		List<GolfClassDTO> classList = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from TBL_GOLF_CLASS";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				GolfClassDTO classes = new GolfClassDTO();
				
				classes.setTeacher_code(rs.getString("regist_month"));
				classes.setC_no(rs.getString("c_no"));
				classes.setClass_area(rs.getString("class_area"));
				classes.setTuition(rs.getInt("tuition"));
				classes.setTeacher_code(rs.getString("teacher_code"));
				
				classList.add(classes);

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
		return classList;
	}
	
	
}
