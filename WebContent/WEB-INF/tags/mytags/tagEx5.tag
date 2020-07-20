<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="count" %>
<%@ attribute name="member" type="chap11.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<h3>tag 5</h3>
<h4>count : ${count + count}</h4>
<h4>member name : ${member.name }</h4>