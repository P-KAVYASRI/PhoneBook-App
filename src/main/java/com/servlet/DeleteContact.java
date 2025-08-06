package com.servlet;

import java.io.IOException;

import com.conn.DbConnect;
import com.dao.ContactDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteContact extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int cid = Integer.parseInt(req.getParameter("cid"));

            ContactDAO dao = new ContactDAO(DbConnect.getConn());
            boolean f = dao.deleteContactById(cid);

            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("succMsg", "Contact deleted successfully.");
            } else {
                session.setAttribute("failedMsg", "Something went wrong on server.");
            }

            resp.sendRedirect("viewContact.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("error.jsp");
        }
    }
}
