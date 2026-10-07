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

@WebServlet("/WithdrawAmountController")
public class WithdrawAmountController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		//int userId = 0;
		if (session != null) {
			long accno = (Long) session.getAttribute("acc_no");

			double amount = Double.parseDouble(req.getParameter("amount"));

			AccountInfo ai = new AccountOperations();
			boolean status = ai.withdrawMoneyById(accno, amount);
			if (status) {
				System.out.println("Amount withdrawed successfully");
				resp.sendRedirect("user-dashboard.jsp");
			} else {
				System.out.println("Insufficient Account balance");
				req.setAttribute("message", "Insufficient Account balance");
				RequestDispatcher rd = req.getRequestDispatcher("withdrawAmount.jsp");
				rd.forward(req, resp);
			}
		}
	}
}
