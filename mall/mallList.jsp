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
	String sql="select m1.custno, custname, grade, sum(price)"
	+" from MEMBER_TBL_02 m1 inner join money_tbl_02 m2"
	+" on m1.custno=m2.custno"
	+" group by m1.custno, m1.custname, m1.grade order by sum(price) desc";

	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con=DriverManager.getConnection
				("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");  
		
		pstmt=con.prepareStatement(sql);
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
	
	<a href="mallJoinForm.jsp">회원등록</a>
	<a href="mallmemberDto.jsp">회원목록조회/수정</a>
	<a href="mallList.jsp">회원매출조회</a>
	<a href="mallIndex.jsp">홈으로</a>
</nav>
<section>
	<h2 style="text-align: center;">회원매출조회</h2>
	<table border="1" style="margin-left: auto; margin-right: auto; text-align: center;">
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>고객등급</td>
			<td>매출</td>
		</tr>
<%
	if(rs.next()){
		do{
			String grade="직원";
			if(rs.getString(3).equals("A")) grade="VIP";
			else if(rs.getString(3).equals("B")) grade="일반";
%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=grade %></td>
			<td><%=rs.getString(4) %></td>
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
<%
	}catch(Exception e){
	}finally{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(con!=null) con.close();
	}
%>
</body>
</html>