<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <title>SkiSystem</title>
    <link rel="stylesheet" href="<spring:url value="/resources/common/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/common/css/fontawesome.min.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/site/css/home.css"/>">
</head>
<body>
<div class="container">
    <header class="masthead">
        <div class="inner">
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link" href="<spring:url value="/"/>">Strona główna</a>
                <a class="nav-link" href="<spring:url value="/lifts"/>">Wyciągi</a>
                <a class="nav-link" href="<spring:url value="/slopes"/>">Stoki</a>
                <a class="nav-link active" href="<spring:url value="/prices"/>">Cennik karnetów</a>
                <a class="nav-link" href="<spring:url value="/customer"/>">Strefa klienta</a>
            </nav>
            <h3 class="masthead-brand">SkiSystem</h3>
        </div>
    </header>

    <main class="bg-white rounded p-5">
        <h1>Cennik</h1>
        <c:forEach items="${seasons}" var="season">
            <hr>
            <h3>${season.name}</h3>
            <p>Poniższy cennik obowiązuje w okresie od ${season.startDatetimeString} do ${season.endDatetimeString}</p>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col"></th>
                    <c:forEach items="${ticketTypes}" var="ticketType">
                        <td scope="col">
                            <b>${ticketType.name}</b>
                            <c:if test="${ticketType.description != null && ticketType.description.length() > 0}">
                                <br>${ticketType.description}
                            </c:if>
                        </td>
                    </c:forEach>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ticketCategories}" var="ticketCategory">
                    <tr>
                        <td scope="row">
                            <b>${ticketCategory.name}</b>
                            <c:if test="${ticketCategory.description != null && ticketCategory.description.length() > 0}">
                                <br>${ticketCategory.description}
                            </c:if>
                        </td>
                        <c:forEach items="${ticketTypes}" var="ticketType">
                            <td>
                                <c:if test="${pricesInSeason.get(season).get(ticketCategory).get(ticketType) != null}">
                                    ${pricesInSeason.get(season).get(ticketCategory).get(ticketType).getPriceValue()} zł
                                </c:if>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:forEach>

    </main>
</div>
</body>
</html>
