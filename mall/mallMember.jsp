<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con=DriverManager.getConnection
										("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
		
		pstmt=con.prepareStatement("select * from member_tbl_02");
		
		rs=pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	header{
		background-color: #c9f;
		width: 100%;
		text-align: center;
		color: white;
		line-height: 100px;
		height:100px;
		padding: 0;
		margin: 0;
	}
	nav{
		background-color: #ccf;
		height: 50px;
		line-height: 50px;
		
	}
	section{
	background-color: #c0c0c0;
	height:100%;
	}
	
	
	footer{
		background-color: #c9f;
		text-align: center;
		color: white;
		height: 100px;
		line-height: 100px;
		bottom: 0;
	}
</style>
</head>
<body>
<header>
	<h1>쇼핑몰 회원관리 ver1.0</h1>
</header>
<nav>
		<a href="mallJoinFrom.jsp">회원등록  </a>
	<a href="mallMember.jsp">회원목록조회/수정 </a>
	<a href="mallList.jsp">회원매출조회 </a>
	<a href="mallIndex.jsp">홈으로 .</a>
</nav>
<section>
	<h2 style="text-align: center;">회원목록조회/수정</h2>
	<table border="1" style="margin-left: auto; margin-right: auto; text-align: center;">
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>전화번호</td>
			<td>주소</td>
			<td>가입일자</td>
			<td>고객등급</td>
			<td>거주지역</td>
		</tr>
<%
	if(rs.next()){
		do{
			String grade="직원";
			if(rs.getString(6).equals("A")) grade="VIP";
			else if(rs.getString(6).equals("B")) grade="일반";
%>
		<tr>
			<td><a href="mallMemberDto.jsp?custno=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5).substring(0,10) %></td>
			<td><%=grade %></td>
			<td><%=rs.getString(7) %></td>
		</tr>
<%
		}while(rs.next());
	}else{
	}		
%>
	</table>
</section>
<footer>
	<p>HRDKOREA Copyright 2023 All rights reserved. Human Resources Development Service of Korea </p>
</footer>
</body>
<%
	}catch(Exception e){
	}finally{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(con!=null) con.close();
	}
%>
</html>