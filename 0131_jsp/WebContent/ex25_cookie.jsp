<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie 목록 보기</title>
</head>
<body>
	<h2> 쿠키 </h2>
	<!-- 
		기본 브라우저를 삭제하지 않으면 값을 호출할 수 있다.
	 -->
	 
	 <%
	 	Cookie[] cookies = request.getCookies();
	 	if(cookies != null && cookies.length > 0){
	 		for(Cookie k: cookies){
	 			out.println(k.getName() + " = ");
	 			out.println(URLDecoder.decode(k.getValue(),"utf-8")+"<br>");
			}
		}else{
			out.println("쿠키가 존재하지 않습니다.");
		}
	 %>
	
</body>
</html>