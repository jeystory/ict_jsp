<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function f_up(f) {
		f.action = "ex02.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<%-- 
		1. servlets.com에서 화면 맨 마지막에 cos-20.08.zip 다운받아서 lib 폴더에 cos.jar를 lib에 복사
		2. <form method="post" enctype="multipart/form-data"> 를 반드시 작성
	 --%>
	
	<form method="post" enctype="multipart/form-data">
		<p> 올린 사람 : <input type="text" name="name"></p>
		<p> 파일 : <input type="file" name="f_name"></p>
		<input type="button" value="upload" onclick="f_up(this.form)">
	</form>

</body>
</html>