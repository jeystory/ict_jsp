<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>카카오 로그인</title>
</head>
<body>
   <!-- 제품설정 : RedirectURl 지정해야 됨 -->
	<c:if test="${userId eq null}">
        <a href="https://kauth.kakao.com/oauth/authorize?client_id=e362b3a93ba47f4167e8ed88a83b060a&redirect_uri=http://localhost:8090/login&response_type=code">
            <img src="img/kakao_login_btn_medium_narrow.png">
        </a>
    </c:if>
</body>
</html>