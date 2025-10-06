<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Pediatrics Department</title>
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
        url('https://www.windsor.edu/wp-content/uploads/2023/09/considering.jpg') center/cover;
      color: white;
      text-align: center;
      padding: 90px 30px;
    }

    header h1 {
      font-size: 3em;
      margin-bottom: 10px;
    }

    .intro {
      padding: 40px 15%;
      text-align: center;
      font-size: 16px;
      line-height: 1.7;
      color: #444;
    }

    .intro h2 {
      color: #009688;
      margin-bottom: 15px;
      font-size: 2em;
    }

    .team-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
      padding: 50px 10%;
    }

    .team-card {
      background: white;
      border-radius: 10px;
      padding: 20px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
    }

    .team-card:hover {
      transform: translateY(-5px);
    }

    .team-card img {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      margin-bottom: 15px;
      object-fit: cover;
    }

    .team-card h3 {
      margin: 10px 0 5px;
      color: #009688;
    }

    .team-card p {
      font-size: 14px;
      margin-bottom: 10px;
    }

    .treatment-info {
      font-size: 14px;
      color: #555;
      line-height: 1.6;
      margin-top: 10px;
    }

    .social-icons a {
      margin: 0 5px;
      color: #009688;
      font-size: 18px;
      text-decoration: none;
    }

    .cta {
      text-align: center;
      padding: 40px;
      background: #009688;
      color: white;
    }

    .cta button {
      padding: 12px 25px;
      border: none;
      border-radius: 5px;
      background: white;
      color: #009688;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
    }

    .cta button:hover {
      background: #e0e0e0;
    }
  </style>
</head>

<body>

  <!-- Header -->
  <header>
    <h1>Pediatrics Department</h1>
    <p>Comprehensive healthcare for infants, children, and adolescents</p>
  </header>

  <!-- Intro Paragraph Section -->
  <section class="intro">
    <h2>About Our Pediatric Care</h2>
    <p>
      Our Pediatrics Department is dedicated to providing holistic care for children, from newborns to teenagers. 
      We offer preventive care, immunizations, nutrition counseling, and advanced treatments for chronic and acute conditions. 
      Our child-friendly environment ensures that young patients feel safe and comfortable during every visit.
    </p>
  </section>

  <!-- Doctor Card -->
  <section class="team-container">
    <div class="team-card">
      <img src="https://thumbs.dreamstime.com/b/friendly-female-doctor-cartoon-character-smiling-confidence-wearing-stethoscope-white-coat-crossed-arms-representing-390650465.jpg" alt="Doctor">
      <h3>Dr. Priya Sharma</h3>
      <p>Senior Pediatrician</p>
      <p class="treatment-info">
        Dr. Sharma has over 15 years of experience in child healthcare, specializing in immunization, growth monitoring, 
        and managing childhood illnesses. She is known for her compassionate approach towards young patients and 
        actively works on promoting awareness about child nutrition and preventive healthcare.
      </p>
      <div class="social-icons">
        <a href="#"><i class="fab fa-linkedin"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
      </div>
    </div>
  </section>

  <!-- Treatment / Services Cards -->
  <section class="team-container">

    <div class="team-card">
      <h3>Newborn & Infant Care</h3>
      <p class="treatment-info">
        Specialized care for newborns including vaccination, feeding guidance, and monitoring for healthy growth and development.
      </p>
    </div>

    <div class="team-card">
      <h3>Childhood Immunization</h3>
      <p class="treatment-info">
        Complete immunization programs to protect children from infectious diseases as per international health guidelines.
      </p>
    </div>

    <div class="team-card">
      <h3>Growth & Nutrition Counseling</h3>
      <p class="treatment-info">
        Guidance on proper diet, physical activity, and supplements to ensure children develop strong bones, immunity, and stamina.
      </p>
    </div>

    <div class="team-card">
      <h3>Chronic Condition Management</h3>
      <p class="treatment-info">
        Care and monitoring for children with asthma, diabetes, and other long-term conditions, focusing on a healthy lifestyle.
      </p>
    </div>

    <div class="team-card">
      <h3>Emergency Pediatric Care</h3>
      <p class="treatment-info">
        24/7 support for urgent pediatric cases including high fever, dehydration, infections, and injuries.
      </p>
    </div>

  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>Because every child deserves a healthy start in life.</h2>
  </section>

</body>
</html>
    