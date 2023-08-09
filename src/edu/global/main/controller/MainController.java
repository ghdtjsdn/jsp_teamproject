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

		req.setCharacterEncoding("UTF-8");

		String viewPage = null;
		GolfCommand command = null;

		String uri = req.getRequestURI();
		String subPath = "";
		String forwardPrefix = "/jsp";
		String contextPath = req.getContextPath() + subPath;
		String com = uri.substring(contextPath.length());
		System.out.println(com);
		System.out.println(contextPath);
		System.out.println(uri);
		if ("/index.do".equals(com)) {
			viewPage = "/index.jsp";
		} else {
			viewPage = "/index.do";
		}
		
		System.out.println(viewPage.split("\\.")[1]);
		if("do".equals(viewPage.split("\\.")[1])) {
			String redirectPage = contextPath + viewPage;
			resp.sendRedirect(redirectPage);
		} else {
			String forwardPage = forwardPrefix + viewPage;
			RequestDispatcher dispatcher = req.getRequestDispatcher(forwardPage);
			dispatcher.forward(req, resp);
		}
	}
}
