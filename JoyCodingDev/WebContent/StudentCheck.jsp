<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���Ͽ� ������</title>

<script language="JavaScript">
	function In_Check() {
		if (document.check.code.value == "") {
			alert("�л��ڵ带 �Է��ϼ���!!!");
			return;
		}
		if (document.check.code.value.length != 6) {
			alert("�л��ڵ�� 6�ڸ��Դϴ�.")
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
			<td>�л� �ڵ带 �Է��ϼ���</td></tr>
		<tr><center>
			<td><input type="text" name="code" size="17" /></td></tr></center>
	</table>
	<input type="button" value="���Ͽ�" OnClick="In_Check()"/>
</form>
</center>
</body>
</html>