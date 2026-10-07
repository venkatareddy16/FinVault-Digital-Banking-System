
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.model.Account"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Account</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #eef2ff, #f8f9fa);
	min-height: 100vh;
}

.edit-section {
	min-height: 80vh;
	padding: 50px 20px;
}

.edit-card {
	max-width: 700px;
	margin: auto;
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.edit-header {
	background: linear-gradient(135deg, #1d2671, #c33764);
	color: white;
	text-align: center;
	padding: 35px;
}

.edit-icon {
	font-size: 55px;
}

.edit-header h2 {
	margin-top: 10px;
	font-weight: 700;
}

.edit-header p {
	margin-bottom: 0;
	opacity: 0.9;
}

.edit-body {
	background: white;
	padding: 40px;
}

.form-label {
	font-weight: 600;
	color: #343a40;
}

.input-group-text {
	background: #1d2671;
	color: white;
	border: none;
	min-width: 50px;
	justify-content: center;
}

.form-control {
	padding: 12px;
}

.readonly-field {
	background-color: #e9ecef;
	font-weight: 600;
}

.update-btn {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	border: none;
	color: white;
	padding: 12px 30px;
	border-radius: 25px;
	font-weight: 600;
}

.update-btn:hover {
	color: white;
	opacity: 0.9;
}

.back-btn {
	background: linear-gradient(135deg, #6c757d, #343a40);
	border: none;
	color: white;
	padding: 12px 30px;
	border-radius: 25px;
	font-weight: 600;
}

.back-btn:hover {
	color: white;
	opacity: 0.9;
}

.alert {
	border-radius: 10px;
}

.not-found {
	max-width: 600px;
	margin: 80px auto;
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
	Account a = (Account) request.getAttribute("account");

	String message = (String) request.getAttribute("message");
	%>


	<%
	if (a == null) {
	%>


	<!-- ACCOUNT NOT FOUND -->

	<div class="container">

		<div class="alert alert-danger text-center not-found">

			<div style="font-size: 50px;">&#10060;</div>

			<h4 class="mt-3">Account Details Not Found</h4>

			<p>The requested account details could not be found.</p>

			<a href="VeiwAccountsController" class="btn btn-primary"> &#8592;
				Back to Accounts </a>

		</div>

	</div>


	<%
	} else {
	%>


	<!-- EDIT ACCOUNT SECTION -->

	<section class="edit-section">

		<div class="container">

			<div class="card edit-card">


				<!-- HEADER -->

				<div class="edit-header">

					<div class="edit-icon">&#128179;</div>

					<h2>Edit Account</h2>

					<p>Update customer account information</p>

				</div>


				<!-- BODY -->

				<div class="edit-body">


					<!-- MESSAGE -->

					<%
					if (message != null) {
					%>

					<div class="alert alert-danger text-center">

						&#10060;

						<%=message%>

					</div>

					<%
					}
					%>


					<!-- FORM -->

					<form action="UpdateAccountController" method="post">


						<!-- USER ID -->

						<div class="mb-3">

							<label for="user_id" class="form-label"> User ID </label>


							<div class="input-group">

								<span class="input-group-text"> &#128100; </span> <input
									type="text" class="form-control readonly-field" id="user_id"
									name="user_id" value="<%=a.getUser_id()%>" readonly>

							</div>

						</div>


						<!-- ACCOUNT NUMBER -->

						<div class="mb-3">

							<label for="acc_no" class="form-label"> Account Number </label>


							<div class="input-group">

								<span class="input-group-text"> &#128179; </span> <input
									type="text" class="form-control readonly-field" id="acc_no"
									value="<%=a.getAcc_no()%>" readonly>

							</div>

						</div>


						<!-- ACCOUNT NAME -->

						<div class="mb-3">

							<label for="acc_name" class="form-label"> Account Name </label>


							<div class="input-group">

								<span class="input-group-text"> &#128100; </span> <input
									type="text" class="form-control" id="acc_name" name="acc_name"
									value="<%=a.getAcc_name()%>" required>

							</div>

						</div>


						<!-- PHONE -->

						<div class="mb-3">

							<label for="phone" class="form-label"> Phone Number </label>


							<div class="input-group">

								<span class="input-group-text"> &#128222; </span> <input
									type="text" class="form-control" id="phone" name="phone"
									value="<%=a.getPhone()%>" required>

							</div>

						</div>


						<!-- BALANCE -->

						<div class="mb-4">

							<label for="balance" class="form-label"> Balance </label>


							<div class="input-group">

								<span class="input-group-text"> &#8377; </span> <input
									type="number" step="0.01" min="0" class="form-control"
									id="balance" name="balance" value="<%=a.getBalance()%>"
									readonly>

							</div>

						</div>


						<!-- BUTTONS -->

						<div class="text-center">

							<button type="submit" class="btn update-btn me-2">

								&#10004; Update Account</button>


							<a href="VeiwAccounts" class="btn back-btn"> &#8592; Back </a>

						</div>


					</form>


				</div>

			</div>

		</div>

	</section>


	<%
	}
	%>


	<!-- FOOTER -->

	<%@ include file="footer.jsp"%>


</body>

</html>

