package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloCommand implements Command  {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//session에 저장
		request.getSession().setAttribute("title", "hello");
		request.getSession().setAttribute("name", "태권브이");
		request.getSession().setAttribute("age", "34");
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}
}
