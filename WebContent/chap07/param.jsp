<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>"C:/workspace_jee/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/work/Catalina/localhost/myjsp/org/apache/jsp/chap07/param_jsp.java"
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

    include 전 name 파라미터 값:
    <%=request.getParameter("name")%>

    <hr>
    <jsp:include page="body_sub.jsp">
        <jsp:param name="name" value="최범균" />
    </jsp:include>

    </hr>
    
    include후 name 파라미터 값: <%= request.getParameter("name")%>
</body>
</html>