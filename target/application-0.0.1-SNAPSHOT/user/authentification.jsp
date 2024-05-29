<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Authentification</h1>
    <%
    String m = (String) request.getAttribute("message");
    if (m != null) {
    %>
    <span style='color: red'><%=m%></span>
    <br>
    <br>
    <%
    }
    %>
    <form action='UserController' method = post>
        login <input type='text' name='login'><br> password <input
            type=password name='pass'><br> <input type=submit name = "authentification">
            <br>
    </form>
    <a href='/application/InscriptionForm.html'> Inscription </a>

</body>
</html>