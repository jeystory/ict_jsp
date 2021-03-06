
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8") ; %>

<jsp:useBean id="vo" class="com.ict.edu.VO"/>
<jsp:setProperty property="*" name="vo"/>

<%
	int result = DAO.getInstance().getUpdate(vo);

	pageContext.setAttribute("result", result);
%>
<c:choose>
	<c:when test="${result>0}">
		<script>
			alert("업데이트 성공");
			location.href="onelist.jsp?idx=${vo.idx}";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("업데이트 실패");
			history.go(-1);
		</script>
	</c:otherwise>
</c:choose>