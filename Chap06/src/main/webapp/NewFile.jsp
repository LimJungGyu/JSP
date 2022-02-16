<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*"%>
<%
	String indir = "C:\\JSPstudy\\Chap06\\src\\main\\webapp\\test";	
	String infile = "temp.txt";
	int i = 0;
	File dir = new File(indir);
	File afile = null;
	File check = new File(indir, infile);
	if(check.exists()){
		out.print(indir + " 경로에 "+infile+" 파일이 존재합니다<br>");
		
	}else {
		out.print(indir + " 경로에 "+infile+" 파일이 없습니다<br>");
	}
	String dirlist[] = dir.list();
	out.print("test 디렉토리에 있는 파일/폴더들 <br>");
	out.print("<select size=10>");
	for( i = 0; i<dirlist.length; i++){
		afile = new File(indir,dirlist[i]);
		out.print("<option>" + dirlist[i]);
		if(afile.isFile()){
			out.print("("+ afile.length()+"Byte");
			
		}
		out.print("</option>");
	}
	out.print("</select>");
%>