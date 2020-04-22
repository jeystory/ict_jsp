package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 매핑 변경
// service(), init(), destory() : 메소들은 지정하지 않으면 소스에 추가되지 않음.
@WebServlet("/hello")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ex02() {
        super();
        // TODO Auto-generated constructor stub
    }

	//service()를 호출하지 않으면 요청 방식을 알아서 처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("goGet()을 거쳤나요?");
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// console에 출력
		 //System.out.println("doPost() 콘솔에 실행");
		// 서블릿은 자바 기반에서 HTML 태그를 사용해서 웹 브라우저에 표현하는 것이다.
		// ** 1. 2. 3.은 반드시 해야 됩니다.
		//1. 요청에 대한 한글터리
		request.setCharacterEncoding("UTF-8");
		//2. 응답에 대한 한글처리
		response.setContentType("text/html;charset=UTF-8");
		// 3. 브라우저에 출력하기
		PrintWriter out = response.getWriter();
		out.println("<h1>서블릿 예제</h1>");
		out.println("<h2>Hello World</h2>");
		out.println("Hello World           Hello World ");
		out.println("Hello World           Hello World ");
	}

}
