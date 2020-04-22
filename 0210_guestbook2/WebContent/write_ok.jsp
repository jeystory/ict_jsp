<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
   // 1. 실제 파일 저장할  위치 디렉토리를 구하자 (톰켓안에 프로젝트 안에 존재)
   //System.out.println(getServletContext().getRealPath("/upload"));
  String path = getServletContext().getRealPath("/upload");
   
   // 2. MultipartRequest를 생성하자
   //   cos.jar에서 지원
   MultipartRequest mr = new MultipartRequest(
		   request,       				// request 정보
		   path,          				// 저장위치 정보
		   100*1024*1024, 		// 업로드 할 수 있는 용량지정 (kB>MB>GB>TB) : 100MB
		   "utf-8",       				// 인코딩 지정  
		   new DefaultFileRenamePolicy() // 파일이름 중복 처리
		   );
   
   VO vo = new VO();
   vo.setName(mr.getParameter("name"));
   vo.setSubject(mr.getParameter("subject"));
   vo.setContent(mr.getParameter("content"));
   vo.setPwd(mr.getParameter("pwd"));
   vo.setEmail(mr.getParameter("email"));
  
   if(mr.getFile("f_name")!= null){
	   vo.setF_name(mr.getFilesystemName("f_name"));
   } else{
	   vo.setF_name("");
   }
%>    


<!-- 데이터베이스에 데이터 저장 -->
<%	int result = DAO.getInstance().getInsert(vo); 
    pageContext.setAttribute("res", result); %>
 
 <c:choose>
 	<c:when test="${res>0}">
 		<script>
 			alert("방명록 삽입성공");
 			location.href = "index.jsp";
 		</script>
 	</c:when>
 	<c:otherwise>
 		<script>
 			alert("방명록 삽입실패\n");
 			history.go(-1);
 			/* location.href = "write.jsp"; */
 		</script>
 	</c:otherwise>
 </c:choose>       