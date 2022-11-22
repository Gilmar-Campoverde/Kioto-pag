<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.usuarios.us.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Kioto</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script src="js/evaluacion.js">
	
</script>
</head>

<header>
	<nav>
		<a href="index.jsp">Inicio</a> <a href="lugares.jsp">Lugares de
			interés</a> <a href="comida.jsp">Platos tipicos</a> <a
			href="hospedaje.jsp">Hospedaje</a> <a href="mapa.jsp">Mapa</a> <a
			href="formulario.jsp">Formulario</a>
	</nav>

	<section class="texto-header">
		<h1>Formulario</h1>
	</section>

</header>

<body>
	<div class="container text-center">
		<div class="row">
			<div class="col-sm-5 col-md-6">
				<br>
				<form action="resultado.jsp" method="post">
					<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">Ingrese
							su Nombre: </label> <input type="text" class="form-control"
							id="formGroupExampleInput" placeholder="Ejemplo: Juam Rizo"
							name="nombre">
					</div>
					<h7>Subir una foto: </h7>
					<br>
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="inputGroupFile02"
							accept=".jpg" name="foto"> <label class="input-group-text"
							for="inputGroupFile02">Subir</label>
					</div>
					<br>

					<h7>Prueba de conocimiento sobre Kioto </h7>
					<br> <br> 
		
					<label for="formGroupExampleInput" class="form-label">1. ¿El Yodofu es una comida típica de Kioto?</label>
					<br>
						<input type="radio" name="p1" value="si" />Sí
						<input type="radio" name="p1" value="tl" />Tal vez 
						<input type="radio" name="p1"value="no" />No 
					<br>
					<label for="formGroupExampleInput" class="form-label">2. Kioto es	una ciudad famosa devido a:</label>
					<br>
						<input type="radio" name="p2" value="templos" />Templos 
						<input type="radio" name="p2" value="fut" />Fútbol
						<input type="radio" name="p2"value="fau" />Fauna
					<br>
					<label for="formGroupExampleInput" class="form-label">3. ¿Cuál es	la población total de Kioto?</label>
					<br>
						<input type="radio" name="p3" value="1464" />1464 millones 
						<input type="radio" name="p3" value="tl" />1789 millones 
						<input type="radio" name="p3"value="no" />146 millones 
					<br>
					<label for="formGroupExampleInput" class="form-label">4. ¿En qué	año fue fundado el templo To-ji?:</label>
					<br>
						<input type="radio" name="p4" value="01/01/796" />01/01/796 
						<input type="radio" name="p4" value="31" />31/12/794 
						<input type="radio" name="p4"value="11" />11/01/1380
					<br>
					<label for="formGroupExampleInput" class="form-label">5. ¿Kioto es la capital de Japón?:</label>
					<br>
						<input type="radio" name="p5" value="si" />Sí
						<input type="radio" name="p5" value="tl" />Tal vez 
						<input type="radio" name="p5"value="no" />No 
						<br>
						<br>
						<button class="btn btn-success">Guardar</button>
				</form><br>
				
					<button onclick="evaluar()" class="btn btn-success">Evaluar</button>
					<button onclick="resetear()" class="btn btn-danger">Reiniciar</button>
					<br><br>
			</div>


			<div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
				<div id="resultado">
					<h8> Resultados </h8>
				</div>
				<br>
				<h7>Comentario sobre la página: </h7>
				<br>
				<div class="form-floating">
					<textarea class="form-control" placeholder="Leave a comment here"
						id="floatingTextarea2" style="height: 100px"></textarea>
					<label for="floatingTextarea2">Deje su comentario aquí</label><br>
					<button onclick="pulsar2()" class="btn btn-success">Puntuar</button>
				</div>
				<br> <label for="customRange2" class="form-label">Puntue
					la página</label> <input type="range" class="form-range" min="0" max="3"
					id="customRange2">
				<button onclick="pulsar()" class="btn btn-success">Puntuar</button>

			</div>
		</div>
	</div>


</body>
</html>