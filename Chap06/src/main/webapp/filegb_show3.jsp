<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
 <HEAD>
 <link href="style.css" rel="stylesheet" type="text/css">
 </HEAD>
<BODY>


<%
String filer = "C:\\JSPstudy\\Chap06\\src\\main\\webapp\\test\\write.txt"; 
File board_file = new File(filer);
String s=null;

try {   
 FileReader in1 = new FileReader(board_file); 
 BufferedReader in2 = new BufferedReader(in1); 
 while((s=in2.readLine()) != null) {
  out.println(s);
 }
 in2.close();
} catch(IOException e) {
 out.println(e.getMessage());
}
%>
<CENTER>
 <A href="filegb_write3.html"></A>
</CENTER>
</BODY>
</HTML>