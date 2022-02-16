<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@page language= "java" import ="java.sql.*" %>
<%
Connection conn= null;
Statement st = null;
ResultSet rs = null;
//jdbc-odbc-driver를 등록한다

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
}catch(ClassNotFoundException e){
	out.println(e);
}
//db와 연결한다
try{
	conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","1234");
}catch(SQLException e){
	out.print(e);
}
//쿼리를 실행한다
try{
	st = conn.createStatement();
	st.executeUpdate("alter table woori add column email varchar2(30)");
	st.executeUpdate("alter table woori add column password varchar2(30)");
	st.executeUpdate("alter table woori moidfy column name varchar2(50) not null");
}catch(SQLException e){
	out.println(e);
}
try{
	rs = st.executeQuery("select * from woori");
	ResultSetMetaData rsmd  = rs.getMetaData();
	out.println("테이블이 수정되었습니다<br>");
	out.println(rsmd.getColumnCount()+"개의 컬럼을 가지고있으며<br>");
	for(int i=1;i<=rsmd.getColumnCount();i++){
		out.println(i+"번째 컬럼은"+rsmd.getColumnName(i));
		out.println("이고 유형은"+rsmd.getColumnTypeName(i));
		out.println("이며 크기는"+rsmd.getPrecision(i)+"<br>");
		
	}
	rs.close();
	st.close();
	conn.close();
	
}catch(SQLException e){
	out.println(e);
}

%>
<A href = main.html>메인으로</A>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alter</title>
</head>
<body>

</body>
</html>