<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search details</title>
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
     
      <div style="background-color: azure;font-size:x-large; text-align: center">
      <form action="Search.jsp">
      <h2>Enter Details</h2>
      <label>Enter Name </label>
      <input type ="text" name ="Name">
      <br>
      <br>
      <input type ="submit" value = "Submit">
      </form>
      
       <br>
    
    
     
     
     
      <div style="background-color: white;font-size:large; text-align: center">
      <br>
       <br>
     <footer>
		Copy Rights Reserved &copy; 2022
	</footer>
	</div>
     
</body>
</html>