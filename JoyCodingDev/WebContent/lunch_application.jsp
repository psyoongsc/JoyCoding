<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.sql.*" import="bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="name" />
    
<%
	String sql = "select * from joycoding.lunch";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "1122");
	
	Statement pstmt = conn.createStatement();
			
	ResultSet rs = pstmt.executeQuery(sql);

%>
    
<!DOCTYPE html>
<html>
<head >
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
<title>점심신청</title>
</head>
<body>
	<br>
	<div class="container" style="height: 50%; overflow:hidden" >
			<table class="table table-striped" style="text-align: center; border: 2px solid #dddddd; height: 50% ;overflow:hidden">
				<thead>
					<tr style="height:7%">
						<th colspan="2" style="text-align: center;">점심 메뉴 선택</th>
					</tr>
				</thead>
				<tbody>
					<tr style="height:20% ">
						<td  valign=middle >
							이름 : <%= loginBean.getName() %>
						</td>
						<td valign=middle >
							코드:	<%= loginBean.getCode() %>
						</td>
					</tr>
					<tr>
						<td style="height:50vh ; overflow:hidden" colspan="2" >
							<div class="container" style="height: 50vh; overflow:scroll" >
								<table style="text-align: center; width:100%; height:50vh ; overflow:hidden" >
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
									<tr>
										<td>성용아 살아나라</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr >
						<td style="height:10%" colspan="2" align="right">
							<input class="btn btn-outline-primary pull-right" type="button" value="로그인" OnClick="In_Check()" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
</body>
</html>