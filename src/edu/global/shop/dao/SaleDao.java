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
import edu.global.shop.dto.SaleDto;

public class SaleDao {
	private DataSource datasource = null;

	public SaleDao() {
		try {
			Context context = new InitialContext();
			datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	

	public List<SaleDto> salelist() {
		ArrayList<SaleDto> sales = new ArrayList<SaleDto>();

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String query = "select m1.custno as custno, custname, grade, sum(price) as price " + 
					"from MEMBER_TBL_02 m1 inner join money_tbl_02 m2 " + 
					"on m1.custno=m2.custno " + 
					"group by m1.custno, m1.custname, m1.grade order by price desc";

			con = datasource.getConnection();
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();

			while (rs.next()) {

				int custno = rs.getInt("custno");
				String custname = rs.getString("custname");
				String grade = rs.getString("grade");
				int price = rs.getInt("price");

				SaleDto sale = new SaleDto(custno, custname, grade, price);

				sales.add(sale);
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

		return sales;
	}

	
	
	
	
	

}
