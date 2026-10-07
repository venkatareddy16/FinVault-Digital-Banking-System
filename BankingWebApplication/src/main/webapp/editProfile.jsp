
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.model.Users" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Edit Profile</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        body {
            background: linear-gradient(
                135deg,
                #eef2ff,
                #f8f9fa
            );

            min-height: 100vh;
        }

        .profile-section {
            min-height: 80vh;
            padding: 50px 20px;
        }

        .profile-card {
            max-width: 700px;
            margin: auto;
            border: none;
            border-radius: 20px;
            overflow: hidden;

            box-shadow:
                0 10px 30px
                rgba(0, 0, 0, 0.15);
        }

        .profile-header {
            background: linear-gradient(
                135deg,
                #1d2671,
                #c33764
            );

            color: white;
            text-align: center;
            padding: 35px;
        }

        .profile-icon {
            font-size: 55px;
        }

        .profile-header h2 {
            margin-top: 10px;
            font-weight: 700;
        }

        .profile-header p {
            margin-bottom: 0;
            opacity: 0.9;
        }

        .profile-body {
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
            min-width: 50px;
            justify-content: center;
        }

        .form-control {
            padding: 12px;
        }

        .readonly-field {
            background-color: #e9ecef;
            font-weight: 600;
        }

        .section-title {
            color: #1d2671;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .update-btn {
            background: linear-gradient(
                135deg,
                #0d6efd,
                #6610f2
            );

            border: none;
            color: white;
            padding: 12px 30px;
            border-radius: 25px;
            font-weight: 600;
        }

        .update-btn:hover {
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
            padding: 12px 30px;
            border-radius: 25px;
            font-weight: 600;
        }

        .back-btn:hover {
            color: white;
            opacity: 0.9;
        }

        .alert {
            border-radius: 10px;
        }

    </style>

</head>

<body>


    <!-- NAVBAR -->

    <%@ include file="usernavbar.jsp" %>
    	<%
	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
	%>

    <%
        Users u =
            (Users) request.getAttribute("user");

        String message =
            (String) request.getAttribute("message");
    %>


    <!-- PROFILE SECTION -->

    <section class="profile-section">

        <div class="container">

            <div class="card profile-card">


                <!-- HEADER -->

                <div class="profile-header">

                    <div class="profile-icon">
                        &#128100;
                    </div>

                    <h2>
                        Edit Profile
                    </h2>

                    <p>
                        Update your personal information
                    </p>

                </div>


                <!-- BODY -->

                <div class="profile-body">


                    <% if (message != null) { %>

                        <div class="alert alert-danger text-center">

                            &#10060;
                            <%= message %>

                        </div>

                    <% } %>


                    <form
                        action="UpdateProfileController"
                        method="post">


                        <h5 class="section-title">
                            Personal Information
                        </h5>


                        <!-- USER ID -->

                        <div class="mb-3">

                            <label class="form-label">
                                User ID
                            </label>

                            <div class="input-group">

                                <span class="input-group-text">
                                    &#128100;
                                </span>

                                <input
                                    type="text"
                                    class="form-control readonly-field"
                                    value="<%= u.getUser_id() %>"
                                    readonly>

                            </div>

                        </div>


                        <!-- USERNAME -->

                        <div class="mb-3">

                            <label
                                for="username"
                                class="form-label">

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
                                    value="<%= u.getUsername() %>"
                                    required>

                            </div>

                        </div>


                        <!-- FULL NAME -->

                        <div class="mb-3">

                            <label
                                for="full_name"
                                class="form-label">

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
                                    value="<%= u.getFull_name() %>"
                                    required>

                            </div>

                        </div>


                        <!-- PASSWORD -->

                        <div class="mb-3">

                            <label
                                for="password"
                                class="form-label">

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
                                    value="<%= u.getPassword() %>"
                                    required>

                            </div>

                        </div>


                        <!-- BUTTONS -->

                        <div class="text-center">

                            <button
                                type="submit"
                                class="btn update-btn me-2">

                                &#10004;
                                Update Profile

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


</body>

</html>
