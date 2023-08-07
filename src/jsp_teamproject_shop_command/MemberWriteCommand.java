package jsp_teamproject_shop_command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_teamproject_shop_dao.MemberDao;
import jsp_teamproject_shop_dto.MemberDto;

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
