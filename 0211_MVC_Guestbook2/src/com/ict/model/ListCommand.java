package com.ict.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.jdbc.DAO;
import com.ict.jdbc.VO;

public class ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<VO> list = DAO.getInstance().getList();
		request.setAttribute("list", list);
		return "view/list.jsp";
	}

}
