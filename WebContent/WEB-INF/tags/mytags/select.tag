<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="optionMap" %>

<select name="${name }">
	<c:forEach var="option" items="${optionMap }">
	<option value="${option.key }">${option.value }</option>
	</c:forEach>
</select>