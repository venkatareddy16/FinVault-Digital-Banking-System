package com.admincontroller;

import java.io.IOException;

import com.dao.AccountInfo;
import com.dao.AccountOperations;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteAccountController")
public class DeleteAccountController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long accno =Long.parseLong(req.getParameter("acc_no"));

		AccountInfo ui = new AccountOperations();

		boolean status = ui.deleteAccountbyId(accno);

		if (status) {
			System.out.println("account deleted successfully");
			resp.sendRedirect("VeiwAccounts");
		} else {
			System.out.println("account deleted failed");
			resp.sendRedirect("VeiwAccounts");
		}
   	}
}
