
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Transfer Money - Dynamic Bank</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #eef2ff, #f8f9fa);
	min-height: 100vh;
}

.transfer-section {
	min-height: 75vh;
	padding: 55px 20px;
}

.transfer-card {
	max-width: 700px;
	margin: auto;
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.transfer-header {
	background: linear-gradient(135deg, #1d2671, #c33764);
	color: white;
	padding: 35px;
	text-align: center;
}

.transfer-icon {
	font-size: 50px;
}

.transfer-header h2 {
	font-weight: 700;
	margin-top: 10px;
}

.transfer-header p {
	margin: 0;
	opacity: 0.9;
}

.transfer-body {
	background: white;
	padding: 40px;
}

.info-box {
	background: #eef6ff;
	border-left: 5px solid #0d6efd;
	padding: 15px;
	border-radius: 10px;
	margin-bottom: 25px;
}

.account-box {
	background: #f8f9fa;
	border: 1px solid #dee2e6;
	border-radius: 12px;
	padding: 20px;
	margin-bottom: 22px;
}

.account-title {
	font-weight: 700;
	color: #1d2671;
	margin-bottom: 15px;
}

.form-label {
	font-weight: 600;
	color: #343a40;
}

.input-group-text {
	background: #1d2671;
	color: white;
	border: none;
}

.form-control {
	padding: 12px;
}

.readonly-input {
	background-color: #e9ecef;
	color: #1d2671;
	font-weight: 700;
}

.transfer-btn {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	border: none;
	color: white;
	padding: 12px 30px;
	border-radius: 25px;
	font-weight: 600;
}

.transfer-btn:hover {
	color: white;
	opacity: 0.9;
}

.back-btn {
	background: linear-gradient(135deg, #1d2671, #c33764);
	border: none;
	color: white;
	padding: 11px 28px;
	border-radius: 25px;
}

.back-btn:hover {
	color: white;
	opacity: 0.9;
}

.alert {
	border-radius: 10px;
}
</style>

</head>

<body>


	<!-- NAVBAR -->

	<%@ include file="usernavbar.jsp"%>

	<%
	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
	%>
	<!-- TRANSFER SECTION -->

	<section class="transfer-section">

		<div class="container">

			<div class="card transfer-card">


				<!-- HEADER -->

				<div class="transfer-header">

					<div class="transfer-icon">&#128179;</div>

					<h2>Transfer Money</h2>

					<p>Transfer money to another customer</p>

				</div>


				<!-- BODY -->

				<div class="transfer-body">


					<%
					String message = (String) request.getAttribute("message");

					if (message != null) {
					%>

					<div class="alert alert-danger text-center">

						&#10060;
						<%=message%>

					</div>

					<%
					}
					%>


					<div class="info-box">

						<strong> &#8505; Note: </strong> Your account number is
						automatically selected as the sender account.

					</div>


					<form action="TransferAmountController" method="post">


						<!-- SENDER ACCOUNT -->

						<div class="account-box">

							<div class="account-title">&#128100; Sender Account</div>


							<label class="form-label"> Your Account Number </label>


							<div class="input-group">

								<span class="input-group-text"> &#128179; </span> <input
									type="text" class="form-control readonly-input"
									value="<%=session.getAttribute("acc_no")%>" readonly>

							</div>


							<small class="text-muted"> Your account number is
								automatically selected and cannot be changed. </small>

						</div>


						<!-- RECEIVER ACCOUNT -->

						<div class="account-box">

							<div class="account-title">&#128101; Receiver Account</div>


							<label for="toAccNo" class="form-label"> Receiver Account
								Number </label>


							<div class="input-group">

								<span class="input-group-text"> &#128179; </span> <input
									type="number" class="form-control" id="toAccNo" name="toAccNo"
									placeholder="Enter receiver account number" min="900000000001"
									max="999999999999" required>

							</div>


							<small class="text-muted"> Enter the receiver's 12-digit
								account number. </small>

						</div>


						<!-- AMOUNT -->

						<div class="account-box">

							<div class="account-title">&#8377; Transfer Amount</div>


							<label for="amount" class="form-label"> Amount </label>


							<div class="input-group">

								<span class="input-group-text"> &#8377; </span> <input
									type="number" class="form-control" id="amount" name="amount"
									placeholder="Enter amount" min="1" step="0.01" required>

							</div>

						</div>


						<!-- BUTTONS -->

						<div class="text-center">

							<button type="submit" class="btn transfer-btn me-2">

								&#8594; Transfer Money</button>


							<a href="user-dashboard.jsp" class="btn back-btn"> &#8592;
								Back </a>

						</div>


					</form>

				</div>

			</div>

		</div>

	</section>


	<!-- FOOTER -->

	<%@ include file="footer.jsp"%>


</body>

</html>