<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.*" %>
    <%@page language = "java" import="java.text.*" %>
<jsp:useBean id="cnt" scope = "application" class="ch05.Counter"/>
<% 
	int count= 0;
	session = request.getSession();
	session.setMaxInactiveInterval(1);
	String first = (String)session.getValue("checkfirst");
	
	String count_file = "C:\\JSPstudy\\Chap05\\src\\main\\webapp\\test\\count.txt";
	if(cnt.getCount() ==0){
		int j = 0;
		String old = null;
		File infile = new File(count_file);
		try{
		if(infile.exists()){
			
			//FileReader firead = new FileReader(infile);
			BufferedReader input = new BufferedReader(new FileReader(infile));
			if((old = input.readLine()) != null){
				int i= Integer.parseInt(old);
				for(j=0;j<i;j++){
					cnt.setCount();
				}
				input.close();
			}
		}
		
	}catch(IOException e){
		out.println(e.getMessage());
	}
	}
	
	if(first != null){
		count = cnt.getCount();
	}else{
		cnt.setCount();
		count = cnt.getCount();
		session.putValue("checkfirst","first");
	}
	out.print("현재까지의 방문자수 : "+ count);
	if ( count % 10 == 0){
		try{
			count_file ="C:\\JSPstudy\\Chap05\\src\\main\\webapp\\test\\count.txt";
			PrintWriter pw = new PrintWriter(new FileWriter(count_file));
			pw.println(count);
			pw.close();
		}catch(IOException e){
			out.println(e.getMessage());
		}
	}
	out.println("현재까지 방문자 수 : " + count);
	DecimalFormat formatc = new DecimalFormat("0000");
	String scount = null;
	String pos =null;
	int p=0;
	scount = formatc.format(count);
	for (p=0;p<4;p++){
		pos=scount.substring(p,p+1);
		pos="n"+pos+".gif";
		out.println("<img src=img/"+pos+"/>");
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