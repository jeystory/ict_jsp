package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.DeptCommand;
import com.ict.model.DynamicCommand;
import com.ict.model.ListCommand;


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
		
		String cmd = request.getParameter("cmd");
		Command comm = null;
		
		switch (cmd) {
			case "list": 			comm = new ListCommand(); break;
			case "dept":
				
				comm = new DeptCommand(); break;
			case "dynamic": 	
				comm = new DynamicCommand(); break;
		
		}
		String path = comm.exec(request, response); 
		request.getRequestDispatcher(path).forward(request, response);
	}

}
