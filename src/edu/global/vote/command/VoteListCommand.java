package edu.global.vote.command;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.vote.dao.VoteDao;
import edu.global.vote.dto.VoteDto;

public class VoteListCommand implements VoteCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		VoteDao voteDao = new VoteDao();
		List<VoteDto> voteList = voteDao.VoteList();
		request.setAttribute("list", voteList);
	}
}