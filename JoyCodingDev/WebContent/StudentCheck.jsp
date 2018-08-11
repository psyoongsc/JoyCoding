<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>원생 등하원 페이지</title>

<script language="JavaScript">
	function In_Check() {
		if (document.check.code.value == "") {
			alert("학생코드를 입력하세요!!!");
			return;
		}
		if (document.check.code.value.length != 6) {
			alert("학생코드는 6자리입니다.")
			document.check.code.value = "";
			return;
		}
		document.check.submit();
	}
</script>
</head>
<body>
<center>
<form method="post" action="CheckProc.jsp" name="check">
	<table border="1" colspan="1">
		<tr>
			<td>학생 코드를 입력하세요</td></tr>
		<tr><center>
			<td><input type="text" name="code" size="17" /></td></tr></center>
	</table>
	<input type="button" value="등하원" OnClick="In_Check()"/>
</form>
</center>
</body>
</html>