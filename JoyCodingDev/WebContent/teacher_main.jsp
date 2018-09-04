<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="name" />
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
<title>선생님 메인페이지</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<div class="container">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="text-align: center;"><%= loginBean.getName() %>님 어서오세요</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center"><form method="post" action="StudentManage.jsp">
								<input class="btn btn-outline-primary pull-right" type="submit" value="학생 명단관리">
							</form></td>
					</tr>
				</tbody>
			</table>
	</div>
</body>
</html>