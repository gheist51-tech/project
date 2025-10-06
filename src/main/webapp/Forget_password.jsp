<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Life Tree Hospital</title>
<style>
body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
    }
 #Parent {
      border: 2px solid black;
      width: 50%;
      height: 70vh;
      display: flex;
      flex-direction: row;
      border-radius: 10px;
      overflow: hidden;
     box-shadow: 0 12px 25px rgba(0, 0, 0, 0.75);  
      }
   .Child {
      height: 100%;
      width: 50%;
      padding: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    .c1{
    background-color:#F2B33D;
    color:#3B5B8A;
    justify-content: flex-start;  
    padding-top: 10px; 
    } 
    .c2{
    background-color:#3B5B8A;
    color:#F2B33D;
    justify-content: flex-start;  
    padding-top: 100px; 
    }
form{
   display: flex;
   flex-direction: column;
   gap: 10px;
   margin-top: 15px;
   align-items: center;
 }
 label {
  display: block;       
  margin-bottom: 8px; 
  font-size: 16px;
}

input {
  padding: 10px;
  border: none;
  border-bottom: 2px solid #333;
  outline: none;
  background-color:#F2B33D;
}
#btn{
 background-color:#3B5B8A;
 color:#F2B33D;
}
#btn:hover{
background-color:blue;
transform: translatey(5px);
}
 </style>
</head>
<body style="background-image: url('https://media.gettyimages.com/id/1281588278/vector/medical-clipboard.jpg?s=612x612&w=0&k=20&c=6ZVLSiM_hyIhioxR-zwyJXHAsuvF3gBo1clf-iQfqHc=');background-size: cover; background-repeat: no-repeat;">>
   <div id="Parent">
     <div class="Child c1">
        <form action="${pageContext.request.contextPath}/Change_Password" method="post">
        
         <h1>Change Password</h1>
        <label for="Email">Email</label>
        <input type="email" id="Email" name="Email" placeholder="Email Address" required/>
        
        <label for="New_password"> New Password</label>
        <input type="password" id="New_password" name="New_password" placeholder="New Password" required/>

        <label for="Confirm_password">Confirm Password</label>
        <input type="password" id="Confirm_password" name="Confirm_password" placeholder="Confirm Password"required/><br>

         <input id="btn" type="submit" value="Change Password"/>
         </form>
       </div>
     <div class="Child c2">
     <h1>Hello</h1>
     <p>Did your password escape? Or did your brain just go on a coffee break?</p>
     </div>
     </div>
</body>
</html>