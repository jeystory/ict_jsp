package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05
 */
@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
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
		
		out.println("<h3> 학점 구하기</h3>"); 
		
		out.println("<form action=\"Ex05\">");
		out.println(" <fieldset>");
		out.println("<legend>성적입력하기:</legend>");
		out.println("<p> 이름: <input type=\"text\" name=\"name\" placeholder = \"이름입력\"></p><br> ");
		out.println(" <p>국어: <input type=\"text\" name=\"kor\" placeholder = \" 국어입력\"></p><br> "); 
		out.println(" <p>영어: <input type=\"text\" name=\"eng\" placeholder = \"영어입력\"></p><br> ");
		out.println("<p> 수학: <input type=\"text\" name=\"math\" placeholder = \"수학입력\"></p><br> ");
		out.println("<p><input type=\"Submit\" value=\"제출\"></p>");
		out.println("</fieldset>");
		out.println("</form>");
		
		// submit하면 해당 form 정보들이 /Ex05로 전송
		// /Ex05는 자기 자신 - 파라미터 처리
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		double avg = (int)((kor+eng + math)/3.0*10)/10.0;
		String hak ="";
		if(avg >= 90 ) {hak ="A";}
		else if(avg >= 80 ) {hak ="B";}
		else if(avg >= 70 ) {hak ="C";}
		else {hak ="F";}
		
		out.println("<h3>");
		out.println("<p> 이름 :" + name + "</p>");
		out.println("<p> 국어 :" + kor + "</p>");
		out.println("<p> 영어 :" + eng + "</p>");
		out.println("<p> 수학 :" + math + "</p>");
		out.println("<p> 총합 :" + (kor+eng + math) + "</p>");
		out.println("<p> 평균 :" + avg + "</p>");
		out.println("<p> 학점 :" + hak + "</p>");
		out.println("</h3>");
		
	}

}
