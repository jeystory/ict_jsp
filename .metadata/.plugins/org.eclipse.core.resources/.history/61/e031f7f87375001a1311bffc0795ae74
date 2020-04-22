<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#res").empty();
		$.ajax({
			url : "/member",
			method : "post",
			dataType : "json",
			success : function (data) {
				var name = "";
				var email = "";
				$.each(data, function(k,v) {
					var response = v['profile'];
					$.each(response, function(k, v) {
						name = response["nickname"];
					});
					 email = v['email'];
				});
				$("#res").append(name + ", " + email + "님 환영합니다.");
			},
			error : function(){
				alert("읽기 실패");
			}
		});
	})
</script>
</head>
<body>
	<%-- 
	<form action="https://kauth.kakao.com/oauth/token" method="post">
			<input type="hidden" name="grant_type" value="authorization_code" />
			<input type="hidden" name="client_id" value="e362b3a93ba47f4167e8ed88a83b060a" />
			<input type="hidden" name="redirect_uri" value="http://localhost:8090/login" />
			<input type="hidden" name="code" value="${code}" />
			<input type="submit"> 
	</form>
	 --%>
	 <h1>결과 보기</h1>
	<div id="res"></div>
</body>
</html>