package com.admincontroller;

import java.io.IOException;

import com.dao.UserInfo;
import com.dao.UserOperations;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUserController")
public class DeleteUserController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid = Integer.parseInt(req.getParameter("user_id"));

		UserInfo ui = new UserOperations();

		boolean status = ui.deleteUserById(userid);

		if (status) {
			System.out.println("user deleted successfully");
			resp.sendRedirect("VeiwUsersController");
		} else {
			System.out.println("user deleted failed");
			resp.sendRedirect("VeiwUsersController");
		}
	}
}
