package edu.global.shop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.shop.dao.MemberDao;
import edu.global.shop.dao.SaleDao;
import edu.global.shop.dto.MemberDto;
import edu.global.shop.dto.SaleDto;

public class MemberSaleCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		SaleDao dao = new SaleDao();
		List<SaleDto> sales = dao.salelist();
		
		request.setAttribute("list", sales);
		
	}
		
}
