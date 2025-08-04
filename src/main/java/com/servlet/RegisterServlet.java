package com.servlet;



import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.conn.DbConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User u = new User(name, email, password);
            
            UserDAO dao = new UserDAO(DbConnect.getConn());
            boolean f = dao.userRegister(u);
            HttpSession session=request.getSession();
            if (f) {
               session.setAttribute("sucssMsg", "User Register Successfully..");
               response.sendRedirect("register.jsp");
               //System.out.println("User Register Successfully..");
            } else {
            	session.setAttribute("errorMsg","Something went wrong on the server...");
            	response.sendRedirect("register.jsp");
//                System.out.println("Something went wrong on the server...");
            }

        }  catch (Exception e) {
            e.printStackTrace();
            request.getSession().setAttribute("errorMsg", "Error: " + e.getMessage()); // this line adds actual error
            response.sendRedirect("register.jsp");
        }

    }
}


