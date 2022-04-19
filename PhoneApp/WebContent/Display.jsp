<%@page import="java.sql.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.j2ee.phoneapp.dto.Phone"%>
<%@page import="edu.j2ee.phoneapp.dao.PhoneDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<link rel="stylesheet" href="./resources/css/index.css" title="Contact Logo">
</head>
<body>
	<marquee behavior="scroll" direction="right" style="background-color: aqua"; srolldelay = 100 ; height = 100px >
    <h1> WELCOME TO CONTACT APPLICATION!!!</h1>
    </marquee>
    <br>
     <br>
      <br>
     
       <div style="background-color: azure;font-size:medium;">
     <nav>
      <a href = "./Index.jsp">HOME     \</a>
     <a href = "./InsertFrontend.jsp">   INSERT     \</a>
     <a href = "./Searchfrontend.jsp">  SEARCH    \</a>
   
     <a href = "./Display.jsp">    VIEW     </a>
    
   
     </nav>
     </div>
  
     <%
     	
     	PhoneDataBaseOperations op = new PhoneDataBaseOperations();
     	ArrayList<Phone>  p1 = op.displayContact();
     	 
       	
         Iterator<Phone> itr = p1.iterator();
         Phone p2 = new Phone();
         String name = null ;
         String number = null;
         String email = null;
         String date = null ;
        %>
     <br>
     <br>
     <br>
     <header>
        <div class="header">
            <h2 class="heading"><u>Contact Details</u></h2>
        </div>
    </header>
     
      <div style="background-color: azure;font-size:large; text-align: center">
      
      <br>
    <table border="3" rules = "all" cellpadding = 10 style="background: rgb(192, 244, 249); color: rgb(11, 10, 10);" align="center">
   	<tr>
     <th>Name</th>
      <th>Number</th>
       <th>Email</th>
        <th>DOB</th>
        <th> </th>
        <th> </th>
        </tr>
        
        
    <%
    while(itr.hasNext())
    {
    	%>
    	<tr>
    	<% 
    	 p2 =itr.next();
    	 name = p2.getName();
     %>
     <td><%= name %></td>
    	<% 
    	 number = p2.getNumber();
    	%>
    	<td><%=number %></td>
    	<%
    	 email = p2.getEmail();
    	%>
    	<td><%=email %></td>
    	<% 
    	 date = p2.getDate();
    	%>
    	 <td><%=date%></td>
    	 <td><a href = "./editfrontent.jsp">Edit</a></td>
    	  <td><a href = "Delete.jsp">Delete</a></td>
    	  </tr>
    	 <%
    	 }
    	 %>
     
     
     </table>
     </div>
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