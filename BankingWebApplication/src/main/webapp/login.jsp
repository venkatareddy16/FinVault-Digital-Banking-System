
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Unity Bank - Login</title>


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
        /* LOGIN SECTION */
        /* ================================================= */

        .login-section {

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
        /* LOGIN CARD */
        /* ================================================= */

        .login-card {

            max-width: 500px;

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

        .login-title {

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
        /* INPUT */
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
        /* LOGIN BUTTON */
        /* ================================================= */

        .login-btn {

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


        .login-btn:hover {

            transform: translateY(-2px);

            box-shadow:
                0 6px 15px
                rgba(13, 110, 253, 0.30);

        }


        /* ================================================= */
        /* REGISTER INFORMATION */
        /* ================================================= */

        .register-info {

            background: #e8f5e9;

            border-left: 4px solid #198754;

            border-radius: 8px;

            padding: 12px;

            font-size: 14px;

            color: #356b48;

        }


        /* ================================================= */
        /* REGISTER LINK */
        /* ================================================= */

        .register-text {

            color: #6c757d;

        }


        .register-text a {

            color: #0d6efd;

            font-weight: 600;

            text-decoration: none;

        }


        .register-text a:hover {

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
<!-- LOGIN SECTION -->
<!-- ================================================= -->

<section class="login-section">


    <div class="container">


        <div class="row justify-content-center">


            <div class="col-12">


                <div class="card login-card shadow-lg mx-auto">


                    <div class="card-body p-4 p-md-5">


                        <!-- ================================================= -->
                        <!-- BANK LOGO -->
                        <!-- ================================================= -->

                        <div class="text-center mb-4">


                            <div class="bank-logo">

                                &#127974;

                            </div>


                            <h2 class="login-title fw-bold mt-3">

                                Welcome Back

                            </h2>


                            <p class="text-secondary mb-0">

                                Login to your Unity Bank account

                            </p>

                        </div>


                        <!-- ================================================= -->
                        <!-- LOGIN INFORMATION -->
                        <!-- ================================================= -->

                        <div class="register-info mb-4">

                            <strong>

                                &#128274; Secure Login

                            </strong>

                            <br>

                            Enter your username and password
                            to access your banking dashboard.

                        </div>


                        <!-- ================================================= -->
                        <!-- LOGIN FORM -->
                        <!-- ================================================= -->

                        <form action="LoginController"
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


                            <!-- PASSWORD -->

                            <div class="mb-4">


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


                            <!-- LOGIN BUTTON -->

                            <div class="d-grid">


                                <button
                                    type="submit"
                                    class="btn login-btn text-white">

                                    &#128273;
                                    Login

                                </button>


                            </div>


                        </form>


                        <!-- ================================================= -->
                        <!-- REGISTER LINK -->
                        <!-- ================================================= -->

                        <p class="register-text text-center mt-4 mb-0">

                            Don't have an account?

                            <a href="register.jsp">

                                Create Account

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
