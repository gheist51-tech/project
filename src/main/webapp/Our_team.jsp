<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Our Team</title>
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
                url('https://www.shutterstock.com/image-photo/team-doctors-diversity-portrait-healthcare-260nw-2260731673.jpg') center/cover;
            color: white;
            text-align: center;
            padding: 90px 30px;
        }

        header h1 {
            font-size: 3em;
            margin-bottom: 10px;
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
            color: #0077b6;
        }

        .team-card p {
            font-size: 14px;
            margin-bottom: 10px;
        }

        .social-icons a {
            margin: 0 5px;
            color: #0077b6;
            font-size: 18px;
            text-decoration: none;
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
        <h1>Meet Our Team</h1>
        <p>Dedicated healthcare professionals who care for you</p>
    </header>

    <section class="team-container">
        <div class="team-card">
            <img src="https://t4.ftcdn.net/jpg/08/46/90/81/360_F_846908169_OBj3VU1kmKr9YWbQodwKUBkYuyPRxoQb.jpg"
                alt="Doctor">
            <h3>Dr. Rajesh Kumar</h3>
            <p>Cardiologist</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
        </div>

        <div class="team-card">
            <img src="https://thumbs.dreamstime.com/b/friendly-female-doctor-cartoon-character-smiling-confidence-wearing-stethoscope-white-coat-crossed-arms-representing-390650465.jpg"
                alt="Doctor">
            <h3>Dr. Priya Sharma</h3>
            <p>Pediatrician</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
        </div>

        <div class="team-card">
            <img src="https://www.shutterstock.com/image-vector/cute-illustration-male-old-doctor-260nw-2575625991.jpg"
                alt="Doctor">
            <h3>Dr. Anil Verma</h3>
            <p>Orthopedic Surgeon</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>

        <div class="team-card">
            <img src="https://png.pngtree.com/png-vector/20240219/ourmid/pngtree-male-anime-doctor-png-image_11752627.png"
                alt="Doctor">
            <h3>Dr. Marco Shinde</h3>
            <p>Dentists</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>

         <div class="team-card">
            <img src="https://i.pinimg.com/736x/af/da/df/afdadf665ba0aa7f487b93a197da8949.jpg"
                alt="Doctor">
            <h3>Dr. Anjali Verma</h3>
            <p>Diagnostic Imaging</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
        </div>

        <div class="team-card">
            <img src="https://png.pngtree.com/png-vector/20250106/ourmid/pngtree-cartoon-nurse-girl-holding-stethoscope-notepad-and-pen-png-image_15070570.png"
                alt="Nurse">
            <h3>Nurse Meera Patel</h3>
            <p>Head Nurse</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
        </div>

        <div class="team-card">
            <img src="https://www.shutterstock.com/image-vector/illustration-cartoon-pharmacist-pack-medicine-260nw-190940387.jpg"
                alt="Pharmacist">
            <h3>Kiran Sarfare</h3>
            <p>Pharmacist</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
        </div>

        <div class="team-card">
            <img src="https://media.gettyimages.com/id/1212102727/vector/ambulance-car-with-driver.jpg?s=612x612&w=gi&k=20&c=SCzNn1oAoigA7Aei8GkW2q-AyV1AlGmbmo3JgdTcuoA="
                alt="Emergency_Services">
            <h3>Pranit More</h3>
            <p>Emergency Services</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
        </div>

    </section>

    <section class="cta">
        <h2>Join Our Team</h2>
        <p>We're always looking for talented medical professionals to serve better.</p>
       <a href="join_our_team.jsp"> <button>Apply Now</button></a>
    </section>

</body>

</html>    