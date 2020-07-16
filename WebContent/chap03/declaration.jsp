<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int add(int v1, int v2) {
		int result = 0;
		result = v1 + v2;
		return result;
	}

	public int subtract(int v1, int v2) {
		int result = 0;
		result = v1 - v2;
		return result;
	}

	public int multiply(int v1, int v2) {
		int result = 0;
		result = v1 * v2;
		return result;
	}

	public int divide(int v1, int v2) {
		int result = 0;
		result = v1 / v2;
		return result;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int value1 = 3;
		int value2 = 9;
		int addResult = add(value1, value2);
		int subtractResult = subtract(value1, value2);
		int multiplyResult = multiply(value1, value2);
		int divideResult = divide(value1, value2);
	%>
	
	3와 9의 관계
	합 : <%=addResult %>
	차 : <%=subtractResult %>
	곱 : <%=multiplyResult %>
	분 : <%=divideResult %>

</body>
</html>