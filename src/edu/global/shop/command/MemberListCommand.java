package edu.global.shop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.shop.dao.MemberDao;
import edu.global.shop.dto.MemberDto;

public class MemberListCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = new MemberDao();
		List<MemberDto> dtos = dao.list();
		
		request.setAttribute("list", dtos);
	}
		
}
