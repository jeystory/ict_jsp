<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); %>
<!-- 파라미터값이 vo에 모두 저장   -->
<jsp:useBean id="vo" class="com.ict.edu.VO" />
<jsp:setProperty property="*" name="vo"/>

<%	int result = DAO.getInstance().getInsert(vo); 
    pageContext.setAttribute("res", result); %>
    
 <c:choose>
 	<c:when test="${res>0}">
 		<script>
 			alert("삽입성공");
 			location.href = "index.jsp";
 		</script>
 	</c:when>
 	<c:otherwise>
 		<script>
 			alert("삽입실패\n다시회원가입하세요");
 			history.go(-1);
 		</script>
 	</c:otherwise>
 </c:choose>       
