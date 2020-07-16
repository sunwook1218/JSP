<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
	<h1>장바구니 보기</h1>
	<%
		int candynum = (int) session.getAttribute("candynum");
		int gumnum = (int) session.getAttribute("gumnum");
		int waternum = (int) session.getAttribute("waternum");
		Object o = session.getAttribute("cart");
		if (o != null) {
			Set<String> cart = (Set<String>) o;
			for (String prod : cart) {
				if(prod.equals("candy")) {
					out.print("<li>");
					out.print(prod + " " + candynum);
					out.print("</li>");
				} else if (prod.equals("gum")) {
					out.print("<li>");
					out.print(prod + " " + gumnum);
					out.print("</li>");
				} else if (prod.equals("water")) {
					out.print("<li>");
					out.print(prod + " " + waternum);
					out.print("</li>");
				}
			}
		}
	%>
</body>
</html>