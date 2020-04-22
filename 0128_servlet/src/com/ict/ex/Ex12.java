package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model3.DoWork;
import model3.DoWork01;
import model3.DoWork02;
import model3.DoWork03;

/**
 * Servlet implementation class Ex12
 */
@WebServlet("/Ex12")
public class Ex12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Ex12() {
        super();
   }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청에 대한 한글 처리
		request.setCharacterEncoding("UTF-8");
								
		//2. 응답에 대한 한글 처리
		response.setContentType("text/html; charset=UTF-8");
								
		//3. 응답정보를 웹 브라우저에게 출력할 수 있도록 클래스를 호출해서 출력하게 하자
		PrintWriter out = response.getWriter();
		
		String param = request.getParameter("param");
		String result = "";
		DoWork doWork = null;
		switch(param) {
		case "1": 
			doWork = new DoWork01();
			break;
		case "2":
			doWork = new DoWork02();
			break;
		case "3":
			doWork = new DoWork03();
			break;
		}
		
		result = doWork.DoWork(request, response);
		out.println("<h2> "+ result +"</h2>");		
	}

}
