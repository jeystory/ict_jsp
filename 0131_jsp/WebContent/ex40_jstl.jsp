<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP Standard tag library</title>
</head>
<body>
<%-- 
	0. 라이브러리를 다운받아야 함(tomcat)
	1. JSTL tablib 지시어를 통해서 선언.
	<%@ taglib prefix="" uri="" %>
	2. JSTL은 EL과 함께 사용
	1) core : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	2) 국제화 : <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	3) xml : <%@ taglib prefix="xml" uri="http://java.sun.com/jstl/xml" %>
	4) DB : <%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
	5) 함수 : <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
 --%>
 
 <%--
 	변수 생성(set) : <c:set var ="변수이름" value="변수값(데이터)" />
 	변수 출력(out) : <c:out value="출력 데이터 or ${변수이름} />
 	변수 삭제(remove) : <c:remove var = "변수이름"/>
 	
 	
  --%>
	<h2>
		<%-- 변수 생성 --%>
		<c:set var ="test" value = "Hello JSP"/>
		<%-- 변수 출력 --%>
		<li><c:out value="test"></c:out></li>
		<li><c:out value="${test}"/></li>
		<li>${test}</li>
		<%-- <li><%= test %></li> => error--%>
	</h2>
	
	<%-- 변수 삭제 --%>
	<c:remove var ="test"/>
	<%-- 	 <c:remove var="${test}"/> => Error --%>
	<li><c:out value="${test}"/></li>
	<li>${test}</li>

	
	<%-- if문 : else가 존재하지 않음, 참일때만 실행 
		<c:if test ="조건식(EL)"  var="변수명" > 실행할 내용 </c:if> --%>
	  <c:if test="${5==6}">
    	<li> Hello </li>
    </c:if>
    <c:if test="${5==5}">
    	<li> 안녕하세요 </li>
    </c:if>
    <hr>
    
    <c:set var="sum" value="90" />
    <c:if test="${sum>=90}">
       <li> 합격 </li>
    </c:if>
     <c:if test="${sum<90}">
       <li> 불합격 </li>
    </c:if>
    
      <%-- choose문 : switch문과 비슷 (if~ else를 대신할 수 있다.)
     <c:choose>
    	<c:when test="조건식(EL)">조건이 참일때 실행</c:when> = > case문과 비슷
    	<c:when test="조건식(EL)">조건이 참일때 실행</c:when>
    	<c:when test="조건식(EL)">조건이 참일때 실행</c:when>
    	<c:otherwise> 위의 문장이 다 거짓일 때  실행문자</c:otherwise> => default문과 비슷
    </c:choose>
    --%>
    <c:choose>
    	<c:when test="${sum<90}"><li>합격</li></c:when>
    	<c:otherwise><li>불합격</li></c:otherwise>
    </c:choose>

	<%-- 성적처리 --%>
	<c:set var="avg" value ="87.5"></c:set>
	<c:choose>
		<c:when test="${avg>=90.0}"><li>A학점</li></c:when>
		<c:when test="${avg>=80.0}"><li>B학점</li></c:when>
		<c:when test="${avg>=70.0}"><li>C학점<li></c:when>
		<c:otherwise><li>F학점</li></c:otherwise>
	</c:choose>
	
	
	<%-- forEach문 : 일반 for문
		<c:forEach begin="시작" end = "끝"  step="단계" var="변수">반복내용</c:forEach>
	 --%>
	  <!-- 1-10까지 출력 -->
	<c:forEach begin="1" end="10" step="1" var="k">
    	${k} &nbsp;&nbsp;
    </c:forEach>
    <hr>
      <!-- 1-10까지 짝수 출력 -->
    <c:forEach begin="1" end="10" step = "1" var ="k">
    	<c:if test = "${k%2==0 }">
    		${k} &nbsp;&nbsp;
    	</c:if>
    </c:forEach>
    
    <%-- 카운트와 인덱스의 차이점 --%>
    <c:forEach begin="51" end="55" step="1" var="k" varStatus="vs">
       ${k}  /  ${vs.index}  / ${vs.count} &nbsp;&nbsp; 
    </c:forEach>
    
    <%-- forEach문 : 개선된 for문 => 배열, 리스트에 사용
   <c:forEach var="변수" items="배열또는 리스트" ></c:forEach>
     --%>
     <hr>
    <% String[] arr = {"hong", "Lim", "Il", "Jang"}; %>
    <%-- 스트립트릿으로 만들어진 변수는 EL, JSTL에서 사용안됨 --%>
    <%-- 4대 저장소에 저장해야 호출 가능 --%>
    <% pageContext.setAttribute("arr", arr); %>
    <c:forEach var="k" items="${arr }" >
    	 ${k}  &nbsp;&nbsp;  
    </c:forEach>
    <hr>
    
    <%-- forTokens문 --%>
   	<% String str = "홍길동, 임꺽정,일지매/장길산, 둘리/고길동, 마이콜"; %>
   	<% pageContext.setAttribute("str", str); %>
   	<c:forTokens items="${str}" delims="," var ="k">
   		${k} &nbsp;&nbsp;    
   	</c:forTokens>
   	
   	<hr>
   	<c:forTokens items="${str}" delims="/," var ="k">
   		${k} &nbsp;&nbsp;    
   	</c:forTokens>
   	
    
    <%-- redirect : JSTL에는 forward가 없음. (jsp액션 태그에는 forward 존재)
    						jsp 액션 태그에는 redirect가 없음
    		redirect안에 파라미터를 넣어서 페이지 이동이 가능
 	<c:redirect url="가고자 하는 위치" >
    	<c:param name="" value=""></c:param>
    </c:redirect>
    --%>
    <%-- 파라미터 없이 redirect --%>
   	<%-- <c:redirect url="ex41_result.jsp" >
    </c:redirect> --%>

	 <%-- 파라미터 존재 --%>
    <%-- <c:redirect url="ex41_result.jsp">
    	<c:param name="name" value="아수라백작" />
    </c:redirect> --%>
    
    <%-- JSP Action Tag --%>
  <%--   <jsp:forward page="ex41_result.jsp"/> --%>
  <%-- 한글 깨짐 
    <jsp:forward page="ex41_result.jsp">
    	<jsp:param value="둘리" name="name"/>
   </jsp:forward>
	--%>	
</body>
</html>