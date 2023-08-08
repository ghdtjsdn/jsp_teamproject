package edu.global.golf.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.golf.dao.GolfSalesDAO;
import edu.global.golf.dto.GolfSalesDTO;

public class GolfSalesResultCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		GolfSalesDAO salesDAO = new GolfSalesDAO();
		
		List<GolfSalesDTO> salesResults = salesDAO.getSalesResults();
		
		req.setAttribute("salesResults", salesResults);
	}

}
