<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact Us</title>
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
                url('https://img.freepik.com/free-photo/contact-us-customer-support-hotline-people-connect-call-customer-support_36325-1640.jpg') center/cover;
            color: white;
            text-align: center;
            padding: 90px 30px;
        }

        header h1 {
            font-size: 3em;
            margin-bottom: 10px;
        }

        .contact-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 50px 10%;
        }

        .contact-card {
            background: white;
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .contact-card:hover {
            transform: translateY(-5px);
        }

        .contact-card i {
            font-size: 40px;
            color: #0077b6;
            margin-bottom: 15px;
        }

        .contact-card h3 {
            margin: 15px 0;
            color: #0077b6;
        }

        .form-section {
            padding: 50px 10%;
            background: #0077b6;
            color: white;
            text-align: center;
        }

        .form-section h2 {
            margin-bottom: 20px;
        }

        form {
            max-width: 600px;
            margin: auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input,
        textarea {
            padding: 12px;
            border: none;
            border-radius: 5px;
            outline: none;
            font-size: 1em;
        }

        #btn {
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: white;
            color: #0077b6;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        #btn:hover {
            background: #e0e0e0;
        }
    </style>
</head>

<body>

    <header>
        <h1>Contact Us</h1>
        <p>We are here to assist you anytime</p>
    </header>

    <section class="contact-container">
        <a>
            <div class="contact-card">
                <i class="fa fa-map-marker-alt"></i>
                <h3>Our Address</h3>
                <p>123 Health Street, Wellness City, India</p>
            </div>
        </a>

        <a>
            <div class="contact-card">
                <i class="fa fa-phone"></i>
                <h3>Call Us</h3>
                <p>+91 9876543210</p>
                <p>+91 8765432109</p>
            </div>
        </a>

        <a>
            <div class="contact-card">
                <i class="fa fa-envelope"></i>
                <h3>Email Us</h3>
                <p>support@hospital.com</p>
                <p>info@hospital.com</p>
            </div>
        </a>

        <a>
            <div class="contact-card">
                <i class="fa fa-clock"></i>
                <h3>Working Hours</h3>
                <p>Mon - Sat: 9 AM - 8 PM</p>
                <p>Sunday: Emergency Only</p>
            </div>
        </a>
    </section>

    <section class="form-section">
        <h2>Send Us a Message</h2>
        <form action="${pageContext.request.contextPath}/Send_information" method="post">
            <input type="text" name="Name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <input type="text" name="subject" placeholder="Subject" required>
            <textarea rows="5" name="message" placeholder="Your Message" required></textarea>
            <input id="btn" type="submit" value="Send information"/>
        </form>
    </section>

</body>

</html>