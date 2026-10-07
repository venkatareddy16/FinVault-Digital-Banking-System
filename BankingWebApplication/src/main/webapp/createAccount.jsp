
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Unity Bank - Create Account</title>


<!-- ================================================= -->
<!-- BOOTSTRAP 5.3.3 -->
<!-- ================================================= -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">


<style>

/* ================================================= */
/* BODY */
/* ================================================= */
body {
	background: #f4f8fc;
	min-height: 100vh;
}

/* ================================================= */
/* PAGE HEADER */
/* ================================================= */
.page-header {
	background: linear-gradient(135deg, #e3f2fd, #f8fbff, #e8f5e9);
	padding: 45px 20px;
}

.page-title {
	color: #12355b;
}

/* ================================================= */
/* FORM CONTAINER */
/* ================================================= */
.account-container {
	max-width: 750px;
	margin: 0 auto;
}

/* ================================================= */
/* ACCOUNT CARD */
/* ================================================= */
.account-card {
	border: none;
	border-radius: 20px;
	background: #ffffff;
	overflow: hidden;
}

/* ================================================= */
/* CARD HEADER */
/* ================================================= */
.account-card-header {
	background: linear-gradient(135deg, #0d6efd, #084298);
	color: white;
	padding: 25px;
}

.bank-icon {
	width: 65px;
	height: 65px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.18);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 32px;
	margin: 0 auto 12px;
}

/* ================================================= */
/* FORM LABEL */
/* ================================================= */
.form-label {
	font-weight: 600;
	color: #12355b;
}

/* ================================================= */
/* INPUT GROUP */
/* ================================================= */
.input-group-text {
	background: #eaf3ff;
	border-color: #ced4da;
	font-size: 20px;
}

.form-control {
	padding: 11px;
}

.form-control:focus {
	border-color: #0d6efd;
	box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
}

/* ================================================= */
/* INFORMATION BOX */
/* ================================================= */
.info-box {
	background: linear-gradient(135deg, #e3f2fd, #ffffff);
	border-left: 5px solid #0d6efd;
	border-radius: 10px;
	padding: 15px;
}

/* ================================================= */
/* BUTTONS */
/* ================================================= */
.create-btn {
	background: linear-gradient(135deg, #0d6efd, #084298);
	border: none;
	padding: 11px 25px;
	border-radius: 8px;
	font-weight: 600;
}

.create-btn:hover {
	opacity: 0.92;
}

.cancel-btn {
	padding: 11px 25px;
	border-radius: 8px;
}

/* ================================================= */
/* FOOTER SPACE */
/* ================================================= */
.form-section {
	padding: 50px 20px;
}
</style>

</head>


<body>


	<!-- ================================================= -->
	<!-- CUSTOMER NAVBAR -->
	<!-- ================================================= -->

	<%@ include file="usernavbar.jsp"%>

	<%
	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
	%>

	<!-- ================================================= -->
	<!-- PAGE HEADER -->
	<!-- ================================================= -->

	<section class="page-header">

		<div class="container">

			<div class="text-center">


				<div style="font-size: 48px;">&#128179;</div>


				<h1 class="page-title fw-bold">Create Your Bank Account</h1>


				<p class="lead text-secondary mb-0">Open your Unity Bank account
					and start banking with us.</p>

			</div>

		</div>

	</section>


	<!-- ================================================= -->
	<!-- ACCOUNT FORM -->
	<!-- ================================================= -->


	<section class="form-section">

		<div class="container">


			<div class="account-container">


				<div class="card account-card shadow">


					<!-- ================================================= -->
					<!-- CARD HEADER -->
					<!-- ================================================= -->

					<div class="account-card-header text-center">


						<div class="bank-icon">&#127974;</div>


						<h3 class="fw-bold mb-1">Account Registration</h3>


						<p class="mb-0">Enter your account details below</p>

					</div>


					<!-- ================================================= -->
					<!-- CARD BODY -->
					<!-- ================================================= -->


					<div class="card-body p-4 p-md-5">
						<!-- ERROR MESSAGE -->

						<%
						String message = (String) request.getAttribute("message");

						if (message != null) {
						%>


						<div
							class="alert alert-danger
                                   message-box
                                   text-center">

							&#10060;

							<%=message%>

						</div>


						<%
						}
						%>


						<!-- ================================================= -->
						<!-- INFORMATION -->
						<!-- ================================================= -->

						<div class="info-box mb-4">

							<h6 class="fw-bold text-primary">&#8505; Account Information

							</h6>


							<p class="mb-0 text-secondary">Your account number and
								customer ID will be handled by the banking system. You only need
								to provide your account name, phone number and initial deposit.

							</p>

						</div>


						<!-- ================================================= -->
						<!-- CREATE ACCOUNT FORM -->
						<!-- ================================================= -->

						<form action="CreateAccountController" method="post">


							<!-- ================================================= -->
							<!-- ACCOUNT NAME -->
							<!-- ================================================= -->

							<div class="mb-4">

								<label for="acc_name" class="form-label"> Account Name </label>


								<div class="input-group">

									<span class="input-group-text"> &#128100; </span> <input
										type="text" class="form-control" id="acc_name" name="acc_name"
										placeholder="Enter account name" required>

								</div>

							</div>


							<!-- ================================================= -->
							<!-- PHONE -->
							<!-- ================================================= -->

							<div class="mb-4">

								<label for="phone" class="form-label"> Phone Number </label>


								<div class="input-group">

									<span class="input-group-text"> &#128222; </span> <input
										type="tel" class="form-control" id="phone" name="phone"
										placeholder="Enter your phone number" required>

								</div>

							</div>


							<!-- ================================================= -->
							<!-- INITIAL BALANCE -->
							<!-- ================================================= -->

							<div class="mb-4">

								<label for="balance" class="form-label"> Initial Deposit

								</label>


								<div class="input-group">

									<span class="input-group-text"> &#8377; </span> <input
										type="number" class="form-control" id="balance" name="balance"
										placeholder="Enter initial deposit" min="0" step="0.01"
										required>

								</div>


								<div class="form-text">Enter the amount you want to
									deposit when creating the account.</div>

							</div>


							<!-- ================================================= -->
							<!-- BUTTONS -->
							<!-- ================================================= -->

							<div
								class="d-flex
                                    flex-column
                                    flex-sm-row
                                    justify-content-center
                                    gap-3
                                    mt-4">


								<!-- CREATE -->

								<button type="submit" class="btn btn-primary create-btn">

									&#10004; Create Account</button>


								<!-- CANCEL -->

								<a href="user-dashboard.jsp"
									class="btn btn-outline-secondary cancel-btn"> &#10006;
									Cancel </a>

							</div>


						</form>


					</div>

				</div>

			</div>

		</div>

	</section>


	<!-- ================================================= -->
	<!-- FOOTER -->
	<!-- ================================================= -->

	<%@ include file="footer.jsp"%>


	<!-- ================================================= -->
	<!-- BOOTSTRAP JS -->
	<!-- ================================================= -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>


</body>

</html>
