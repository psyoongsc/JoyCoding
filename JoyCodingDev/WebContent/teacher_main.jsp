<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="name" />
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 메인페이지</title>
</head>
<body>
	<%= loginBean.getName() %>님 어서오세요.<p>
	
	<form method="post" action="teacher_lunch_application.jsp">
		<input type="submit" value="학생 점심관리">
	</form>
</body>
</html>