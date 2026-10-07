
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Unity Bank - Customer Registration</title>


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
        /* REGISTER SECTION */
        /* ================================================= */

        .register-section {

            background: linear-gradient(
                135deg,
                #e3f2fd,
                #f8fbff,
                #e8f5e9
            );

            min-height: calc(100vh - 70px);

            display: flex;

            align-items: center;

            padding: 50px 15px;

        }


        /* ================================================= */
        /* REGISTER CARD */
        /* ================================================= */

        .register-card {

            max-width: 550px;

            width: 100%;

            border: none;

            border-radius: 20px;

            background: #ffffff;

        }


        /* ================================================= */
        /* BANK LOGO */
        /* ================================================= */

        .bank-logo {

            width: 75px;

            height: 75px;

            border-radius: 50%;

            background: linear-gradient(
                135deg,
                #0d6efd,
                #084298
            );

            color: white;

            display: flex;

            align-items: center;

            justify-content: center;

            margin: auto;

            font-size: 40px;

            box-shadow:
                0 8px 20px
                rgba(13, 110, 253, 0.25);

        }


        /* ================================================= */
        /* TITLE */
        /* ================================================= */

        .register-title {

            color: #12355b;

        }


        /* ================================================= */
        /* INPUT GROUP */
        /* ================================================= */

        .input-group-text {

            background: #eaf3ff;

            border-color: #cedff5;

            color: #0d6efd;

            font-size: 20px;

            min-width: 50px;

            justify-content: center;

        }


        /* ================================================= */
        /* FORM CONTROL */
        /* ================================================= */

        .form-control {

            border-color: #cedff5;

            padding: 11px;

        }


        .form-control:focus {

            border-color: #0d6efd;

            box-shadow:
                0 0 0 0.2rem
                rgba(13, 110, 253, 0.15);

        }


        /* ================================================= */
        /* REGISTER BUTTON */
        /* ================================================= */

        .register-btn {

            background: linear-gradient(
                135deg,
                #0d6efd,
                #084298
            );

            border: none;

            padding: 12px;

            font-weight: 600;

            transition: 0.3s;

        }


        .register-btn:hover {

            transform: translateY(-2px);

            box-shadow:
                0 6px 15px
                rgba(13, 110, 253, 0.30);

        }


        /* ================================================= */
        /* CUSTOMER INFORMATION */
        /* ================================================= */

        .customer-info {

            background: #e8f5e9;

            border-left: 4px solid #198754;

            border-radius: 8px;

            padding: 12px;

            font-size: 14px;

            color: #356b48;

        }


        /* ================================================= */
        /* LOGIN TEXT */
        /* ================================================= */

        .login-text {

            color: #6c757d;

        }


        .login-text a {

            color: #0d6efd;

            font-weight: 600;

            text-decoration: none;

        }


        .login-text a:hover {

            text-decoration: underline;

        }

    </style>

</head>


<body>


<!-- ================================================= -->
<!-- NAVBAR -->
<!-- ================================================= -->

<%@ include file="navbar.jsp" %>


<!-- ================================================= -->
<!-- REGISTER SECTION -->
<!-- ================================================= -->

<section class="register-section">


    <div class="container">


        <div class="row justify-content-center">


            <div class="col-12">


                <div class="card register-card shadow-lg mx-auto">


                    <div class="card-body p-4 p-md-5">


                        <!-- ================================================= -->
                        <!-- BANK LOGO -->
                        <!-- ================================================= -->

                        <div class="text-center mb-4">


                            <div class="bank-logo">

                                &#127974;

                            </div>


                            <h2 class="register-title fw-bold mt-3">

                                Create Your Account

                            </h2>


                            <p class="text-secondary mb-0">

                                Join Unity Bank and manage your
                                banking easily.

                            </p>

                        </div>


                        <!-- ================================================= -->
                        <!-- CUSTOMER INFORMATION -->
                        <!-- ================================================= -->

                        <div class="customer-info mb-4">

                            <strong>

                                &#128100; Customer Registration

                            </strong>

                            <br>

                            Create your customer account to access
                            Unity Bank services.

                        </div>


                        <!-- ================================================= -->
                        <!-- REGISTRATION FORM -->
                        <!-- ================================================= -->

                        <form action="RegisterController"
                              method="post">


                            <!-- USERNAME -->

                            <div class="mb-3">


                                <label
                                    for="username"
                                    class="form-label fw-semibold">

                                    Username

                                </label>


                                <div class="input-group">


                                    <span class="input-group-text">

                                        &#128100;

                                    </span>


                                    <input
                                        type="text"
                                        class="form-control"
                                        id="username"
                                        name="username"
                                        placeholder="Enter your username"
                                        required>

                                </div>

                            </div>


                            <!-- FULL NAME -->

                            <div class="mb-3">


                                <label
                                    for="full_name"
                                    class="form-label fw-semibold">

                                    Full Name

                                </label>


                                <div class="input-group">


                                    <span class="input-group-text">

                                        &#128100;

                                    </span>


                                    <input
                                        type="text"
                                        class="form-control"
                                        id="full_name"
                                        name="full_name"
                                        placeholder="Enter your full name"
                                        required>

                                </div>

                            </div>


                            <!-- PASSWORD -->

                            <div class="mb-3">


                                <label
                                    for="password"
                                    class="form-label fw-semibold">

                                    Password

                                </label>


                                <div class="input-group">


                                    <span class="input-group-text">

                                        &#128274;

                                    </span>


                                    <input
                                        type="password"
                                        class="form-control"
                                        id="password"
                                        name="password"
                                        placeholder="Enter your password"
                                        required>

                                </div>

                            </div>


                            <!-- CONFIRM PASSWORD -->

                            <div class="mb-4">


                                <label
                                    for="confirmPassword"
                                    class="form-label fw-semibold">

                                    Confirm Password

                                </label>


                                <div class="input-group">


                                    <span class="input-group-text">

                                        &#128274;

                                    </span>


                                    <input
                                        type="password"
                                        class="form-control"
                                        id="confirmPassword"
                                        name="confirmPassword"
                                        placeholder="Re-enter your password"
                                        required>

                                </div>

                            </div>


                            <!-- REGISTER BUTTON -->

                            <div class="d-grid">


                                <button
                                    type="submit"
                                    class="btn register-btn text-white">

                                    &#10003;
                                    Create Customer Account

                                </button>


                            </div>


                        </form>


                        <!-- ================================================= -->
                        <!-- LOGIN LINK -->
                        <!-- ================================================= -->

                        <p class="login-text text-center mt-4 mb-0">

                            Already have an account?

                            <a href="login.jsp">

                                Login here

                            </a>

                        </p>


                    </div>

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
