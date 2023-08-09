package edu.global.shop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.shop.dao.MemberDao;
import edu.global.shop.dto.MemberDto;

public class MemberContentCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("MContentCommand entry....");
		
		String custno = request.getParameter("custno");
		
		MemberDao memberDao = new MemberDao();
		MemberDto dtos = memberDao.contentView(custno);
		
		request.setAttribute("content_view", dtos);
	}
		
}
