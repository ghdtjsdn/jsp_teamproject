package jsp_teamproject_shop_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_teamproject_shop_command.MemberCommand;
import jsp_teamproject_shop_command.MemberContentCommand;
import jsp_teamproject_shop_command.MemberListCommand;
import jsp_teamproject_shop_command.MemberModifyCommand;
import jsp_teamproject_shop_command.MemberSaleCommand;
import jsp_teamproject_shop_command.MemberWriteCommand;
import jsp_teamproject_shop_dao.MemberDao;
import jsp_teamproject_shop_dto.MemberDto;

@WebServlet("*.do")
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
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
	      System.out.println("actionDo() ..");
	      request.setCharacterEncoding("UTF-8");
	      
	      String viewPage = null;
	      MemberCommand command = null;
	      
	      String uri = request.getRequestURI();
	      String conPath = request.getContextPath();
	      String com = uri.substring(conPath.length());
	      
	      if(com.equals("/memberForm.do")) {
	    	  command = new MemberListCommand();
	    	  command.execute(request, response);
	    	  viewPage = "memberForm.jsp";
	      }else if(com.equals("/content_view.do")) {
	    	  command = new MemberContentCommand();
	    	  command.execute(request, response);
	    	  viewPage = "content_view.jsp";
	      }else if(com.equals("/joinForm.do")) {
	    	  viewPage = "joinForm.jsp";
	      }else if(com.equals("/joinProcess.do")) {
	    	  command = new MemberWriteCommand();
	    	  command.execute(request, response);
	    	  viewPage = "memberForm.do";
	      }else if(com.equals("/modForm.do")) {
	    	  command = new MemberModifyCommand();
	    	  command.execute(request, response);
	    	  viewPage = "memberForm.do";
	      }else if(com.equals("/SaleForm.do")) {
	    	  command = new MemberSaleCommand();
	    	  command.execute(request, response);
	    	  viewPage = "SaleForm.jsp";
	      }
	      
	      
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	      
	   }

}
