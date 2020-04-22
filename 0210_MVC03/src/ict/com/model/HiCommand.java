package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HiCommand implements Command  {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//request 저장
		request.setAttribute("title", "hi");
		request.setAttribute("name", "둘리");
		request.setAttribute("age", "24");
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}
}
