<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 객체 : pageContext</title>
</head>
<body>
<%-- 
	JSP 기본 내장 객체 : request, response, out, page, pageContext, session, application, config, exception
	4. pageContext : 해당 페이지와 일대일로 연결된 객체를 의미
		-해당 페이지 내에서 만큼은 모든 객체를 생성하고 관리하는 객체를 의미.
		-  getRequest(), getResponse(), getOut, getPage(), getSession(), getServletContext(), getServleconfig(), getException()
		
		* pageContext 속성을 활용한 데이터 저장과 호출
		기본적으로 request, session, application도 같은 방법으로 데이터를 저장하고 호출한다.
		우선순위 : pageContext > request > session > application
		
		* pageContext
		저장방법 : pageContext.setAttribute("이름", 데이터);
		호출방법 : pageContext.getAttribute("이름");
		생명주기 : pageContext : 해당 페이지를 벗어나면 생명주기 종료
		
		* request
		저장방법 : request.setAttribute("이름", 데이터);
		호출방법 : request.getAttribute("이름");
		생명주기 : response가 되면 데이터도 사라진다.
		
		* session
		저장방법 : session.setAttribute("이름", 데이터);
		호출방법 : session.getAttribute("이름");
		생명주기 : 일반적으로 웹 브라우저가 종료되면 사라짐(단, 시간 제한을 두는 경우도 있다)
		
		* application
		저장방법 : application.setAttribute("이름", 데이터);
		호출방법 : application.getAttribute("이름");
		생명주기 : 해당 프로그램이 WAS에서 내려올 때  데이터도 사라진다. 
	
 --%>

</body>
</html>