<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
*{
	margin : 0;
	padding : 0;
} 
</style>
</head>
<body>
	<%
	String strMain = request.getParameter("strMain");
    String strSub = request.getParameter("strSub");  
	String contentPage = "";
		
 
        if (strMain == null || strMain.equals("home") ) {
        	contentPage = "home.html";
        } else if(strMain.equals("item")){
        	if( strSub == null || strSub.equals("cookie")){
        		contentPage = "item_Dessert.html";
        	} else if( strSub.equals("bread")){
        		contentPage = "bread.html";
        	} else if( strSub.equals("dessert")){
        		contentPage = "item_Dessert.html";
        	}else if( strSub.equals("sandwich")){
        		contentPage = "sandwich.html";
        	} else {
        		contentPage = "drink.html";
        	}
        }else if(strMain.equals("event")){
        	contentPage = "event.jsp";
        	/* 이벤트 하위 페이지 이동시에도 메뉴가 보이도록 해줘야 하는데... */
        } else {
        	if(strSub==null || strSub.equals("notice")){
        		contentPage = "main_Notice.html";
        	}else{
        		contentPage = "item_QA.html";
        	}
        }
    %>
 
      <div class="main_menu"><jsp:include page="menu_main.jsp" flush="true" /></div>
      <jsp:include page="<%=contentPage%>" flush="true" />  
      <div class="footer"><jsp:include page="bottom.html" flush="true" /></div>
 	
</body>
</html>