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

@WebServlet("/DepositAmountController")
public class DepositAmountController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		//int userId = 0;
		if (session != null) {
			long accno = (Long) session.getAttribute("acc_no");

			double amount = Double.parseDouble(req.getParameter("amount"));

			AccountInfo ai = new AccountOperations();
			boolean status = ai.depositeMoneyById(accno, amount);
			if (status) {
				System.out.println("Amount deposited successfully");
				resp.sendRedirect("user-dashboard.jsp");
			} else {
				System.out.println("Amount failed to deposit");
				RequestDispatcher rf = req.getRequestDispatcher("depositAmount.jsp");
				rf.forward(req, resp);
			}
		}
	}
}
