<%@page import="com.Login_Data.Login_Page"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Login_Data.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hospital Home Page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Open+Sans:wght@400;500&display=swap"
    rel="stylesheet">

  <style>
    body {
      margin: 0;
      font-family: 'Open Sans', sans-serif;
      background: linear-gradient(to right, #d9f9e9, #f1faff);
      overflow-x: hidden;
    }

    /* Announcement Banner */
    .announcement {
      background: linear-gradient(90deg, #00c6ff, #0072ff);
      color: white;
      font-weight: bold;
      padding: 8px 0;
      overflow: hidden;
      position: relative;
    }

    .announcement span {
      display: inline-block;
      white-space: nowrap;
      padding-left: 100%;
      animation: scrollText 15s linear infinite;
    }

    @keyframes scrollText {
      from {
        transform: translateX(0);
      }

      to {
        transform: translateX(-100%);
      }
    }

    /* Navbar */
    .parent {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 12px 5%;
      background: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
       position: sticky; 
      top: 0;
      z-index: 10;
    }

    .fa-leaf {
      color: green;
      font-size: 200%;
      transition: transform 0.3s;
    }

    .fa-leaf:hover {
      transform: rotate(20deg) scale(1.1);
    }

    .c2 {
      display: flex;
      gap: 40px;
      font-size: 110%;
      font-weight: 600;
    }

    .c2 a {
      color: #004d40;
      text-decoration: none;
      position: relative;
      transition: color 0.3s;
    }

    .c2 a::after {
      content: "";
      position: absolute;
      width: 0;
      height: 2px;
      background: #0072ff;
      left: 0;
      bottom: -5px;
      transition: width 0.3s;
    }

    .c2 a:hover {
      color: #0072ff;
    }

    .c2 a:hover::after {
      width: 100%;
    }

    .c3 {
      font-size: 110%;
      cursor: pointer;
    }

    .fa-circle-user {
      font-size: 150%;
      margin-left: 8px;
      transition: transform 0.3s, color 0.3s;
    }

    .fa-circle-user:hover {
      color: #0072ff;
      transform: scale(1.1);
    }

    /* Hero Banner */
    .hero {
      height: 70vh;
      background: url("https://t3.ftcdn.net/jpg/02/98/00/12/360_F_298001238_dIwzmWmeR4nQ8HxkZvunXvqJnHgjAwVe.jpg") center/cover no-repeat;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: white;
      position: relative;
    }

    .hero::before {
      content: "";
      position: absolute;
      inset: 0;
      background: rgba(0, 0, 0, 0.5);
    }

    .hero-content {
      position: relative;
      z-index: 1;
      max-width: 700px;
    }

    .hero h1 {
      font-size: 3rem;
      font-family: 'Montserrat', sans-serif;
    }

    .hero p {
      font-size: 1.2rem;
      margin: 20px 0;
    }

    .btn-hero {
      background: #00c6ff;
      color: white;
      padding: 12px 25px;
      font-size: 1.1rem;
      border-radius: 25px;
      border: none;
      transition: 0.3s;
    }

    .btn-hero:hover {
      background: #0072ff;
      transform: scale(1.05);
    }

    /* Why Choose Us */
    #layer3 {
      display: flex;
      justify-content: center;
      margin: 8vh 0;
      padding: 0 5%;
    }

    #mainbox {
      display: flex;
      width: 100%;
      max-width: 1100px;
      border-radius: 15px;
      overflow: hidden;
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
    }

    .box1 {
      flex: 1;
      background-image: url('https://t4.ftcdn.net/jpg/09/52/50/55/240_F_952505513_q6bfdFyqmbwneZhR2Pz6VAyghdNrFHsr.jpg');
      background-size: cover;
      background-position: center;
    }

    .box2 {
      flex: 1;
      background: linear-gradient(135deg, #f1faff, #d9f9e9);
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }

    .box3 {
      background: rgba(255, 255, 255, 0.95);
      padding: 30px;
      border-radius: 12px;
      text-align: center;
      width: 90%;
      max-width: 500px;
    }

    /* Table with icons */
    table {
      width: 100%;
      margin-top: 20px;
    }

    td {
      padding: 25px;
      vertical-align: middle;
      text-align: center;
      transition: transform 0.3s, background 0.3s;
      border: 1px solid #ddd;
      border-radius: 10px;
    }

    td:hover {
      transform: translateY(-8px);
      background: #f9f9f9;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    }

    td i {
      font-size: 30px;
      margin-bottom: 8px;
    }

    /* Services Section */
    .services {
      text-align: center;
      padding: 60px 10%;
    }

    .services h2 {
      font-family: 'Montserrat', sans-serif;
      margin-bottom: 40px;
      color: #0072ff;
    }

    .service-cards {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
    }

    .service-card {
      flex: 1 1 250px;
      background: #fff;
      padding: 25px;
      border-radius: 12px;
      box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
      transition: 0.3s;
      text-align: center;
    }

    .service-card:hover {
      transform: translateY(-8px);
    }

    .service-card i {
      font-size: 40px;
      color: #0072ff;
      margin-bottom: 15px;
    }

    /* Testimonials */
    .testimonials {
      background: #f8faff;
      text-align: center;
      padding: 60px 10%;
    }

    .testimonial {
      font-style: italic;
      margin-bottom: 20px;
      max-width: 600px;
      margin: auto;
    }

    /* Footer */
    footer {
      background: #004d40;
      color: white;
      text-align: center;
      padding: 30px 10%;
      margin-top: 40px;
    }

    footer a {
      color: #00c6ff;
      margin: 0 10px;
      font-size: 20px;
    }

    /* Floating Emergency Button */
    .emergency-btn {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background: #e53935;
      color: white;
      padding: 15px 25px;
      border-radius: 50px;
      font-weight: bold;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
      cursor: pointer;
      z-index: 99;
      transition: 0.3s;
    }

    .emergency-btn:hover {
      background: #b71c1c;
      transform: scale(1.05);
    }

    /* Responsive */
    @media (max-width: 992px) {
      #mainbox {
        flex-direction: column;
      }

      .box1,
      .box2 {
        height: 300px;
      }
    }

    @media (max-width: 600px) {
      .parent {
        flex-direction: column;
        gap: 15px;
      }

      .c2 {
        flex-direction: column;
        gap: 12px;
        align-items: center;
      }
    }
    .dropdown {
  position: relative;
  display: inline-block;
}

.dropbtn {
  background-color: black;
  color: white;
  border: none;
  font-size: 16px;
  cursor: pointer;
}

.dropdown-content {
  display: none;
  position: absolute;
  right: 0;
  background-color: #333;
  min-width: 220px;
  padding: 10px;
   border-radius: 5px;
  z-index: 1;
}

.dropdown-content p {
  color: white;
  margin: 5px 0;
  font-size: 14px;
}

.dropdown:hover .dropdown-content {
  display: block;
}
  </style>
</head>

<body>
  <!-- Announcement -->
  <header class="announcement">
    <span>Get Started With Us. Your journey to a healthier life starts here...</span>
  </header>

  <!-- Navbar -->
  <div class="parent">
    <div class="icon-box">
        <h2>Green Leaf Hospital</h2>
      <i class="fa-solid fa-leaf"></i>
    </div>
    <div class="c2">
      <a href="Service_Page.jsp">Services</a>
      <a href="Our_team.jsp">Our Team</a>
      <a href="Gallery.jsp">Gallery</a>
      <a href="Contact_us.jsp">Contact Us</a>
      <a href="About_us.jsp">About Us</a>
    </div>
    <div class="c3">
      <div class="dropdown">
        <button class="dropbtn">Profile <i class="fa-solid fa-user"></i></button>
        <div class="dropdown-content">
            <%
                ResultSet rs = Login_Page.getProfileDetails();
                while (rs != null && rs.next()) {
                    String fname = rs.getString(1);
                    String lname = rs.getString(2);
                    String email = rs.getString(3);
                    String number = rs.getString(4);
                    String pass = rs.getString(5);
            %>
                <p><b>Username:</b> <%= fname %></p>
                <p><b>lname:</b> <%= lname %></p>
                <p><b>Email:</b> <%= email %></p>
                <p><b>Number:</b> <%= number %></p>
                <p><b>Password:</b> <%= pass %></p>
            <%
                }
                if (rs != null) rs.close();
            %>
        </div>
    </div>
    </div>
  </div>

  <!-- Hero Banner -->
  <section class="hero">
    <div class="hero-content">
      <h1>Your Health, Our Priority</h1>
      <p>World-class doctors, advanced facilities & affordable care — all under one roof.</p>
      <a href="Book_Appoinment.jsp"><button class="btn-hero">Book Appointment</button></a>
    </div>
  </section>

  <!-- Why Choose Us -->
  <div id="layer3">
    <div id="mainbox">
      <div class="box1"></div>
      <div class="box2">
        <div class="box3">
          <h2>Why Trust Us</h2>
          <h1>Why Choose Us?</h1>
          <table>
            <tr>
              <td><i class="fa-solid fa-user-doctor"></i><br>Team of Experienced doctors</td>
              <td><i class="fa-solid fa-bed-pulse"></i><br>Well equipped ICU</td>
              <td><i class="fa-solid fa-vial-virus"></i><br>NABL accredited Lab</td>
            </tr>
            <tr>
              <td><i class="fa-solid fa-square-phone"></i><br>24 * 7 Pharmacy</td>
              <td><i class="fa-solid fa-earth-americas"></i><br>Globally Known</td>
              <td><i class="fa-solid fa-hand-holding-dollar"></i><br>Affordable Quality Healthcare</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>

  <!-- Services Section -->
  <section class="services">
    <h2>Our Services</h2>
    <div class="service-cards">
      <a href="Cardiology.jsp">
        <div class="service-card"><i class="fa-solid fa-heart-pulse"></i>
          <h4>Cardiology</h4>
          <p>Advanced heart care with expert cardiologists.</p>
        </div>
      </a>
      <a href="Orthopedics.jsp">
        <div class="service-card"><i class="fa fa-bone"></i>
          <h4>Orthopedics</h4>
          <p>Expert care for bone, joint, and spine conditions.</p>
        </div>
      </a>
      <a href="Pediatrics.jsp">
        <div class="service-card"><i class="fa-solid fa-baby"></i>
          <h4>Pediatrics</h4>
          <p>Compassionate care for your little ones.</p>
        </div>
      </a>
      <a href="Dental_Care.jsp">
        <div class="service-card"><i class="fa-solid fa-tooth"></i>
          <h4>Dental Care</h4>
          <p>Modern dental treatments with expert dentists.</p>
        </div>
      </a>
      <a href="Diagnostic_Imaging.jsp">
        <div class="service-card"><i class="fa fa-x-ray"></i>
          <h4>Diagnostic Imaging</h4>
          <p>State-of-the-art MRI, CT, and ultrasound facilities.</p>
        </div>
      </a>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="testimonials">
    <h2>What Our Patients Say</h2>
    <p class="testimonial">"The doctors were so caring and supportive. The facilities are top-notch!" - Anjali K.</p>
    <p class="testimonial">"Affordable and excellent treatment. I highly recommend this hospital." - Rohan M.</p>
  </section>

  <!-- Footer -->
  <footer>
    <div>
      <a href="#"><i class="fab fa-facebook"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
    </div>
  </footer>
</body>

</html>