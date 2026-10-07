
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List,com.model.Transactions" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Transaction History</title>

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

        .history-section {
            padding: 50px 20px;
            min-height: 80vh;
        }

        .history-card {
            border: none;
            border-radius: 20px;
            overflow: hidden;

            box-shadow:
                0 10px 30px
                rgba(0, 0, 0, 0.15);
        }

        .history-header {
            background: linear-gradient(
                135deg,
                #1d2671,
                #c33764
            );

            color: white;
            padding: 30px;
            text-align: center;
        }

        .history-icon {
            font-size: 45px;
        }

        .history-header h2 {
            font-weight: 700;
            margin-top: 10px;
        }

        .history-body {
            background: white;
            padding: 30px;
        }

        .table {
            vertical-align: middle;
        }

        .table thead {
            background: #1d2671;
            color: white;
        }

        .table thead th {
            padding: 15px;
            white-space: nowrap;
        }

        .table tbody td {
            padding: 14px;
        }

        .transaction-badge {
            padding: 7px 12px;
            border-radius: 20px;
            font-weight: 600;
        }

        .transfer {
            background: #fff3cd;
            color: #856404;
        }

        .deposit {
            background: #d1e7dd;
            color: #0f5132;
        }

        .withdraw {
            background: #f8d7da;
            color: #842029;
        }

        .empty-box {
            text-align: center;
            padding: 50px;
            color: #6c757d;
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

        .amount {
            font-weight: 700;
        }

        .account-number {
            font-weight: 600;
            color: #1d2671;
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
 
    <section class="history-section">

        <div class="container">

            <div class="card history-card">


                <!-- HEADER -->

                <div class="history-header">

                    <div class="history-icon">
                        &#128200;
                    </div>

                    <h2>
                        Transaction History
                    </h2>

                    <p class="mb-0">
                        View all your banking transactions
                    </p>

                </div>


                <!-- BODY -->

                <div class="history-body">


                    <%
                        List<Transactions> list =
                            (List<Transactions>)
                            request.getAttribute("transactions");
                    %>


                    <% if (list != null && !list.isEmpty()) { %>


                        <div class="table-responsive">

                            <table
                                class="table table-bordered table-hover text-center">


                                <thead>

                                    <tr>

                                        <th>
                                            ID
                                        </th>

                                        <th>
                                            From Account
                                        </th>

                                        <th>
                                            To Account
                                        </th>

                                        <th>
                                            Type
                                        </th>

                                        <th>
                                            Amount
                                        </th>

                                        <th>
                                            Date
                                        </th>

                                        <th>
                                            Description
                                        </th>

                                    </tr>

                                </thead>


                                <tbody>


                                    <%
                                        for (Transactions t : list) {
                                    %>


                                    <tr>

                                        <td>
                                            <%= t.getTransactionId() %>
                                        </td>


                                        <td class="account-number">

                                            <%= t.getFromAccNo() %>

                                        </td>


                                        <td class="account-number">

                                            <%
                                                if (t.getToAccNo() != 0) {
                                            %>

                                                <%= t.getToAccNo() %>

                                            <%
                                                } else {
                                            %>

                                                -

                                            <%
                                                }
                                            %>

                                        </td>


                                        <td>

                                            <%
                                                String type =
                                                    t.getTransactionType();

                                                if ("TRANSFER".equalsIgnoreCase(type)) {
                                            %>

                                                <span class="transaction-badge transfer">
                                                    &#8644; TRANSFER
                                                </span>

                                            <%
                                                } else if ("DEPOSIT".equalsIgnoreCase(type)) {
                                            %>

                                                <span class="transaction-badge deposit">
                                                    &#8593; DEPOSIT
                                                </span>

                                            <%
                                                } else if ("WITHDRAW".equalsIgnoreCase(type)) {
                                            %>

                                                <span class="transaction-badge withdraw">
                                                    &#8595; WITHDRAW
                                                </span>

                                            <%
                                                } else {
                                            %>

                                                <span class="transaction-badge">
                                                    <%= type %>
                                                </span>

                                            <%
                                                }
                                            %>

                                        </td>


                                        <td class="amount">

                                            &#8377;
                                            <%= t.getAmount() %>

                                        </td>


                                        <td>

                                            <%= t.getTransactionDate() %>

                                        </td>


                                        <td>

                                            <%= t.getDescription() %>

                                        </td>

                                    </tr>


                                    <%
                                        }
                                    %>


                                </tbody>

                            </table>

                        </div>


                    <% } else { %>


                        <div class="empty-box">

                            <div style="font-size:50px;">
                                &#128203;
                            </div>

                            <h4>
                                No Transactions Found
                            </h4>

                            <p>
                                You have not performed any
                                banking transactions yet.
                            </p>

                        </div>


                    <% } %>


                    <div class="text-center mt-4">

                        <a
                            href="user-dashboard.jsp"
                            class="btn back-btn">

                            &#8592;
                            Back to Dashboard

                        </a>

                    </div>


                </div>

            </div>

        </div>

    </section>


    <%@ include file="footer.jsp" %>


</body>

</html>
