<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
</head>
<body>
	<h2>장바구니 보기</h2>
	<h2><%=session.getAttribute("s_name") %> 님  장바구니.</h2>
	<%
	ArrayList<String> list
	= (ArrayList<String>)session.getAttribute("list");
	if(list == null){
		out.println("선택한 상품이 존재하지 않습니다.");
	} else {
		if(list.size()==0){
			out.println("선택한 상품이 존재하지 않습니다.");
		}else{
			for(String k:list){
				out.println("<li>");
				out.println(k);
				out.println("</li>");
			}
		}
	}	
	%>
</body>
</html>