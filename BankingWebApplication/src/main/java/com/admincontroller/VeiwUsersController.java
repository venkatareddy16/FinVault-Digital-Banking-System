package com.admincontroller;

import java.io.IOException;
import java.util.List;

import com.dao.UserInfo;
import com.dao.UserOperations;
import com.model.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/VeiwUsersController")
public class VeiwUsersController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserInfo ui = new UserOperations();

		List<Users> list = ui.getAllUsers("Customer");

		req.setAttribute("users", list);
		RequestDispatcher rf = req.getRequestDispatcher("veiwUsers.jsp");
		rf.forward(req, resp);

	}
}
