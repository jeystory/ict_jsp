<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	<p>
		요청 처리 과정에서 에러가 발생. 빠른 시간내에 문제 처리하겠음
	</p>
	에러 타입 : <%= exception.getClass().getName() %>
	에러 메세지 : <%= exception.getMessage() %>
</body>
</html>