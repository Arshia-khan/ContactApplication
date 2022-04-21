<%@page import="edu.j2ee.phoneapp.dto.Phone"%>
<%@page import="edu.j2ee.phoneapp.dao.PhoneDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit</title>
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
      <a href = "./Index.jsp">HOME    \</a>
     <a href = "./InsertForm.jsp">INSERT    \</a>
     <a href = "./Searchfrontend.jsp">SEARCH    \</a>
   
     <a href = "./Display.jsp">VIEW    </a>
    
    
     </nav>
     </div>
     <br>
     <br>
     <br>
     
     
	<% 
		PhoneDataBaseOperations op = new PhoneDataBaseOperations();
		Phone c = op.SearchContact(request.getParameter("name"));
		
		
	
	%>
   
        
       
       <div style="background-color: azure;font-size:x-large; text-align: center">
       <h2><u> Update Details</u></h2>
       <br>
       <br>
        <form action="Updatefrontend.jsp" method="post">
        
         <div class="inputbox">
         <span>Enter Name</span>
          <input type="text" value = "<%= c.getName() %>" readonly="readonly" required="required" name="name">
		  </div>
              
               <br>
               
        <div class="inputbox">
        <span>Enter Number</span>
         <input type="number" value = "<%= c.getNumber() %>" required="required" name="number" >
          </div>
              
              <br>
              
          <div class="inputbox">
           <span>Email</span>
            <input type="text" required="required" value = "<%= c.getEmail() %>" name="email">
             </div>
             
           <br>
           
          <div class="inputbox">
           <span>Date Of Birth</span>
            <input type="date" value="<%= c.getDate() %>" name="dob">
         </div>
         
           <br>
           
          <div class="inputbox">
            <input type="submit" value="UPDATE">
          </div>
          
        </form>
      </div>
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