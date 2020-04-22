package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex03
 */
@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ex03() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청에 대한 한글 처리
		request.setCharacterEncoding("UTF-8");
		
		//2. 응답에 대한 한글 처리
		response.setContentType("text/html; charset=UTF-8");
		
		//3. 응답정보를 웹 브라우저에게 출력할 수 있도록 클래스를 호출해서 출력하게 하자
		PrintWriter out = response.getWriter();
		
		
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>서블릿 연습</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>서블릿 예제 </h1>");
		out.println("<p>서블릿 예제 </p>");
		out.println("서블릿 예제          서블릿 예제");
		out.println("서블릿 예제          서블릿 예제");
		out.println("<br><hr>");
		
		// 오늘 날짜 구하기(자바식)
		Calendar now = Calendar.getInstance();
		out.println(now.get(now.YEAR) + "년");
		out.println(now.get(now.MONTH) +1 + "월");
		out.println(now.get(now.DATE) + "일");
		
		int su = (int)(Math.random()*101);	// 0-100까지 랜덤함수
		out.println("의 운수는" + su + "%입니다.");
		
		// 요청 정보들을 출력
		out.println("<h3><ul>");
		out.println("<li>" + request.getRemoteAddr() + "</li>");
		out.println("<li>" + request.getRemoteHost() + "</li>");	
		out.println("<li>" + request.getRemotePort() + "</li>");
		out.println("<li>" + request.getRemoteUser()+ "</li>");
		out.println("<li>" + request.getContextPath() + "</li>");
		out.println("<li>" + request.getRequestURI() + "</li>");
		out.println("</ul></h3>");
		
		
		out.println("</body>");
		out.println("</hml>");
	}

}
