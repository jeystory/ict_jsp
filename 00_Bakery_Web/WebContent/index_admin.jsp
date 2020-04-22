<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 메뉴</title>
<style type="text/css">
*{
	margin : 0;
	padding : 0;
}
</style>
</head>
<body>

	<%
	String strCust = request.getParameter("ContentPg");  
	String contentPage = "";
	
        if (strCust == null || strCust.equals("adminOrder") ) {
        	contentPage = "admin_Order.html";
        }else if(strCust.equals("adminReview")){
        	contentPage = "item_Review.html";
        }else if(strCust.equals("adminQA")){
        	contentPage = "item_QA.html";
        }else if(strCust.equals("adminItem")){
        	contentPage = "admin_Item_Add.html";
		}else if(strCust.equals("adminEvent")){
        	contentPage = "admin_Event_Add.html";
		}else{
        	contentPage = "admin_Order.html";
        }
    %>
 
      <jsp:include page="menu_main.jsp" flush="true" />
      <div class = "admin_content"><jsp:include page="menu_admin.jsp" flush="true" /> </div>
      <div class = "main_content"><jsp:include page="<%=contentPage%>" flush="true" /></div>
      <div class="footer"><jsp:include page="bottom.html" flush="true" /></div>
 	
</body>
</html>