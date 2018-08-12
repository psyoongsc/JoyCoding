<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*, bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="page" />
	<jsp:setProperty name="loginBean" property="code" />

<%
	String sql = "select name from joycoding.account where code=?";
	
	
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "1122");
	
		PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginBean.getCode());
			
		ResultSet rs = pstmt.executeQuery();

		rs.next();
		
		String name = rs.getString("name");
		
		out.println(name + "님 어서오세요.");
		
		pstmt.close();
		conn.close();
		%>
		<jsp:forward page="main.jsp">
			<jsp:param name="name" value="<%= name %>" />
		</jsp:forward>
		
		<%
		rs.close();
%>