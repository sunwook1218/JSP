<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces = "true" %> 
<%@ page trimDirectiveWhitespaces = "true" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	java.util.Calendar cal = java.util.Calendar.getInstance();
%> 
오늘은
<%= cal.get(java.util.Calendar.YEAR) %>년
<%= cal.get(java.util.Calendar.MONTH + 1) %>월
<%= cal.get(java.util.Calendar.DATE) %>일
</body>
</html>