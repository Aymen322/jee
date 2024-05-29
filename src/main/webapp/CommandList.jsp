<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.Pizza"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Chef"%>
<%@ page import="model.Command"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Command List</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <%@ include file="/include/header.jsp" %>
    <div id="preloader">
        <label>Loading</label>
    </div>
    <%@ include file="/include/navbar.jsp" %>
    	<section id="top" class="page-banner"
		style="background: #121619 url(https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/blog-9.jpg) no-repeat center/cover;">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="page-title">
						<h1 class="page-headding">COMMAND LIST</h1>
						<ul>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/index.html"
								class="page-name">Home</a></li>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/shop-categories.html"
								class="page-name">COMMAND LIST</a></li>
							<li>COMMAND LIST</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
    <br>
    <br>

    <div class="container">
       <div class="col-xl-12 col-lg-12 col-md-12 text-center relative wow fadeInRight">
    <h2 class="command-list text-uppercase">Pending Command List</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Pizza</th>
                <th scope="col">Status</th>
                <th scope="col">Quantity</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="command" items="${commands}">
                <tr>
                    <td>${command.id}</td>
                    <td>${command.pizza.name}</td>
                    <td>${command.status}</td>
                    <td>${command.quantity}</td>
                    <td>
                        <form action="UpdateCommandStatusToReadyController" method="post">
                            <input type="hidden" name="id" value="${command.id}">
                            <select name="status">
                                <option value="Pending" <c:if test="${command.status == 'Pending'}">selected</c:if>>Pending</option>
                                <option value="Ready" <c:if test="${command.status == 'Ready'}">selected</c:if>>Ready</option>
                            </select>
                            <button type="submit" class="btn btn-primary btn-sm">Update</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
    </div>

    <%@ include file="/include/footer.jsp" %>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <%@ include file="/include/js.jsp" %>
</body>
</html>
