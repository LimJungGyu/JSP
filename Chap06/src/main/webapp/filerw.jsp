<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.io.*"%>
<%
String infile = "C:\\JSPstudy\\Chap06\\src\\main\\webapp\\filerw.jsp";
String outfile = "C:\\JSPstudy\\Chap06\\src\\main\\webapp\\test\\filerwcopy.txt";
int ch =0;
File inf = new File(infile);
File outf = new File(outfile);
FileReader filer = new FileReader(inf);
FileWriter filew = new FileWriter(outf);
try{
	while((ch = filer.read()) !=-1){
		filew.write(ch);
		%>
		<%=ch %>	
		<%
	}
	filer.close();
	filew.close();
	
}catch(IOException e){
	out.println(e.getMessage());
}
%>