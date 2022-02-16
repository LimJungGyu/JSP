<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.io.*"%>
 <%
    String infile = "C:\\JSPstudy\\Chap06\\src\\main\\webapp\\printwriter.jsp";
    String outfile = "C:\\JSPstudy\\Chap06\\src\\main\\webapp\\test\\pwcopy.txt";
	String strline = null;
	FileReader filer = new FileReader(new File(infile));
	FileWriter filew = new FileWriter(new File(outfile));
	BufferedReader bufr = new BufferedReader(filer);
	//BufferedWriter 	bufw = new BufferedWriter(filew);
	PrintWriter pw = new PrintWriter(filew);
    try{
    	while((strline = bufr.readLine()) != null){
    		pw.println(strline+"<br>");
    		}
    	pw.close();
    }catch(IOException e){
    	out.println(e.getMessage());
    }
    bufr = new BufferedReader(new FileReader(outfile));
    try{
    	while((strline = bufr.readLine()) !=null);{
    		out.println(strline);
    		}
    	bufr.close();
    }catch(IOException e){
    	out.println(e.getMessage());
    }
    
    
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>