<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="code" />

<%
	String sql = "select * from joycoding.account where code=?";
	
	
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "1122");
	
		PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginBean.getCode());
			
		ResultSet rs = pstmt.executeQuery();
		
		
		
		if(rs.next() == false){
			%>
			<script>
			alert("존재하지 않는 학생코드 입니다.");
			document.location.href="StudentCheck.jsp";
			</script>
			<%
		}else{
			String name = rs.getString("name");
			
			out.println(name + "님 어서오세요.");
			
			if(rs.getString("position").equals("student")) {	
			%>
				<jsp:forward page="lunch_application.jsp">
					<jsp:param name="name" value="<%= name %>" />
				</jsp:forward>
			
			<%
			}
			else {
			%>
				<jsp:forward page="teacher_main.jsp">
					<jsp:param name="name" value="<%= name %>" />
				</jsp:forward>
			<%
			}
			
		}
	
		
		
		pstmt.close();
		conn.close();
		rs.close();
%>