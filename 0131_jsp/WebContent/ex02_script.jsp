<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
<%--
	2. 스크립트 요소 : 선언부, 스크립트릿, 표현식
		1) 선언부 
			- 자바의 전역변수 선언과 메소드 선언을 할때 사용
			- 표현방식 : <%! %>
		2) 스크립트릿
			- 순수 자바코드를 작성(실행)할때 사용
			- 표현 방식: <% 자바코드 %>
		3) 표현식
			- 변수값을 출력할 때, 메소드의 결과를 출력할 때 사용
			- 나중에는 표준언어(EL)나 표준태그라이브러리(JSTL)로 변경
			- 표현방식 : <%= %>
		** 위에 3요소는 겹쳐서는 사용 불가능. 반드시 별도로 사용해야됨
--%>

	<h2> 0-10까지 출력하기</h2>
	<%
		for(int i=0;i<11;i++){
			//콘솔에 출력. 브라우저에는 출력되지 않음
			//System.out.println(i);
			
			//out은 jsp가 가지고 있는 브라우저에 출력하는 기본 객체 
			out.println(i);
		}
	%>
	<hr>
	<h2>0-10까지 출력하기,합도 출력하기 </h2>
	<%! int sum = 0;
	%>
	
	<% 
	for(int i=0;i<11;i++){%>
		<%= i %>
	<%
		sum+=i;
	}
	%>
	<p> 0-10의 합은 <%= sum %> </p>
	<hr>
	
	<%  int k=0;
		for(int i=0;i<11;i++){%>
		<%= i %>
	<%
		k+=i;
	}%>
	<p> 0-10의 합은 <%= k %> </p>
	<hr>
	<%!
	//더하기 메소드 : 반환값이 있는 경우와 없는 경우
	int result = 0;
	public void add(int su1, int su2){
		result = su1+su2;
	}
	// 빼기 메소드
	public int sub(int su1, int s2){
		return su1-s2;
	}
		
	%>
	<%	add(7,5); %>
	<p> 7+5 = <%= result %></p>
	<p> 7-5 = <%= sub(7,5) %></p>
	
	<hr> 
	<h3>오늘의 날짜와 운수구하기</h3>
	<%
	Calendar now = Calendar.getInstance();
	int year = now.get(now.YEAR);
	int month = now.get(Calendar.MONDAY) +1;
	int day = now.get(now.DATE);
	int su = (int)(Math.random()*101);
	
	out.println("오늘의 날짜 :" + (year + "." + month + "." + day + ".") + "<br>");
	out.println("운수 : " + su + "%입니다.");
	%>
	
	<hr>
	오늘의 날짜의 : <%=year %>,  <%=month %>,  <%=day %> <br>
	운수는 <%=su %>%입니다.
	
	
</body>
</html>