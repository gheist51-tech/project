<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>About Us</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background: #f8f9fa;
      color: #333;
    }

    header {
      background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
        url('https://img.freepik.com/free-photo/medical-team-smiling-camera_13339-112372.jpg') center/cover;
      color: white;
      text-align: center;
      padding: 90px 30px;
    }

    header h1 {
      font-size: 3em;
      margin-bottom: 10px;
    }

    .about-section {
      padding: 50px 10%;
      text-align: center;
    }

    .about-section h2 {
      color: #0077b6;
      margin-bottom: 20px;
    }

    .about-section p {
      line-height: 1.8;
      font-size: 1.1em;
      margin-bottom: 30px;
    }

    .mission-vision {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 20px;
      padding: 20px 0;
    }

    .card {
      background: white;
      border-radius: 10px;
      padding: 30px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
    }

    .card:hover {
      transform: translateY(-5px);
    }

    .card i {
      font-size: 40px;
      color: #0077b6;
      margin-bottom: 15px;
    }

    .team-section {
      padding: 50px 10%;
      background: #0077b6;
      color: white;
      text-align: center;
    }

    .team-section h2 {
      margin-bottom: 30px;
    }

    .team-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
    }

    .team-member {
      background: white;
      color: #333;
      border-radius: 10px;
      padding: 20px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .team-member img {
      width: 200px;
      height: 200px;
      border-radius: 50%;
      margin-bottom: 15px;
    }

    .team-member h3 {
      color: #0077b6;
      margin-bottom: 5px;
    }
  </style>
</head>

<body>

  <header>
    <h1>About Us</h1>
    <p>Committed to excellence in healthcare</p>
  </header>

  <section class="about-section">
    <h2>Who We Are</h2>
    <p>
      Welcome to our hospital, where compassionate care meets advanced medical technology. 
      For over 20 years, we have been dedicated to providing world-class healthcare to our patients, 
      ensuring their well-being with state-of-the-art facilities and expert medical professionals.
    </p>

    <div class="mission-vision">
      <div class="card">
        <i class="fa fa-bullseye"></i>
        <h3>Our Mission</h3>
        <p>To provide affordable, high-quality healthcare that improves the lives of our patients and community.</p>
      </div>
      <div class="card">
        <i class="fa fa-eye"></i>
        <h3>Our Vision</h3>
        <p>To be recognized as a leading healthcare institution driven by innovation, compassion, and excellence.</p>
      </div>
    </div>
  </section>

  <section class="team-section">
    <h2>Meet Our Team</h2>
    <div class="team-container">
      <div class="team-member">
        <img src="https://imgcdn.stablediffusionweb.com/2024/12/25/8fb93c31-8933-49d0-afa0-8bdc0536aa9a.jpg" alt="Doctor 1">
        <h3>Dr. Arjun Mehta</h3>
        <p>Chief Cardiologist</p>
      </div>
      <div class="team-member">
        <img src="https://png.pngtree.com/png-vector/20250428/ourlarge/pngtree-smiling-female-doctor-cartoon-character-png-image_16131239.png" alt="Doctor 2">
        <h3>Dr. Neha Kapoor</h3>
        <p>Head of Pediatrics</p>
      </div>
      <div class="team-member">
        <img src="https://img.freepik.com/premium-vector/vector-doctor-medical-hospital-health-medicine-illustration-care-man-clinic-people-profes_1158065-1372.jpg?semt=ais_hybrid&w=740&q=80" alt="Doctor 3">
        <h3>Dr. Rohan Verma</h3>
        <p>Orthopedic Specialist</p>
      </div>
      <div class="team-member">
        <img src="https://t4.ftcdn.net/jpg/06/14/96/05/360_F_614960515_mQsF7nS1r3qZ9eCHzqJ5cyCxmjsfJOCQ.jpg" alt="Doctor 4">
        <h3>Dr. Priya Sharma</h3>
        <p>Senior Gynecologist</p>
      </div>
    </div>
  </section>

</body>

</html>
    