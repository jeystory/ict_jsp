package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08
 */
@WebServlet("/Ex08")
public class Ex08 extends HttpServlet {
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<h2> Ex08 Page </h2>");
		out.println("<h3> ID : " + id + "</h3>");
		out.println("<h3> PW : " + pw + "</h3>");
		
		/* 페이지 이동(포워딩, 리다이렉트, a링크)
		1. 리다이렉트 : 페이지가 이동되면서 기존의 요청과 응답이 사라지고 새로운 요청과 응답이 생성. 즉, 기존 파라미터는 사라짐
						URL에 변환가 생김.
						사용법  : response.sendRedirect("이동할 주소");
								response.sendRedirect("Ex09");            자바리소스로 이동시에는  파일 이름만 작성
								response.sendRedirect("ex09.html");    html 문서로 이동할때는 파일 이름과 확장자도 함께 작성
		*/
		//response.sendRedirect("Ex09"); 
		//response.sendRedirect("ex09.html");
		
		/*
		 2. 포워딩 : 페이지 이동시 기존의 요청과 응답을 가지고 감. 파라미터가 삭제되지 않고 URL변환도 없음
		               사용법 : request.getRequestDispatcher("이동할 주소").forward(request, response);
		 */
		//request.getRequestDispatcher("Ex09").forward(request, response);
		
		/*
		 3. a 링크
		 */
		 out.println("<a href='"+ request.getContextPath()+"/Ex09'> Ex09로 이동  </a><br>");
		 out.println("<a href='/0128_servlet/Ex09'> Ex09로 이동  </a><br>");
		 out.println("<a href='Ex09?id="+id +"&pw="+pw+"'> > Ex09로 이동 </a>");
		
	}

}
