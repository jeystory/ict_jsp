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
	
        if (strCust == null || strCust.equals("custOrderList") ) {
        	contentPage = "cust_Order.html";
        }else if(strCust.equals("custPoint")){
        	contentPage = "cust_Point.html";
        }else if(strCust.equals("custReview")){
        	contentPage = "item_Review.html";
        }else if(strCust.equals("custQA")){
        	contentPage = "cust_QA.html";
		}else if(strCust.equals("custInfo")){
        	contentPage = "cust_Info.html";
        }else if(strCust.equals("custCart")){
        	contentPage = "cust_Cart.html";
        }
        else{
        	contentPage = "cust_Order.html";
        }
    %>
 
      <jsp:include page="menu_main.jsp" flush="true" />
      <div class = "user_content"><jsp:include page="menu_user.jsp" flush="true" /> </div>
      <div class = "main_content"><jsp:include page="<%=contentPage%>" flush="true" /></div>
      <div class="footer"><jsp:include page="bottom.html" flush="true" /></div>
 	
</body>
</html>