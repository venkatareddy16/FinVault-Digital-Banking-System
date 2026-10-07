
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Unity Bank - Customer Dashboard</title>


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
        /* DASHBOARD HEADER */
        /* ================================================= */

        .dashboard-header {

            background: linear-gradient(
                135deg,
                #e3f2fd,
                #f8fbff,
                #e8f5e9
            );

            padding: 55px 20px;

        }


        .dashboard-title {

            color: #12355b;

        }


        /* ================================================= */
        /* CUSTOMER BADGE */
        /* ================================================= */

        .customer-badge {

            display: inline-block;

            background: linear-gradient(
                135deg,
                #0d6efd,
                #084298
            );

            color: white;

            padding: 8px 18px;

            border-radius: 25px;

            font-size: 14px;

            font-weight: 600;

            margin-bottom: 15px;

        }


        /* ================================================= */
        /* DASHBOARD CARDS */
        /* ================================================= */

        .dashboard-card {

            border: none;

            border-radius: 18px;

            transition: 0.3s;

            overflow: hidden;

        }


        .dashboard-card:hover {

            transform: translateY(-6px);

            box-shadow:
                0 12px 25px
                rgba(0, 0, 0, 0.10);

        }


        /* ================================================= */
        /* CARD ICON */
        /* ================================================= */

        .card-icon {

            width: 70px;

            height: 70px;

            border-radius: 50%;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 32px;

            margin: 0 auto 20px;

        }


        /* ================================================= */
        /* CREATE ACCOUNT */
        /* ================================================= */

        .create-card {

            background: linear-gradient(
                135deg,
                #e3f2fd,
                #ffffff
            );

        }


        .create-icon {

            background: #cfe2ff;

        }


        /* ================================================= */
        /* ACCOUNT DETAILS */
        /* ================================================= */

        .details-card {

            background: linear-gradient(
                135deg,
                #e8f5e9,
                #ffffff
            );

        }


        .details-icon {

            background: #d1e7dd;

        }


        /* ================================================= */
        /* BALANCE */
        /* ================================================= */

        .balance-card {

            background: linear-gradient(
                135deg,
                #fff3e0,
                #ffffff
            );

        }


        .balance-icon {

            background: #ffe5b4;

        }


        /* ================================================= */
        /* DEPOSIT */
        /* ================================================= */

        .deposit-card {

            background: linear-gradient(
                135deg,
                #e0f7fa,
                #ffffff
            );

        }


        .deposit-icon {

            background: #cff4fc;

        }


        /* ================================================= */
        /* WITHDRAW */
        /* ================================================= */

        .withdraw-card {

            background: linear-gradient(
                135deg,
                #fce4ec,
                #ffffff
            );

        }


        .withdraw-icon {

            background: #f8d7da;

        }


        /* ================================================= */
        /* TRANSFER */
        /* ================================================= */

        .transfer-card {

            background: linear-gradient(
                135deg,
                #f3e5f5,
                #ffffff
            );

        }


        .transfer-icon {

            background: #e2d9f3;

        }


        /* ================================================= */
        /* TRANSACTIONS */
        /* ================================================= */

        .transaction-card {

            background: linear-gradient(
                135deg,
                #fff8e1,
                #ffffff
            );

        }


        .transaction-icon {

            background: #fff3cd;

        }


        /* ================================================= */
        /* BUTTON */
        /* ================================================= */

        .dashboard-btn {

            border-radius: 8px;

            padding: 9px 18px;

            font-weight: 500;

        }


        /* ================================================= */
        /* INFORMATION BOX */
        /* ================================================= */

        .info-section {

            background: white;

            border-radius: 15px;

        }

    </style>

</head>


<body>


<!-- ================================================= -->
<!-- CUSTOMER NAVBAR -->
<!-- ================================================= -->

<%@ include file="usernavbar.jsp" %>


<!-- ================================================= -->
<!-- DASHBOARD HEADER -->
<!-- ================================================= -->
<% if(session.getAttribute("user_id")==null){
	response.sendRedirect("login.jsp");
	return;
} %>
<section class="dashboard-header">

    <div class="container">

        <div class="text-center">


            <!-- CUSTOMER BADGE -->

            <div class="customer-badge">

                &#128100; <%= session.getAttribute("full_name") %>

            </div>


            <!-- TITLE -->

            <h1 class="dashboard-title fw-bold">

                Customer Dashboard

            </h1>


            <p class="lead text-secondary mb-0">

                Manage your account and banking
                activities with Unity Bank.

            </p>

        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- CUSTOMER OPERATIONS -->
<!-- ================================================= -->

<section class="py-5">

    <div class="container">


        <div class="row g-4">


            <!-- ================================================= -->
            <!-- CREATE ACCOUNT -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card create-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon create-icon">

                            &#128179;

                        </div>


                        <h4 class="fw-bold text-primary">

                            Create Bank Account

                        </h4>


                        <p class="text-secondary">

                            Create your own Unity Bank
                            account and start banking.

                        </p>


                        <a href="createAccount.jsp"
                           class="btn btn-primary dashboard-btn">

                            Create Account

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- ACCOUNT DETAILS -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card details-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon details-icon">

                            &#128196;

                        </div>


                        <h4 class="fw-bold text-success">

                            Account Details

                        </h4>


                        <p class="text-secondary">

                            View your bank account and
                            personal account details.

                        </p>


                        <a href="VeiwAccountController"
                           class="btn btn-success dashboard-btn">

                            View Details

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- BALANCE -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card balance-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon balance-icon">

                            &#128176;

                        </div>


                        <h4 class="fw-bold text-warning">

                            Account Balance

                        </h4>


                        <p class="text-secondary">

                            Check your current bank
                            account balance.

                        </p>


                        <a href="CheckBalanceController"
                           class="btn btn-warning dashboard-btn">

                            Check Balance

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- DEPOSIT -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card deposit-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon deposit-icon">

                            &#10133;

                        </div>


                        <h4 class="fw-bold text-info">

                            Deposit Money

                        </h4>


                        <p class="text-secondary">

                            Deposit money into your
                            bank account.

                        </p>


                        <a href="depositAmount.jsp"
                           class="btn btn-info dashboard-btn">

                            Deposit

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- WITHDRAW -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card withdraw-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon withdraw-icon">

                            &#10134;

                        </div>


                        <h4 class="fw-bold text-danger">

                            Withdraw Money

                        </h4>


                        <p class="text-secondary">

                            Withdraw money from your
                            bank account.

                        </p>


                        <a href="withdrawAmount.jsp"
                           class="btn btn-danger dashboard-btn">

                            Withdraw

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- TRANSFER -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card transfer-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon transfer-icon">

                            &#128228;

                        </div>


                        <h4 class="fw-bold text-primary">

                            Transfer Money

                        </h4>


                        <p class="text-secondary">

                            Transfer money to another
                            customer account.

                        </p>


                        <a href="transferAmount.jsp"
                           class="btn btn-primary dashboard-btn">

                            Transfer Money

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- TRANSACTION HISTORY -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card transaction-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon transaction-icon">

                            &#128203;

                        </div>


                        <h4 class="fw-bold text-secondary">

                            Transaction History

                        </h4>


                        <p class="text-secondary">

                            View your previous deposits,
                            withdrawals and transfers.

                        </p>


                        <a href="TransactionHistoryController"
                           class="btn btn-secondary dashboard-btn">

                            View Transactions

                        </a>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- CUSTOMER INFORMATION -->
<!-- ================================================= -->

<section class="pb-5">

    <div class="container">


        <div class="info-section shadow-sm p-4">


            <div class="row align-items-center">


                <div class="col-md-2 text-center mb-3 mb-md-0">

                    <span style="font-size: 55px;">

                        &#128200;

                    </span>

                </div>


                <div class="col-md-10">


                    <h5 class="fw-bold text-primary">

                        Your Banking at One Place

                    </h5>


                    <p class="text-secondary mb-0">

                        Create your bank account, manage
                        your balance, deposit or withdraw
                        money, transfer funds, and review
                        your transaction history from your
                        customer dashboard.

                    </p>

                </div>


            </div>

        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- FOOTER -->
<!-- ================================================= -->

<%@ include file="footer.jsp" %>


<!-- ================================================= -->
<!-- BOOTSTRAP JS -->
<!-- ================================================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>
