package com.usercontroller;

import java.io.IOException;
import java.util.List;

import com.dao.TransactionInfo;
import com.dao.TransactionOperations;
import com.model.Transactions;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/TransactionHistoryController")
public class TransactionHistoryController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session != null) {
			long accNo = (Long) session.getAttribute("acc_no");

			TransactionInfo ti = new TransactionOperations();

			List<Transactions> list = ti.getTransactionsByAccount(accNo);
            
			int n=list.size();
			System.out.println(n);
			
			request.setAttribute("transactions", list);

			RequestDispatcher rf=request.getRequestDispatcher("transaction.jsp");
			rf.forward(request, response);
		}
	}
}
