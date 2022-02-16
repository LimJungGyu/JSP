<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String sql = null;
	Connection conn = null;
	Statement st = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		st = conn.createStatement();
		sql = "update woori set";
		sql = sql + " name ='" + name + "', " + "email= '"+ email + "'";
		sql = sql + " where id = '" + id + "'";
		st.executeUpdate(sql);
		conn.close();
		st.close();
	}catch (SQLException e){
		out.println(e);
	}
%>
<jsp:forward page="selectall.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>