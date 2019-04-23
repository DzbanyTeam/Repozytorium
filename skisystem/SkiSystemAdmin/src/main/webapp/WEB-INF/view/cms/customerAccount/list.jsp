<%--
  Created by IntelliJ IDEA.
  User: Przemek-PC
  Date: 18.03.2019
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="pl">
<head>
    <meta charset="utf-8">
    <title>SkiSystem - panel administracyjny - edycja klientów</title>
    <link rel="stylesheet" href="<spring:url value="/resources/common/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/common/css/fontawesome.min.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/cms/css/style.css"/>">
</head>

<body>
<nav class="navbar navbar-expand bg-light">
    <a class="navbar-brand" href="<spring:url value="/admin"/>">SkiSystem</a>

    <ul class="navbar-nav mr-auto" id="navbar">
        <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/admin/admins"/>">Administratorzy</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="<spring:url value="/admin/customers"/>">Klienci</a>
        </li>
    </ul>

    <a href="<spring:url value="/admin/logout"/>" class="navbar-brand" id="logout-button">
        <i class="fas fa-sign-out-alt"></i>
    </a>
</nav>


<div class="container py-5">
    <h1 id="header">Klienci</h1>
    <form action="<spring:url value="/admin/customers/update"/>" method="GET" class="mt-5">
        <c:if test="${alertText != null}">
            <div class="alert alert-${alertType}">
                    ${alertText}
                <button class="close" onclick="$(this.closest('.alert')).slideUp(); return false;">&times;</button>
            </div>
        </c:if>
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th></th>
                <th>Nazwa użytkownika</th>
                <th>Imię i nazwisko</th>
                <th>Aktywny</th>
                <th class="text-right">Akcje</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${customerAccounts}" var="customerAccount">
            <tr>
                <td><input type="checkbox" name="ids[]" value="${customerAccount.id}"></td>
                <td>${customerAccount.username}</td>
                <td>${customerAccount.name} ${customerAccount.surname}</td>
                <c:if test="${customerAccount.getIsActive()}">
                    <td><a class="text-success" href="<spring:url value="/admin/customers/update?ids%5B%5D=${customerAccount.id}&action=deactivate"/>" title="Dezaktywuj"><i class="fas fa-check text-success"></i></a></td>
                </c:if>
                <c:if test="${!customerAccount.getIsActive()}">
                    <td><a class="text-success" href="<spring:url value="/admin/customers/update?ids%5B%5D=${customerAccount.id}&action=activate"/>" title="Aktywuj"><i class="fas fa-times text-danger"></i></a></td>
                </c:if>
                <td class="text-right py-2">
                    <div class="btn-group">
                        <a class="btn btn-primary fas fa-pen" href="<spring:url value="/admin/customers/edit/${customerAccount.id}"/>"></a>
                        <a class="btn btn-light fas fa-trash-alt" href="<spring:url value="/admin/customers/update?ids%5B%5D=${customerAccount.id}&action=delete"/>"></a>
                    </div>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>
            <a href="<spring:url value="/admin/customers/add"/>" class="btn btn-primary float-right">Dodaj klienta&ensp;<i class="fas fa-plus"></i></a>
            <select class="form-control" name="action" onchange="$(this).closest('form').submit()" style="width:auto">
                <option value="" disabled selected>Masowa edycja</option>
                <option value="delete">Usuń zaznaczone</option>
                <option value="activate">Aktywuj zaznaczone</option>
                <option value="deactivate">Dezaktywuj zaznaczone</option>
            </select>
        </div>
    </form>
</div>

<script src="<spring:url value="/resources/common/js/jquery.js"/>"></script>

</body>
</html>

