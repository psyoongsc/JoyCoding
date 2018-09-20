<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.sql.*" import="bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="name" />
    
<%
	String sql = "select * from joycoding.lunch";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "1122");
	
		Statement pstmt = conn.createStatement();
			
		ResultSet rs = pstmt.executeQuery(sql);
	}catch(Exception e) {
		%>
		<script>
		alert("점심메뉴 조회에 실패하였습니다.");
		document.location.href="StudentCheck.jsp";
		</script>
		<%
	}

%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
<title>점심신청</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<br>
	<div class="container" style="overflow:hidden" >
			<table class="table table-striped" style="text-align: center; border: 2px solid #dddddd; overflow:hidden">
				<thead>
					<tr>
						<th colspan="3">점심 메뉴 선택</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 33.3333%;">
							이름 : <%= loginBean.getName() %>
						</td>
						<td style="width: 33.3333%;">
							코드 : <%= loginBean.getCode() %>
						</td>
						<td style="width: 33.3333%;">
							날짜 : yyyy.MM.dd
						</td>
					</tr>
					<tr>
						<td style="height:60vh ; overflow:hidden" colspan="3" >
							<div class="container" style="height: 60vh; overflow:scroll" >
								<table style="text-align: center; width:100%; height:60vh ; overflow:hidden" >
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
										<td>성용아 살아나라</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr >
						<td style="height:10%" colspan="3" align="right">
							<input class="btn btn-outline-primary pull-right" type="button" value="신 청" OnClick="In_Check()" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
</body>
</html>