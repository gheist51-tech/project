<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Success | Life Tree Hospital</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(rgba(0, 150, 136, 0.8), rgba(0, 150, 136, 0.8)),
                  url('') center/cover no-repeat;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
    }

    .container {
      background: rgba(255, 255, 255, 0.95);
      color: #333;
      border-radius: 15px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
      padding: 50px;
      text-align: center;
      width: 90%;
      max-width: 500px;
      animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .container i {
      font-size: 70px;
      color: #009688;
      margin-bottom: 20px;
    }

    .container h1 {
      font-size: 2em;
      margin-bottom: 10px;
      color: #009688;
    }

    .container p {
      font-size: 16px;
      color: #555;
      margin-bottom: 30px;
    }

    .btn {
      background-color: #009688;
      color: white;
      padding: 12px 25px;
      border: none;
      border-radius: 8px;
      text-decoration: none;
      font-size: 16px;
      font-weight: bold;
      transition: background 0.3s ease;
    }

    .btn:hover {
      background-color: #00796b;
    }

    @media (max-width: 500px) {
      .container {
        padding: 30px 20px;
      }

      .container i {
        font-size: 60px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <i class="fa-solid fa-circle-check"></i>
    <h1>Success!</h1>
    <h3>Your information has been submitted successfully.</h3>
    <a href="Home_Page.jsp" class="btn"><i class="fa-solid fa-house"></i> Go Back to Home</a>
  </div>
</body>
</html>
    