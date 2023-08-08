package edu.global.golf.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.dao.GolfTeacherDAO;
import edu.global.golf.dto.GolfTeacherDTO;

public class GolfTeacherListCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		GolfTeacherDAO teacherDAO = new GolfTeacherDAO();
		
		List<GolfTeacherDTO> teacherList = teacherDAO.getTeacherList();
		
		req.setAttribute("teacherList", teacherList);
	}

}
