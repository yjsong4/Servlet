<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input 다루기</title>
</head>
<body>

	<form method="post" action="/jsp/ex/ex03.jsp">
	
		<label>닉네임 : </label> <input type="text" name="nickname">
		
		<!-- 라디오 버튼 -->
		<h3>좋아하는 동물</h3>
		<label>강아지<input type="radio" name="animal" value="dog"></label>
		<label>고양이<input type="radio" name="animal" value="cat"></label>
		<label>호랑이<input type="radio" name="animal" value="tiger"></label>
		
		
		<!-- 셀렉트 박스 -->
		<h3>좋아하는 과일 선택</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option value="strawberry">딸기</option>
		</select>
		
		<!-- 체크 박스 -->
		<h3>좋아하는 음식을 모두 고르세요</h3>
		<label>민트초코<input type="checkbox" name="food" value="mintchocolate"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="hawaiianpizza"></label>
		<label>번데기<input type="checkbox" name="food" value="worm"></label>
		<button type="submit">선택</button>
	
	</form>
</body>
</html>