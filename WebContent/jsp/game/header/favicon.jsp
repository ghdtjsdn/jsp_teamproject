<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="cPath" value="${pageContext.request.contextPath }"/>
<c:set var="subPath" value="/game" />
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" /> 
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> -->
<link rel="icon" type="image/x-icon" sizes="16x16"href="${imageFolder }/favicon.ico">
<link rel="shortcut icon" type="image/x-icon"	href="${imageFolder }/favicon.ico">
<!-- <title>Insert title here</title>
</head>
<body>

</body>
</html> -->