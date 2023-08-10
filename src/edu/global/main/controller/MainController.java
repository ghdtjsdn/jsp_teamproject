package edu.global.main.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.command.GolfCommand;

@WebServlet("*.do")
public class MainController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(req, resp);
	}

	public void actionDo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String viewPage = null;
		
		String uri = req.getRequestURI();
		String subPath = "";
		String forwardPrefix = "/jsp"+subPath;
		String contextPath = req.getContextPath();
		String com = uri.substring((contextPath+subPath).length());
		
		System.out.println(uri);
		System.out.println(contextPath);
		System.out.println(com);
		
		if("/index.do".equals(com)) {
			viewPage = "/index.jsp";

		} else {
			viewPage = "redirect:index.do";
		}
		
		if(viewPage.startsWith("redirect:")) {
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
}
