package edu.global.shop.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.shop.command.MemberCommand;
import edu.global.shop.command.MemberContentCommand;
import edu.global.shop.command.MemberListCommand;
import edu.global.shop.command.MemberModifyCommand;
import edu.global.shop.command.MemberSaleCommand;
import edu.global.shop.command.MemberWriteCommand;
import edu.global.shop.dao.MemberDao;
import edu.global.shop.dto.MemberDto;

@WebServlet("/shop/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// doGet메소드를 탈 시에 console에 기록하기 위해 넣었다.(디버깅위해)
		System.out.println("doGet() ..");
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// doPost메소드를 탈 시에 console에 기록하기 위해 넣었다.(디버깅위해)
		System.out.println("doPost() ..");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("actionDo() ..");
		request.setCharacterEncoding("UTF-8");

		String viewPage = null;
		MemberCommand command = null;

		String uri = request.getRequestURI();
		String subPath = "/shop";
		String forwardPrefix = "/jsp/shop";
		String contextPath = request.getContextPath() + subPath;
		String com = uri.substring(contextPath.length());

		System.out.println(uri);
		System.out.println(contextPath);
		System.out.println(com);

		if(com.equals("/index.do")){
			viewPage = "/index.jsp";
		} else if (com.equals("/memberForm.do")) {
			command = new MemberListCommand();
			command.execute(request, response);
			viewPage = "/memberForm.jsp";
		} else if (com.equals("/content_view.do")) {
			command = new MemberContentCommand();
			command.execute(request, response);
			viewPage = "/content_view.jsp";
		} else if (com.equals("/joinForm.do")) {
			viewPage = "/joinForm.jsp";
		} else if (com.equals("/joinProcess.do")) {
			command = new MemberWriteCommand();
			command.execute(request, response);
			viewPage = "redirect:/memberForm.do";
		} else if (com.equals("/modForm.do")) {
			command = new MemberModifyCommand();
			command.execute(request, response);
			viewPage = "redirect:/memberForm.do";
		} else if (com.equals("/SaleForm.do")) {
			command = new MemberSaleCommand();
			command.execute(request, response);
			viewPage = "/SaleForm.jsp";
		} else {
			viewPage = "redirect:/index.do";
		}
		
		if(viewPage.startsWith("redirect:")) {
			String redirectPage = contextPath + viewPage.substring("redirect:".length());
			response.sendRedirect(redirectPage);
		} else {
			String forwardPage = forwardPrefix + viewPage;
			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPage);
			dispatcher.forward(request, response);
		}
		
	}

}
