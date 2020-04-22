<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	div{text-align: center; margin : 100px auto;}
	table{
		width : 500px;
		margin : 0 auto;
	}
	
	table, th, td{
		border : 5px solid lightgray;
		border-collapse: collapse;
	}
	
	fieldset{width : 300px; margin: 0 auto;}
	
</style>

<script type="text/javascript">
//유효성 검사 해야 됨
	function join_ok(f) {
		f.action = "join_ok.jsp";
		f.submit();
	}
	
</script>
</head>
<body>
	<div>
		<form method = "post">
			<fieldset>
				<legend>Join member</legend>
				<table>
					<tbody>
						<tr>
							<th>번호 </th>
							<td><input type="number", name="idx" size=15></td>
						</tr>
						<tr>
							<th>ID </th>
							<td><input type="text", name="id" size=15></td>
						</tr>
						<tr>
							<th>Password </th>
							<td><input type="password", name="password" size=15></td>
						</tr>
						<tr>
							<th>name </th>
							<td><input type="text", name="name" size=15></td>
						</tr>
						<tr> 
							<th> age </th>
							<td><input type="number" name="age" size=15 ></td>
						</tr>
						<tr>
							<th>address </th>
							<td><input type="text", name="addr" size=15></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan = "2"><input type="button" value="Join" onclick="join_ok(this.form)"></td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
		</form>
	</div>

</body>
</html>