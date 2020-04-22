<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{text-align: center;}
	table {width: 700px; margin: 0 auto;}
	table, th, td {
		border: 1px solid darkblue; 
		text-align: center; 
		border-collapse: collapse;
	   }
	 .bc_color{ color: red;}
</style>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn1").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController",
				type : "get",
				dataType : "xml",
				success : function(data) {
					var str = "";
					$(data).find("product").each(function() {
						str += "<tr>";
						var name = $(this).find("name").text();
						var price = $(this).find("price").text();
						str += "<td>"+ name + "</td><td>"+price+"</td>";
						str += "</tr>";
					});
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
		$("#btn2").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController2",
				type : "get",
				dataType : "xml",
				success : function(data) {
					var str = "";
					$(data).find("product").each(function() {
						str += "<tr>";
						var name = $(this).find("name").text();
						var price = $(this).find("price").text();
						str += "<td>"+ name + "</td><td>"+price+"</td>";
						str += "</tr>";
					});
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
		$("#btn3").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController4",
				type : "get",
				dataType : "xml",
				success : function(data) {
					$("#tbody").addClass("bc_color");
					var str = "";
					$(data).find("product").each(function() {
						str += "<tr>";
						var name = $(this).attr("name");
						var price = $(this).attr("price");
						str += "<td>"+ name + "</td><td>"+price+"</td>";
						str += "</tr>";
					});
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
		$("#btn4").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController5",
				type : "get",
				dataType : "xml",
				success : function(data) {
					var str = "";
					$(data).find("product").each(function() {
						str += "<tr>";
						var name = $(this).find("name").text();
						var price = $(this).attr("price");
						str += "<td>"+ name + "</td><td>"+price+"</td>";
						str += "</tr>";
					});
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
		$("#btn5").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController6",
				type : "get",
				dataType : "json",
				success : function(data) {
					var str = "";
				/* 
			      $.each(data,function(data){
			    	 str += "<tr>";
					 var name = this["name"]
					 var price = this["price"]
					 str += "<td>"+ name + "</td><td>"+price+"</td>";
					 str += "</tr>";
			      });	
			     */  
			      $.each(data,function(k,v){
				    	 str += "<tr>";
						 var name = v["name"]
						 var price = v["price"]
						 str += "<td>"+ name + "</td><td>"+price+"</td>";
						 str += "</tr>";
				      });	
					
				  $("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
		$("#btn6").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController7",
				type : "get",
				dataType : "text",
				success : function(data) {
					var str = "";
					/*
					if(data != null){
						str +="<tr>";
						str +="<td> 호두과자 </td><td>2500</td>";
						str +="</tr>";
					}else{
						str +="<tr>";
						str +="<td> 초코파이 </td><td>300</td>";
						str +="</tr>";
					}
					*/
					var sp1 = data.split("/");
					for(var k in sp1){
						str +="<tr>";
						
						var sp2 = sp1[k].split(",");
						for(var k2 in sp2){
							str += "<td>"+sp2[k2]+"</td>";
						}
						
						str +="</tr>";
					}
					
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
	});
</script>
</head>
<body>
	<div>
		<button id="btn1"> xml 정보 가져오기 </button>
		<button id="btn2"> xml 정보 가져오기 </button>
		<button id="btn3"> xml 속성  정보 가져오기 </button>
		<button id="btn4"> xml 가져오기 </button>
		<button id="btn5"> JSON 정보 가져오기 </button>
		<button id="btn6"> 텍스트 정보 가져오기 </button>
	</div>
	<hr>
	<div>
		<table>
			<thead>
				<th> 종류</th> <th> 가격 </th>
			</thead>
			<tbody id="tbody"></tbody>
		</table>
	</div>
	
</body>
</html>