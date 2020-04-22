<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	VO vo = (VO)session.getAttribute("vo");
    String idx = vo.getIdx();
    int result = DAO.getInstance().getDelete(idx); 
    pageContext.setAttribute("result", result);
%>
<c:choose>
	<c:when test="${result>0}">
		<script>
			alert("삭제 성공");
			location.href="index.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("삭제 실패");
			history.go(-2);
	     </script>
	</c:otherwise>
</c:choose>