<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XMLHttpRequest 객체</title>
</head>
<body>
	<script type="text/javascript">
		<%-- 
		XMLHttpRequest 객체 : 자바스크립트에서  ajax를 실행할 때 필요한 객체
		웹 브라우저가 낮은 버전이면 XMLHttpRequest객체가 존재하지 않는다.
		단, ActiveXObject라는 비슷한 객체가 존재
		--%>
		function createRequest() {
			var request;
			try{
				request = new XMLHttpRequest();
			} catch(e){
				try{
					request = new ActiveXObject("Microsoft.XMLHTTP");
				}catch(e){
					request = new ActiveXObject("Msxml3.XMLHTTP");
				}
			}
			return request;
			
		}
		//1. 객체 생성
		var request = new createRequest();
		
		//2. open("전송방식", "경로", "비동기여부")
		request.open("GET", "data.html", false);
		//request.open("GET", "ajax.txt", false);
		
		//request.readyState : 데이터의 배달 결과 상태 표시
		// 0 ~ 4   =>  0 일 경우 : 객체 생성, 1->open 안함, 2-> send 하지 않음, 3-> 데이터의 일부만 수신, 4-> 데이터 전체 수신
		
		// request.status=> 200(성공), 4XX(클라이언트 오류), 5XX(서버 오류)
		
		request.onreadystatechange = function(){
			if(request.readyState == 4 && request.status == 200){
				//4.화면에 출력 : innerHTML
				document.body.innerHTML += request.responseText;		//문자만 표시
			}
		}
		
		//3. send() : 실행
		request.send();
		
	</script>
</body>
</html>