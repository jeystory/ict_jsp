<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style type="text/css">
	div{
		text-align: center;
		margin : 0 auto;
	}
	fieldset{
		width : 300px;
		margin: 0 auto;
	}
</style>
<script type="text/javascript">
	function join_go(f) {
		f.action = "join.jsp"
		f.submit();	
	}
	
	function login_go(f) {
		f.action = "login.jsp"
		f.submit();	
	}
</script>

</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend>로그인</legend>
				<p>아이디 : <input type = "text" name="id"></p>
				<p>패스워드 : <input type = "password" name="password"></p>
				<input type = "button" value = "JOIN" onclick="join_go(this.form)">
				&nbsp;&nbsp;&nbsp;
				<input type = "button" value = "LOGIN" onclick="login_go(this.form)">
			</fieldset>
		</form>
	</div>
</body>
</html>