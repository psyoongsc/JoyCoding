<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" 
    import="java.sql.*" import="bean.LoginBean" %>
    
<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
    
<%
	String sql = "select * from joycoding.lunch";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "1122");
	
	Statement pstmt = conn.createStatement();
			
	ResultSet rs = pstmt.executeQuery(sql);

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ɽ�û</title>
</head>
<body>
<center>
	<h4>���ɸ޴� �����ϱ�</h4>
	
	�԰� ���� �޴��� �����ϼ���<br>
	��û�� : <%= loginBean.getName() %>
	
	<form method=post action=lunch_applicationProc.jsp>
		<select name=lunch_menu size=4>
			<%
				String store_tmp, menu_tmp, price_tmp;
				while (rs.next()) {
					store_tmp = rs.getString(2);
					menu_tmp = rs.getString(3);
					price_tmp = rs.getString(4);
					%>
						<option value="<%= store_tmp %>_<%= menu_tmp %>_<%= price_tmp %>"><%= store_tmp %>_<%= menu_tmp %>
					<%
				}
				
				pstmt.close();
				conn.close();
				rs.close();
			%>
		</select><p>
		
		<input type=submit value=" �� û ">
		<input type=reset value=" �� �� ">
	</form>
</center>
</body>
</html>