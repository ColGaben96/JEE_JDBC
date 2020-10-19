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
<script src="js/jquery-3.5.1.js"></script>
<script src="js/bootstrap.js"></script>
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
	<form class="form-inline" method="get">
		<div class="form-group mx-sm-3 mb-2">
			<label>SELECT * FROM datos WHERE </label>
		</div>
		<div class="form-group mx-sm-3 mb-2">
			<select class="form-control" id="columnSelect">
				<option id="form--">--</option>
				<option id="form0">ID</option>
				<option id="form1">Usuario</option>
				<option id="form2">Nombre</option>
				<option id="form3">Apellido</option>
				<option id="form4">Edad</option>
				<option id="form5">Genero</option>
				<option id="form6">Telefono</option>
				<option id="form7">Direccion</option>
				<option id="form8">Pais</option>
				<option id="form9">Ciudad</option>
				<option id="form10">Correo</option>
				<option id="form11">Contraseña</option>
			</select>
		</div>
		<div class="form-group mx-sm-3 mb-2">
			<label> == '</label> <input type="text" placeholder="Valor">
			<label>'</label>
		</div>
		<button type="submit" class="btn btn-primary">Realizar
			Búsqueda</button>
	</form>
	<br>
	<div class="container-fluid">
		<nav aria-label="...">
			<div class="table-responsive">
				<table id="MyTable" class="table table-striped table-bordered"
					style="text-align: center;">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Usuario</th>
							<th scope="col">Nombre</th>
							<th scope="col">Apellido</th>
							<th scope="col">Edad</th>
							<th scope="col">Genero</th>
							<th scope="col">Telefono</th>
							<th scope="col">Direccion</th>
							<th scope="col">Pais</th>
							<th scope="col">Ciudad</th>
							<th scope="col">Correo</th>
							<th scope="col">Contraseña</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="id" value="${listaIDS}"></c:set>
						<c:set var="usuario" value="${listaUsuarios}"></c:set>
						<c:set var="nombre" value="${listaNombres}"></c:set>
						<c:set var="apellido" value="${listaApellidos}"></c:set>
						<c:set var="edad" value="${listaEdades}"></c:set>
						<c:set var="genero" value="${listaGeneros}"></c:set>
						<c:set var="telefono" value="${listaTelefonos}"></c:set>
						<c:set var="direccion" value="${listaDirecciones}"></c:set>
						<c:set var="pais" value="${listaPaises}"></c:set>
						<c:set var="ciudad" value="${listaCiudades}"></c:set>
						<c:set var="correo" value="${listaCorreos}"></c:set>
						<c:set var="contrasena" value="${listaContrasenas}"></c:set>
						<c:set var="rowsAllowed" value="50"></c:set>
						<c:set var="totalRows" value="${listaIDS.size()}"></c:set>
						<c:forEach var="i" begin="0" end="${totalRows-1}" step="1">
							<tr>
								<td>${listaIDS.get(i)}</td>
								<td>${listaUsuarios.get(i)}</td>
								<td>${listaNombres.get(i)}</td>
								<td>${listaApellidos.get(i)}</td>
								<td>${listaEdades.get(i)}</td>
								<td>${listaGeneros.get(i)}</td>
								<td>${listaTelefonos.get(i)}</td>
								<td>${listaDirecciones.get(i)}</td>
								<td>${listaPaises.get(i)}</td>
								<td>${listaCiudades.get(i)}</td>
								<td>${listaCorreos.get(i)}</td>
								<td>${listaContrasenas.get(i)}</td>
							</tr>
						</c:forEach>
				</table>
			</div>
			<ul class="pagination">
				<c:forEach var="i" begin="0" end="${(totalRows/rowsAllowed)-1}" step="1">
					<li class="page-item"><a class="page-link" href="#">${i+1}</a></li>
				</c:forEach>
			</ul>
		</nav>
	</div>
</body>
</html>