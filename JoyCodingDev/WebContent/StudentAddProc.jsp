<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
    
<%
	String sql_1 = "insert into joycoding.account (code, name, position, grade) values (?, ?, ?, ?)";

	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://joycoding.iptime.org/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "root codingjoy77");

		PreparedStatement stmt = conn.prepareStatement(sql_1);
			stmt.setInt(1, Integer.parseInt(request.getParameter("code")));
			stmt.setString(2, request.getParameter("name"));
			stmt.setString(3, "student");
			stmt.setString(4, request.getParameter("grade"));
	
		stmt.executeUpdate();
		
		stmt.close();
		conn.close();
	}catch(Exception e) {
		%>
		<script>
		alert("학생 추가에 실패하였습니다.");
		document.location.href="AddStudent.jsp";
		</script>
		<%
	}
	%>
	<script>
	alert("학생 추가에 성공하였습니다.");
	document.location.href="StudentManage.jsp";
	</script>
	<%
%>