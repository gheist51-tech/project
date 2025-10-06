<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Cardiology Department</title>
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
        url('https://media.istockphoto.com/id/619413554/photo/heart-care-and-ecg.jpg?s=612x612&w=0&k=20&c=aPkgIxxc4U7EVAOkHM1x0Khl5PPPvQX0JM3kCx--0nQ=') center/cover;
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
      color: #b22222;
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
      color: #b22222;
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
      color: #b22222;
      font-size: 18px;
      text-decoration: none;
    }

    .cta {
      text-align: center;
      padding: 40px;
      background: #b22222;
      color: white;
    }

    .cta button {
      padding: 12px 25px;
      border: none;
      border-radius: 5px;
      background: white;
      color: #b22222;
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
    <h1>Cardiology Department</h1>
    <p>Specialists dedicated to heart care and treatment</p>
  </header>

  <!-- Intro Paragraph Section -->
  <section class="intro">
    <h2>About Our Cardiology Care</h2>
    <p>
      The Cardiology Department combines advanced technology with compassionate care to provide comprehensive treatment for heart patients. 
      We believe in a step-by-step approach—starting from prevention, early diagnosis, and lifestyle counseling to advanced interventions 
      and surgeries when needed. Our goal is not just to cure but to help patients lead healthier lives after treatment.
    </p>
  </section>

  <!-- Doctor Card -->
  <section class="team-container">
    <div class="team-card">
      <img src="https://t4.ftcdn.net/jpg/08/46/90/81/360_F_846908169_OBj3VU1kmKr9YWbQodwKUBkYuyPRxoQb.jpg" alt="Doctor">
      <h3>Dr. Rajesh Kumar</h3>
      <p>Senior Cardiologist</p>
      <p class="treatment-info">
        With over 20 years of experience, Dr. Kumar has treated thousands of patients with coronary artery disease, 
        hypertension, and heart failure. His expertise lies in preventive cardiology and patient education. 
        He has been a keynote speaker at several international conferences and is known for his patient-first approach.
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
      <h3>Initial Diagnosis</h3>
      <p class="treatment-info">
        Patients undergo ECG, blood tests, and echocardiography to detect heart rhythm issues and cardiac performance. 
        Early detection allows for timely management and prevents complications.
      </p>
    </div>

    <div class="team-card">
      <h3>Medication & Lifestyle Changes</h3>
      <p class="treatment-info">
        Doctors prescribe medicines to control blood pressure, cholesterol, and arrhythmias. 
        Patients are also guided on diet, exercise, stress management, and quitting smoking.
      </p>
    </div>

    <div class="team-card">
      <h3>Advanced Procedures</h3>
      <p class="treatment-info">
        Minimally invasive interventions like angioplasty, stent placement, and pacemaker implantation help restore normal 
        heart function and improve quality of life.
      </p>
    </div>

    <div class="team-card">
      <h3>Cardiac Surgeries</h3>
      <p class="treatment-info">
        For severe conditions, bypass surgery and valve replacement are performed by our expert surgeons using state-of-the-art facilities.
      </p>
    </div>

    <div class="team-card">
      <h3>Rehabilitation & Recovery</h3>
      <p class="treatment-info">
        After treatment, patients are enrolled in cardiac rehabilitation programs focusing on physical therapy, 
        healthy diet planning, and long-term monitoring for recovery and prevention of recurrence.
      </p>
    </div>

  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>Your heart health is our top priority.</h2>
  </section>

</body>
</html>
    