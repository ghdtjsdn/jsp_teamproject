package edu.global.vote.command;

import java.util.List; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.vote.dto.ResultDto;
import edu.global.vote.dao.VoteDao;


public class VoteResultCommand implements VoteCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		VoteDao resultDao = new VoteDao();
		List<ResultDto> resultList = resultDao.VoteResult();
		request.setAttribute("list", resultList);
	}
}