<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if (id != null && pw != null) {
		if (id.equals(pw)) {
			session.setAttribute("member", id);
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<h1>로그인</h1>
	<%= session.getId() %>
	<%
		if (session.getAttribute("member") == null) {
	%>
		<form action="" method="post">
			ID : <input type="text" name="id" /> PW : <input type="password"
			name="pw" /> <input type="submit" value="로그인" />
		</form>
	<%
		} else {
	%>
<h1><%= session.getAttribute("member") %>님 환영합니다.</h1>
<a href="forMember.jsp">멤버사이트 접속</a>
<%} %>
</body>
</html>
