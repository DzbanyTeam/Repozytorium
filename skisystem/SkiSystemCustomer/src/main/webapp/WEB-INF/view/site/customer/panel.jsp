<jsp:useBean id="customerAccount" scope="request" type="pl.polsl.pp.model.CustomerAccount"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <title>Strefa klienta SkiSystem - panel klienta</title>
    <link rel="stylesheet" href="<spring:url value="/resources/common/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/common/css/fontawesome.min.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/site/css/customer.css"/>">
    <script src="<spring:url value="/resources/common/js/jquery.js"/>"></script>
    <script src="<spring:url value="/resources/common/js/bootstrap.min.js"/>"></script>
    <style>
        .list-group {
            float:left;
            padding-left:20px;
            width: 15%;
        }
        .panel-content {
            margin-left:20px;
            float:left;
            padding:20px;
            width: 85%;
            margin-right: 20px;
            height: auto;
        }
        h5{
            color: darkgray;
        }
    </style>
</head>
<body class="bg-light">
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-5 bg-white border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal">Strefa klienta SkiProject</h5>
    <a class="btn btn-default mr-3" href="<spring:url value="/customer/help"/>"><i class="fas fa-question-circle"></i> Pomoc</a>
    <a class="btn btn-default mr-3" href="<spring:url value="/customer/logout"/>"><i class="fas fa-sign-out-alt"></i> Wyloguj się</a>
    <a class="btn btn-secondary" href="<spring:url value="/"/>">Powrót do serwisu</a>
</div>
<div class="d-flex flex-md-row">
    <div class="list-group flex-column ">
        <a href="<spring:url value="/customer"/>" class="list-group-item active"><i class="fa fa-home"></i> <span>Podgląd</span></a>
        <a href="<spring:url value="/customer/data"/>" class="list-group-item"><i class="fa fa-address-card"></i> <span>Edycja danych</span></a>
        <a href="<spring:url value="/customer/tickets/history"/>" class="list-group-item"><i class="fa fa-barcode"></i> <span>Zakupione bilety</span></a>
        <a href="<spring:url value="/customer/tickets/purchase"/>" class="list-group-item"><i class="fa fa-money-bill"></i> <span>Kup bilet</span></a>
    </div>
    <div class="flex-column panel-content bg-white border-bottom border-top border-left border-right shadow-sm">
        <h1 id="header">Panel klienta</h1>
        <br>
        <h5>Nazwa użytkownika</h5>
        <h3>${customerAccount.username}</h3>
        <br>
        <h5>Imię i nazwisko</h5>
        <h3>${customerAccount.name} ${customerAccount.surname}</h3>
        <br>
        <h5>Adres e-mail</h5>
        <h3>${customerAccount.email}</h3>
        <br>
        <h5>Numer telefonu</h5>
        <h3>${customerAccount.phoneNumber}</h3>
    </div>
</body>
</html>