<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, bean.LoginBean"%>
    
    <jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="code" />

<%
	String sql = "select * from joycoding.account";
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://joycoding.iptime.org/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "root codingjoy77");
	
		Statement stmt = conn.createStatement();
			
		ResultSet rs = stmt.executeQuery(sql);
		
%>
<!DOCTYPE html>
<script language="JavaScript">
	function In_Check() {
		alert("아직 구현중인 기능입니다.");
		return;
	}
</script>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
<title>학생 관리</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<div class="container">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="text-align: center;" colspan="4">학생 명단 관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<form method="post" action="AddStudent.jsp" name="addStudent">
							<td align="right" colspan="4">
								<input class="btn btn-success pull-right" type="submit" value="추가" />
								<input class="btn btn-warning pull-right" type="button" value="수정" OnClick="In_Check()" />
								<input class="btn btn-danger pull-right" type="button" value="삭제" OnClick="In_Check()" />
							</td>
						</form>
					</tr>
					<tr>
						<th>
							코드
						</th>
						<th>
							이름
						</th>
						<th>
							구분
						</th>
						<th>
							학년
						</th>
					</tr>
				<%
					while(rs.next()) {
				%>
					<tr>
						<td>
						<%=
							rs.getString(1)
						%>
						</td>
						<td>
						<%=
							rs.getString(2)
						%>
						</td>
						<td>
						<%=
							rs.getString(3)
						%>
						</td>
						<td>
						<%=
							rs.getString(4)
						%>
						</td>
					</tr>
				<%
					} 
				%>
				</tbody>
			</table>
		</div>
</body>
<%
stmt.close();
conn.close();
rs.close();
	}catch(Exception e) {
		%>
		<script>
		alert("학생명단 조회에 실패하였습니다.");
		document.location.href="teacher_main.jsp";
		</script>
		<%
	}
%>
</html>