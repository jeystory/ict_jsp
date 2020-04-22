package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class InsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		
		vo.setIdx(request.getParameter("idx"));
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		vo.setName(request.getParameter("name"));
		vo.setAddr(request.getParameter("addr"));
		vo.setAge(request.getParameter("age"));
		
		int result = DAO.getInsert(vo);
		return String.valueOf(result);
	}
	

}
