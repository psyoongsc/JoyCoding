<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<title>원생 로그인 페이지</title>

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
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<div class="container">
		<form method="post" action="CheckProc.jsp" name="check">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="text-align: center;">학생 코드 입력</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input class="form-control" maxlength="6" type="text" name="code" placeholder="학생코드 6자리"/>
						</td>
					</tr>
					<tr>
						<td>
							( 학생코드는 휴대폰번호 뒷자리와 특별한 두개의 숫자로 입력해주세요. )
						</td>
					</tr>
					<tr>
						<td align="right">
							<input class="btn btn-primary pull-right" type="button" value="로그인" OnClick="In_Check()"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>