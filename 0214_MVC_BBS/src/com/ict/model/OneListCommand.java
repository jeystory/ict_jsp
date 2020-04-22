package com.ict.model;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.B_VO;
import com.ict.db.C_VO;
import com.ict.db.DAO;

public class OneListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		 String b_idx = request.getParameter("b_idx");
		 String cPage = request.getParameter("cPage");
		 
		 // hit 증가
		int result = DAO.hitUpdate(b_idx);
		 
		 B_VO b_vo = DAO.getOneList(b_idx);
		    
		 // 댓글 처리
		List<C_VO> c_list = DAO.getc_list(b_idx);
		request.setAttribute("c_list", c_list);
		
		 // 수정과 삭제를 위해서 session에 저장
		 request.getSession().setAttribute("b_vo", b_vo);
		 request.setAttribute("cPage", cPage);		
		 return "view/onelist.jsp";
	}

}
