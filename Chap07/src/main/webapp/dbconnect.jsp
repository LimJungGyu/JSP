<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	PreparedStatement pstmt =null;
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;

	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		out.print("연결되었습니다.!!!");
		}catch (Exception e){
		out.print(e);
		}
%>