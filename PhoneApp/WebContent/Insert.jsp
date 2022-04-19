<%@page import="edu.j2ee.phoneapp.dao.PhoneDataBaseOperations"%>
<%@page import="edu.j2ee.phoneapp.dto.Phone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert </title>
</head>
<body>
	<marquee behavior="scroll" direction="right" style="background-color: aqua"; srolldelay = 100 ; height = 100px >
    <h1> WELCOME TO PHONE APPLICATION!!!</h1>
    </marquee>
    <br>
     <br>
      <br>
    
       <div style="background-color: azure;font-size:medium;">
     
      <a href = "./Index.jsp">HOME     \</a>
     <a href = "./InsertFrontend.jsp">   INSERT     \</a>
     <a href = "./Searchfrontend.jsp">  SEARCH    \</a>
   
     <a href = "./Display.jsp">    VIEW     \</a>
    
    <a href = "./Logout.jsp">LOGOUT</a>
     </nav>
     </div>
   
    
<% 
        String Name = request.getParameter("name");
		String Number = request.getParameter("number");
		 String Email = request.getParameter("email");
		 String Dob = request.getParameter("dob");
		 
		 
		Phone c = new Phone();
	
		c.setName(Name);
		c.setNumber(Number);
		c.setEmail(Email);
		c.setDate(Dob);
		
		if(new PhoneDataBaseOperations().insertDetails(c))
		
		{
			
		
	%>
	<jsp:forward page="Display.jsp"></jsp:forward>
	<% }
		else
		{
		%>
		<h2> error in inserting</h2>
	<jsp:forward page="/InsertFrontend.jsp"></jsp:forward>
		
		<% } %>
</body>
</html>