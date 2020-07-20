<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="dan" required="true" %>

<p>${dan }단 구구단</p>
<c:forEach begin="${1 }" end="${9 }" var="g">
	<h2>${dan } * ${g } = ${dan * g} <br /></h2>
</c:forEach>