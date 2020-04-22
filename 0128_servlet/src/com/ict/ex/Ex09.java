package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex09
 */
@WebServlet("/Ex09")
public class Ex09 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Ex09() {
        super();
    }

	
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<h2> Ex09 Page </h2>");
		out.println("<h3> ID : " + id + "</h3>");
		out.println("<h3> PW : " + pw + "</h3>");
	}

}
