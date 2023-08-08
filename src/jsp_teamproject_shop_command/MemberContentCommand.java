package jsp_teamproject_shop_command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_teamproject_shop_dao.MemberDao;
import jsp_teamproject_shop_dto.MemberDto;

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
