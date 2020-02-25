<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
    <meta charset="UTF-8">
    <title>Spring 5 MVC - Hello World Example | job2task2</title>
</head>
<body>
<h2>${helloWorld.message}</h2>
<h4>Server date time is : ${helloWorld.dateTime}</h4>
</body>
</html>