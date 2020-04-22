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
 * Servlet implementation class Ex10
 */
@WebServlet("/Ex10")
public class Ex10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Ex10() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//2. 응답에 대한 한글 처리
		response.setContentType("text/html; charset=UTF-8");
						
		//3. 응답정보를 웹 브라우저에게 출력할 수 있도록 클래스를 호출해서 출력하게 하자
		PrintWriter out = response.getWriter();
		
		//파라미터 받기
		String param = request.getParameter("param");
		String result = "";
		
		switch(param) {
		case "1":
		
			result = request.getRemoteAddr();
			break;
		case "2":
			Calendar now = Calendar.getInstance();
			int y = now.get(Calendar.YEAR);
			int m = now.get(Calendar.MONTH) + 1;
			int d = now.get(Calendar.DATE);
			result = y +"년 " + m +"월" + d + "일";
			break;
		case "3": 
			int luck = (int)(Math.random() * 101);
			result = "오늘은 운수는 "+ luck + "% 입니다.";
			break;	
		case "4":
			result = "이름은 ㅌㅌㅌ"; 
			break;
		}
		
		out.println("<h2>  결과 :  "+ result +"</h2>");
	
	}

}
