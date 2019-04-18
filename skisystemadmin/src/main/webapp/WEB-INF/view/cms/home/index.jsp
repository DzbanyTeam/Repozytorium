<%--
  Created by IntelliJ IDEA.
  User: Przemek-PC
  Date: 24.03.2019
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!doctype html>

<html lang="pl">
<head>
    <meta charset="utf-8">
    <title>SkiSystem - panel administracyjny</title>
    <link rel="stylesheet" href="<c:url value="/resources/common/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/common/css/fontawesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/cms/css/style.css"/>">
</head>

<body>
<nav class="navbar navbar-expand bg-light">
    <a class="navbar-brand" href="<c:url value="/admin"/>">SkiSystem</a>

    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/admins"/>">Administratorzy</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/customers"/>">Klienci</a>
        </li>
    </ul>

    <a href="<c:url value="/admin/logout"/>" class="navbar-brand" id="logout-button">
        <i class="fas fa-sign-out-alt"></i>
    </a>
</nav>


<div class="container py-5">
    <h1 id="header">Strona główna panelu administracyjnego</h1>
    <p>Na chwilę obecną dość pusta.</p>
</div>

</body>
</html>

