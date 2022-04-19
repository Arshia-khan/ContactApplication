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
		Phone c = new PhoneDataBaseOperations().SearchContact(request.getParameter("name"));
		
		
	
	%>
   
        
       
       <div style="background-color: azure;font-size:x-large; text-align: center">
        <form action="Updatefrontend.jsp" method="post">
         <h2><u>Update Details</u></h2>
         <br>
         <br>
         
         <div class="inputbox">
          <span>Name</span>
                <input type="text" required="required" name="name" >
               
              </div>
              <br>
        <div class="inputbox">
         <span>Number</span>
                <input type="number"  required="required" name="number" >
               
              </div>
           
              <br>
          <div class="inputbox">
           <span>Email</span>
            <input type="text" required="required"  name="email">
           
          </div>
          <br>
          <div class="inputbox">
           <span>Date Of Birth</span>
            <input type="date"  name="dob">
           
          </div>
          <br>
          <div class="inputbox">
            <input type="submit" value="UPDATE">
          </div>
        </form>
      </div>
      </div>
</body>
</html>