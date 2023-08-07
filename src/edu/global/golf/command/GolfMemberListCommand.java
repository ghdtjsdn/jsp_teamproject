package edu.global.golf.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.dao.GolfMemberDAO;
import edu.global.golf.dto.GolfMemberDTO;

public class GolfMemberListCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		GolfMemberDAO memberDAO = new GolfMemberDAO();
		
		List<GolfMemberDTO> memberList = memberDAO.getMemberList();
		
		req.setAttribute("memberList", memberList);
	}

}
