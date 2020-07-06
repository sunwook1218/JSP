<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%--
scriptlet(스크립트릿)
	java 명령문 작성 (일반 명령문, if, for, while 등)
expression(표현식)
	출력 메소드의 argument
declaration(선언부)
	JSP 파일이 java 파일로 번역되는데, 그 java 파일의 필드 또는 메소드 선언부
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum = sum + i;
		}
	%>
	1부터 10까지의 합은
	<%=sum%>입니다.

</body>
</html>