package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.jdbc.DAO;
import com.ict.jdbc.VO;

public class OneListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		 String idx = request.getParameter("idx");
		 VO vo = DAO.getInstance().getOneList(idx);
		    
		   // 수정과 삭제를 위해서 session에 저장
		    request.getSession().setAttribute("vo", vo);
		
			return "view/onelist.jsp";
	}

}
