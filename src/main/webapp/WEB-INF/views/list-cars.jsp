<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list car</title>
    <link href="<c:url value="/static/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/static/js/jquery-3.4.1.min.js" />"></script>
    <script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <hr />

        <input type="button" value="Add Car" onclick="window.location.href='showForm'; return false;"
               class="btn btn-primary" />
        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">
                    <c:if test="${locale == 'ru'}" >

                        <h2>Машины</h2>
                    </c:if>

                    <c:if test="${locale == 'en'}" >

                        <h2>Cars</h2>
                    </c:if>

                </div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>name</th>
                        <th>series</th>
                        <th>licensePlate</th>
                        <th>Action</th>
                    </tr>

                    <!-- loop over and print our customers -->
                    <c:forEach var="tempCar" items="${cars}">

                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/car/updateForm">
                            <c:param name="carId" value="${tempCar.id}" />
                        </c:url>

                        <!-- construct an "delete" link with customer id -->
                        <c:url var="deleteLink" value="/car/delete">
                            <c:param name="carId" value="${tempCar.id}" />
                        </c:url>

                        <tr>
                            <td>${tempCar.name}</td>
                            <td>${tempCar.series}</td>
                            <td>${tempCar.licensePlate}</td>

                            <td>
                                <!-- display the update link --> <a href="${updateLink}">Update</a>
                                | <a href="${deleteLink}"
                                     onclick="if (!(confirm('Are you sure you want to delete this car?'))) return false">Delete</a>
                            </td>

                        </tr>

                    </c:forEach>

                </table>

            </div>
        </div>
    </div>

</div>
</body>
</html>