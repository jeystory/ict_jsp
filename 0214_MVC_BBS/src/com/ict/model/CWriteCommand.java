package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.C_VO;
import com.ict.db.DAO;

public class CWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String cPage = request.getParameter("cPage");
		C_VO cvo= new C_VO();
		cvo.setWriter(request.getParameter("writer"));
		cvo.setContent(request.getParameter("content"));
		cvo.setPwd(request.getParameter("pwd"));
		cvo.setB_idx(request.getParameter("b_idx"));
		
		int result = DAO.getC_Insert(cvo);
		
		return "/MyController?cmd=onelist&b_idx="+cvo.getB_idx()+"&cPage="+cPage;
	}

}
