<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Cookies</title>
</head>
<body>
	<% 
	int TWENTYFOUR_HOURS = 60*60*24;
	// create cookies
	Cookie fullName = new Cookie("full_name",request.getParameter("full_name"));
	Cookie userId = new Cookie("user_id",request.getParameter("user_id"));
	
	// Set an expiry for cookie
	fullName.setMaxAge(TWENTYFOUR_HOURS);
	userId.setMaxAge(TWENTYFOUR_HOURS);

	// add cookie into response
	response.addCookie(fullName);
	response.addCookie(userId);
	%>
	
	<h1>User Submitted Form Data</h1>
	Full Name :<%=  request.getParameter("full_name") %>
	User Id : <%=  request.getParameter("user_id") %>
	
	<a href="user-info.jsp" >User Info</a>
</body>
</html>