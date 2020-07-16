<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="chap11.Member" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<% 
Object o = session.getAttribute("members");
if(o == null) {
	o = new ArrayList<Member>();
	session.setAttribute("members", o);
}

List<Member> list = (List<Member>) session.getAttribute("members");
if(request.getParameter("name") != null) {
%>
<jsp:useBean id="member" class="chap11.Member">
	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>
<%
	list.add(member);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<form action="" method="post">
이름 : <input type="text" name="name"/>
ssn : <input type="text" name="ssn"/>
주소 : <input type="text" name="address"/>
email : <input type="text" name="email"/>
<input type="submit" value="생성"/>
</form>

<div class="container">
	<div class="row">
		<div class="col">
			<table class="table">
			
			<c:forEach items="${members}" var="member" varStatus="status">
			<c:if test="${status.first }">
				<tr>
					<td>나이</td>
					<td>ssn</td>
					<td>이메일</td>
					<td>주소</td>
				</tr>
			</c:if>
			 <tr>
			 	<td>${member.name }</td>
			 	<td>${member.ssn }</td>
			 	<td>${member.email }</td>
			 	<td>${member.address }</td>
			 </tr>
			</c:forEach>
			
			</table>
		</div>
	</div>
</div>
</body>
</html>