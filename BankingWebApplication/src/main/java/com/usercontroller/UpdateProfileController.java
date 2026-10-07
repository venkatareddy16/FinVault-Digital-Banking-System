package com.usercontroller;

import java.io.IOException;

import com.dao.UserInfo;
import com.dao.UserOperations;
import com.model.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateProfileController")
public class UpdateProfileController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null) {
			int userId = (Integer) session.getAttribute("user_id");

			String username = req.getParameter("username");

			String full_name = req.getParameter("full_name");

			String password = req.getParameter("password");

			Users u = new Users();
			u.setUsername(username);
			u.setPassword(password);
			u.setFull_name(full_name);

			UserInfo ui = new UserOperations();

			boolean status = ui.updateUserById(userId, u);

			if (status) {

				System.out.println("details updated successfully");

				// Update session details and password not required to use in session
				session.setAttribute("username", username);
				session.setAttribute("full_name", full_name);

				resp.sendRedirect("user-dashboard.jsp");

			} else {

				System.out.println("details updated failed");

				req.setAttribute("message", "Username already exists");

				// Keep entered details as it and send to editProfile.jsp page
				req.setAttribute("user", u);
				RequestDispatcher rf = req.getRequestDispatcher("editProfile.jsp");
				rf.forward(req, resp);
			}
		}
	}
}
