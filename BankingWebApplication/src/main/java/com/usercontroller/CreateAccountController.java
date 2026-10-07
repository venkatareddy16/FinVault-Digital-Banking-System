package com.usercontroller;

import com.dao.AccountOperations;
import com.model.Account;

import java.io.IOException;

import com.dao.AccountInfo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CreateAccountController")
public class CreateAccountController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		
		if (session != null) {   //checking is for safety not mandatory already if after login successful we created session and set the values to session
			int userId = (Integer) session.getAttribute("user_id");

			String accName = request.getParameter("acc_name");

			String phone = request.getParameter("phone");

			double balance = Double.parseDouble(request.getParameter("balance"));

			AccountInfo ai = new AccountOperations();

			// long accNo = ai.generateAccountNumber();

			Account a = new Account();

			// a.setAcc_no(accNo);
			a.setUser_id(userId);
			a.setAcc_name(accName);
			a.setPhone(phone);
			a.setBalance(balance);

			boolean status = ai.createAccount(a);

			if (status) {
				// Get account details using user_id
				Account account = ai.viewAccountDetailsById(userId);

				// Get generated account number
				long accNo = account.getAcc_no();

				// Store account number in session to get access while transferring money or transaction history from this to another
				session.setAttribute("acc_no", accNo);

				System.out.println("Account created successfully");
				response.sendRedirect("user-dashboard.jsp");
			} else {
				System.out.println("Account failed to create");
				request.setAttribute("message", "Account Already Exists");
				RequestDispatcher rf = request.getRequestDispatcher("createAccount.jsp");
				rf.forward(request, response);
			}
		}
	}
}
