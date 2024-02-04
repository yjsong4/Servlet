<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환</title>
</head>
<body>

	<%
		int centimeter = Integer.parseInt(request.getParameter("length"));
		String[] types = request.getParameterValues("type");
	%>
	
	<h2>변환 결과</h2>
	<h3><%=centimeter %>cm</h3>
	<hr>
	
	<%
		for(int i = 0; i < types.length; i++) {
			String type = types[i];	
			
			
			
		}
		
	
	%>


</body>
</html>