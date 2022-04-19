<%@page import="java.sql.Date"%>
<%@page import="edu.j2ee.phoneapp.dto.Phone"%>
<%@page import="edu.j2ee.phoneapp.dao.PhoneDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
	<marquee behavior="scroll" direction="right" style="background-color: aqua"; srolldelay = 100 ; height = 100px >
    <h1> WELCOME TO PHONE APPLICATION!!!</h1>
    </marquee>
    <br>
     <br>
      <br>
        <% 
      HttpSession session1 = request.getSession(false);
       session1.setMaxInactiveInterval(60);
       
       if(session1 != null)
       { %>
       <div style="background-color: azure;font-size:medium;">
     <nav>
      <a href = "./Index.jsp">HOME     \</a>
     <a href = "./InsertFrontend.jsp">   INSERT     \</a>
     <a href = "./Searchfrontend.jsp">  SEARCH    \</a>
   
     <a href = "./Display.jsp">    VIEW     </a>
    
    
     </nav>
     </div>
   <%
       }
       else
       {
   %>
   			 <h2>Session Time Out..Login Again</h2>
     <% 
    	 }
    %>
     <%
     	String name = request.getParameter("Name");
     	PhoneDataBaseOperations op = new PhoneDataBaseOperations();
     	Phone p1 =op.SearchContact(name);
     
     
     %>
     <br>
      <div style="background-color: azure;font-size:large; text-align: center">
      <h2>Contact Details</h2>
      <br>
    <table border="3" rules = "all" cellpadding = 10 style="background: rgb(192, 244, 249); color: rgb(11, 10, 10);" align="center">
   	<tr>
     <th>Name</th>
      <th>Number</th>
       <th>Email</th>
        <th>DOB</th>
        <th></th>
        <th></th>
        </tr>
     
     <tr>
     <td><%=p1.getName() %></td>
      
     <td><%=p1.getNumber()%></td>
      
     <td><%=p1.getEmail()%></td>
      
     <td><%=p1.getDate() %></td>
     
     <td><a href = "">mail</a></td>
      <td><a href = "">message</a></td>
     </tr>
     
     </table>
     </div>
     <br>
     <br>
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