<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.model.Account" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>View Account</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        body {
            background: linear-gradient(135deg, #eef2ff, #f8f9fa);
            min-height: 100vh;
        }

        .account-section {
            padding: 50px 20px;
            min-height: 75vh;
        }

        .account-card {
            max-width: 700px;
            margin: auto;
            border: none;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        .account-header {
            background: linear-gradient(135deg, #1d2671, #c33764);
            color: white;
            padding: 30px;
            text-align: center;
        }

        .account-body {
            padding: 30px;
        }

        .detail-box {
            background: #f8f9fa;
            border-radius: 12px;
            padding: 15px;
            margin-bottom: 15px;
            border-left: 5px solid #1d2671;
        }

        .detail-label {
            color: #6c757d;
            font-size: 14px;
        }

        .detail-value {
            font-size: 18px;
            font-weight: bold;
        }

        .balance-box {
            background: linear-gradient(135deg, #198754, #20c997);
            color: white;
            padding: 20px;
            border-radius: 15px;
            text-align: center;
        }

        .balance-value {
            font-size: 30px;
            font-weight: bold;
        }

    </style>

</head>

<body>

    <%@ include file="usernavbar.jsp" %>
    	<%
	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
	%>

    <%
        Account a = (Account) request.getAttribute("account");
    %>


    <section class="account-section">

        <div class="container">

            <%
                if (a != null) {
            %>

            <div class="card account-card">

                <div class="account-header">

                    <h2>
                        &#128179; Account Details
                    </h2>

                    <p>
                        Your Bank Account Information
                    </p>

                </div>


                <div class="account-body">

                    <div class="detail-box">

                        <div class="detail-label">
                            Account Number
                        </div>

                        <div class="detail-value">

                            &#128179;

                            <%= a.getAcc_no() %>

                        </div>

                    </div>


                    <div class="detail-box">

                        <div class="detail-label">
                            Customer ID
                        </div>

                        <div class="detail-value">

                            &#128100;

                            <%= a.getUser_id() %>

                        </div>

                    </div>


                    <div class="detail-box">

                        <div class="detail-label">
                            Account Name
                        </div>

                        <div class="detail-value">

                            &#128100;

                            <%= a.getAcc_name() %>

                        </div>

                    </div>


                    <div class="detail-box">

                        <div class="detail-label">
                            Phone Number
                        </div>

                        <div class="detail-value">

                            &#128222;

                            <%= a.getPhone() %>

                        </div>

                    </div>


                    <div class="balance-box">

                        <div>
                            Available Balance
                        </div>

                        <div class="balance-value">

                            &#8377; <%= a.getBalance() %>

                        </div>

                    </div>


                    <div class="text-center mt-4">

                        <a href="user-dashboard.jsp"
                           class="btn btn-primary">

                            &#8592; Back to Dashboard

                        </a>

                    </div>

                </div>

            </div>

            <%
                } else {
            %>

            <div class="alert alert-warning text-center">

                <h4>No Bank Account Found</h4>

                <p>
                    You have not created a bank account yet.
                </p>

                <a href="createAccount.jsp"
                   class="btn btn-primary">

                    Create Account

                </a>

            </div>

            <%
                }
            %>

        </div>

    </section>


    <%@ include file="footer.jsp" %>


</body>

</html>