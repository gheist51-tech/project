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

public class join_our_team extends HttpServlet{
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String Full_name = request.getParameter("Full_name");
        String email = request.getParameter("email");	
    	String phone = request.getParameter("phone");
    	String position = request.getParameter("position");
    	String message = request.getParameter("message");
    	
    	try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/join_team","root","root");
			PreparedStatement ba= con.prepareStatement("insert into All_five values(?,?,?,?,?)");
			ba.setString(1,Full_name);
			ba.setString(2,email);
			ba.setString(3,phone);
			ba.setString(4, position);
			ba.setString(5, message);
			int i=ba.executeUpdate();
			if(i!=0) {
				response.sendRedirect("Sucess.jsp");
    	}else {
    		response.sendRedirect("Unsucess.jsp");
		}
    	}catch(SQLException e) {
			e.printStackTrace();
		}

	}}
