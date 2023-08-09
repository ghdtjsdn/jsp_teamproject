package edu.global.vote.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.vote.dao.VoteDao;


public class VoteMemberCommand implements VoteCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		VoteDao voteDao = new VoteDao();
		int result = voteDao.insertVote(request, response);
		request.setAttribute("voteMember", result);	
	}
}