<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu main</title>
<link rel = "stylesheet" href="css/cust_tb.css">
<link rel = "stylesheet"  href="css/sw_layout.css">
<style type="text/css">

	
	#main_menu_bar {
  		list-style-type: none;
  		margin: 0;
  		overflow: hidden;
  		background-color : lightcoral;
	}

	#main_menu_bar li {
  		display: inline-block;
	}
 
	li a, .dropbtn {
 		display: inline-block;
  		color: white;
  		text-align: center;
  		padding: 14px 16px; 
  		text-decoration: none;
	}

	#main_menu_bar li a:hover, .dropdown:hover .dropbtn {
  		background-color: #ff1a48;
  		Color : black;
	}

	li.dropdown { display: inline-block;}

	.dropdown-content {
  		display: none;
  		position: absolute;
  		background-color : lightcoral;
  		color : white;
  		min-width: 160px;
  		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  		z-index: 1;
	}

	.dropdown-content a {
 	 	color: white;
  		padding: 12px 16px; 
  		text-decoration: none;
  		display: block;
  		text-align: left;
		float : left
	}

	.dropdown-content a:hover 
	{
		background-color: #ff4c4c;
	}

	.dropdown:hover .dropdown-content {
  		display: block;
	}
	

	#icon_img {
		postion : right;
	}
</style>
</head>
<body>

<p>
	<div class="header">
		<img src="images/banner2.png" alt="top_banner">
	</div>
	
	<ul id = "main_menu_bar">
		<li><a href="index.jsp?strMain=home">Home</a></li>
  		<li class = "dropdown"><a href="index.jsp?strMain=item" class="dropbtn">Menu</a>
  			<div class="dropdown-content" >
      			<a href="index.jsp?strMain=item&strSub=cookie">Cookie & Muffin </a>
      			<a href="index.jsp?strMain=item&strSub=bread">Bread</a>
      			<a href="index.jsp?strMain=item&strSub=dessert">Dessert</a>
      			<a href="index.jsp?strMain=item&strSub=sandwich">Sandwich</a>
      			<a href="index.jsp?strMain=item&strSub=drink">Drink</a>
    		</div>
  		</li>
  		
  		<li><a href="index.jsp?strMain=event">Event</a></li>
  		
  		<li class = "dropdown"><a href="index.jsp?strMain=main_Notice" class="dropbtn">고객센터</a>			
  			<div class="dropdown-content">
      			<a href="index.jsp?strMain=main_Notice&strSub=notice">공지사항</a>
      			<a href="index.jsp?strMain=main_Notice&strSub=QA">Q/A</a>
    		</div>
  		</li>
	</ul>
	<hr>
	<div id = icon_img>
  		<a href="index_cust.jsp?ContentPg=custCart"><img src="images/cart.png" alt="cart" style="float:right;width:42px;height:42px;"></a>
 		<a href="login.html"><img src="images/login.png" alt="login" style="float:right;width:42px;height:42px;"></a>
  	</div>
  </p>	
</body>
</html>