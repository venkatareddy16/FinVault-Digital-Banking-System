<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Unity Bank - Admin Dashboard</title>


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
        /* ADMIN BADGE */
        /* ================================================= */

        .admin-badge {

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

            width: 75px;

            height: 75px;

            border-radius: 50%;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 35px;

            margin: 0 auto 20px;

        }


        /* ================================================= */
        /* USERS CARD */
        /* ================================================= */

        .users-card {

            background: linear-gradient(
                135deg,
                #e3f2fd,
                #ffffff
            );

        }


        .users-icon {

            background: #cfe2ff;

        }


        /* ================================================= */
        /* ACCOUNTS CARD */
        /* ================================================= */

        .accounts-card {

            background: linear-gradient(
                135deg,
                #e8f5e9,
                #ffffff
            );

        }


        .accounts-icon {

            background: #d1e7dd;

        }


        /* ================================================= */
        /* TRANSACTIONS CARD */
        /* ================================================= */

        .transactions-card {

            background: linear-gradient(
                135deg,
                #f3e5f5,
                #ffffff
            );

        }


        .transactions-icon {

            background: #e2d9f3;

        }


        /* ================================================= */
        /* BUTTON */
        /* ================================================= */

        .dashboard-btn {

            border-radius: 8px;

            padding: 9px 20px;

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
<!-- ADMIN NAVBAR -->
<!-- ================================================= -->

<%@ include file="adminnavbar.jsp" %>
<%
if (session.getAttribute("user_id") == null || !(session.getAttribute("role").equals("ADMIN"))) {

    response.sendRedirect("login.jsp");
    return;
}
%>

<!-- ================================================= -->
<!-- DASHBOARD HEADER -->
<!-- ================================================= -->

<section class="dashboard-header">

    <div class="container">

        <div class="text-center">


            <div class="admin-badge">

                &#128188; Bank Administrator

            </div>


            <h1 class="dashboard-title fw-bold">

                Admin Dashboard

            </h1>


            <p class="lead text-secondary mb-0">

                Monitor and manage the Unity Bank
                banking system.

            </p>

        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- ADMIN OPERATIONS -->
<!-- ================================================= -->

<section class="py-5">

    <div class="container">


        <div class="row g-4 justify-content-center">


            <!-- ================================================= -->
            <!-- VIEW ALL USERS -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card users-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon users-icon">

                            &#128100;

                        </div>


                        <h4 class="fw-bold text-primary">

                            Users

                        </h4>


                        <p class="text-secondary">

                            View all registered users
                            in the banking system.

                        </p>


                        <a href="VeiwUsersController"
                           class="btn btn-primary dashboard-btn">

                            View All Users

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- CUSTOMER ACCOUNTS -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card accounts-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon accounts-icon">

                            &#128179;

                        </div>


                        <h4 class="fw-bold text-success">

                            Customer Accounts

                        </h4>


                        <p class="text-secondary">

                            View all customer accounts
                            and manage account details.

                        </p>


                        <a href="VeiwAccounts"
                           class="btn btn-success dashboard-btn">

                            View Customer Accounts

                        </a>

                    </div>

                </div>

            </div>


            <!-- ================================================= -->
            <!-- TRANSACTIONS -->
            <!-- ================================================= -->

            <div class="col-md-6 col-lg-4">

                <div class="card dashboard-card transactions-card
                            shadow-sm h-100">

                    <div class="card-body text-center p-4">


                        <div class="card-icon transactions-icon">

                            &#128203;

                        </div>


                        <h4 class="fw-bold text-secondary">

                            Transactions

                        </h4>


                        <p class="text-secondary">

                            View all customer transaction
                            history.

                        </p>


                        <a href="VeiwTransactions"
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
<!-- ADMIN RESPONSIBILITIES -->
<!-- ================================================= -->

<section class="pb-5">

    <div class="container">

        <div class="info-section shadow-sm p-4">


            <div class="row align-items-center">


                <div class="col-md-2 text-center mb-3 mb-md-0">

                    <span style="font-size: 55px;">

                        &#128202;

                    </span>

                </div>


                <div class="col-md-10">

                    <h5 class="fw-bold text-primary">

                        Administrator Responsibilities

                    </h5>


                    <p class="text-secondary mb-0">

                        Administrators can view all registered
                        users, view customer accounts, update
                        account details, close customer accounts,
                        and review transaction history.

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