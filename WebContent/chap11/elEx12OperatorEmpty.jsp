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
int[] arr = null;
request.setAttribute("array1", arr);
int[] arr2 = {1, 2};
request.setAttribute("array2", arr2);
%>

\${empty array1} : ${empty array1} <br />
\${empty array2} : ${empty array2}

<br /><br /><br />
<% 
ArrayList<Integer> arrList1 = new ArrayList<Integer>();
request.setAttribute("arrList1", arrList1);
ArrayList<Integer> arrList2 = new ArrayList<Integer>();
arrList2.add(1);
request.setAttribute("arrList2", arrList2);
%>  
\${empty arrList1} : ${empty arrList1} <br />
\${empty arrList2} : ${empty arrList2}
</body>
</html>