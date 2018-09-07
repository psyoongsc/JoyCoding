<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
    
<%
	String[] sql = {"select * from joycoding.coder_lv1 where code=? order by q_num ASC", "select * from joycoding.coder_lv2 where code=? order by q_num ASC", "select * from joycoding.coder_lv3 where code=? order by q_num ASC", "select * from joycoding.coder_lv4 where code=? order by q_num ASC"};
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://joycoding.iptime.org/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "root codingjoy77");
	
		Statement stmt = conn.createStatement();
			
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 코더 진도 현황</title>
</head>
<body>



<%
		for (int i=0; i<4; i++) {
			ResultSet rs = stmt.executeQuery(sql[i]);
		}
	}catch(Exception e) {
		
	}
%>
</body>
</html>