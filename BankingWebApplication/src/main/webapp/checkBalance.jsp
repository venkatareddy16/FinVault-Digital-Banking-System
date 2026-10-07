<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Check Balance - Dynamic Bank</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        body {
            background: linear-gradient(135deg, #eef2ff, #f8f9fa);
            min-height: 100vh;
        }

        .balance-section {
            min-height: 75vh;
            padding: 60px 20px;
        }

        .balance-card {
            max-width: 600px;
            margin: auto;
            border: none;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }

        .balance-header {
            background: linear-gradient(
                135deg,
                #1d2671,
                #c33764
            );

            color: white;
            padding: 35px;
            text-align: center;
        }

        .balance-header h2 {
            font-weight: 700;
            margin-bottom: 8px;
        }

        .balance-header p {
            margin: 0;
            opacity: 0.9;
        }

        .balance-body {
            background: white;
            padding: 40px;
        }

        .balance-icon {
            font-size: 55px;
            margin-bottom: 15px;
        }

        .balance-label {
            color: #6c757d;
            font-size: 17px;
            margin-bottom: 8px;
        }

        .amount-box {
            background: linear-gradient(
                135deg,
                #198754,
                #20c997
            );

            color: white;
            border-radius: 18px;
            padding: 30px 20px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(25, 135, 84, 0.25);
        }

        .amount {
            font-size: 40px;
            font-weight: 700;
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

    <%
        double balance =
            (Double) request.getAttribute("balance");
    %>


    <!-- BALANCE SECTION -->

    <section class="balance-section">

        <div class="container">

            <div class="card balance-card">

                <!-- HEADER -->

                <div class="balance-header">

                    <div class="balance-icon">
                        &#128179;
                    </div>

                    <h2>
                        Account Balance
                    </h2>

                    <p>
                        Check your available bank balance
                    </p>

                </div>


                <!-- BODY -->

                <div class="balance-body">

                    <div class="text-center">

                        <div class="balance-label">
                            Available Balance
                        </div>


                        <div class="amount-box">

                            <div class="amount">

                                &#8377;
                                <%= balance %>

                            </div>

                        </div>


                        <div class="mt-4">

                            <a href="user-dashboard.jsp"
                               class="btn back-btn">

                                &#8592;
                                Back to Dashboard

                            </a>

                        </div>

                    </div>

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