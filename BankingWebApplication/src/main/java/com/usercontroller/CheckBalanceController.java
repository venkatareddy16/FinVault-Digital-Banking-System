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

@WebServlet("/CheckBalanceController")
public class CheckBalanceController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null) {
			long accno = (Long) session.getAttribute("acc_no");

			AccountInfo ai = new AccountOperations();

			double balance = ai.checkBalance(accno);

			req.setAttribute("balance", balance);
			RequestDispatcher rf = req.getRequestDispatcher("checkBalance.jsp");
			rf.forward(req, resp);
		}
	}
}
