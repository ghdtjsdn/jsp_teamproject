package edu.global.vote.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface VoteCommand {
   void execute(HttpServletRequest request, HttpServletResponse response);
}