package com.authenticatecontroller;

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

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String full_name = req.getParameter("full_name");

		Users u = new Users();
		u.setUsername(username);
		u.setPassword(password);
		u.setFull_name(full_name);

		UserInfo ui = new UserOperations();
		boolean status = ui.registerUser(u);
		if (status) {
			System.out.println("User/Customer Registered Successfully");
			RequestDispatcher rf = req.getRequestDispatcher("login.jsp");
			rf.forward(req, resp);
		} else {
			RequestDispatcher rf = req.getRequestDispatcher("index.jsp");
			rf.forward(req, resp);
		}

	}
}
