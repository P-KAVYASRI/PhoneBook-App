package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
    public static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/phonebook?useSSL=false&serverTimezone=UTC", 
                "root", 
                "Kavya@123"
            );
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
