<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	Connection conn = null;
	Statement st = null;
	String sql = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		st = conn.createStatement();
		sql = "delete from woori where id = '" + id + "'";
		st.executeUpdate(sql);
		conn.close();
		st.close();
	}catch (SQLException e){
		out.println(e);		
	}
%>
<jsp:forward page = "selectall.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>