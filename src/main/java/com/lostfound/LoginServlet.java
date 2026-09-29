package com.lostfound;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            response.setContentType("text/html");

            if (rs.next()) {

                response.getWriter().println(
                        "<html>" +
                                "<body style='font-family:Arial;text-align:center;margin-top:100px;'>" +
                                "<h1>Login Successful! ✅</h1>" +
                                "<h2>Welcome, " + rs.getString("name") + "</h2>" +
                                "<p>You have successfully logged in.</p>" +
                                "<a href='index.jsp'>Go to Home</a>" +
                                "</body>" +
                                "</html>"
                );

            } else {

                response.getWriter().println(
                        "<html>" +
                                "<body style='font-family:Arial;text-align:center;margin-top:100px;'>" +
                                "<h1>Login Failed ❌</h1>" +
                                "<p>Invalid email or password.</p>" +
                                "<a href='login.jsp'>Try Again</a>" +
                                "</body>" +
                                "</html>"
                );
            }

        } catch (Exception e) {

            e.printStackTrace();

            response.setContentType("text/html");

            response.getWriter().println(
                    "<h1>Database Error!</h1>" +
                            "<p>Something went wrong.</p>"
            );
        }
    }
}