
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Unity Bank - Home</title>

    <!-- Bootstrap 5.3.3 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        /* ============================= */
        /* BODY */
        /* ============================= */

        body {
            background: #f4f8fc;
        }


        /* ============================= */
        /* HERO SECTION */
        /* ============================= */

        .hero-section {
            background: linear-gradient(
                135deg,
                #e3f2fd,
                #f8fbff,
                #e8f5e9
            );
        }

        .hero-title {
            color: #12355b;
        }

        .hero-subtitle {
            color: #0d6efd;
        }


        /* ============================= */
        /* HERO BANK CARD */
        /* ============================= */

        .bank-card {
            background: linear-gradient(
                135deg,
                #0d6efd,
                #084298
            );

            color: white;
            border-radius: 20px;
        }


        /* ============================= */
        /* SERVICE CARDS */
        /* ============================= */

        .service-card {
            border: none;
            border-radius: 15px;
            transition: 0.3s;
        }

        .service-card:hover {
            transform: translateY(-6px);
        }

        .service-icon {
            font-size: 45px;
        }


        /* ============================= */
        /* CUSTOMER CARD */
        /* ============================= */

        .customer-card {
            background: linear-gradient(
                135deg,
                #ffffff,
                #e3f2fd
            );
            border-radius: 18px;
        }


        /* ============================= */
        /* ADMIN CARD */
        /* ============================= */

        .admin-card {
            background: linear-gradient(
                135deg,
                #ffffff,
                #fff3e0
            );
            border-radius: 18px;
        }


        /* ============================= */
        /* BUTTON */
        /* ============================= */

        .main-btn {
            border-radius: 8px;
            padding: 10px 22px;
        }

    </style>

</head>


<body>


<!-- ================================================= -->
<!-- NAVBAR -->
<!-- ================================================= -->

<%@ include file="navbar.jsp" %>


<!-- ================================================= -->
<!-- HERO SECTION -->
<!-- ================================================= -->

<section class="hero-section py-5">

    <div class="container">

        <div class="row align-items-center g-5">


            <!-- LEFT CONTENT -->

            <div class="col-lg-7">

                <h1 class="display-5 fw-bold hero-title">

                    Welcome to Unity Bank

                </h1>


                <h3 class="hero-subtitle fw-semibold mt-3">

                    Simple & Secure Banking Management

                </h3>


                <p class="lead text-secondary mt-3">

                    Manage your bank account easily with our
                    simple and secure banking management system.
                    Create an account, manage your money,
                    transfer funds and track your transactions
                    from one place.

                </p>


                <div class="mt-4">

                    <a href="register.jsp"
                       class="btn btn-primary main-btn me-2">

                        Create Account

                    </a>


                    <a href="login.jsp"
                       class="btn btn-outline-primary main-btn">

                        Login

                    </a>

                </div>

            </div>


            <!-- RIGHT BANK CARD -->

            <div class="col-lg-5">

                <div class="card bank-card border-0 shadow-lg">

                    <div class="card-body p-5 text-center">


                        <div style="font-size: 75px;">

                            &#127974;

                        </div>


                        <h2 class="fw-bold mt-3">

                            Unity Bank

                        </h2>


                        <p class="mb-0">

                            Your Money. Your Future.

                        </p>


                        <hr>


                        <p class="mb-0">

                            Secure Banking Management

                        </p>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- SERVICES SECTION -->
<!-- ================================================= -->

<section class="py-5 bg-white">

    <div class="container">


        <div class="text-center mb-5">

            <h2 class="fw-bold text-dark">

                Banking Services

            </h2>


            <p class="text-secondary">

                Everything you need to manage your banking activities

            </p>

        </div>


        <div class="row g-4">


            <!-- CREATE ACCOUNT -->

            <div class="col-md-6 col-lg-3">

                <div class="card service-card shadow-sm h-100">

                    <div class="card-body text-center p-4">

                        <div class="service-icon mb-3">

                            &#128100;

                        </div>


                        <h5 class="fw-bold text-primary">

                            Create Account

                        </h5>


                        <p class="text-secondary">

                            Create your own bank account
                            quickly and easily.

                        </p>

                    </div>

                </div>

            </div>


            <!-- MONEY MANAGEMENT -->

            <div class="col-md-6 col-lg-3">

                <div class="card service-card shadow-sm h-100">

                    <div class="card-body text-center p-4">

                        <div class="service-icon mb-3">

                            &#128176;

                        </div>


                        <h5 class="fw-bold text-success">

                            Money Management

                        </h5>


                        <p class="text-secondary">

                            Deposit and withdraw money
                            from your account.

                        </p>

                    </div>

                </div>

            </div>


            <!-- TRANSFER -->

            <div class="col-md-6 col-lg-3">

                <div class="card service-card shadow-sm h-100">

                    <div class="card-body text-center p-4">

                        <div class="service-icon mb-3">

                            &#128260;

                        </div>


                        <h5 class="fw-bold text-warning">

                            Money Transfer

                        </h5>


                        <p class="text-secondary">

                            Transfer money securely between
                            bank accounts.

                        </p>

                    </div>

                </div>

            </div>


            <!-- TRANSACTION HISTORY -->

            <div class="col-md-6 col-lg-3">

                <div class="card service-card shadow-sm h-100">

                    <div class="card-body text-center p-4">

                        <div class="service-icon mb-3">

                            &#128203;

                        </div>


                        <h5 class="fw-bold text-danger">

                            Transactions

                        </h5>


                        <p class="text-secondary">

                            View and track your banking
                            transaction history.

                        </p>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- CUSTOMER / ADMIN SECTION -->
<!-- ================================================= -->

<section class="py-5">

    <div class="container">


        <div class="text-center mb-5">

            <h2 class="fw-bold">

                Manage Your Banking

            </h2>


            <p class="text-secondary">

                Different features for customers and administrators

            </p>

        </div>


        <div class="row g-4">


            <!-- CUSTOMER -->

            <div class="col-md-6">

                <div class="card customer-card border-0 shadow-sm h-100">

                    <div class="card-body p-4">


                        <h3 class="fw-bold text-primary">

                            &#128100; Customer

                        </h3>


                        <p class="text-secondary">

                            Customers can manage their own
                            banking activities through their
                            dashboard.

                        </p>


                        <ul class="text-secondary">

                            <li>Create your own bank account</li>

                            <li>View account details</li>

                            <li>Check account balance</li>

                            <li>Deposit money</li>

                            <li>Withdraw money</li>

                            <li>Transfer money</li>

                            <li>View transaction history</li>

                        </ul>

                    </div>

                </div>

            </div>


            <!-- ADMIN -->

            <div class="col-md-6">

                <div class="card admin-card border-0 shadow-sm h-100">

                    <div class="card-body p-4">


                        <h3 class="fw-bold text-warning">

                            &#128188; Administrator

                        </h3>


                        <p class="text-secondary">

                            Administrators can monitor and
                            manage the banking system.

                        </p>


                        <ul class="text-secondary">

                            <li>View all users</li>

                            <li>View all customer accounts</li>

                            <li>Update customer accounts</li>

                            <li>Close customer accounts</li>

                            <li>View all transactions</li>

                        </ul>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- ================================================= -->
<!-- WHY UNITY BANK -->
<!-- ================================================= -->

<section class="py-5 bg-white">

    <div class="container">


        <div class="text-center mb-4">

            <h2 class="fw-bold">

                Why Unity Bank?

            </h2>

        </div>


        <div class="row text-center g-4">


            <div class="col-md-4">

                <div class="p-4">

                    <div class="fs-1">

                        &#128274;

                    </div>

                    <h5 class="fw-bold mt-2">

                        Secure

                    </h5>

                    <p class="text-secondary">

                        Your banking information is managed
                        through a secure system.

                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="p-4">

                    <div class="fs-1">

                        &#9889;

                    </div>

                    <h5 class="fw-bold mt-2">

                        Fast

                    </h5>

                    <p class="text-secondary">

                        Perform your banking operations
                        quickly and conveniently.

                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="p-4">

                    <div class="fs-1">

                        &#128172;

                    </div>

                    <h5 class="fw-bold mt-2">

                        Simple

                    </h5>

                    <p class="text-secondary">

                        Easy-to-use interface for customers
                        and administrators.

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
