<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="code" />

<%
	String sql = "select * from joycoding.account where code=?";
	try {
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://joycoding.iptime.org/joycoding?useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root", "root codingjoy77");
	
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
			
			if(rs.getString("position").equals("student")) {
				pstmt.close();
				conn.close();
				rs.close();
			%>
				<jsp:forward page="lunch_application.jsp">
					<jsp:param name="name" value="<%= name %>" />
				</jsp:forward>
			
			<%
			}
			else {
				pstmt.close();
				conn.close();
				rs.close();
			%>
				<jsp:forward page="teacher_main.jsp">
					<jsp:param name="name" value="<%= name %>" />
				</jsp:forward>
			<%
			}
			
		}
	}catch(Exception e) {
		%>
		<script>
		alert("학생코드 조회에 실패하였습니다.");
		document.location.href="StudentCheck.jsp";
		</script>
		<%
	}
%>