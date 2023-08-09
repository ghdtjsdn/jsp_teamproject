package edu.global.golf.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.dao.GolfClassDAO;
import edu.global.golf.dao.GolfMemberDAO;
import edu.global.golf.dao.GolfTeacherDAO;

public class GolfRegistPageCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		GolfTeacherDAO teacherDAO = new GolfTeacherDAO();
		GolfMemberDAO memberDAO = new GolfMemberDAO();
		GolfClassDAO classDAO = new GolfClassDAO();
		
		
		req.setAttribute("memberList", memberDAO.getMemberList());
		req.setAttribute("teacherList", teacherDAO.getTeacherList());
		req.setAttribute("classList", classDAO.getClassList());
	}

}
