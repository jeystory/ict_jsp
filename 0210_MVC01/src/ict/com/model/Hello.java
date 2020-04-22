package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 일처리가 끝나면  jsp로 보낼 정보를  request나 session에 저장
		String title = "Hello";	
		String name = "태권브이";
		int age = 38;
		
		//session에 저장
		request.getSession().setAttribute("title", title);
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("age", age);
		
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}
}
