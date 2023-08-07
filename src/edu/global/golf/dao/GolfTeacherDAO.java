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
import edu.global.golf.dto.GolfTeacherDTO;

public class GolfTeacherDAO {
	private DataSource dataSource = null;
	
	public GolfTeacherDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<GolfTeacherDTO> getTeacherList(){
		List<GolfTeacherDTO> teacherList = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from TBL_GOLF_TEACHER";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				GolfTeacherDTO teacher = new GolfTeacherDTO();
				
				teacher.setTeacher_code(rs.getString("teacher_code"));
				teacher.setTeacher_name(rs.getString("teacher_name"));
				teacher.setClass_name(rs.getString("class_name"));
				teacher.setClass_price(rs.getInt("class_price"));
				teacher.setTeacher_regist_date(rs.getString("teacher_regist_date"));
				
				teacherList.add(teacher);

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
		
		return teacherList; 
	}
	
}
