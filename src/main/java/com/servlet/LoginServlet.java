package com.servlet;

import java.io.IOException;

import com.conn.DbConnect;
import com.dao.UserDAO;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        // Optional: log for debugging
        System.out.println("Login Attempt: " + email + "  " + pass);

        UserDAO dao = new UserDAO(DbConnect.getConn());
        User u = dao.loginUser(email, pass);
        HttpSession session = req.getSession();

        if (u != null) {
            session.setAttribute("user", u);
            resp.sendRedirect("index.jsp");
        } else {
            session.setAttribute("invalidMsg", "Invalid Email & Password"); // ✅ corrected here
            resp.sendRedirect("login.jsp");
        }
    }
}
