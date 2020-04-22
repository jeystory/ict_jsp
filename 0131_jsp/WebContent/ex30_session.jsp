<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	session : 
	- jsp 기본 객체
	- 서버와 클라이언트 간의 접속을 유지시켜주기 위한 객체
	- 쿠키와 차이점은 세션은 서버에 값이 저장되고 쿠키는 클라이언트에 저장
	- 서버는 세션을 사용해서 클라이언트와의 접속 상태를 유지 가능
	- 로그인한 사용아에 대한 정보 유지
	- 오직 서버에서만 생성
	- 클라이언트측에 서비스를 요청하면, 서버측에서 클라이언트에게 클라이언트를 구별할 수 있는 세션  ID를 부여하고, 
	서버측에서는 해당 ID로 이전 접속 여부를 구별할 수 있음
	 주요 메소드
        * 데이터 저장 : session.setAttribute("이름","값");
        * 데이터 호출 : session.getAttribute("이름");
        * getId() => 세션의 고유 ID를 구한다.
        * getCreationTime() : 세션이 생성된 시간을 구한다.
        * getLastAccessedTime() : 웹브라우저가 마지막에 접근한 시간을 구한다.
	
 --%>
 <%
 	Date time = new Date();
    SimpleDateFormat format = 
 	    		new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 %>
 	<p> 세션 ID : <%=session.getId() %></p>
 	<p> 현재시간 : <%=format.format(time) %></p>
 	
 	 <% time.setTime(session.getCreationTime()); %>
 	<p> 세션 생성시간 : <%=format.format(time) %></p>
 	 <% time.setTime(session.getLastAccessedTime()); %>
 	<p> 최근 접근시간 : <%=format.format(time) %></p>
	
	
</body>

</html>