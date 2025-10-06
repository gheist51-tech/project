<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Appointment</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background: #f8f9fa;
      color: #333;
    }

    header {
      background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
        url('https://img.freepik.com/free-photo/top-view-desk-calendar-office-accessories_23-2148693369.jpg?semt=ais_hybrid&w=740') center/cover;
      color: white;
      text-align: center;
      padding: 90px 30px;
    }

    header h1 {
      font-size: 3em;
      margin-bottom: 10px;
    }

    .intro {
      text-align: center;
      padding: 40px 15%;
    }

    .intro h2 {
      color: #009688;
      font-size: 2em;
      margin-bottom: 15px;
    }

    .intro p {
      color: #555;
      line-height: 1.7;
      font-size: 16px;
    }

    .appointment-form {
      background: white;
      margin: 40px auto;
      padding: 40px;
      max-width: 700px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .appointment-form h3 {
      text-align: center;
      color: #009688;
      margin-bottom: 30px;
    }

    form {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 20px;
    }

    label {
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
    }

    input,
    select,
    textarea {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      font-size: 15px;
    }

    textarea {
      resize: none;
      height: 100px;
      grid-column: 1 / span 2;
    }

    #btn {
      grid-column: 1 / span 2;
      padding: 12px;
      border: none;
      background: #009688;
      color: white;
      font-size: 16px;
      font-weight: bold;
      border-radius: 5px;
      cursor: pointer;
      transition: background 0.3s;
    }

    #btn:hover {
      background: #00796b;
    }

    .contact-info {
      text-align: center;
      padding: 40px;
      background: #009688;
      color: white;
    }

    .contact-info i {
      margin-right: 10px;
    }

    @media (max-width: 700px) {
      form {
        grid-template-columns: 1fr;
      }
      textarea, button {
        grid-column: 1;
      }
    }
  </style>
</head>

<body>

  <!-- Header -->
  <header>
    <h1>Book Your Appointment</h1>
    <p>Get expert treatment at your convenience</p>
  </header>

  <!-- Intro -->
  <section class="intro">
    <h2>Your Smile Deserves the Best Care</h2>
    <p>
      Schedule your appointment with our Doctor's easily. Fill out the form below and our team will confirm your booking shortly. 
      We ensure personalized attention and modern treatment options for every patient.
    </p>
  </section>

  <!-- Appointment Form -->
  <section class="appointment-form">
    <h3>Appointment Details</h3>
    <form action="${pageContext.request.contextPath}/Submit_Appointment" method="post">
      <div>
        <label for="name">Full Name</label>
        <input type="text" id="name" name="Full_Name" placeholder="Enter your full name" required>
      </div>

      <div>
        <label for="email">Email</label>
        <input type="email" id="email" name="Email" placeholder="Enter your email" required>
      </div>

      <div>
        <label for="phone">Phone Number</label>
        <input type="tel" id="phone" name="Phone_number" placeholder="Enter your phone number" required>
      </div>

      <div>
        <label for="date">Preferred Date</label>
        <input type="date" id="date" name="Date" required>
      </div>

      <div>
        <label for="time">Preferred Time</label>
        <input type="time" id="time" name="Time" required>
      </div>

      <div>
        <label for="department">Select Department</label>
        <select id="department" name="Department" required>
          <option value="">Choose Department</option>
          <option>Dental Care</option>
          <option>Cardiology</option>
          <option>Orthopedics</option>
          <option>Pediatrics</option>
          <option>Diagnostic Imaging</option>
        </select>
      </div>

      <textarea id="message"  name="message" placeholder="Describe your concern or reason for visit"></textarea>

      <input id="btn" type="submit" value="Submit Appointment"/>
    </form>
  </section>

  <!-- Contact Info -->
  <section class="contact-info">
    <h2>Need Assistance?</h2>
    <p><i class="fa-solid fa-phone"></i> +91 98765 43210</p>
    <p><i class="fa-solid fa-envelope"></i> contact@hospitalcare.com</p>
  </section>

</body>
</html>
    