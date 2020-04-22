<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sw_layout.css">
<style type="text/css">
		/* *{
		font-size: 20px;
		line-height: 1.6;
		margin : 0;
		padding : 0;
	} */
	/* Style the side navigation */
	.admin_content {
  		height: 100%;
  		width: 200px;
  		position: absolute;
  		background-color: lightcoral;
  		/* margin: 5px; */
  		padding: 5px;
	}


	/* Side navigation links */
	.admin_content  a {
  		color: white;
 		padding: 16px;
  		text-decoration: none;
  		display: block;
	}

	/* Change color on hover */
	.admin_content  a:hover {
 		background-color: #ff1a48;
  		color: black;
	}
	
</style>
</head>
<body>
	<div id="sidenav">
		<a href="index_admin.jsp?ContentPg=adminOrder" >주문배송처리</a>
  		<a href="index_admin.jsp?ContentPg=adminReview">구매후기</a>
  		<a href="index_admin.jsp?ContentPg=adminQA">Q/A</a>
  		<a href="index_admin.jsp?ContentPg=adminItem">메뉴 추가/수정</a>
  		<a href="index_admin.jsp?ContentPg=adminEvent">이벤트 추가/수정</a>
	</div>
</body>
</html>