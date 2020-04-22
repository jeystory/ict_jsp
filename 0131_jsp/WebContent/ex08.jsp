<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
    	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go(f) {
		f.action = "ex09.jsp";
		f.submit();
	}
	
	function send_go(f) {
		/* form 태그 사용시에만 사용가능 . bc form tag에서는 action을 지정할 수 있기 때문에*/
		f.action = "ex09.jsp";
		f.submit();
	}
	
	function send_go2(f) {
		location.href = "ex09.jsp";
	}
	
	function send_go3(f) {
		location.href = "ex09.jsp?id=<%=id%>&pw=<%=pw%>";
	}
	
	function send_go4(f) {
		history.go(-1);	/*  자바스크립트 기능*/
	}
</script>
</head>
<body>
	<h1>파리미터 결과보기 ex08.jsp </h1>
	<h2>
		<ul>
			<li>id : <%=id %></li>
			<li>pw : <%=pw %></li>
		</ul>
	</h2>
	
	<%--
		** 웹 페이지 이동  ** 
      	1. forward 
      	2. redirect 
      	3. a 태그 통해서 이동 : <a href="이동할 페이지></a>
      	4. 자바스크립트 이용 : location.href = "이동할 페이지" ;     
	 --%>
	 
	<%-- 1. forward  --%>
	<%-- <% request.getRequestDispatcher("ex09.jsp").forward(request, response); %> --%>
	<%-- 2. redirect  --%>
	<%-- <% response.sendRedirect("ex09.jsp"); %>    --%>
	<%--  	3. a 태그 통해서 이동     --%>
	<%--  
	<h2><a href = "ex09.jsp"> a 링크를 통해 다른 페이지로 이동(파라미터 X)</a></h2>
	 <h2> <a href="ex09.jsp?id=<%=id%>&pw=<%=pw%>"> a 링크를 통해 다른페이지로 이동 (파라미터값 있음)</a> </h2> 
	 --%>
	 
	 <%--  	4. 자바스크립트 이용 : location.href = "이동할 페이지"  --%>
	  <form>
	 	<input type="button" value="보내기(파라미터 X)" onclick="send_go(this.form)">
	 </form>
	 <br>
	 <form>
	 	<input type="button" value="보내기(파라미터 O))" onclick="send_go(this.form)">
	 	<input type="hidden" name="id" value="<%= id %>">
	 	<input type="hidden" name="pw" value="<%= pw %>">
	 </form>
	 <br>
	 <button onclick="send_go2()">보내기(파라미터 X)</button>
	 <button onclick="send_go3()">보내기(파라미터 O)</button>
	 <button onclick="send_go4()">뒤로 가기</button>
	
</body>
</html>