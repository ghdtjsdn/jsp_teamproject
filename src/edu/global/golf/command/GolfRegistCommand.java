package edu.global.golf.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.dao.GolfMemberDAO;
import edu.global.golf.dao.GolfTeacherDAO;
import edu.global.golf.dto.GolfMemberDTO;
import edu.global.golf.dto.GolfTeacherDTO;

public class GolfRegistCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		GolfTeacherDAO teacherDAO = new GolfTeacherDAO();
		GolfMemberDAO memberDAO = new GolfMemberDAO();
		
		List<GolfMemberDTO> memberList = memberDAO.getMemberList();
		List<GolfTeacherDTO> teacherList = teacherDAO.getTeacherList();
		
		
		req.setAttribute("memberList", memberList);
		req.setAttribute("teacherList", teacherList);
	}

}
