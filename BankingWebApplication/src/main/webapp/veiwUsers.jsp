
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.model.Users,java.util.List"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Users</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #eef2ff, #f8f9fa);
	min-height: 100vh;
}

.users-section {
	min-height: 80vh;
	padding: 50px 20px;
}

.users-card {
	max-width: 1100px;
	margin: auto;
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.users-header {
	background: linear-gradient(135deg, #1d2671, #c33764);
	color: white;
	text-align: center;
	padding: 35px;
}

.users-icon {
	font-size: 55px;
}

.users-header h2 {
	margin-top: 10px;
	font-weight: 700;
}

.users-header p {
	margin-bottom: 0;
	opacity: 0.9;
}

.users-body {
	background: white;
	padding: 35px;
}

.table-container {
	overflow-x: auto;
}

.users-table {
	margin-bottom: 0;
}

.users-table thead {
	background: #1d2671;
	color: white;
}

.users-table th {
	padding: 15px;
	text-align: center;
	vertical-align: middle;
}

.users-table td {
	padding: 14px;
	text-align: center;
	vertical-align: middle;
}

.users-table tbody tr:hover {
	background-color: #f1f3ff;
}

.user-id {
	font-weight: 700;
	color: #1d2671;
}

.username {
	font-weight: 600;
}

.update-btn {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	border: none;
	color: white;
	border-radius: 20px;
	padding: 7px 16px;
	font-weight: 600;
}

.update-btn:hover {
	color: white;
	opacity: 0.9;
}

.delete-btn {
	background: linear-gradient(135deg, #dc3545, #b02a37);
	border: none;
	color: white;
	border-radius: 20px;
	padding: 7px 16px;
	font-weight: 600;
}

.delete-btn:hover {
	color: white;
	opacity: 0.9;
}

.back-btn {
	background: linear-gradient(135deg, #1d2671, #c33764);
	border: none;
	color: white;
	padding: 11px 25px;
	border-radius: 25px;
	font-weight: 600;
}

.back-btn:hover {
	color: white;
	opacity: 0.9;
}

.empty-message {
	text-align: center;
	padding: 40px;
	color: #6c757d;
}
</style>

</head>


<body>


	<%@ include file="adminnavbar.jsp"%>
	<%
	if (session.getAttribute("user_id") == null 
			|| !session.getAttribute("role").equals("ADMIN")) {

		response.sendRedirect("login.jsp");
		return;
	}
	%>

	<%
	List<Users> list = (List<Users>) request.getAttribute("users");
	%>


	<section class="users-section">

		<div class="container">

			<div class="card users-card">


				<!-- HEADER -->

				<div class="users-header">

					<div class="users-icon">&#128101;</div>

					<h2>Manage Users</h2>

					<p>View, update and delete users</p>

				</div>


				<!-- BODY -->

				<div class="users-body">


					<%
					if (list != null && !list.isEmpty()) {
					%>


					<div class="table-container">

						<table class="table table-bordered table-hover users-table">

							<thead>

								<tr>

									<th>User ID</th>

									<th>Username</th>

									<th>Full Name</th>

									<th>Actions</th>

								</tr>

							</thead>


							<tbody>


								<%
								for (Users u : list) {
								%>

								<tr>

									<td class="user-id">&#128100; <%=u.getUser_id()%>

									</td>


									<td class="username"><%=u.getUsername()%></td>


									<td><%=u.getFull_name()%></td>


									<td>
										<!-- UPDATE --> <a
										href="EditUserController?user_id=<%=u.getUser_id()%>"
										class="btn update-btn me-2"> &#9998; Update </a> <!-- DELETE -->

										<a href="DeleteUserController?user_id=<%=u.getUser_id()%>"
										class="btn delete-btn"
										onclick="return confirm('Are you sure you want to delete this user?');">

											&#10060; Delete </a>


									</td>

								</tr>


								<%
								}
								%>


							</tbody>

						</table>

					</div>


					<%
					} else {
					%>


					<div class="empty-message">

						<div style="font-size: 50px;">&#128100;</div>

						<h5 class="mt-3">No Users Found</h5>

					</div>


					<%
					}
					%>


					<div class="text-center mt-4">

						<a href="admin-dashboard.jsp" class="btn back-btn"> &#8592;
							Back to Dashboard </a>

					</div>


				</div>

			</div>

		</div>

	</section>


	<%@ include file="footer.jsp"%>


</body>

</html>
