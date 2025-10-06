package com.Login_Data;

public class User {
	private static User instance;

    private String username;

    // Private constructor to prevent instantiation
    private User() {}

    // Public method to provide access to the instance
    public static synchronized User getInstance() {
        if (instance == null) {
            instance = new User();
        }
        return instance;
    }

    // Getter and setter for username
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
