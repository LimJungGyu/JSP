<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	PreparedStatement pstmt =null;
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;

	
	try{
		rs.close();
		st.close();
		pstmt.close();
		conn.close();
		out.print("연결되었습니다.!!!");
		}catch (Exception e){
		out.print(e);
		}
%>