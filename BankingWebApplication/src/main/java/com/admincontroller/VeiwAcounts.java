package com.admincontroller;

import java.io.IOException;
import java.util.List;

import com.dao.AccountInfo;
import com.dao.AccountOperations;
import com.model.Account;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/VeiwAccounts")
public class VeiwAcounts extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AccountInfo ui = new AccountOperations();

		List<Account> list = ui.viewAllAccounts();

		req.setAttribute("accounts", list);
		RequestDispatcher rf = req.getRequestDispatcher("veiwAccounts.jsp");
		rf.forward(req, resp);

	}
}
