<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.global.vote.dto.MemberDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/vote" />
<c:set var="cssFolder" value="/static/css${subPath }"/>
<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<MemberDto> list = new ArrayList<MemberDto>();
list = (ArrayList<MemberDto>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberList</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${cPath }${cssFolder }/style.css"/>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/vote/header/header.jsp" %>
</header>
<main class="d-flex h-100 text-center flex-column align-items-center">
<h2>∙ 후보조회 ∙</h2>
	<table style="width:700px;">
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>소속정당</th>
			<th>학력</th>
			<th>주민번호</th>
			<th>지역구</th>
			<th>대표전화</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getP_name()%></td>
			<td><%=list.get(i).getP_school()%></td>
			<td><%=list.get(i).getM_jumin()%></td>
			<td><%=list.get(i).getM_city()%></td>
			<td><%=list.get(i).getP_tel()%></td>
		</tr>
		<%
		}
		%>
	</table>
</main>
<footer>
<%@ include file="/jsp/vote/footer/footer.jsp" %>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${cPath }${jsFolder}/script.js"></script>
</body>
</html>