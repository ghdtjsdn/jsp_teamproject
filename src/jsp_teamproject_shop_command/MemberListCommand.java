package jsp_teamproject_shop_command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_teamproject_shop_dao.MemberDao;
import jsp_teamproject_shop_dto.MemberDto;

public class MemberListCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = new MemberDao();
		List<MemberDto> dtos = dao.list();
		
		request.setAttribute("list", dtos);
	}
		
}
