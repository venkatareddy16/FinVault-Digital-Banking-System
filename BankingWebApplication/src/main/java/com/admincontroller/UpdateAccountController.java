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

@WebServlet("/UpdateAccountController")
public class UpdateAccountController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long accno =Long.parseLong(req.getParameter("acc_no"));
		String acc_name = req.getParameter("acc_name");
		String phone = req.getParameter("phone");

		Account a = new Account();
		a.setAcc_name(acc_name);
		a.setPhone(phone);

		AccountInfo ai = new AccountOperations();

		boolean status = ai.updateAccountById(accno, a);

		if (status) {
			System.out.println("Account details updated successfully");
			// Go back to users list
			resp.sendRedirect("VeiwAccounts");
		} else {
			System.out.println("Account details updatation failed");

			// phone already exists
			req.setAttribute("message", "Phone Number already exists");

			// Keep entered details
			req.setAttribute("account", a);
			RequestDispatcher rf = req.getRequestDispatcher("editAccount.jsp");
			rf.forward(req, resp);
		}
	}
}
