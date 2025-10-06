<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Join Our Team</title>
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
        url('https://img.freepik.com/free-photo/medical-team-discussing-diagnosis-hospital-office_23-2149343401.jpg') center/cover;
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

    .benefits-section {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
      padding: 50px 10%;
    }

    .benefit-card {
      background: white;
      border-radius: 10px;
      padding: 25px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
    }

    .benefit-card:hover {
      transform: translateY(-5px);
    }

    .benefit-card i {
      font-size: 40px;
      color: #009688;
      margin-bottom: 10px;
    }

    .benefit-card h3 {
      color: #009688;
      margin-bottom: 10px;
    }

    .benefit-card p {
      font-size: 14px;
      color: #555;
      line-height: 1.6;
    }

    .apply-form {
      background: white;
      margin: 40px auto;
      padding: 40px;
      max-width: 700px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .apply-form h3 {
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
      textarea, button {
        grid-column: 1;
      }
    }
  </style>
</head>

<body>

  <!-- Header -->
  <header>
    <h1>Join Our Team</h1>
    <p>Be a part of our mission to deliver exceptional healthcare</p>
  </header>

  <!-- Intro -->
  <section class="intro">
    <h2>Why Work With Us?</h2>
    <p>
      At our hospital, we believe in building a strong, compassionate, and skilled team dedicated to patient care and innovation. 
      We offer opportunities for professional growth, continuous learning, and a supportive work environment. 
      Join us and make a difference in people’s lives every day.
    </p>
  </section>

  <!-- Benefits Section -->
  <section class="benefits-section">
    <div class="benefit-card">
      <i class="fa-solid fa-user-md"></i>
      <h3>Professional Growth</h3>
      <p>Get access to training programs, workshops, and career development opportunities to advance your skills.</p>
    </div>

    <div class="benefit-card">
      <i class="fa-solid fa-hand-holding-heart"></i>
      <h3>Supportive Environment</h3>
      <p>Work alongside compassionate professionals in a friendly, inclusive, and team-driven culture.</p>
    </div>

    <div class="benefit-card">
      <i class="fa-solid fa-laptop-medical"></i>
      <h3>Modern Facilities</h3>
      <p>Experience world-class infrastructure and the latest medical technologies to provide the best patient care.</p>
    </div>

    <div class="benefit-card">
      <i class="fa-solid fa-award"></i>
      <h3>Recognition & Rewards</h3>
      <p>We appreciate and reward dedication, excellence, and commitment to patient well-being.</p>
    </div>
  </section>

  <!-- Apply Form -->
  <section class="apply-form">
    <h3>Apply Now</h3>
    <form action="${pageContext.request.contextPath}/Submit_Application" method="post">
      <div>
        <label for="name">Full Name</label>
        <input type="text" id="name" name="Full_name" placeholder="Enter your full name" required>
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
        <label for="position">Position Applying For</label>
        <select id="position" name="position" required>
          <option value="">Select Position</option>
          <option>Dental Surgeon</option>
          <option>Nurse</option>
          <option>Receptionist</option>
          <option>Lab Technician</option>
          <option>Medical Assistant</option>
        </select>
      </div>

      <textarea id="message" name="message" placeholder="Write a brief introduction about yourself and why you want to join"></textarea>

      <input id="btn" type="submit" value="Submit Application"/>
    </form>
  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>Together, let’s build a healthier future.</h2>
    <p>We’re always looking for dedicated professionals to join our growing family.</p>
  </section>

</body>
</html>
    