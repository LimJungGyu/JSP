<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<%
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	
	//jdbc-odbc driver를 등록한다
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
	}catch(ClassNotFoundException e){
		out.println(e);
	}//db와 연결
	try{
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		out.print("<br>데이터베이스에 연결 성공");
	}catch(SQLException e){
		out.print("<br>데이터베이스 연결에 실패");
	}
	//쿼리실행
	try{
		st= con.createStatement();
		st.executeUpdate("create table woori(id varchar2(30) primary key,name varchar2(30))");
		out.print("<br>새로운 테이블이 생성되었습니다");
	}catch(SQLException e){
		out.print("<br>");
		out.print(e+"(테이블 생성에 실패<br>");
	}
	
	try{
		rs = st.executeQuery("select * from woori");
		ResultSetMetaData rsmd = rs.getMetaData();
		out.print(rsmd.getColumnCount()+"개의 컬럼을 가지고 있으며<br>");
		out.print("첫번째 컬럼은" + rsmd.getColumnName(1)+"<br>");
		out.print("두번째 컬럼은" + rsmd.getColumnName(2)+"<br>");
		rs.close();
		st.close();
		con.close();
	}catch(SQLException e){
		out.print(e);
	}
		
%>
<a href="main.html">메인으로</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create</title>
</head>
<body>

</body>
</html>