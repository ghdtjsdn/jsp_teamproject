package edu.global.shop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.shop.dao.MemberDao;
import edu.global.shop.dto.MemberDto;

public class MemberModifyCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("MemberModifyCommand entry....");
		
		String custno = request.getParameter("custno");
		String custname = request.getParameter("custname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		
		MemberDao memberDao = new MemberDao();
		
		memberDao.modify(custno,custname, phone, address, grade, city);
	}
		
}
