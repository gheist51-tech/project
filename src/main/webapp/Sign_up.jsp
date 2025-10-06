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
    height: 80vh;
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
    background-color: #EC5E27;
    color: #2b323f;
    justify-content: flex-start;
    padding-top: 5px;
  }

  .c2 {
    background-color: #2b323f;
    color: #EC5E27;
    justify-content: flex-start;
    padding-top: 100px;
  }

  form {
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 15px;
    align-items: center;
    background-color: #EC5E27;
    color: #2b323f;
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
    background-color: #EC5E27;
  }

  #btn {
    height: 40px;
    width: 120px;
    border-radius: 50px;
    background-color: #2b323f;
    color: #EC5E27;
    cursor: pointer;
    transition: 0.3s ease;
  }

  #btn:hover {
    background-color: blue;
    transform: translateY(5px);
  }

  /* ----------------- Responsive Design ----------------- */

  /* Tablet screens */
  @media (max-width: 1024px) {
    #Parent {
      width: 70%;
      height: auto;
    }
  }

  /* For mobile & small tablets */
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
      padding-top: 20px;
      height: auto;
    }

    .c2 {
      padding-top: 40px;
      height: auto;
    }

    h1 {
      font-size: 22px;
    }

    p {
      font-size: 14px;
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

  /* Very small screens */
  @media (max-width: 480px) {
    #Parent {
      width: 95%;
    }

    h1 {
      font-size: 20px;
    }

    p {
      font-size: 13px;
    }

    input {
      width: 90%;
    }

    #btn {
      width: 90px;
      height: 34px;
      font-size: 13px;
    }
  }
</style>
</head>

<body style="background-image: url('https://t3.ftcdn.net/jpg/09/85/27/82/240_F_985278275_shtOrRPE9nBErNGJ97ZKMSkbOcnqCiFT.jpg'); background-size: cover; background-repeat: no-repeat;">

<div id="Parent">
  <div class="Child c1">
    <form action="${pageContext.request.contextPath}/Sign_up" method="post">
      <h1>Sign up</h1>

      <label for="First_Name">First Name</label>
      <input type="text" id="First_Name" name="First_Name" placeholder="First Name" required/>

      <label for="Last_Name">Last Name</label>
      <input type="text" id="Last_Name" name="Last_Name" placeholder="Last Name" required/>

      <label for="username">UserName</label>
      <input type="text" id="username" name="username" placeholder="Username" required/>

      <label for="Email">Email</label>
      <input type="email" id="Email" name="Email" placeholder="Email Address" required/>

      <label for="Number">Mobile number</label>
      <input type="number" id="Number" name="Number" placeholder="Phone number" required/>

      <label for="Password">Password</label>
      <input type="password" id="Password" name="Password" placeholder="Password" required/>

      <input id="btn" type="submit" value="Sign up"/>
    </form>
  </div>

  <div class="Child c2">
    <h1>Welcome New Patients</h1>
    <p>Don't worry, we've got the best seats in the house for your healing journey!</p>
  </div>
</div>

</body>
</html>
