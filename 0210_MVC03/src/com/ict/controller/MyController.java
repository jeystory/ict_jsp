package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ict.com.model.ByeCommand;
import ict.com.model.Command;
import ict.com.model.HelloCommand;
import ict.com.model.HiCommand;


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
	
		
		Command comm = null;
		String cmd = request.getParameter("cmd");
		String path="";
		switch (cmd) {
		case "1":  comm = new HiCommand();  	break;
		case "2":  comm = new HelloCommand();  	break;
		case "3":  comm = new ByeCommand();  	break;
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
