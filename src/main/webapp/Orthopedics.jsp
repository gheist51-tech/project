<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Orthopedics Department</title>
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
        url('https://t3.ftcdn.net/jpg/03/35/91/16/360_F_335911615_otRTHxubTbRmgX26B4qQPEq9FJmU7qFm.jpg') center/cover;
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
      color: #006699;
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
      color: #006699;
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
      color: #006699;
      font-size: 18px;
      text-decoration: none;
    }

    .cta {
      text-align: center;
      padding: 40px;
      background: #006699;
      color: white;
    }

    .cta button {
      padding: 12px 25px;
      border: none;
      border-radius: 5px;
      background: white;
      color: #006699;
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
    <h1>Orthopedics Department</h1>
    <p>Expert care for bones, joints, and musculoskeletal health</p>
  </header>

  <!-- Intro Paragraph Section -->
  <section class="intro">
    <h2>About Our Orthopedic Care</h2>
    <p>
      The Orthopedics Department offers world-class care for patients with bone, joint, and spine conditions. 
      From sports injuries and arthritis to complex fractures and joint replacements, our specialists combine 
      medical expertise with the latest surgical techniques to restore mobility and improve quality of life. 
      We focus on both non-surgical and surgical treatments to ensure the best possible outcomes.
    </p>
  </section>

  <!-- Doctor Card -->
  <section class="team-container">
    <div class="team-card">
      <img src="https://www.shutterstock.com/image-vector/cute-illustration-male-old-doctor-260nw-2575625991.jpg" alt="Doctor">
      <h3>Dr. Anil Verma</h3>
      <p>Senior Orthopedic Surgeon</p>
      <p class="treatment-info">
        Dr. Verma has 18+ years of experience in joint replacement surgeries, trauma care, and sports injury management. 
        He has performed over 500 successful knee and hip replacement surgeries and is known for his patient-friendly approach. 
        He is also actively involved in research on minimally invasive orthopedic procedures.
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
      <h3>Fracture & Trauma Care</h3>
      <p class="treatment-info">
        Emergency care for bone fractures, joint dislocations, and traumatic injuries using modern surgical techniques and fixation devices.
      </p>
    </div>

    <div class="team-card">
      <h3>Arthroscopy & Sports Injuries</h3>
      <p class="treatment-info">
        Minimally invasive arthroscopic procedures for ligament tears, meniscus repair, and shoulder injuries, ensuring faster recovery for athletes.
      </p>
    </div>

    <div class="team-card">
      <h3>Joint Replacement</h3>
      <p class="treatment-info">
        Advanced hip, knee, and shoulder replacement surgeries using high-quality implants for long-term mobility and pain relief.
      </p>
    </div>

    <div class="team-card">
      <h3>Spine & Back Care</h3>
      <p class="treatment-info">
        Specialized treatments for slipped discs, scoliosis, and spinal deformities with both non-surgical and surgical solutions.
      </p>
    </div>

    <div class="team-card">
      <h3>Pediatric Orthopedics</h3>
      <p class="treatment-info">
        Care for children with bone deformities, growth issues, and congenital conditions, ensuring healthy development and mobility.
      </p>
    </div>

  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>Helping you move pain-free and live stronger.</h2>
  </section>

</body>
</html>
    