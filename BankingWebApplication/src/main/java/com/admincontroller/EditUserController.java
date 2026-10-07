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

@WebServlet("/EditUserController")
public class EditUserController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid = Integer.parseInt(req.getParameter("user_id"));

		UserInfo ui = new UserOperations();

		Users u = ui.getUserById(userid);

		req.setAttribute("user", u);
		RequestDispatcher rf = req.getRequestDispatcher("editUser.jsp");
		rf.forward(req, resp);

	}

}
