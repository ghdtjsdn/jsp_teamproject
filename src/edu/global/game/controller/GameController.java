package edu.global.game.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.command.GolfIndexCommand;
import edu.global.golf.command.GolfMemberListCommand;
import edu.global.golf.command.GolfRegistCommand;
import edu.global.golf.command.GolfSalesResultCommand;
import edu.global.golf.command.GolfTeacherListCommand;

@WebServlet("/game/*")
public class GameController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	public void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		
		String uri = request.getRequestURI();
		String subPath = "/game";
		String forwardPrefix = "/jsp"+subPath;
		String contextPath = request.getContextPath();
		String com = uri.substring((contextPath+subPath).length());
		
		
		if("/index.do".equals(com)) {
			viewPage = "/index.jsp";

		} else if("/rsp.do".equals(com)) {
			viewPage = "/rsp.jsp";
			
		} else if("/lotto.do".equals(com)) {
			viewPage = "/lotto.jsp";
		} else {
			viewPage = "redirect:index.do";
		}
		
		if(viewPage.startsWith("redirect:")) {
			String redirectPage = contextPath + subPath + "/" + viewPage.substring("redirect:".length());
			if(viewPage.startsWith("redirect:/")) {
				redirectPage = contextPath + viewPage.substring("redirect:".length());
			}
			response.sendRedirect(redirectPage);
		} else {
			String forwardPage = forwardPrefix + viewPage;
			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPage);
			dispatcher.forward(request, response);
		}
		
	}
}
