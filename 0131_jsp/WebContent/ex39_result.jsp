<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");
 	String name = request.getParameter("name");
 	String[] hobby = request.getParameterValues("hobby");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 파라미터 받는 방법1 : request</h2>
	<h3>
		<li>name : <%=name %></li>
		<li>hobby :
			<%
				for(String k:hobby){
					out.println(k + "&nbsp;&nbsp;");
				}
			%>
		</li>
	</h3>
	<hr>
	
	<h2> 파라미터 받는 방법2 : 자바빈 사용</h2>
	<jsp:useBean id="vo" class="com.ict.edu.VO" />
	<jsp:setProperty property="*" name="vo"/>
	<h3>
	   <li> 이름 : <%=vo.getName() %> </li>
	   <li> 취미 : 
				<%for(String k : hobby){
					out.println(k+"&nbsp;&nbsp;");
				}%>
				
        </li>
        <li>cPage : <%=vo.getcPage() %></li>
	</h3>
	<hr>
	<h3>
	   <li> 이름 : ${vo.name} </li>
	   <li> 취미 : 
				<%for(String k : hobby){
					out.println(k+"&nbsp;&nbsp;");
				}%>
        </li>
        <li> cPage : ${vo.cPage}</li>
	</h3>
	<hr>
	
	<h2> 파라미터 받는 방법3 : EL</h2>
	<%-- ${param.이름}, ${paramValues.이름[index]} --%>
	<h3>
		<li>name : ${param.name} </li>
		<li> 취미 : ${paramValues.hobby[0]}  
	 	          ${paramValues.hobby[1]} 
	 	          ${paramValues.hobby[2]} 
	 	          ${paramValues.hobby[3]} 
	 	</li>
	 	<li> cPage : ${param.cPage} </li>
	</h3>
	
</body>
</html>