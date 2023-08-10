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
import edu.global.golf.command.GolfRegistPageCommand;
import edu.global.golf.command.GolfSalesResultCommand;
import edu.global.golf.command.GolfTeacherListCommand;

@WebServlet("/golf/*")
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
		
		String jsonResponse = null;
		String viewPage = null;
		GolfCommand command = null;
		
		String uri = req.getRequestURI();
		String subPath = "/golf";
		String forwardPrefix = "/jsp"+subPath;
		String contextPath = req.getContextPath();
		String com = uri.substring((contextPath+subPath).length());
		

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
		} else if("/register-page.do".equals(com)) { 
			command = new GolfRegistPageCommand();
			command.execute(req, resp);
			
			viewPage = "/register-page.jsp";
		} else if("/register.do".equals(com)) {
			command = new GolfRegistCommand();
			command.execute(req, resp);

	        viewPage = "redirect:index.do";

	        jsonResponse ="RESTful";
		} else if("/member-list.do".equals(com)){
			command = new GolfMemberListCommand();
			command.execute(req, resp);
			
			viewPage = "/member-list.jsp";
		} else if("/sales-result.do".equals(com)){
			command = new GolfSalesResultCommand();
			command.execute(req, resp);
			
			viewPage ="/sales-result.jsp";
		} else {
			viewPage = "redirect:index.do";
		}
		
		if("RESTful".equals(jsonResponse)) {
			String redirectPage = contextPath + subPath + "/" + viewPage.substring("redirect:".length());
			if(viewPage.startsWith("redirect:/")) {
				redirectPage = contextPath + viewPage.substring("redirect:".length());
			}
			jsonResponse = jsonParse(resp.getHeader("msg"), redirectPage);
			resp.getWriter().write(jsonResponse);
		} else if(viewPage.startsWith("redirect:")) {
			String redirectPage = contextPath + subPath + "/" + viewPage.substring("redirect:".length());
			if(viewPage.startsWith("redirect:/")) {
				redirectPage = contextPath + viewPage.substring("redirect:".length());
			}
			resp.sendRedirect(redirectPage);
		} else {
			String forwardPage = forwardPrefix + viewPage;
			RequestDispatcher dispatcher = req.getRequestDispatcher(forwardPage);
			dispatcher.forward(req, resp);
		}
		
	}
	
	String jsonParse(String msg, String redirectPage) {
		String jsonResponse = "{"
				+ "\"msg\": \""+msg+"\","
				+ "\"redirectPage\": \""+ redirectPage
				+ "\"}";
		return jsonResponse;
	}
	
	class JSONBuilder{
		StringBuilder json;
		
		public JSONBuilder(StringBuilder json) {
			this.json = json;
		}
		
		public StringBuilder add(String str) {
			return json.append(str);
		}
		
		@Override
		public String toString() {
			return json.toString();
		}
		
	}
}
