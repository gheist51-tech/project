<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Diagnostic Imaging Department</title>
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
        url('https://www.shutterstock.com/image-photo/mri-technician-radiologist-preparing-patient-600nw-2387215765.jpg') center/cover;
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
    <h1>Diagnostic Imaging Department</h1>
    <p>Advanced imaging for accurate diagnosis and effective treatment</p>
  </header>

  <!-- Intro Paragraph Section -->
  <section class="intro">
    <h2>About Our Imaging Services</h2>
    <p>
      Our Diagnostic Imaging Department offers state-of-the-art technology to provide precise and detailed images that aid in diagnosis, 
      treatment planning, and monitoring. From X-rays to MRI scans, we ensure safe, non-invasive, and quick imaging services 
      under the care of highly skilled radiologists and technicians.
    </p>
  </section>

  <!-- Doctor Card -->
  <section class="team-container">
    <div class="team-card">
      <img src="https://i.pinimg.com/736x/af/da/df/afdadf665ba0aa7f487b93a197da8949.jpg" alt="Doctor">
      <h3>Dr. Anjali Verma</h3>
      <p>Head of Radiology</p>
      <p class="treatment-info">
        Dr. Verma brings over 14 years of expertise in diagnostic radiology, specializing in CT scans, MRIs, and ultrasound imaging. 
        She is dedicated to early disease detection and works closely with clinical teams to ensure accurate diagnosis and effective treatment plans.
      </p>
      <div class="social-icons">
        <a href="#"><i class="fab fa-linkedin"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
      </div>
    </div>
  </section>

  <!-- Services / Imaging Options -->
  <section class="team-container">

    <div class="team-card">
      <h3>X-Ray Imaging</h3>
      <p class="treatment-info">
        Quick and safe imaging to detect bone fractures, infections, and chest conditions with minimal radiation exposure.
      </p>
    </div>

    <div class="team-card">
      <h3>Ultrasound</h3>
      <p class="treatment-info">
        Non-invasive imaging for internal organs, pregnancy monitoring, and soft tissue evaluation.
      </p>
    </div>

    <div class="team-card">
      <h3>CT Scan</h3>
      <p class="treatment-info">
        High-resolution 3D images of bones, blood vessels, and soft tissues to detect injuries, tumors, and internal bleeding.
      </p>
    </div>

    <div class="team-card">
      <h3>MRI Scan</h3>
      <p class="treatment-info">
        Detailed imaging of the brain, spine, joints, and soft tissues using advanced magnetic resonance technology.
      </p>
    </div>

    <div class="team-card">
      <h3>Mammography</h3>
      <p class="treatment-info">
        Specialized imaging for breast cancer screening and early detection of abnormalities in breast tissue.
      </p>
    </div>

  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>Early diagnosis leads to better treatment and healthier outcomes.</h2>
  </section>

</body>
</html>
