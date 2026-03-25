package com.Login_Data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Book_Appoinment extends HttpServlet{
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    String Full_Name = request.getParameter("Full_Name");
	        String Email = request.getParameter("Email");	
	    	String Phone_number = request.getParameter("Phone_number");
	    	String Date = request.getParameter("Date");
	    	String Time = request.getParameter("Time");
	    	String Department = request.getParameter("Department");
	    	String message = request.getParameter("message");
	    	try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Book_Appointment","root","root");
				PreparedStatement ba= con.prepareStatement("insert into All_seven values(?,?,?,?,?,?,?)");
				ba.setString(1,Full_Name);
				ba.setString(2,Email);
				ba.setString(3,Phone_number);
				ba.setString(4, Date);
				ba.setString(5, Time);
				ba.setString(6, Department);
				ba.setString(7, message);
				
				int i=ba.executeUpdate();
				if(i!=0) {
					 response.sendRedirect("Sucess.jsp");
	    	}else {
	    		response.sendRedirect("Unsucess.jsp");
			}
	    	}catch(SQLException e) {
				e.printStackTrace();
			}
	}
	
	public static ResultSet getAppointmentDetails() {
		try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Book_Appointment","root","root");
				PreparedStatement ps= con.prepareStatement("select * from All_seven where email=?");
//				User_1.getInstance().setUsername(emailFromLogin);  // store the email globally
				System.out.println(User.getInstance().getUsername());
				ps.setString(1, User.getInstance().getUsername()); // now retrieve it
				ResultSet rs = ps.executeQuery();
				return rs;
				
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}

}
