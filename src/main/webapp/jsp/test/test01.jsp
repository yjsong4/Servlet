<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>    
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double average = sum / (double)scores.length;
	%>
	<h3>점수평균은 <%= average %> 입니다.</h3>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(String result:scoreList) {
			if(result.equals("O")) {
				score+= 10;
			}
		}
	%>
	<h3>채점결과는 <%= score %>점 입니다.</h3>
	
	<%!
		public int calculateSum(int number) {
		int sum = 0;
		for(int i = 1; i <= number; i++) {
			sum += i;
		}
		return sum;
	}
	%>
	<h3>1부터 50까지의 합은 <%= calculateSum(50) %> 입니다.</h3>
	
	<%
		String birthDay = "20010820";
		int birth = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2024 - birth + 1;
	%>
	<h3><%= birthDay %>의 나이는 <%= age %> 입니다.</h3>
	
</body>
</html>