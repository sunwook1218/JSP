<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
<%
pageContext.setAttribute("ex1", "hello");
%>
${ex1} 
<h1>${ex1}</h1>
<h2>${ex1}</h2>

<ul>
pageContext : ${pageContext}
pageScope : ${pageScope}
requestScope : ${requestScope}
sessionScope : ${sessionScope}
applicationScope : ${applicationScope}
param : ${param}
paramValues : ${paramValues}
<%-- header : ${}
headerValues : ${}
cookie : ${}
initParam : ${}--%>
<%
Map<String, String> map = new HashMap();
map.put("key1", "value1");
request.setAttribute("my-map", map);

%>


</ul>
</body>
</html> 