<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일기장</title>
</head>
<body>

	<h2>일기장</h2>
	<%-- 정적 방식 --%>
	<%-- <div>날짜 : <%@ include file="date.jsp" %></div> --%>
	<%-- 동적 방식 --%>
	<div>날짜 : <jsp:include page="date.jsp" /></div>
	<hr>
	<div>
		오늘은 날씨가 우중충 하다.
		눈비 오락가락
		<%-- <div><%= dateString %></div> --%>
	</div>
	
</body>
</html>