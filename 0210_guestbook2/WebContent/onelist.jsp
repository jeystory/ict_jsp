<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("utf-8");
    String idx = request.getParameter("idx");
  	VO vo = DAO.getInstance().getOneList(idx); 
    // 수정과 삭제를 위해서 session에 저장
    session.setAttribute("vo", vo);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 방 명 록 </title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 500px; border-collapse:collapse; }
	table,tr,td{border: 1px solid black; padding: 3px}
</style>
<script type="text/javascript">
	function update_go(f) {
		f.action="update.jsp";
		f.submit();
	}
	function delete_go(f) {
		f.action="delete.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 내용화면</h2>
		<hr />
		<p>[<a href="index.jsp">목록으로 이동</a>]</p>
		<form method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td>${vo.name }</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제  목</td>
					<td>${vo.subject }</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td>${vo.email }</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">첨부파일</td>
					<%-- 첨부파일 있을 때와 없을 때 구분 --%>
					<c:choose>
						<c:when test="${empty vo.f_name}">
							<td><b> 첨부파일 없음 </b></td>
						</c:when>
						<c:otherwise>
							<td><img src="<c:url value='/upload/${vo.f_name}'/>"width="150px"> <br> 
							<a href="download.jsp?path=upload&f_name=${vo.f_name }">${vo.f_name}</a>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr align="left" >
					<td colspan="2" style="padding-left: 50px;"><pre>${vo.content }</pre></td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="delete_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>