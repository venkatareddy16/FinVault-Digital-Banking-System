package com.authenticatecontroller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LogoutController")
public class LogoutController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		getSession(true)	    Get existing session or create new one
//		getSession(false)	Get existing session only, don't create
		// Get the current session
		HttpSession session = req.getSession(false);
		// If session exists, invalidate it
		if (session != null) {
			session.invalidate();
		}
		// Redirect to login page
		resp.sendRedirect("login.jsp");

	}
}
