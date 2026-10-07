package com.usercontroller;

import java.io.IOException;

import com.dao.AccountInfo;
import com.dao.AccountOperations;
import com.model.Account;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/VeiwAccountController")
public class VeiwAccountController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Account a=new Account();
		HttpSession session = req.getSession(false);
		//int userId = 0;
		if (session != null) {
			int userId = (Integer) session.getAttribute("user_id");

			AccountInfo ai = new AccountOperations();

			Account a = ai.viewAccountDetailsById(userId);

			req.setAttribute("account", a);
			RequestDispatcher rf = req.getRequestDispatcher("veiwAccount.jsp");
			rf.forward(req, resp);
		}
	}

}
