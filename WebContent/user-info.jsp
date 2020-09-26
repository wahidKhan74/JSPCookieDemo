<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info From Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			out.println("<h2> User Info </h2>");
			for( int i=0 ; i<cookies.length; i++){
				out.println("<h4>" +cookies[i].getName() +" : "+cookies[i].getValue());
			}
			
		}
	
	
	
	%>
</body>
</html>