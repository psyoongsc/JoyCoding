<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="bean.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="bean.LoginBean" scope="session" />
	<jsp:setProperty name="loginBean" property="name" />

<%

	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
</head>
<body>
<%= loginBean.getName() %>�� �������.<p>

<form method="post" action="lunch_application.jsp" name="menu">
	<input type="submit" name="lunch_application" value="���ɽ�û" />
</form>
</body>
</html>