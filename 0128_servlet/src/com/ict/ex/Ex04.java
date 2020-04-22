package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04
 */
@WebServlet("/hi")
public class Ex04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청에 대한 한글 처리
		request.setCharacterEncoding("UTF-8");
				
		//2. 응답에 대한 한글 처리
		response.setContentType("text/html; charset=UTF-8");
				
		//3. 응답정보를 웹 브라우저에게 출력할 수 있도록 클래스를 호출해서 출력하게 하자
		PrintWriter out = response.getWriter();
		
		// 클라이언트가 서버에게 요청하면서 정보(요청 정보, 파라미터)를 함께 전송 
		// 파라미터는 페이지에서 다른 페이지로 이동할 때도 함께 보내지는 정보를 의미.
		// 파라미터는 무조건 String  또는 String[] 
		//get 방식은 파라미터가 보임 (페이지이름?name=값&name=값&name=값)
		// post 방식은 파라미터가 보이지 않음
		
		// 파라미터값을 처리하는 메소드들(request)
		//1. request.getParameter( ) :  일반적으로 파라미터 받기(String) **
		//2. request.getParameterValues(name); 같은 이름의 파라미터 여러개 (String[]) **
		//3. request.getParameterMap() : 맵형식의 파라미터 받기
		//4. request.getParameterNames() : 열거형의 파라미터 받기

		// 만약에 이름(name), 나이(age)가 파라미터 값으로 넘어왔을때 처리하는 방법
		out.println("<h1>서블릿 파라미터 예제</h1>");
		/*
		 * String name = request.getParameter("name"); String age =
		 * request.getParameter("age");
		 * 
		 * out.println("<h3>"); out.println("<p> 이름 :" + name + "</p>");
		 * out.println("<p> 나이 :" + age + "</p>"); out.println("</h3>");
		 */
		
		// su1 , su2 값을 받아서 더하기 결과를 출력해 보자
		String su1 = request.getParameter("su1");
		String su2 = request.getParameter("su2");
		
		out.println("<h3>");
		out.println("<p> su1 :" + su1 + "</p>");
		out.println("<p> su2 :" +su2 + "</p>");
		
		int result = Integer.parseInt(su1) +  Integer.parseInt(su2);
		
		out.println("<p> result :" +result + "</p>");
		out.println("</h3>");
		
		out.println("<h3>서블릿 파라미터 예제 끝</h3>");
		
		
		
	}

}
