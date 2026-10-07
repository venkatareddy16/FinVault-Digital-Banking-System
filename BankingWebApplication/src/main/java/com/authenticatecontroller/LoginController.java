package com.authenticatecontroller;

import java.io.IOException;

import com.dao.AccountInfo;
import com.dao.AccountOperations;
import com.dao.UserInfo;
import com.dao.UserOperations;
import com.model.Account;
import com.model.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		UserInfo ui = new UserOperations();
		Users u = ui.loginUser(username, password);
		if (u != null) { // after login successful
			/* create a http session for the login customer/admin */
			HttpSession session = req.getSession();

			// Store actual database user_id
			session.setAttribute("user_id", u.getUser_id());

			// Store other user details
			session.setAttribute("username", u.getUsername());

			session.setAttribute("full_name", u.getFull_name());

			session.setAttribute("role", u.getRole());  

			
			// Check role
			if (u.getRole().equals("ADMIN")) {

				resp.sendRedirect("admin-dashboard.jsp");

			} else if(u.getRole().equals("CUSTOMER")){

				AccountInfo ai = new AccountOperations();

				Account account = ai.viewAccountDetailsById(u.getUser_id());

				if (account != null) {  //if account already created before logout and after login then

					// Store account number
					// in session
					session.setAttribute("acc_no", account.getAcc_no());
				}
				
				resp.sendRedirect("user-dashboard.jsp");

			}
		} else { // login failed
			resp.sendRedirect("login.jsp");
		}

	}
}
