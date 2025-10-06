<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Dental Care Department</title>
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
        url('https://i.pinimg.com/736x/ac/8f/da/ac8fda1ba1ed7de36bf187b65ce5bb29.jpg') center/cover;
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
    <h1>Dental Care Department</h1>
    <p>Advanced oral health services for all ages</p>
  </header>

  <!-- Intro Paragraph Section -->
  <section class="intro">
    <h2>About Our Dental Care</h2>
    <p>
      Our Dental Care Department is committed to providing world-class oral healthcare, covering preventive, restorative, and cosmetic dentistry. 
      From routine check-ups and cleanings to advanced dental surgeries, our specialists ensure pain-free, safe, and effective treatments. 
      We focus on preserving natural teeth, enhancing smiles, and maintaining lifelong oral hygiene.
    </p>
  </section>

  <!-- Doctor Card -->
  <section class="team-container">
    <div class="team-card">
      <img src="https://png.pngtree.com/png-vector/20240219/ourmid/pngtree-male-anime-doctor-png-image_11752627.png" alt="Doctor">
      <h3>Dr. Marco Shinde</h3>
      <p>Chief Dental Surgeon</p>
      <p class="treatment-info">
        With over 12 years of experience, Dr. Marco Shinde specializes in cosmetic dentistry, root canal treatments, and dental implants. 
        He is passionate about using the latest technology to provide minimally invasive treatments and helping patients achieve a confident smile.
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
      <h3>Preventive Dental Care</h3>
      <p class="treatment-info">
        Regular check-ups, teeth cleaning, and fluoride treatments to prevent cavities, gum disease, and other oral health issues.
      </p>
    </div>

    <div class="team-card">
      <h3>Cosmetic Dentistry</h3>
      <p class="treatment-info">
        Smile-enhancing treatments including teeth whitening, veneers, and aligners to boost confidence and appearance.
      </p>
    </div>

    <div class="team-card">
      <h3>Restorative Dentistry</h3>
      <p class="treatment-info">
        High-quality fillings, crowns, bridges, and dental implants to restore damaged or missing teeth for better function and aesthetics.
      </p>
    </div>

    <div class="team-card">
      <h3>Orthodontics</h3>
      <p class="treatment-info">
        Advanced braces and invisible aligners to correct misaligned teeth and ensure proper bite for children and adults.
      </p>
    </div>

    <div class="team-card">
      <h3>Emergency Dental Care</h3>
      <p class="treatment-info">
        Quick relief for dental emergencies such as toothaches, fractures, infections, and accidental injuries.
      </p>
    </div>

  </section>

  <!-- CTA -->
  <section class="cta">
    <h2>A healthy smile is the key to confidence and well-being.</h2>
  </section>

</body>
</html>
    