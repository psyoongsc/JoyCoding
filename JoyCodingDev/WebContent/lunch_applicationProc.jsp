<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.sql.*" import="java.util.Date,java.text.SimpleDateFormat" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />

<%
	String sql_1 = "select value from joycoding.jc_variables where name=?";
	String sql_2 = "insert into joycoding.lunch_application (num, code, menu, store, price, date) values (?, ?, ?, ?, ?, ?)";
	
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "1122");
	
		PreparedStatement stmt = conn.prepareStatement(sql_1);
			stmt.setString(1, "lunchCnt");
		
		ResultSet rs = stmt.executeQuery();
		rs.next();
		String num = rs.getString("value");
		
		int p_num = Integer.parseInt(num);
		String sql_3 = "update joycoding.jc_variables set value=? where name=lunchCnt";
		stmt.close();
		
		rs.close();
		
		PreparedStatement stmt2 = conn.prepareStatement(sql_3);
			stmt2.setString(1, String.valueOf(++p_num));
			
		stmt2.executeUpdate();
		stmt2.close();
		
		String info = request.getParameter("lunch_menu");
		String info_data[] = info.split("_");

		Date d = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd a hh:mm");
		
		PreparedStatement pstmt = conn.prepareStatement(sql_2);
			pstmt.setString(1, "1");
			pstmt.setString(2, loginBean.getCode());
			pstmt.setString(3, info_data[1]);
			pstmt.setString(4, info_data[0]);
			pstmt.setString(5, info_data[2]);
			pstmt.setString(6, sf.format(d));
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		out.println("허허허");
		
		%>