<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
<link rel = "stylesheet" href="css/sw_form.css">
<link rel = "stylesheet"  href="css/sw_layout.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> 

<style type="text/css">
	button, img{
		align : "center";
	}
	#event_img_detail{
		margin : 20px;
		padding : 20px;
		width : 800px;
		border : 2px solid lightcoral;
	}
	
	
</style>
</head>
<body>
<%
	String event_no = request.getParameter("event_no");
  
	String contentPage = "";
		
 
        if (event_no == null || event_no.equals("01") ) {
        	contentPage = "event_Sub01.html";
        } else {
        	if(event_no==null || event_no.equals("notice")){
        		contentPage = "event_Sub01.htmll";
        	}else{
        		contentPage = "event_Sub01.html";
        	}
        }
    %>
 
      <div class="main_menu"><jsp:include page="menu_main.jsp" flush="true" /></div>
      <jsp:include page="<%=contentPage%>" flush="true" />  
      <div class="footer"><jsp:include page="bottom.html" flush="true" /></div>
 	
</body>
</html>