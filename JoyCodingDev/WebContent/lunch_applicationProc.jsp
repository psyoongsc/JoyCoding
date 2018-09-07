<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.sql.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />

<%
	String sql_1 = "select value from joycoding.jc_variables where name=?";
	String sql_2 = "insert into joycoding.lunch_application (num, name, menu, store, price, date) values (?, ?, ?, ?, ?, ?)";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "112");
	
		PreparedStatement stmt = conn.prepareStatement(sql_1);
			stmt.setString(1, "lunchCnt");
		
		ResultSet rs = stmt.executeQuery();
		rs.next();
		String num = rs.getString("value");
		
		int p_num = Integer.parseInt(num);
		String sql_3 = "update joycoding.jc_variables set value=? where name=?";
		stmt.close();
		
		rs.close();
		
		PreparedStatement stmt2 = conn.prepareStatement(sql_3);
			stmt2.setString(1, String.valueOf(++p_num));
			stmt2.setString(2, "lunchCnt");
			
		stmt2.executeUpdate();
		stmt2.close();
		
		String info = request.getParameter("lunch_menu");
		String info_data[] = info.split("_");
		
		Timestamp tmstm = new Timestamp(System.currentTimeMillis());
		
		
		PreparedStatement pstmt = conn.prepareStatement(sql_2);
			pstmt.setString(1, String.valueOf(p_num));
			pstmt.setString(2, loginBean.getName());
			pstmt.setString(3, info_data[1]);
			pstmt.setString(4, info_data[0]);
			pstmt.setString(5, info_data[2]);
			pstmt.setTimestamp(6, tmstm);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();

	}catch(Exception e) {
		%>
		<script>
		alert("점심메뉴 신청에 실패하였습니다.");
		document.location.href="StudentCheck.jsp";
		</script>
		<%
	}
		%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점심신청</title>
</head>
<body>
<center>
	<h4>점심신청이 완료되었습니다!</h4>
	<form method="post" action="StudentCheck.jsp">
		<input type="submit" value=" 확 인 ">
	</form>
</center>
</body>
</html>