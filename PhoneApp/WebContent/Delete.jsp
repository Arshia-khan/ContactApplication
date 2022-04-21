<%@page import="edu.j2ee.phoneapp.dto.Phone"%>
<%@page import="edu.j2ee.phoneapp.dao.PhoneDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
     <%
     
     
	 if(new PhoneDataBaseOperations().deleteContact(request.getParameter("name")))
	{
	%>
	<jsp:include page="/Display.jsp"></jsp:include>
	<%
	}
	
	else
	{
		
	%>
	<jsp:include page="/Display.jsp"></jsp:include>
	
	<h1>Error in Deleting Contact</h1>
	<% } %>
	 <br>
     <br>
     <br>
     
     
     <br>
      <div style="background-color: azure;font-size:large; text-align: center">
     <footer>
		Copy Rights Reserved &copy; 2022
	</footer>
	</div>
</body>
</html>
