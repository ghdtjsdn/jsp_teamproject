package jsp_teamproject_shop_command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_teamproject_shop_dao.MemberDao;
import jsp_teamproject_shop_dao.SaleDao;
import jsp_teamproject_shop_dto.MemberDto;
import jsp_teamproject_shop_dto.SaleDto;

public class MemberSaleCommand implements MemberCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		SaleDao dao = new SaleDao();
		List<SaleDto> sales = dao.salelist();
		
		request.setAttribute("list", sales);
		
	}
		
}
