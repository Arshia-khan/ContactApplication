<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<marquee behavior="scroll" direction="right" style="background-color: aqua"; srolldelay = 100 ; height = 100px >
    <h1> WELCOME TO PHONE APPLICATION!!!</h1>
    </marquee>
   
      
       <div style="background-color: azure;font-size:medium;">
      <br>
     <br>
     
     <nav>
      <a href = "./Index.jsp">HOME     \</a>
     <a href = "./InsertFrontend.jsp">   INSERT     \</a>
     <a href = "./Searchfrontend.jsp">  SEARCH    \</a>
   
     <a href = "./Display.jsp">    VIEW     </a>
    
    
     </nav>

     </div>
  
     
      <div style="background-color: azure;font-size:x-large; text-align: center">
      <form action="Insert.jsp" method ="post">
      <h2><u>Enter Details</u></h2>
      <br>
      
      <div class="inputbox">
        <span>Enter Name</span>
                <input type="text" required="required" name="name">
              
              </div>
              <br>
        <div class="inputbox">
          <span>Enter Number</span>
                <input type="number" required="required" name="number" >
                
              </div>
           
              <br>
          <div class="inputbox">
           <span>Enter Email</span>
            <input type="text" required="required" name="email">
           
          </div>
          <br>
          <div class="inputbox">
           <span>Enter Date Of Birth</span>
            <input type="date" name="dob">
           
          </div>
          <br>
          <div class="inputbox">
            <input type="submit" value="submit">
          </div>
      </form>
    
      <div style="background-color: white;font-size:large; text-align: center">
       <br>
     <br>
     <br>
     <footer>
		Copy Rights Reserved &copy; 2022
	</footer>
	</div>
     
</body>
</html>