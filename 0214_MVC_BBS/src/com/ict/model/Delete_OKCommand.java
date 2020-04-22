package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.B_VO;
import com.ict.db.DAO;

public class Delete_OKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String cPage = request.getParameter("cPage");
		B_VO b_vo = (B_VO)request.getSession().getAttribute("b_vo");
	    String b_idx = b_vo.getB_idx();
	    
	    // 먼저 원글에 관련된 댓글 먼저 삭제 
	 	DAO.getC_AllDelete(b_idx);
	    
	    // 원글 삭제
	 	int result = DAO.getDelete(b_idx); 
	    
	    request.setAttribute("result", result);
	
	    return "/MyController?cmd=list&cPage="+cPage;
	}

}
