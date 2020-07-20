<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="attr" fragment="true" %>

<jsp:invoke fragment="attr" />

<jsp:invoke fragment="attr" var="myAttr2" scope="page"/>
<h2>attr 저장 후</h2>
\${myAttr2} : ${myAttr2} <br />
이렇게 el에 값을 저장 할 수도 있다.