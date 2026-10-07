package com.admincontroller;

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

@WebServlet("/VeiwTransactions")
public class VeiwTransactions extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TransactionInfo ui = new TransactionOperations();

		List<Transactions> list = ui.getAllTransactions();

		req.setAttribute("transactions", list);
		RequestDispatcher rf = req.getRequestDispatcher("veiwTransactions.jsp");
		rf.forward(req, resp);

	}
}
