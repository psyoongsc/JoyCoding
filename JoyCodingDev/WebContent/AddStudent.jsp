<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script language="JavaScript">
	function In_Check() {
		alert("아직 구현중인 기능입니다.");
		return;
	}
</script>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
<title>학생 추가</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<div class="container">
		<form method="post" action="StudentAddProc.jsp" name="check">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="text-align: center;" colspan="2">학생 추가</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th style="text-align: center; width: 20vh" colspan=>학생 코드</th>
						<td><input class="form-control" maxlength="6" type="tel" name="code" placeholder="학생코드 6자리"/></td>
					</tr>
					<tr>
						<th style="text-align: center; width: 20vh" colspan=>학생 이름</th>
						<td><input class="form-control" maxlength="6" type="text" name="name" placeholder="학생이름(최대 6자)"/></td>
					</tr>
					<tr>
						<th style="text-align: center; width: 20vh" colspan=>학년</th>
						<td><input class="form-control" maxlength="6" type="text" name="code" placeholder="ex) 초3 중1 고2 대1"/></td>
					</tr>
					<tr>
						<td align="right" colspan="2">
						<input class="btn btn-primary pull-right" type="button" value="추가" OnClick="In_Check()" />
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>