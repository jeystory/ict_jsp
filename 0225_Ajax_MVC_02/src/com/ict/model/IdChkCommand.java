package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class IdChkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		List<VO> list = DAO.getIdChk(id);
		
		String msg = null;
		// 사이즈가 0보다 크면 같은 id가 존재하는 뜻
		if(list.size() > 0) {
			msg = "사용 불가";
		}else {
			msg = "사용 가능";
		}
		return msg;
	}
}
