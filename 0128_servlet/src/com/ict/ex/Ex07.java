package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex07
 */
@WebServlet("/Ex07")
public class Ex07 extends HttpServlet {
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
		
		//파라미터 받기
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		
		out.println("<h2>가입정보 </h2>");
		out.println("<h3><ul>");
		out.println("<li> 이름 :" + name + "</li>");
		out.println("<li> 아이디 :" + id + "</li>");
		out.println("<li> 패스워드 :" + pw + "</li>");
		out.println("<li> 이메일 :" + email + "</li>");
		out.println("<li> 성별 :" + gender+ "</li>");
		out.println("<li> 취미 :"  );
		
		for (int i = 0; i < hobby.length; i++) {
			out.println(hobby[i]  + "&nbsp;&nbsp;"  );
		}
	
		out.println("</li>");
		out.println("</ul></h3>");
		
		
		
		
	}

}
