package com.admincontroller;

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

@WebServlet("/UpdateUserController")
public class UpdateUserController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Get user ID
		int userId = Integer.parseInt(req.getParameter("user_id"));

		// Get updated details
		String username = req.getParameter("username");
		String fullName = req.getParameter("full_name");
		String password = req.getParameter("password");

		// Create Users object
		Users u = new Users();
		u.setUsername(username);
		u.setFull_name(fullName);
		u.setPassword(password);

		UserInfo ui = new UserOperations();

		// Update user
		boolean status = ui.updateUserById(userId, u);

		if (status) {
			System.out.println("User details updated successfully");
			// Go back to users list
			resp.sendRedirect("VeiwUsersController");
		} else {
			System.out.println("User details update failed");
			// Username already exists
			req.setAttribute("message", "Username already exists");

			// Keep entered details
			req.setAttribute("user", u);
			RequestDispatcher rf = req.getRequestDispatcher("editUser.jsp");
			rf.forward(req, resp);
		}
	}
}
