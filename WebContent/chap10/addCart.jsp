<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%--
<%
	Object o = session.getAttribute("cart");
	if (o == null) {
		Set<String> cart = new HashSet<>();
		session.setAttribute("cart", cart);
	}
	
	String prod = request.getParameter("prod");
	if (prod != null) {
		Set<String> cart = (Set<String>) session.getAttribute("cart");
		cart.add(prod);
	}
%>
 --%>
<%
	if (session.getAttribute("candynum") == null) {
		session.setAttribute("candynum", 0);
		System.out.println("null");
	} else if (session.getAttribute("gumnum") == null) {
		session.setAttribute("gumnum", 0);
	} else if (session.getAttribute("waternum") == null) {
		session.setAttribute("waternum", 0);
	}

	Object o = session.getAttribute("cart");
	if (o == null) {
		Set<String> cart = new HashSet<>();
		session.setAttribute("cart", cart);
	}

	String prod = request.getParameter("prod");

	if (prod == "candy") {
		Set<String> cart = (Set<String>) session.getAttribute("cart");
		cart.add(prod);
	} else if (prod == "gum") {

		Set<String> cart = (Set<String>) session.getAttribute("cart");
		cart.add(prod);
	} else if (prod == "water") {

		Set<String> cart = (Set<String>) session.getAttribute("cart");
		cart.add(prod);
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
	<h1>장바구니 담기</h1>
	<form action="" method="post">
		<select name="prod" id="">
			<option value="candy">사탕</option>
			<option value="gum">껌</option>
			<option value="water">물</option>
		</select> <input id="submit" type="submit" value="담기" />
	</form>
	<%= prod %>
	<script>
		$(document)
				.ready(
						function() {
							$("#submit")
									.click(
											function() {
												val
												prod =
	<%=request.getParameter("prod")%>
		console.log(prod);
												if (val === "candy") {
	<%session.setAttribute("candynum", (int) session.getAttribute("candynum") + 1);%>
		} else if (val === "gum") {
	<%session.setAttribute("gumnum", (int) session.getAttribute("gumnum") + 1);%>
		} else if (val === "water") {
	<%session.setAttribute("waternum", (int) session.getAttribute("waternum") + 1);%>
		}
											});
						});
	</script>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>