<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
<link rel = "stylesheet"  href="css/sw_layout.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> 
<style type="text/css">
	.event_title{
		width:100%;
		margin:10px 0 3px 0; 
		text-align:center;
		font-size : 14px;
		color : black;
	}
	.event_date{
		width:100%;
		margin:0 0 10px 0; 
		text-align:center;
		font-size:12px;
		color: black;
	}
	
	ul {
  		list-style-type: none;
  		background-color: white;
		float : auto;
	}
	
	li {display : inline-block;}

</style>
</head>
<body>
		<hr>
 	
		<div align = "center">
		   	<ul>      
				<li>
        			<a href="event_sub.jsp?event_no=01">
          			<img src='images/events/event_02.jpg'>
                    <div class = "event_title">[진행중인이벤트] 화이트데이 이벤트 </div>
          			<div class="event_date">2020-03-07</div> </a>
      			</li>
            
            	<li>
        			<a href="event_Sub01.html?event_no = 01">
          			<img src="images/events/event_03.jpg">
					<div class = "event_title">[진행중인 이벤트] 발렌타인데이 이벤트</div>          
          			<div class = "event_date">2020-02-07</div>
        			</a>
      			</li>
            
            	<li>
        			<a href="#">
          			<img src="images/events/event_01.jpg">
					<div class="event_title">[지난이벤트] 수퍼히어로 이벤트</div>
          			<div class="event_date">2019-12-18</div>
        			</a>
      			</li>
      		</ul>
      		
      		<hr>
      
      		<ul>      
				<li>
        			<a href="#">
          			<img src='images/events/event_04.jpg'>
                    <div class = "event_title">[진행중인이벤트] 슈퍼히어로 이벤트</div>
          			<div class="event_date">2019-04-30</div> </a>
      			</li>
            
            	<li>
        			<a href="#">
          			<img src="images/events/event_05.jpg">
					<div class = "event_title">[지난이벤트] 화이트데이 이벤트</div>          
          			<div class = "event_date">2019-03-07</div>
        			</a>
      			</li>
            
            	<li>
        			<a href="#">
          			<img src="images/events/event_06.jpg">
					<div class="event_title">[지난이벤트] 발렌타인 이벤트</div>
          			<div class="event_date">2019-02-18</div>
        			</a>
      			</li>
      		</ul>
      	</div>
      	
      	<hr>
      	
      	<div align="center">
      		<a href = #>[1]</a>
      		<a href = #>[2]</a>
      	</div>  		
	
	
		<div class ="footer" >
  		<p>Copyright 2020 SweetForest</p>
	</div>	
</body>
</html>