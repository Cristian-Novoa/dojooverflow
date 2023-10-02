<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pregunta</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class = "container">
		<h1 class = "text-info">${pregunta.contenido}</h1>
		<div>
			<h4>Etiquetas</h4>
			<c:forEach items = "${pregunta.etiquetas}" var = "etiqueta">
				<li><span class = "badge bg-pill bg-dark">${etiqueta.tema}</span></li>
			</c:forEach>
		</div>
		<div class = "row">
			<div class = "col-6">
				<table class = "table table-striped">
					<thead>
						<tr>
							<th>Respuestas</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items = "${pregunta.respuestas}" var = "respuesta">
							<tr>
								<td>${respuesta.texto}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class = "col-6">
				<form:form action = "/respuesta" method = "POST" modelAttribute = "respuesta">
					<form:label path = "texto">Ingresa tu respuesta</form:label>
					<form:textarea class = "form-control" path="texto"/>
					<form:errors class = "text-danger" path = "texto"></form:errors>
					<form:hidden path="pregunta" value = "${pregunta.id}"/>
					<input type = "Submit" value = "Guardar" class = "btn btn-primary mt-3">
				</form:form>
			</div>
		</div>
		<a href = "/preguntas" class = "btn btn-info mt-5">Volver a Dashboard</a>
	</div>
</body>
</html>