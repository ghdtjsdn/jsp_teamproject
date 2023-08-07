package edu.global.golf.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.command.GolfCommand;
import edu.global.golf.command.GolfIndexCommand;
import edu.global.golf.command.GolfMemberListCommand;
import edu.global.golf.command.GolfRegistCommand;
import edu.global.golf.command.GolfSalesResultCommand;
import edu.global.golf.command.GolfTeacherListCommand;

@WebServlet(urlPatterns={"/golf/*"})
public class GolfController extends HttpServlet{

	public GolfController() {}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		actionDo(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		actionDo(req, resp);
	}
	
	public void actionDo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		GolfCommand command = null;
		
		String uri = req.getRequestURI();
		String subPath = "/golf";
		String contextPath = req.getContextPath() + subPath;
		String com = uri.substring(contextPath.length());
		
		System.out.println(uri);
		System.out.println(contextPath);
		System.out.println(com);
		
		if("/index.do".equals(com)) {
			command = new GolfIndexCommand();
			command.execute(req, resp);
			
			viewPage = "/index.jsp";
		} else if("/teacher-list.do".equals(com)) {
			command = new GolfTeacherListCommand();
			command.execute(req, resp);
			
			viewPage = "/teacher-list.jsp";
		} else if("/regist-page.do".equals(com)) {
			command = new GolfMemberListCommand();
			command.execute(req, resp);
			
			viewPage = "/regist-page.jsp";
		} else if("/regist.do".equals(com)) {
			command = new GolfRegistCommand();
			command.execute(req, resp);
			
			viewPage = "redirect:/index.do";
		} else if("/member-list.do".equals(com)){
			command = new GolfMemberListCommand();
			command.execute(req, resp);
			
			viewPage = "/member-list.jsp";
		} else if("/sales-result.do".equals(com)){
			command = new GolfSalesResultCommand();
			command.execute(req, resp);
			
			viewPage ="/sales-result.jsp";
		} else {
			viewPage = "redirect:/index.do";
		}
		
		if("redirect:".equals(viewPage.substring(0,9))) {
			String redirectPage = contextPath+viewPage.substring(9);
			resp.sendRedirect(redirectPage);
		} else {
			String forwardPage = "/jsp/golf"+viewPage;
			RequestDispatcher dispatcher = req.getRequestDispatcher(forwardPage);
			dispatcher.forward(req, resp);
		}
		
	}
	
	
}
