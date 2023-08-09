package edu.global.golf.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.dao.GolfMemberDAO;
import edu.global.golf.dto.GolfMemberDTO;

public class GolfRegistCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		GolfMemberDAO dao= new GolfMemberDAO();
		
		String registMonth = req.getParameter("regist-month");
		String cName = req.getParameter("c-name");
		String cNo = req.getParameter("c-no");
		String classArea = req.getParameter("class-area");
		String className = req.getParameter("class-name");
		int tuition = Integer.valueOf( req.getParameter("tuition"));
		String grade = req.getParameter("grade");
		
		GolfMemberDTO member = new GolfMemberDTO(
				registMonth,
				cName,
				cNo,
				classArea,
				className,
				tuition,
				grade
		);
		
		System.out.println(member);
		int result = dao.registClass(member);
		String msg = null;
		if(result > 0) {
			msg = "수강신청이 완료되었습니다.";
		} else {
			msg="오류발생";
		}
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.addHeader("msg", msg);
	}

}
