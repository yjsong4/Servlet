<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="/jsp/test/test05.jsp">
	
		<h3>길이 변환</h3>
		<input type="text" name="centimeter">cm
		<label>인치<input type="checkbox" name="change"></label>
		<label>야드<input type="checkbox" name="change"></label>
		<label>피트<input type="checkbox" name="change"></label>
		<label>미터<input type="checkbox" name="change"></label>
		<button type="submit">선택</button>

	</form>

</body>
</html>