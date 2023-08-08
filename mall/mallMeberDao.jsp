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
request.setCharacterEncoding("utf-8");
String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

String sql="update member_tbl_02 set"
	+" custname=?, phone=?, address=?, joindate=?, GRADE=?, city=?"
	+" where custno=?";

Connection con=null;
PreparedStatement pstmt=null;
try{
	Class.forName("oracle.jdbc.OracleDriver");
	con=DriverManager.getConnection
			("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
	
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1, custname);
	pstmt.setString(2, phone);
	pstmt.setString(3, address);
	pstmt.setString(4, joindate);
	pstmt.setString(5, grade);
	pstmt.setString(6, city);
	pstmt.setString(7, custno);
	int result=pstmt.executeUpdate();
	
	if(result>0){
%>
<script>
	alert("회원수정이 완료되었습니다.");
	history.back();
</script>
<%} else{%>
<script>
	alert("회원수정이 실패했습니다.");
	history.back();
</script>
<%
}}catch(Exception e){
	}finally{
		if(pstmt!=null) pstmt.close();
		if(con!=null) con.close();
}
%>