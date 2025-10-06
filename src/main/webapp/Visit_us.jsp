<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Visit Us</title>
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
        url('https://t4.ftcdn.net/jpg/02/05/69/57/240_F_205695730_Ag7KUlx2ImrLUyQ9zLywT3Kxm4kncvfd.jpg') center/cover;
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

    .contact-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 30px;
      padding: 50px 10%;
      align-items: start;
    }

    .contact-card {
      background: white;
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .contact-card h3 {
      color: #009688;
      margin-bottom: 15px;
      font-size: 1.5em;
      text-align: center;
    }

    .contact-details p {
      margin: 10px 0;
      color: #555;
      font-size: 15px;
    }

    .contact-details i {
      color: #009688;
      margin-right: 10px;
    }

    iframe {
      width: 100%;
      height: 350px;
      border: none;
      border-radius: 10px;
      margin-top: 10px;
    }

    .contact-form {
      background: white;
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .contact-form h3 {
      text-align: center;
      color: #009688;
      margin-bottom: 25px;
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

    .cta {
      text-align: center;
      padding: 40px;
      background: #009688;
      color: white;
    }

    @media (max-width: 700px) {
      form {
        grid-template-columns: 1fr;
      }
      textarea,
      button {
        grid-column: 1;
      }
    }
  </style>
</head>

<body>

  <!-- Header -->
  <header>
    <h1>Visit Us</h1>
    <p>Your trusted healthcare partner always close to you</p>
  </header>

  <!-- Intro -->
  <section class="intro">
    <h2>We’re Here to Welcome You</h2>
    <p>
      Our hospital is conveniently located and designed to provide easy access to quality healthcare. 
      Whether you're visiting for a consultation, check-up, or treatment, our team ensures your experience is comfortable and stress-free. 
      Visit us today to experience compassionate care and world-class medical facilities.
    </p>
  </section>

  <!-- Contact & Map Section -->
  <section class="contact-container">

    <!-- Address and Map -->
    <div class="contact-card">
      <h3>Our Location</h3>
      <div class="contact-details">
        <p><i class="fa-solid fa-location-dot"></i> 123 Green Valley Road, Pune, Maharashtra, India</p>
        <p><i class="fa-solid fa-phone"></i> +91 98765 43210</p>
        <p><i class="fa-solid fa-envelope"></i> info@hospitalcare.com</p>
        <p><i class="fa-solid fa-clock"></i> Mon - Sat: 8:00 AM - 8:00 PM | Sun: 9:00 AM - 3:00 PM</p>
      </div>
    </div>

    <!-- Contact Form -->
    <div class="contact-form">
      <h3>Get in Touch</h3>
      <form action="${pageContext.request.contextPath}/Send_Message" method="post">
        <div>
          <label for="name">Full Name</label>
          <input type="text" id="name" name="Full_Name" placeholder="Enter your full name" required>
        </div>

        <div>
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>

        <div>
          <label for="phone">Phone Number</label>
          <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
        </div>

        <div>
          <label for="subject">Subject</label>
          <input type="text" id="subject" name="subject" placeholder="Enter your query subject" required>
        </div>

        <textarea id="message" name="message" placeholder="Write your message here..."></textarea>

        <input id="btn" type="submit" value="Send Message"/>
      </form>
    </div>

  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>We're closer than you think!</h2>
    <p>Drop by for a consultation or call us to schedule your appointment today.</p>
  </section>

</body>
</html>
    