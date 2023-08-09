package edu.global.shop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.shop.dao.MemberDao;
import edu.global.shop.dto.MemberDto;

public class MemberWriteCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("MemberWriteCommand entry....");
		
		String custname = request.getParameter("custname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		
		MemberDao memberDao = new MemberDao();
		
		memberDao.write(custname, phone, address, grade, city);
	}
		
}
