<!-- member_tbl_02
이름       널?       유형           
-------- -------- ------------ 
CUSTNO   NOT NULL NUMBER(6)    
CUSTNAME          VARCHAR2(20) 
PHONE             VARCHAR2(13) 
ADDRESS           VARCHAR2(60) 
JOINDATE          DATE         
GRADE             CHAR(1)      
CITY              CHAR(2)

money_tbl_02
이름      널? 유형          
------- -- ----------- 
CUSTNO     NUMBER(6)   
SALENOL    NUMBER(8)   
PCOST      NUMBER(8)   
AMOUNT     NUMBER(4)   
PRICE      NUMBER(8)   
PCODE      VARCHAR2(4) 
SDATE      DATE  --> 

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
		("jdbc:oracle:thin:@//localhost:1521/xe","scott","tiger");
			
	pstmt=con.prepareStatement("select max(custno) from member_tbl_02");
	
	rs=pstmt.executeQuery();
	
	int custno=100001;
	if(rs.next()){
		custno=rs.getInt(1)+1;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	header{
		background-color: #6C3;
		width: 100%;
		text-align: center;
		color: white;
		line-height: 100px;
		height:100px;
		padding: 0;
		margin: 0;
	}
	nav{
		background-color: #CC3;
		width: 100%;
		height: 50px;
		line-height: 50px;
		margin: 0;
		padding: 5px;
	
	}
	
	section{
	background-color: #c0c0c0;
	height:100%;
	}
	
	footer{
		background-color: #6C3;
		text-align: center;
		color: white;
		height: 100px;
		line-height: 100px;
		bottom: auto;
	}
</style>
<script>
function checkForm(f) {
	if(f.custname.value.trim()==""){
		alert("회원 성명이 입력되지 않았습니다.");
		f.custname.focus();
		return false;
	}
	if(f.phone.value.trim()==""){
		alert("회원 전화번호가 입력되지 않았습니다.");
		f.phone.focus();
		return false;
	}
	if(f.address.value.trim()==""){
		alert("회원 주소가 입력되지 않았습니다.");
		f.address.focus();
		return false;
	}
	if(f.joindate.value.trim()==""){
		alert("가입일자가 입력되지 않았습니다.");
		f.joindate.focus();
		return false;
	}
	if(f.grade.value.trim()==""){
		alert("고객등급이 입력되지 않았습니다.");
		f.grade.focus();
		return false;
	}
	if(f.city.value.trim()==""){
		alert("도시코드가 입력되지 않았습니다.");
		f.city.focus();
		return false;
	}	
}
</script>
<body>
<header>
	<h1>쇼핑몰 회원관리 ver 1.0</h1>
</header>
<nav>

	<a href="join.jsp">회원등록</a> 
	<a href="member.jsp">회원목록조회/수정</a>
	<a href="Sale.jsp">회원매출조회</a>
	<a href="index.jsp">홈으로 .</a>
</nav>
<section>
	<h2 style="text-align: center;">홈쇼핑 회원등록</h2>
	<form name="f" action="joinProcess.jsp" method="post" onsubmit="return checkForm(this)">
		<table border="1" style="margin-left: auto; margin-right: auto;">
			<tr>
				<td>회원 번호(자동생성)</td>
				<td><input type="text" name="custno" value="<%=custno%>"></td>				
			</tr>
			<tr>
				<td>회원 성명</td>
				<td><input type="text" name="custname"></td>				
			</tr>
			<tr>
				<td>회원 전화</td>
				<td><input type="text" name="phone"></td>				
			</tr>
			<tr>
				<td>회원 주소</td>
				<td><input type="text" name="address"></td>				
			</tr>
			<tr>
				<td>가입 일자</td>
				<td><input type="text" name="joindate"></td>				
			</tr>
			<tr>
				<td>고객 등급[A:VIP, B:일반, C:직원]</td>
				<td><input type="text" name="grade"></td>				
			</tr>
			<tr>
				<td>도시 코드</td>
				<td><input type="text" name="city"></td>				
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="등  록"/>
					<input type="button" value="조   회" onclick="location.href='memberForm.jsp'"/>
				</td>			
			</tr>
		</table>
	</form>
</section>
<footer>
	<p>HRDKOREA Copyright 2023 All rights reserved. Human Resources Development Service of Korea </p>
</footer>
</body>
</html>
<%
}catch(Exception e){
}finally{
	if(rs!=null) rs.close();
	if(pstmt!=null) pstmt.close();
	if(con!=null) con.close();
}
%>