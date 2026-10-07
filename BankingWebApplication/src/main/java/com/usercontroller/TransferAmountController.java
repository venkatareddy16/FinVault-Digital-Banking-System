package com.usercontroller;

import java.io.IOException;

import com.dao.AccountInfo;
import com.dao.AccountOperations;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/TransferAmountController")
public class TransferAmountController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);

		// Sender account number from session
		if (session != null) {
			long fromAccNo = (Long) session.getAttribute("acc_no");

			// Receiver account number
			long toAccNo = Long.parseLong(req.getParameter("toAccNo"));

			// Transfer amount
			double amount = Double.parseDouble(req.getParameter("amount"));

			AccountInfo ai = new AccountOperations();

			boolean status = ai.transferAmountByProcedure(fromAccNo, toAccNo, amount);

			if (status) {
				System.out.println("Amount transfered successfully");
				resp.sendRedirect("user-dashboard.jsp");

			} else {
				System.out.println("Amount transfered failed");
				req.setAttribute("message", "Transfer failed.");

				RequestDispatcher rf = req.getRequestDispatcher("transferAmount.jsp");
				rf.forward(req, resp);
			}
		}
	}
}
