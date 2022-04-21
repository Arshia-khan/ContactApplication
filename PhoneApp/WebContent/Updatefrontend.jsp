<%@page import="edu.j2ee.phoneapp.dao.PhoneDataBaseOperations"%>
<%@page import="edu.j2ee.phoneapp.dto.Phone"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" href="./resources/css/mystyle2.css">
</head>
<body>
<% 
		Phone c = new Phone();
		
		c.setName(request.getParameter("name"));
		c.setNumber(request.getParameter("number"));
		c.setEmail(request.getParameter("email"));
		c.setDate(request.getParameter("dob"));
		
		PhoneDataBaseOperations op = new PhoneDataBaseOperations();
		if(op.updateContact(c))
	%>
	<jsp:include page="/Display.jsp"></jsp:include>
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
