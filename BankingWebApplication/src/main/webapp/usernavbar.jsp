

<!-- ================================================= -->
<!-- CUSTOMER NAVBAR -->
<!-- ================================================= -->

<nav class="navbar navbar-expand-lg navbar-dark shadow-sm"
     style="background: linear-gradient(135deg, #0d6efd, #084298);">

    <div class="container-fluid px-4">


        <!-- ================================================= -->
        <!-- BANK BRAND -->
        <!-- ================================================= -->

        <a class="navbar-brand fw-bold"
           href="user-dashboard.jsp">

            <span style="font-size: 25px;">
                &#127974;
            </span>

            FinTrack

        </a>


        <!-- ================================================= -->
        <!-- MOBILE MENU BUTTON -->
        <!-- ================================================= -->

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#customerNavbar"
            aria-controls="customerNavbar"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>


        <!-- ================================================= -->
        <!-- NAVIGATION -->
        <!-- ================================================= -->

        <div class="collapse navbar-collapse"
             id="customerNavbar">

            <ul class="navbar-nav ms-auto align-items-lg-center">


                <!-- CUSTOMER -->

                <li class="nav-item me-lg-3">

                    <span class="nav-link text-white">

                        &#128100; <%= session.getAttribute("username") %>

                    </span>

                </li>


                <!-- UPDATE PROFILE -->

                <li class="nav-item me-lg-3">

                    <a class="nav-link text-white"
                       href="EditProfileController">

                        &#9998; Update Profile

                    </a>

                </li>


                <!-- LOGOUT -->

                <li class="nav-item">

                    <a class="btn btn-light btn-sm px-3"
                       href="LogoutController">

                        &#10162; Logout

                    </a>

                </li>


            </ul>

        </div>

    </div>

</nav>
