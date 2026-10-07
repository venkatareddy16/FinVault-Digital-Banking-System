
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.model.Transactions,java.util.List"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Transaction History</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #eef2ff, #f8f9fa);
	min-height: 100vh;
}

.transaction-section {
	min-height: 80vh;
	padding: 50px 20px;
}

.transaction-card {
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.transaction-header {
	background: linear-gradient(135deg, #1d2671, #c33764);
	color: white;
	text-align: center;
	padding: 35px;
}

.transaction-icon {
	font-size: 55px;
}

.transaction-header h2 {
	margin-top: 10px;
	font-weight: 700;
}

.transaction-header p {
	margin-bottom: 0;
	opacity: 0.9;
}

.transaction-body {
	background: white;
	padding: 30px;
}

.table-container {
	overflow-x: auto;
}

.transaction-table {
	margin-bottom: 0;
}

.transaction-table thead {
	background: #1d2671;
	color: white;
}

.transaction-table th {
	padding: 15px;
	text-align: center;
	white-space: nowrap;
}

.transaction-table td {
	padding: 13px;
	text-align: center;
	vertical-align: middle;
	white-space: nowrap;
}

.transaction-table tbody tr:hover {
	background-color: #f1f3ff;
}

.transaction-id {
	font-weight: 700;
	color: #1d2671;
}

.account-number {
	font-weight: 600;
}

.amount {
	font-weight: 700;
	color: #198754;
}

.deposit {
	background-color: #198754;
	color: white;
	padding: 6px 12px;
	border-radius: 20px;
	font-weight: 600;
	font-size: 13px;
}

.withdraw {
	background-color: #dc3545;
	color: white;
	padding: 6px 12px;
	border-radius: 20px;
	font-weight: 600;
	font-size: 13px;
}

.transfer {
	background-color: #0d6efd;
	color: white;
	padding: 6px 12px;
	border-radius: 20px;
	font-weight: 600;
	font-size: 13px;
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
	List<Transactions> list = (List<Transactions>) request.getAttribute("transactions");
	%>


	<section class="transaction-section">

		<div class="container-fluid">

			<div class="card transaction-card">


				<!-- HEADER -->

				<div class="transaction-header">

					<div class="transaction-icon">&#128176;</div>

					<h2>Transaction History</h2>

					<p>View all customer transactions</p>

				</div>


				<!-- BODY -->

				<div class="transaction-body">


					<%
					if (list != null && !list.isEmpty()) {
					%>


					<div class="table-container">

						<table class="table table-bordered table-hover transaction-table">

							<thead>

								<tr>

									<th>Transaction ID</th>

									<th>From Account</th>

									<th>To Account</th>

									<th>Transaction Type</th>

									<th>Amount</th>

									<th>Transaction Date</th>

									<th>Description</th>

								</tr>

							</thead>


							<tbody>


								<%
								for (Transactions t : list) {
								%>

								<tr>


									<!-- TRANSACTION ID -->

									<td class="transaction-id"><%=t.getTransactionId()%></td>


									<!-- FROM ACCOUNT -->

									<td class="account-number"><%=t.getFromAccNo()%></td>


									<!-- TO ACCOUNT -->

									<td class="account-number">
										<%
										if (t.getToAccNo() != 0) {
										%> <%=t.getToAccNo()%> <%
                                        } else {
                                           %> - <%
                                        }
                                        %>

									</td>


									<!-- TRANSACTION TYPE -->

									<td>
										<%
										String type = t.getTransactionType();

										if ("DEPOSIT".equalsIgnoreCase(type)) {
										%> <span class="deposit"> DEPOSIT </span> <%
                                         } else if ("WITHDRAW".equalsIgnoreCase(type)) {
                                         %> <span class="withdraw"> WITHDRAW </span> <%
                                         } else {
                                            %> <span class="transfer"> <%=type%>
									       </span> <%
                                         }
                                            %>

									</td>


									<!-- AMOUNT -->

									<td class="amount">&#8377; <%=t.getAmount()%>

									</td>


									<!-- TRANSACTION DATE -->

									<td><%=t.getTransactionDate()%></td>


									<!-- DESCRIPTION -->

									<td><%=t.getDescription()%></td>


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

						<div style="font-size: 50px;">&#128176;</div>

						<h5 class="mt-3">No Transactions Found</h5>

						<p>There are no transaction records available.</p>

					</div>


					<%
					}
					%>


					<!-- BACK BUTTON -->

					<div class="text-center mt-4">

						<a href="admin-dashboard.jsp" class="btn back-btn"> &#8592;
							Back to Dashboard </a>

					</div>


				</div>

			</div>

		</div>

	</section>


	<!-- FOOTER -->

	<%@ include file="footer.jsp"%>


</body>

</html>
