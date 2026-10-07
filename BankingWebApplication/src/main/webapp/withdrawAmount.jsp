
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Withdraw Money - Dynamic Bank</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <style>

        /* BODY */

        body {

            background:
                linear-gradient(
                    135deg,
                    #eef2ff,
                    #f8f9fa
                );

            min-height: 100vh;
        }


        /* SECTION */

        .withdraw-section {

            min-height: 75vh;

            padding: 55px 20px;
        }


        /* CARD */

        .withdraw-card {

            max-width: 650px;

            margin: auto;

            border: none;

            border-radius: 20px;

            overflow: hidden;

            box-shadow:
                0 10px 30px
                rgba(0, 0, 0, 0.15);
        }


        /* HEADER */

        .withdraw-header {

            background:
                linear-gradient(
                    135deg,
                    #1d2671,
                    #c33764
                );

            color: white;

            padding: 35px;

            text-align: center;
        }


        .withdraw-header h2 {

            font-weight: 700;

            margin-bottom: 8px;
        }


        .withdraw-header p {

            margin: 0;

            opacity: 0.9;
        }


        /* ICON */

        .withdraw-icon {

            font-size: 50px;

            margin-bottom: 10px;
        }


        /* BODY */

        .withdraw-body {

            background: white;

            padding: 40px;
        }


        /* MESSAGE */

        .message-box {

            border-radius: 10px;

            font-weight: 500;

            margin-bottom: 25px;
        }


        /* INFORMATION BOX */

        .info-box {

            background: #f8f9fa;

            border-left:
                5px solid #dc3545;

            padding: 15px;

            border-radius: 10px;

            margin-bottom: 25px;
        }


        /* LABEL */

        .form-label {

            font-weight: 600;

            color: #343a40;
        }


        /* INPUT */

        .input-group-text {

            background: #1d2671;

            color: white;

            border: none;
        }


        .form-control {

            padding: 12px;

            border-radius:
                0 8px 8px 0;
        }


        /* WITHDRAW BUTTON */

        .withdraw-btn {

            background:
                linear-gradient(
                    135deg,
                    #dc3545,
                    #fd7e14
                );

            border: none;

            color: white;

            padding:
                12px 30px;

            border-radius: 25px;

            font-weight: 600;
        }


        .withdraw-btn:hover {

            color: white;

            opacity: 0.9;
        }


        /* BACK BUTTON */

        .back-btn {

            background:
                linear-gradient(
                    135deg,
                    #1d2671,
                    #c33764
                );

            border: none;

            color: white;

            padding:
                11px 28px;

            border-radius: 25px;
        }


        .back-btn:hover {

            color: white;

            opacity: 0.9;
        }


        /* RESPONSIVE */

        @media (max-width: 576px) {

            .withdraw-body {

                padding: 25px;
            }

            .withdraw-header {

                padding: 25px;
            }

            .withdraw-btn,
            .back-btn {

                width: 100%;

                margin-bottom: 10px;
            }

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

    <!-- WITHDRAW SECTION -->

    <section class="withdraw-section">


        <div class="container">


            <div class="card withdraw-card">


                <!-- HEADER -->

                <div class="withdraw-header">


                    <div class="withdraw-icon">

                        &#128179;

                    </div>


                    <h2>

                        Withdraw Money

                    </h2>


                    <p>

                        Withdraw money from your bank account

                    </p>


                </div>



                <!-- BODY -->

                <div class="withdraw-body">


                    <!-- ERROR MESSAGE -->

                    <%

                        String message =
                            (String)
                            request.getAttribute("message");


                        if (message != null) {

                    %>


                        <div
                            class="alert alert-danger
                                   message-box
                                   text-center">

                            &#10060;

                            <%= message %>

                        </div>


                    <%

                        }

                    %>



                    <!-- INFORMATION -->

                    <div class="info-box">


                        <strong>

                            &#8505; Note:

                        </strong>


                        <span>

                            Enter the amount you want
                            to withdraw. Your account
                            is identified automatically
                            from your login.

                        </span>


                    </div>



                    <!-- WITHDRAW FORM -->

                    <form
                        action="WithdrawAmountController"
                        method="post">


                        <!-- AMOUNT -->

                        <div class="mb-4">


                            <label
                                for="amount"
                                class="form-label">

                                Withdrawal Amount

                            </label>


                            <div class="input-group">


                                <span
                                    class="input-group-text">

                                    &#8377;

                                </span>


                                <input
                                    type="number"
                                    class="form-control"
                                    id="amount"
                                    name="amount"
                                    placeholder="Enter withdrawal amount"
                                    min="1"
                                    step="0.01"
                                    required>


                            </div>


                        </div>



                        <!-- BUTTONS -->

                        <div
                            class="text-center">


                            <button
                                type="submit"
                                class="btn
                                       withdraw-btn
                                       me-2">

                                &#10004;

                                Withdraw Money

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

