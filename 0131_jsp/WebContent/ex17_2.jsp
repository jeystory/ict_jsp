<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//현재 페이지을 볼 수 있는 경우는 앞에서 로그인이 성공한 경우에만  가능
	String log_ = (String)session.getAttribute("log_");
    if(log_== null || log_.equals("")){
    	response.sendRedirect("ex15_login.jsp");
    }else if(log_.equals("m_ok")){
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 페이지 : 멤버</title>
</head>
<body>
	<h1> 멤버 페이지 </h1>
	<h2><%=session.getAttribute("id") %>님 페이지 입니다. </h2>
</body>
</html>
<%} %>