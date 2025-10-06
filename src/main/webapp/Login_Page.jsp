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
    background: #f4f4f4;
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
    background-color: white;
  }

  .Child {
    height: 100%;
    width: 50%;
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
  }

  .c1 {
    background-color: black;
    color: #C7DBE2;
    justify-content: flex-start;
    padding-top: 100px;
  }

  .c2 {
    background-color: #C7DBE2;
    justify-content: flex-start;
    padding-top: 30px;
  }

  #dd {
    font-size: 28px;
    font-style: Roboto;
    color: black;
  }

  form {
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 15px;
    align-items: center;
    background-color: #C7DBE2;
    color: black;
  }

  label {
    display: block;
    margin-bottom: 8px;
    font-size: 16px;
  }

  input {
    border: none;
    border-bottom: 2px solid #333;
    outline: none;
    background-color: #C7DBE2;
  }

  .big {
    transform: scale(1.3);
    margin-right: 10px;
  }

  #btn {
    height: 40px;
    width: 120px;
    border-radius: 50px;
    background-color: black;
    color: white;
    cursor: pointer;
    transition: 0.3s ease;
  }

  #btn:hover {
    background-color: blue;
    transform: translateY(5px);
  }

  #a1, #a2 {
    color: black;
    text-decoration: none;
    transition: 0.3s;
  }

  #a1:hover, #a2:hover {
    color: blue;
  }

  #a3 {
    color: #C7DBE2;
    text-decoration: none;
    transition: 0.3s ease;
  }

  #a3:hover {
    transform: translateY(5px);
  }

  /* Responsive Design Starts Here */
  @media (max-width: 1024px) {
    #Parent {
      width: 70%;
      height: auto;
    }
  }

  @media (max-width: 768px) {
    body {
      height: auto;
      padding: 20px;
    }

    #Parent {
      flex-direction: column;
      width: 90%;
      height: auto;
    }

    .Child {
      width: 100%;
      padding: 20px 10px;
    }

    .c1 {
      padding-top: 50px;
      height: auto;
    }

    .c2 {
      padding-top: 20px;
      height: auto;
    }

    #dd {
      font-size: 22px;
    }

    label {
      font-size: 14px;
    }

    input {
      width: 80%;
      font-size: 14px;
    }

    #btn {
      width: 100px;
      height: 35px;
      font-size: 14px;
    }
  }

  @media (max-width: 480px) {
    #Parent {
      width: 95%;
    }

    h1 {
      font-size: 20px;
    }

    p {
      font-size: 14px;
    }

    #btn {
      width: 90px;
      height: 34px;
      font-size: 13px;
    }

    input {
      width: 90%;
    }
  }
</style>
</head>

<body style="background-image: url('https://www.shutterstock.com/image-vector/abstract-medical-background-flat-icons-260nw-1338065564.jpg'); background-size: cover; background-repeat: no-repeat;">

<div id="Parent">
  <div class="Child c1">
    <h1>Welcome Back!</h1>
    <p>Start Your Fitness Journey By Taking Small Step Towards your Goal.</p>
    <p>If you Still Are Not A Part Of Our Journey Click On The Register Button Below And Start Your Fitness Journey Now.</p><br>
    <a href="Sign_up.jsp" id="a3">Register Now</a>
  </div>

  <div class="Child c2">
    <h1 id="dd">Login</h1>
    <p>Welcome Back To Your Online Doctor</p>

    <form action="${pageContext.request.contextPath}/login" method="post">
      <label for="username">UserName</label>
      <input type="text" id="username" name="userName" placeholder="Enter Patient Name" required/>

      <label for="email">Email address</label>
      <input type="email" id="email" name="Email_address" placeholder="Enter Email Id" required/>

      <label for="Password">Password</label>
      <input type="password" id="Password" name="Password" placeholder="Enter Password" required/>

      <a href="Forget_password.jsp" id="a1">Forget Password?</a>

      <input id="btn" type="submit" value="Login"/>
      <label><input type="checkbox" class="big"> Remember Me</label>
    </form>
  </div>
</div>

</body>
</html>
