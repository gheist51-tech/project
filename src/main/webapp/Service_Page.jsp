<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hospital Services</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: #f8f9fa;
            color: #333;
        }

        header {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://www.shutterstock.com/image-photo/welcoming-young-female-doctor-stethoscope-260nw-2400351255.jpg') center/cover;
            color: white;
            text-align: center;
            padding: 90px 30px;
        }

        header h1 {
            font-size: 3em;
            margin-bottom: 10px;
        }

        .services-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 50px 10%;
        }

        .service-card {
            background: white;
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .service-card:hover {
            transform: translateY(-5px);
        }

        .service-card i {
            font-size: 40px;
            color: #0077b6;
            margin-bottom: 15px;
        }

        .service-card h3 {
            margin: 15px 0;
            color: #0077b6;
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
        <h1>Our Medical Services</h1>
        <p>Comprehensive healthcare solutions for you and your family</p>
    </header>

    <section class="services-container">
        <a>
            <div class="service-card">
                <i class="fa fa-ambulance"></i>
                <h3>Emergency Care</h3>
                <p>24/7 emergency unit equipped with modern facilities.</p>
            </div>
        </a>
        <a href="Cardiology.jsp">
            <div class="service-card">
                <i class="fa fa-heartbeat"></i>
                <h3>Cardiology</h3>
                <p>Advanced heart care and cardiac surgery services.</p>
            </div>
        </a>
        <a href="Pediatrics.jsp">
            <div class="service-card">
                <i class="fa fa-child"></i>
                <h3>Pediatrics</h3>
                <p>Comprehensive child healthcare and vaccination programs.</p>
            </div>
        </a>
        <a href="Orthopedics.jsp">
            <div class="service-card">
                <i class="fa fa-bone"></i>
                <h3>Orthopedics</h3>
                <p>Expert care for bone, joint, and spine conditions.</p>
            </div>
        </a>
        <a href="Diagnostic_Imaging.jsp">
            <div class="service-card">
                <i class="fa fa-x-ray"></i>
                <h3>Diagnostic Imaging</h3>
                <p>State-of-the-art MRI, CT, and ultrasound facilities.</p>
            </div>
        </a>
        <a href="Dental_Care.jsp">
            <div class="service-card">
                <i class="fa-solid fa-tooth"></i>
                <h3>Dental Treatments</h3>
                <p>We care for your smile</p>
            </div>
        </a>
        <a>
            <div class="service-card">
                <i class="fa fa-pills"></i>
                <h3>Pharmacy</h3>
                <p>On-site pharmacy providing trusted medicines 24/7.</p>
            </div>
        </a>
    </section>

    <section class="cta">
        <h2>Need medical assistance?</h2>
        <p>Our Help Desk Number Are :</p>
        <p>+91 6574839215</p>
        <p>+91 2345678429</p>
    </section>

</body>

</html>