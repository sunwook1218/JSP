<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int multiply(int a, int b) {
		return a * b;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	4와 5의 곱은
	<%=multiply(4, 5)%>
	입니다.
</body>
</html>