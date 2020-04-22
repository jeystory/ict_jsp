package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyModel {
	public String exec01(HttpServletRequest request, HttpServletResponse response) {
		
		//request 저장
		request.setAttribute("title", "hi");
		request.setAttribute("name", "둘리");
		request.setAttribute("age", "24");
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}
	
	public String exec02(HttpServletRequest request, HttpServletResponse response) {
		
		//session에 저장
		request.getSession().setAttribute("title", "hello");
		request.getSession().setAttribute("name", "태권브이");
		request.getSession().setAttribute("age", "34");
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}

	public String exec03(HttpServletRequest request, HttpServletResponse response) {
		//request 저장
		request.setAttribute("title", "bye");
		request.setAttribute("name", "ICT");
		request.setAttribute("age", "20");
		
		//session에 저장
		request.getSession().setAttribute("name", "대한민국");
		request.getSession().setAttribute("age", "127");
	
		//  반환형은 결과를 표시할  페이지를 알려줌
		return "view/result.jsp";
	}
	
	public String exec04(HttpServletRequest request, HttpServletResponse response) {
		//파라미터 값을 수신해서 나눠 처리할 수 있다.
		
		String cmd = request.getParameter("cmd");
	
		String path="";
		switch(cmd) {
		case "1": 
			//request 저장
			request.setAttribute("title", "hi");
			request.setAttribute("name", "둘리");
			request.setAttribute("age", "24"); 
			break;
		case "2": 
			//session에 저장
			request.getSession().setAttribute("title", "hello");
			request.getSession().setAttribute("name", "태권브이");
			request.getSession().setAttribute("age", "34");
			break;
		case "3":
			//request 저장
			request.setAttribute("title", "bye");
			request.setAttribute("name", "ICT");
			request.setAttribute("age", "20");
			
			//session에 저장
			request.getSession().setAttribute("name", "대한민국");
			request.getSession().setAttribute("age", "127");
			break;
		}
		
		return "view/result.jsp";
	}
}
