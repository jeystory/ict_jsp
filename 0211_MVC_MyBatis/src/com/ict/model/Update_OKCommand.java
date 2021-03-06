package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.mybatis.DAO;
import com.ict.mybatis.VO;

public class Update_OKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터값 받기
		VO vo = new VO();

		vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setEmail(request.getParameter("email"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setContent(request.getParameter("content"));
		vo.setIdx(request.getParameter("idx"));

		int result = DAO.getUpdate(vo);
		request.setAttribute("result", result);

		return "view/update_ok.jsp";
	}

}
