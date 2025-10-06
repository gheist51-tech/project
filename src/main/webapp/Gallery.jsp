<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Gallery</title>
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
        url('https://plus.unsplash.com/premium_photo-1709031620960-877745c2bc34?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z2FsbGVyeXxlbnwwfHwwfHx8MA%3D%3D') center/cover;
      color: white;
      text-align: center;
      padding: 90px 30px;
    }

    header h1 {
      font-size: 3em;
      margin-bottom: 10px;
    }

    .gallery-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 15px;
      padding: 50px 10%;
    }

    .gallery-item {
      position: relative;
      overflow: hidden;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      cursor: pointer;
      transition: transform 0.3s ease-in-out;
    }

    .gallery-item img {
      width: 100%;
      height: 220px;
      object-fit: cover;
      display: block;
      transition: transform 0.3s ease-in-out;
    }

    .gallery-item:hover img {
      transform: scale(1.1);
    }

    .overlay {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      background: rgba(0, 119, 182, 0.8);
      color: white;
      text-align: center;
      padding: 10px;
      font-size: 14px;
      opacity: 0;
      transition: opacity 0.3s;
    }

    .gallery-item:hover .overlay {
      opacity: 1;
    }

    .cta {
      text-align: center;
      padding: 40px;
      background: #0077b6;
      color: white;
    }

    .cta button {
      padding: 12px 25px;
      border: none;
      border-radius: 5px;
      background: white;
      color: #0077b6;
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

  <header>
    <h1>Our Gallery</h1>
    <p>Memories and moments from our hospital</p>
  </header>

  <section class="gallery-container">
    <div class="gallery-item">
      <img src="https://static.vecteezy.com/system/resources/thumbnails/036/372/442/small_2x/hospital-building-with-ambulance-emergency-car-on-cityscape-background-cartoon-illustration-vector.jpg" alt="Hospital Building">
      <div class="overlay">Hospital Building</div>
    </div>

    <div class="gallery-item">
      <img src="https://thumbs.dreamstime.com/b/doctor-consulting-patient-medicine-drugs-old-67274786.jpg" alt="Doctor Consultation">
      <div class="overlay">Doctor Consultation</div>
    </div>

    <div class="gallery-item">
      <img src="https://static.vecteezy.com/system/resources/thumbnails/045/925/270/small/hospital-medical-team-banner-with-group-of-smiling-healthy-doctors-and-nurses-photo.jpeg" alt="Nursing Team">
      <div class="overlay">Our Nursing Team</div>
    </div>

    <div class="gallery-item">
      <img src="https://mervekarali.com/project/laboratory-diagnostics-project/featured.jpg" alt="Diagnostic Lab">
      <div class="overlay">Diagnostic Laboratory</div>
    </div>

    <div class="gallery-item">
      <img src="https://media.istockphoto.com/id/457344351/photo/nurse-station.jpg?s=612x612&w=0&k=20&c=V_CyyX8pRAXDSKQ7hA9o3IsuNZfhB4GIk4uHSW0qWX4=" alt="Reception Area">
      <div class="overlay">Reception Area</div>
    </div>

    <div class="gallery-item">
      <img src="https://t4.ftcdn.net/jpg/00/27/62/27/360_F_27622724_w2jynKpuWRsOKS866ViBgH3ozGeOQslD.jpg" alt="Operation Theatre">
      <div class="overlay">Operation Theatre</div>
    </div>

    <div class="gallery-item">
      <img src="https://media.istockphoto.com/id/1135284188/photo/if-you-need-its-here.jpg?s=612x612&w=0&k=20&c=2yfZHUqTEGW4-5r4Sc4pzWKx0DtubpdbTkX3h_w1AJg=" alt="Pharmacy">
      <div class="overlay">Pharmacy</div>
    </div>

    <div class="gallery-item">
      <img src="https://media.istockphoto.com/id/1385087783/photo/force-traveller.jpg?s=612x612&w=0&k=20&c=Q3u_gcpZF3Kt2AuvJ2Qn17TwUafzmftRMdtzN31UBt8=" alt="Emergency Ambulance">
      <div class="overlay">Emergency Ambulance</div>
    </div>
  </section>

  <section class="cta">
    <h2>Want to visit us?</h2>
    <p>Schedule a hospital tour and see our facilities.</p>
   <a href="Visit_us.jsp"> <button>Book a Visit</button></a>
  </section>

</body>

</html>
    