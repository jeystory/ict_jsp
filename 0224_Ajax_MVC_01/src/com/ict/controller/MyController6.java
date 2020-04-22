package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.JSON_Data_Command;
import com.ict.model.Xml_Data_Command_01;

@WebServlet("/MyController6")
public class MyController6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MyController6() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		JSON_Data_Command  json = new JSON_Data_Command();
		String res = json.exec(request, response);
		out.println(res);
		
		// 일반적인 코딩은 포워딩을 해서 jsp를 가지만
		// Ajax에서는 포워딩을 하지 않고 해당 페이지에서 출력한 내용을 
		// JSP에서 가지고 가서 처리 한다.
		// String path = comm.exec(request, response);
		// request.getRequestDispatcher(path).forward(request, response);
	}
}
