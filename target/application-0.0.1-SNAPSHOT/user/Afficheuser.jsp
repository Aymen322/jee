<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

        User u=(User)session.getAttribute("user");
        out.print("<h1> l'utilisateur connecte est "+u.getNom()+ " "+u.getPrenom()+"</h1>");

        %>
</body>
</html>