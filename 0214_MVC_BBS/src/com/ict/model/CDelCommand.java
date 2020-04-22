package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.C_VO;
import com.ict.db.DAO;

public class CDelCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String cPage = request.getParameter("cPage");
		String c_idx = request.getParameter("c_idx");
		String b_idx = request.getParameter("b_idx");
		
		int result = DAO.getC_Delete(c_idx);
		
		return "/MyController?cmd=onelist&b_idx="+b_idx+"&cPage="+cPage;
	}

}
