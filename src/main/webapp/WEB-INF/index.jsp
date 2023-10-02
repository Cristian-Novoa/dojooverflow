<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Overflow</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class = "container">
		<div class = "d-flex">
			<h1 class = "col-10">Dashboard de Preguntas</h1>
			<div class = "mt-3">
			<a href = "/nueva" class = "btn btn-info">Nueva Pregunta</a>
			</div>
		</div>
		<table class = "table table-striped">
			<thead>
				<tr>
					<th>Pregunta</th>
					<th>Etiquetas</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items = "${preguntas}" var = "pregunta">
					<tr>
						<td><a href = "/preguntas/${pregunta.id}">${pregunta.contenido}</a></td>
						<td>
							<c:forEach items = "${pregunta.etiquetas}" var = "etiqueta">
								<ul>
									<li><span class = "badge bg-pill bg-dark">${etiqueta.tema}</span></li>
								</ul>
							</c:forEach>
						</td>
						<td>
							<td>
							<div class = "d-flex justify-content-start">
								<form action="/borrar/${pregunta.id}" method = "POST">
									<input type = "hidden" name = "_method" value = "DELETE">
									<input type = "Submit" value = "Borrar" class = "btn btn-danger">
								</form>
							</div>
						</td>	
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>