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

@WebServlet("/EditProfileController")
public class EditProfileController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null) {
			int userId = (Integer) session.getAttribute("user_id");
			UserInfo ui = new UserOperations();
			Users u = ui.getUserById(userId);
			req.setAttribute("user", u);
			RequestDispatcher rf = req.getRequestDispatcher("editProfile.jsp");
			rf.forward(req, resp);
		}
	}
}
