<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 내장 객체 : response</title>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex08.jsp";
		f.submit();
	}
</script>
</head>
<body>
<%--	JSP 기본 내장 객체 : request, response, out, page, pageContext,session, application, config, exception
	2. response(응답) : request가 요청 정보를 response는 브라우저에 응답정보를 가지고 있는 역활 수행
		- 헤더 정보 입력 
		- 리다이렉트 : 웹페이지 이동
			response.sendReditect("이동할 페이지");
			
		** 웹페이지 이동 **
		1. forward : request.geyRequestDispatcher("이동페이지").forward(request, response);
						** request, response의 정보 유지하며 페이지 이동 -파라미터 값을 가지고 페이지 이동, url의 변화 없음
		2. redirect : response.sendReditect("이동할 페이지")
		 				**새로운 request, response를 가지고 페이지 이동 -> url의 변화유
		 				** 파라미터값들이 존재할 수 없음.
		3. a 태그 : <a href="이동할 페이지></a>
		4. 자바스크립트 이용 : location.href = "이동할 페이지";
 --%>
 
 	<form method="post">
 		<p> ID : <input type="text" name="id"></p>
 		<p> PW : <input type="password" name="pw"></p>
 		<p> <input type="button" value="보내기" onclick="send_go(this.form)"></p> 
 	</form>
</body>
</html>