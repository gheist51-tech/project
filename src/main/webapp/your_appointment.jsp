<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.Login_Data.User" %>
<%@ page import="com.Login_Data.Book_Appoinment" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Appointments</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <style>
    body {
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      background: #f4fdf6;
      color: #222;
    }

    header {
      background: linear-gradient(rgba(0, 60, 20, 0.6), rgba(0, 60, 20, 0.6)),
        url('https://images.unsplash.com/photo-1580281658629-18f83ede8b8a?q=80&w=2000') center/cover;
      color: white;
      text-align: center;
      padding: 90px 30px;
    }

    header h1 {
      font-size: 3em;
      margin-bottom: 10px;
    }

    header p {
      font-size: 1.2em;
      color: #f0f0f0;
    }

    .appointments-container {
      padding: 50px 10%;
      background-color: #ffffff;
      border-radius: 15px;
      margin: 50px auto;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    }

    .appointments-container h2 {
      text-align: center;
      color: #006d32;
      font-size: 2em;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    thead {
      background-color: #006d32;
      color: white;
    }

    th, td {
      padding: 15px;
      text-align: center;
    }

    tr:nth-child(even) {
      background-color: #f4fdf6;
    }

    tr:hover {
      background-color: #d7f7df;
      transition: background 0.3s;
    }

    th {
      font-weight: bold;
    }

    .cta {
      text-align: center;
      padding: 40px;
      background: #00994d;
      color: white;
      margin-top: 50px;
    }

    .cta a {
      display: inline-block;
      padding: 12px 25px;
      border: none;
      border-radius: 6px;
      background: white;
      color: #00994d;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s;
      text-decoration: none;
    }

    .cta a:hover {
      background: #e6f9ec;
      transform: scale(1.05);
    }
  </style>
</head>

<body>

  <header>
    <h1>My Appointments</h1>
    <p>View your scheduled hospital visits and consultations</p>
  </header>

  <section class="appointments-container">
    <h2>Booked Appointments</h2>
    <table border="0">
      <thead>
        <tr>
          <th>Full Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Date</th>
          <th>Time</th>
          <th>Department</th>
          <th>Message</th>
        </tr>
      </thead>
      <tbody>
        <%
          ResultSet rs = null;
          try {
              // Fetch appointment details for logged-in user
              rs = Book_Appoinment.getAppointmentDetails();

              if (rs != null) {
                  boolean found = false;
                  while (rs.next()) {
                      found = true;
				        %>
				        <tr>
				          <td><%= rs.getString(1) %></td>
				          <td><%= rs.getString(2) %></td>
				          <td><%= rs.getString(3) %></td>
				          <td><%= rs.getString(4) %></td>
				          <td><%= rs.getString(5) %></td>
				          <td><%= rs.getString(6) %></td>
				          <td><%= rs.getString(7) %></td>
				        </tr>
				        <%
                  }
                  if (!found) {
			        %>
			        <tr>
			          <td colspan="7">No appointments found for <%= User.getInstance().getUsername() %>.</td>
			        </tr>
			        <%
                  }
              } else {
        %>
        <tr>
          <td colspan="7" style="color:red;">Unable to fetch data. Please try again later.</td>
        </tr>
        <%
              }
          } catch (Exception e) {
              out.println("<tr><td colspan='7' style='color:red;'>Error: " + e.getMessage() + "</td></tr>");
              e.printStackTrace();
          } finally {
              if (rs != null) rs.close();
          }
        %>
      </tbody>
    </table>
  </section>

  <section class="cta">
    <h2>Need a new appointment?</h2>
    <p>Book your next consultation with our specialists today.</p>
    <a href="Book_Appoinment.jsp">Book Now</a>
  </section>

</body>
</html>
