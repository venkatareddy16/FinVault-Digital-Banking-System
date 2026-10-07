
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Deposit Money - Dynamic Bank</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        body {
            background: linear-gradient(135deg, #eef2ff, #f8f9fa);
            min-height: 100vh;
        }

        .deposit-section {
            min-height: 75vh;
            padding: 55px 20px;
        }

        .deposit-card {
            max-width: 650px;
            margin: auto;
            border: none;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }

        .deposit-header {
            background: linear-gradient(
                135deg,
                #1d2671,
                #c33764
            );

            color: white;
            padding: 35px;
            text-align: center;
        }

        .deposit-header h2 {
            font-weight: 700;
            margin-bottom: 8px;
        }

        .deposit-header p {
            margin: 0;
            opacity: 0.9;
        }

        .deposit-icon {
            font-size: 50px;
            margin-bottom: 10px;
        }

        .deposit-body {
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
        }

        .form-control {
            padding: 12px;
            border-radius: 0 8px 8px 0;
        }

        .deposit-btn {
            background: linear-gradient(
                135deg,
                #198754,
                #20c997
            );

            border: none;
            color: white;
            padding: 12px 35px;
            border-radius: 25px;
            font-weight: 600;
        }

        .deposit-btn:hover {
            color: white;
            opacity: 0.9;
        }

        .back-btn {
            background: linear-gradient(
                135deg,
                #1d2671,
                #c33764
            );

            border: none;
            color: white;
            padding: 11px 28px;
            border-radius: 25px;
        }

        .back-btn:hover {
            color: white;
            opacity: 0.9;
        }

        .info-box {
            background: #f8f9fa;
            border-left: 5px solid #198754;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 25px;
        }

    </style>

</head>

<body>

    <!-- CUSTOMER NAVBAR -->

    <%@ include file="usernavbar.jsp" %>
    	<%
	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
	%>

    <!-- DEPOSIT SECTION -->

    <section class="deposit-section">

        <div class="container">

            <div class="card deposit-card">

                <!-- HEADER -->

                <div class="deposit-header">

                    <div class="deposit-icon">
                        &#128179;
                    </div>

                    <h2>
                        Deposit Money
                    </h2>

                    <p>
                        Add money to your bank account
                    </p>

                </div>


                <!-- BODY -->

                <div class="deposit-body">

                    <div class="info-box">

                        <strong>&#8505; Note:</strong>

                        <span>
                            Enter the amount you want to deposit.
                            Your account number is automatically
                            identified from your login.
                        </span>

                    </div>


                    <!-- DEPOSIT FORM -->

                    <form action="DepositAmountController"
                          method="post">


                        <!-- AMOUNT -->

                        <div class="mb-4">

                            <label
                                for="amount"
                                class="form-label">

                                Deposit Amount

                            </label>


                            <div class="input-group">

                                <span class="input-group-text">

                                    &#8377;

                                </span>


                                <input
                                    type="number"
                                    class="form-control"
                                    id="amount"
                                    name="amount"
                                    placeholder="Enter amount"
                                    min="1"
                                    step="0.01"
                                    required>

                            </div>

                        </div>


                        <!-- BUTTONS -->

                        <div class="text-center">

                            <button
                                type="submit"
                                class="btn deposit-btn me-2">

                                &#10004;
                                Deposit Money

                            </button>


                            <a
                                href="user-dashboard.jsp"
                                class="btn back-btn">

                                &#8592;
                                Back

                            </a>

                        </div>


                    </form>

                </div>

            </div>

        </div>

    </section>


    <!-- FOOTER -->

    <%@ include file="footer.jsp" %>


    <!-- Bootstrap JS -->

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>
