<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장 객체 : out</title>
</head>
<body>
<%--	
	JSP 기본 내장 객체 : request, response, out, page, pageContext, session, application, config, exception
	3. out : 브라우저에 출력하는 역활
		태그를 이용해야 줄변경, 띄워쓰기 가능
--%>

	<% out.println("<h1> Hello World </h1>"); %>
 	<% out.println("Hello jsp"); %>		<%-- 태그를 삽입하지 않으면 줄변경하거나  띄워쓰기 X --%>
 	<% out.println("Hello jsp"); %>
 	<% out.println("Hello jsp"); %>
 	<%
 		for(int i=0;i<11;i++){
 			out.println(i);
 			out.println("<br>");
 		}
 	%>
</body>
</html>