package edu.global.golf.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface GolfCommand {
	public void execute(HttpServletRequest req, HttpServletResponse resp);
}
