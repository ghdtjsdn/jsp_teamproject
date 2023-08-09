package edu.global.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.global.shop.dto.MemberDto;

public class MemberDao {
	private DataSource datasource = null;

	public MemberDao() {
		try {
			Context context = new InitialContext();
			datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public MemberDto contentView(String custno) {

		MemberDto dto = null;

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String query = "select * from member_tbl_02 where custno = ?";

			con = datasource.getConnection();
			stmt = con.prepareStatement(query);

			stmt.setInt(1, Integer.valueOf(custno));
			rs = stmt.executeQuery();

			while (rs.next()) {

				int cust = rs.getInt("custno");
				String custname = rs.getString("custname");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				Timestamp joindate = rs.getTimestamp("joindate");
				String grade = rs.getString("grade");
				String city = rs.getString("city");

				dto = new MemberDto(cust, custname, phone, address, joindate, grade, city);

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

		return dto;

	}

	public List<MemberDto> list() {
		ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String query = "select *from member_tbl_02 order by custno asc";

			con = datasource.getConnection();
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();

			while (rs.next()) {

				int custno = rs.getInt("custno");
				String custname = rs.getString("custname");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				Timestamp joindate = rs.getTimestamp("joindate");
				String grade = rs.getString("grade");
				String city = rs.getString("city");

				MemberDto dto = new MemberDto(custno, custname, phone, address, joindate, grade, city);

				dtos.add(dto);
			}

		} catch (Exception e) {
			// TODO: handle exception
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

		return dtos;
	}

	public void write(String custname, String phone, String address, String grade,
			String city) {

		System.out.println("write()...");
		Connection con = null;
		PreparedStatement stmt = null;

		try {
			String query = "insert into member_tbl_02" + "(custno,custname,phone,address,grade,city)"
					+ "values (seq_no.nextval,?,?,?,?,?)";

			con = datasource.getConnection();
			stmt = con.prepareStatement(query);
			
			stmt.setString(1, custname);
			stmt.setString(2, phone);
			stmt.setString(3, address);
			stmt.setString(4, grade);
			stmt.setString(5, city);

			int rn = stmt.executeUpdate();
			System.out.println("write 한 갯수" + rn);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}
	
	public void modify(String custno,String custname, String phone, String address, String grade,
			String city) {

		System.out.println("modify()...");
		Connection con = null;
		PreparedStatement stmt = null;

		try {
			String query = "update member_tbl_02" + " set custname=?, phone=?, address=?, grade=?, city=? where custno=?";

			con = datasource.getConnection();
			stmt = con.prepareStatement(query);
			
			stmt.setString(1, custname);
			stmt.setString(2, phone);
			stmt.setString(3, address);
			stmt.setString(4, grade);
			stmt.setString(5, city);
			stmt.setInt(6, Integer.valueOf(custno));

			int rn = stmt.executeUpdate();
			System.out.println("modify 한 갯수" + rn);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}
	
	

}
