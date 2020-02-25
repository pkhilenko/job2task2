<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring MVC</title>
    <link href="<c:url value="/static/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/static/js/jquery-3.4.1.min.js" />"></script>
    <script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <div class="col-md-offset-2 col-md-7">
        <h2 class="text-center">Car</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Add Car</div>
            </div>
            <div class="panel-body">
                <form:form action="saveCar" cssClass="form-horizontal"
                           method="post" modelAttribute="car">

                    <!-- need to associate this data with customer id -->
                    <form:hidden path="id"/>

                    <div class="form-group">
                        <label for="name" class="col-md-3 control-label">Name</label>
                        <div class="col-md-9">
                            <form:input path="name" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="series" class="col-md-3 control-label">Series</label>
                        <div class="col-md-9">
                            <form:input type="number" path="series" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="licensePlate" class="col-md-3 control-label">licensePlate</label>
                        <div class="col-md-9">
                            <form:input path="licensePlate" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <form:button cssClass="btn btn-primary">Submit</form:button>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>