<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/golf"/>
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" />
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> -->
<link rel="shortcut icon" href="${imageFolder }/favicon.ico" type="image/x-icon">
<link rel="icon" href="${imageFolder }/favicon.ico" type="image/x-icon">
<!-- <title>Insert title here</title>
</head>
<body>

</body>
</html> -->