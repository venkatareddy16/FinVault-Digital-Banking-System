
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.model.Account,java.util.List"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Accounts</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #eef2ff, #f8f9fa);
	min-height: 100vh;
}

.account-section {
	min-height: 80vh;
	padding: 50px 20px;
}

.account-card {
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.account-header {
	background: linear-gradient(135deg, #1d2671, #c33764);
	color: white;
	text-align: center;
	padding: 35px;
}

.account-icon {
	font-size: 55px;
}

.account-header h2 {
	margin-top: 10px;
	font-weight: 700;
}

.account-header p {
	margin-bottom: 0;
	opacity: 0.9;
}

.account-body {
	background: white;
	padding: 30px;
}

.table-container {
	overflow-x: auto;
}

.account-table {
	margin-bottom: 0;
}

.account-table thead {
	background: #1d2671;
	color: white;
}

.account-table th {
	padding: 15px;
	text-align: center;
	white-space: nowrap;
}

.account-table td {
	padding: 13px;
	text-align: center;
	vertical-align: middle;
}

.account-table tbody tr:hover {
	background-color: #f1f3ff;
}

.acc-number {
	font-weight: 700;
	color: #1d2671;
}

.balance {
	font-weight: 700;
	color: #198754;
}

.update-btn {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	border: none;
	color: white;
	border-radius: 20px;
	padding: 7px 15px;
	font-weight: 600;
}

.update-btn:hover {
	color: white;
	opacity: 0.9;
}

.delete-btn {
	background: linear-gradient(135deg, #dc3545, #b02a37);
	border: none;
	color: white;
	border-radius: 20px;
	padding: 7px 15px;
	font-weight: 600;
}

.delete-btn:hover {
	color: white;
	opacity: 0.9;
}

.back-btn {
	background: linear-gradient(135deg, #1d2671, #c33764);
	border: none;
	color: white;
	padding: 11px 25px;
	border-radius: 25px;
	font-weight: 600;
}

.back-btn:hover {
	color: white;
	opacity: 0.9;
}

.empty-message {
	text-align: center;
	padding: 40px;
	color: #6c757d;
}
</style>

</head>


<body>


	<!-- ADMIN NAVBAR -->

	<%@ include file="adminnavbar.jsp"%>
	<%
	if (session.getAttribute("user_id") == null || session.getAttribute("role") == null
			|| !session.getAttribute("role").equals("ADMIN")) {

		response.sendRedirect("login.jsp");
		return;
	}
	%>

	<%
	List<Account> list = (List<Account>) request.getAttribute("accounts");
	%>


	<section class="account-section">

		<div class="container-fluid">

			<div class="card account-card">


				<!-- HEADER -->

				<div class="account-header">

					<div class="account-icon">&#128179;</div>

					<h2>Manage Accounts</h2>

					<p>View, update and delete customer accounts</p>

				</div>


				<!-- BODY -->

				<div class="account-body">


					<%
					if (list != null && !list.isEmpty()) {
					%>


					<div class="table-container">

						<table class="table table-bordered table-hover account-table">

							<thead>

								<tr>

									<th>Account Number</th>

									<th>User ID</th>

									<th>Account Name</th>

									<th>Phone</th>

									<th>Balance</th>

									<th>Actions</th>

								</tr>

							</thead>


							<tbody>


								<%
								for (Account a : list) {
								%>

								<tr>

									<td class="acc-number">&#128179; <%=a.getAcc_no()%>

									</td>


									<td><%=a.getUser_id()%></td>


									<td><%=a.getAcc_name()%></td>


									<td><%=a.getPhone()%></td>


									<td class="balance">&#8377; <%=a.getBalance()%>

									</td>


									<td><a
										href="EditAccountController?user_id=<%=a.getUser_id()%>"
										class="btn update-btn me-2"> &#9998; Update </a> <a
										href="DeleteAccountController?acc_no=<%=a.getAcc_no()%>"
										class="btn delete-btn"
										onclick="return confirm('Are you sure you want to delete this account?');">

											&#10060; Delete </a></td>

								</tr>


								<%
								}
								%>


							</tbody>

						</table>

					</div>


					<%
					} else {
					%>


					<div class="empty-message">

						<div style="font-size: 50px;">&#128179;</div>

						<h5 class="mt-3">No Accounts Found</h5>

					</div>


					<%
					}
					%>


					<div class="text-center mt-4">

						<a href="admin-dashboard.jsp" class="btn back-btn"> &#8592;
							Back to Dashboard </a>

					</div>


				</div>

			</div>

		</div>

	</section>


	<%@ include file="footer.jsp"%>


</body>

</html>
