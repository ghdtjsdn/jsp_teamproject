package edu.global.vote.command;

import java.util.List; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.vote.dto.MemberDto;
import edu.global.vote.dao.VoteDao;


public class VoteMemberListCommand implements VoteCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		VoteDao memberDao = new VoteDao();
		List<MemberDto> memberList = memberDao.MemberList();
		request.setAttribute("list", memberList);
	}
}