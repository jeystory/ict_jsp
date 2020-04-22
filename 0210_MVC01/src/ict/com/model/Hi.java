package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hi {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 일처리가 끝나면  jsp로 보낼 정보를  request나 session에 저장
		String title = "Hi";	
		String name = "둘리";
		int age = 24;
		
		//request 저장
		request.setAttribute("title", title);
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}
}
