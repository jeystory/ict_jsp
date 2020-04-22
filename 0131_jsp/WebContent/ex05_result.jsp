<%@page import="org.eclipse.jdt.internal.compiler.ast.ForeachStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//반드시 요청에 대한 파라미터 한글 처리
	request.setCharacterEncoding("utf-8");

	// 파라미터값 받기
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String residence = request.getParameter("residence");
	String[] animal = request.getParameterValues("animal");
	String cPage = request.getParameter("cPage");
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form에서 전송되는 파라미터값 받아서 처리</title>
</head>
<body>
<%--
		1) html 폼과 요청 파라미터의 정보를 제공
			1-1) getParameter(String name) : String : 파라미터값 구하기
			1-2) getParameterValues(String name) : String[] : 파라미터값 배열로 구하기
			1-3) getParameterMap() : Map : 파라미터값 Map형태로 구하기
			1-4) getParameterNames() : Enumeration : 파라미터값 열거형태로 구하기
 --%>

	<h2>파라미터값 표기하기</h2>
	<h2>
		<ul>
			<li>이름 : <%=name %></li>
			<li>나이 : <%=age %></li>
			<li>주소 : <%=addr %></li>
			<li>성별 : <%=gender %></li>
			<li>취미 : <%
 			              for(String k:hobby){
 			            	  out.println(k+"&nbsp;&nbsp;");
 			              }
 			           %>
 			</li>
			<li>거주지 : <%=residence %></li>
			<li>반려동물 :반려동물 : <%
 			              for(String k:animal){
 			            	  out.println(k+"&nbsp;&nbsp;");
 			              }
 			           %>
 			</li>
			<li>cPage : <%=cPage %></li>
		</ul>
		<hr>
	</h2>
	<h2> getParameterNames() 파라미터 이름구하기</h2>
	<h3>
		<%
			Enumeration param_enum = request.getParameterNames();
			while(param_enum.hasMoreElements()){
				String p_name = (String)param_enum.nextElement();
				 out.println("<li>"+ p_name+"</li>");
			}
		%>
	</h3>
	<hr>
	
	<h2> getParameterMap() 파라미터 구하기</h2>
	<h3>
		<%
			Map map  = request.getParameterMap();
			String [] map_name = (String[])map.get("name");
			out.println(map_name[0] + "&nbsp;&nbsp;<br>");
			String [] map_hobby = (String[])map.get("hobby");

			for(String k:map_hobby){
				 out.println(k + "&nbsp;&nbsp;");
			}
		%>
	</h3>
</body>
</html>