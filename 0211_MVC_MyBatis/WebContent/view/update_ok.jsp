<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${result>0}">
		<script>
			alert("업데이트 성공");
			location.href="/MyController?cmd=onelist&idx=${vo.idx}";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("업데이트 실패");
			location.href="/MyController?cmd=update";
		</script>
	</c:otherwise>
</c:choose>