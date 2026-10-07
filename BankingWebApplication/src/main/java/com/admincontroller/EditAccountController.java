package com.admincontroller;

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

@WebServlet("/EditAccountController")
public class EditAccountController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid = Integer.parseInt(req.getParameter("user_id"));
		
		AccountInfo ui = new AccountOperations();

		Account account = ui.viewAccountDetailsById(userid);

		req.setAttribute("account", account);
		RequestDispatcher rf = req.getRequestDispatcher("editAccount.jsp");
		rf.forward(req, resp);

	}
}
