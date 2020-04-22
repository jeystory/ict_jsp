
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  
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

	function list_go(f) {
		f.action = "/MyController?cmd=list";
		f.submit();
	}
	function update_go(f) {
		f.action = "/MyController?cmd=update";
		f.submit();
	}
	function delete_go(f) {
		f.action = "/MyController?cmd=delete";
		f.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<h2>게시판 내용보기</h2>
		<hr>
	
		<form method="post">
			<table>
				
				<tr>
					<th >제  목</th>
					<td>${b_vo.subject }</td>
				</tr>
				
				<tr>
					<th>이름</th>
					<td>${b_vo.writer }</td>
				</tr>
				
				<tr >
					<th>내용:</th>
					<td >
						<pre>${b_vo.content }</pre>
					</td>
				</tr>
				
				<tr align="center">
					<td bgcolor="#99ccff">첨부파일</td>
					<%-- 첨부파일 있을 때와 없을 때 구분 --%>
					<c:choose>
						<c:when test="${empty b_vo.file_name}">
							<td><b> 첨부파일 없음 </b></td>
						</c:when>
						<c:otherwise>
							<td><img src="<c:url value='/upload/${b_vo.file_name}'/>"width="150px"> <br> 
							<a href="view/download.jsp?path=upload&file_name=${b_vo.file_name }">${b_vo.file_name}</a>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				
			
				
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="delete_go(this.form)" />
							<!--  위에 수정,삭제처럼 script 함수에서 처리해도 됨-->
							<input type="button" value="목록" onclick="list_go(this.form)"/>
							<input type="hidden" name="cPage" value="${cPage}" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	
	<!-- 댓글처리  -->
	<br>
	<hr>
	<br>
	<div style="border: 1px solid blue; width: 60%; margin: 0px auto; padding: 5px 50px;">
		<form method="post" action="/MyController?cmd=c_write">
			<p> 이름 : <input type="text" name="writer" size="15"></p>
			<p> 내용 : <br>
			  <textarea rows="4" cols="40" name="content"></textarea>
			</p>  
			<p> 비밀번호 : <input type="password" name="pwd" size="15"></p>
			<input type="hidden" name="cPage" value="${cPage}" >
			<input type="hidden" name="b_idx" value="${b_vo.b_idx}" >
			<input type="submit" value="댓글 저장" >
		</form>
	</div>
	<br>
	<hr>
	<%-- 댓글출력 --%>
	<div style="display: table; margin: 0px auto;">
		<c:forEach var="k" items="${c_list}">
			<div style="border: 1px solid #cc00cc; width: 400px; margin:20px; padding: 20xp;">
				<form action="/MyController?cmd=c_del" method="post">
					<p style="margin: 10px;"> 이름 : ${k.writer } </p>
					<p style="margin: 10px;"> 날짜 : ${k.write_date.substring(0,10) } </p>
					<p style="margin: 10px;"> 내용 : <pre>${k.content }</pre></p>
					<input type="hidden" name="c_idx" value="${k.c_idx}">
					<input type="hidden" name="b_idx" value="${k.b_idx}">
					<input type="hidden" name="cPage" value="${cPage}">
					<input type="submit" value="댓글 삭제">
				</form>
			</div>
			<hr>
		</c:forEach>	
	</div>
</body>
</html>