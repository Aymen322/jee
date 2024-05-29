<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">Login</h2>
        <form action="login" method="post">
            <div class="form-group">
                <label for="login">Login:</label>
                <input type="text" class="form-control" id="login" name="login" required>
            </div>
            <div class="form-group">
                <label for="pass">Password:</label>
                <input type="password" class="form-control" id="pass" name="pass" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <c:if test="${not empty param.error}">
                <div class="alert alert-danger mt-3">${param.error}</div>
            </c:if>
        </form>

        <!-- Button to redirect to SignUpController -->
        <a href="signup" class="btn btn-secondary mt-3">Sign Up</a>
    </div>
</body>
</html>
