package edu.global.vote.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.vote.command.VoteCommand;
import edu.global.vote.command.VoteListCommand;
import edu.global.vote.command.VoteMemberCommand;
import edu.global.vote.command.VoteMemberListCommand;
import edu.global.vote.command.VoteMainCommand;
import edu.global.vote.command.VoteResultCommand;
import edu.global.vote.dao.VoteDao;

@WebServlet("/vote/*")
public class VoteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("requestPro() ..");
		request.setCharacterEncoding("UTF-8");
		String viewPage = null;
		VoteCommand command = null;

		String uri = request.getRequestURI();
		String subPath = "/vote";
		String forwardPrefix = "/jsp"+subPath;
		String conPath = request.getContextPath();
		String com = uri.substring((conPath+subPath).length());

		
		
		System.out.println(uri);
		System.out.println(conPath);
		System.out.println(com);
		
		
		
		if (com.equals("/main.do")) {
			command = new VoteMainCommand();
			command.execute(request, response);
			viewPage = "/index.jsp";

		} else if (com.equals("/memberList.do")) {
			command = new VoteMemberListCommand();
			command.execute(request, response);
			viewPage = "/memberList.jsp";

		} else if (com.equals("/voteMember.do")) {
			viewPage = "/voteMember.jsp";

		} else if (com.equals("/voteList.do")) {
			command = new VoteListCommand();
			command.execute(request, response);
			viewPage = "/voteList.jsp";

		} else if (com.equals("/voteResult.do")) {
			command = new VoteResultCommand();
			command.execute(request, response);
			viewPage = "/voteResult.jsp";

		} else if (com.equals("/vote.do")) {
			command = new VoteMemberCommand();
			command.execute(request, response);
			int result = (int) request.getAttribute("voteMember");
			System.out.println(result);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			if (result == 1) {
				out.println("<script>");
				out.println("alert('투표하기 정보가 정상적으로 등록 되었습니다!'); location.href='" + conPath + "/main.do" + "'; ");
				out.println("</script>");
				out.flush();
			} else {
				out.println("<script>");
				out.println("alert('등록실패!'); location.href='" + conPath + "/main.do" + "'; ");
				out.println("</script>");
				out.flush();
			}
			viewPage = "redirect:main.do";
		} else {
			viewPage = "redirect:main.do";
		}
		System.out.println(viewPage);

		if(viewPage.startsWith("redirect:")) {
			String redirectPage = conPath + subPath + "/" + viewPage.substring("redirect:".length());
			if(viewPage.startsWith("redirect:/")) {
				redirectPage = conPath + viewPage.substring("redirect:".length());
			}
			response.sendRedirect(redirectPage);
		} else {
			String forwardPage = forwardPrefix + viewPage;
			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPage);
			dispatcher.forward(request, response);
		}
		
		
	}
}