package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ict.com.model.MyModel;

/**
 * Servlet implementation class MyController
 */
@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MyController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*
		MyModel mymodel = new MyModel();
		String cmd = request.getParameter("cmd");
		String path="";
		switch(cmd) {
		case "1": path = mymodel.exec01(request, response); break;
		case "2": path = mymodel.exec02(request, response); break;
		case "3": path = mymodel.exec03(request, response); break;
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		*/
		
		MyModel mymodel = new MyModel();
		
		String path = mymodel.exec04(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
