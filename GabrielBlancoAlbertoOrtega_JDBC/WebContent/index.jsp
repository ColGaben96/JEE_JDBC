<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC - Gabriel Blanco - Alberto Ortega</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/datatables.css"/>
<script src="js/jquery-3.5.1.js"></script>
<script src="js/datatables.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jdbcExcercise.js"></script>
</head>
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light w-100">
		<a href="index.jsp"> <img src="img/logo_uni.jpeg"
			class="img-fluid" alt="Responsive image">
		</a>
		<h4>Taller JDBC: Gabriel Blanco - Alberto Ortega</h4>
	</nav>
</header>
<body>
	<br>
	<form class="form-inline" method="POST" action="./ServletJDBC">
		<button type="submit" class="btn btn-primary">Realizar
			Búsqueda</button>
	</form>
	<br>
	<h6>Haz click en Realizar Búsqueda para comenzar</h6>
</body>
</html>