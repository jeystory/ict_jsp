<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML 파일 자바 스크립트로 읽기</title>
</head>
<body>
<script type="text/javascript">
	var request = new XMLHttpRequest();
	request.open("GET", "data01.xml", false);
	
	request.onreadystatechange = function(){
			if(request.readyState == 4 && request.status == 200){
				//xml 태그 읽는 방법
				//1. xml 자료를 html 방식(DOM방식)으로 읽어오기
				var xml = request.responseXML;
				
				//name과 price 태그를 읽기. 여러개이면 배열로 읽어 들임
				
				var names= xml.getElementsByTagName("name");
				var prices = xml.getElementsByTagName("price");
			
				for (var i = 0; i < names.length; i++) {
					// 태그중에 글자만 추출(Element에서 text만 추출)
					var name = names[i].childNodes[0].nodeValue;	// tag안에서 text 추출 명령어
					var price = prices[i].childNodes[0].nodeValue;	
					
					document.body.innerHTML += "<h2><li>" + name + ", " + price + "</li></h2>";
				}
				
			}
		
	};
	request.send();
	
</script>

</body>
</html>
