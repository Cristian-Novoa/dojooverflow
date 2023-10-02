<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Pregunta</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class = "container">
		<h1 class = "text-success">Nueva Pregunta</h1>
		<form:form action = "/crear" method = "POST" modelAttribute = "preguntas">
			<div>
				<form:label path="contenido">Pregunta</form:label>
				<form:input path="contenido" class = "form-control"/>
				<form:errors path = "contenido" class = "text-danger"></form:errors>
			</div>
			<div>
				<label>Etiquetas</label>
				<input type = "text" name = "textoEtiquetas" class = "form-control">
			</div>
			<input type = "Submit" class = "btn btn-success mt-3" value = "Guardar">
			<div>
			<a href = "/preguntas" class = "btn btn-info mt-3">Volver a Dashboard</a>
			</div>
		</form:form>
	</div>
</body>
</html>