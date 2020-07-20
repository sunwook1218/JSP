<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1>클라이언트 & 서버정보 관련 메서드</h1>
클라이언트 IP(request.getRemoteAddr()) : <%=request.getRemoteAddr() %> <br />
요청정보길이(request.getContentLength()) : <%=request.getContentLength() %> <br />
요청정보 인코딩(request.getCharacterEncoding()) : <%=request.getCharacterEncoding() %> <br />
요청정보 컨텐츠타입(request.getContentType()) : <%=request.getContentType() %> <br />
요청정보 프로토콜(request.getProtocol()) : <%=request.getProtocol() %> <br />
요청정보 전송방식(request.getMethod()) : <%=request.getMethod() %> <br />
요청 URI(request.getRequestURI()) : <%=request.getRequestURI() %> <br />
컨텍스트 경로(request.getContextPath()) : <%=request.getContextPath() %> <br />
서버이름(request.getServerName()) : <%=request.getServerName() %> <br />
서버포트(request.getServerPort()) : <%=request.getServerPort() %> <br />
</body>
</html>