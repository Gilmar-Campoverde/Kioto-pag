<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Kioto</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<body>

	<header>
		<nav>
			<a href="index.jsp">Inicio</a> <a href="lugares.jsp">Lugares de
				interés</a> <a href="comida.jsp">Platos tipicos</a> <a
				href="hospedaje.jsp">Hospedaje</a> <a href="mapa.jsp">Mapa</a> <a
				href="formulario.jsp">Formulario</a>
		</nav>
		<section class="texto-header">
			<h1>Mapa</h1>
		</section>
	</header>
<body>

	<section class="continfo">
		<div class="mapa">
			<br>
			<h5>Ruta a Seguir para el viaje Quito - Kioto</h5>
			<br>
			<iframe
				src="https://www.google.com/maps/d/embed?mid=1TpuO_4YC0eJCaqdpaXP0m3E_b-PU_FY&hl=es-419&ehbc=2E312F"
				width="950" height="650"></iframe>
			<br>
			<div class="mapatab">
				<table border="2" , Width="1000px" , Height="100px">
					<tr>
						<td style="border: solid 3px #D46918;">En el mapa de arriba
							se encuentran las escalas de los diferentes aeropuertos para el
							viaje desde Quito a Kioto</td>
					</tr>
					<tr>
						<td style="border: solid 3px #D46918;"><a
							href="https://www.google.com/travel/flights/search?tfs=CBwQAhokagcIARIDVUlPEgoyMDIyLTEyLTAzc
					g0IAhIJL20vMDFteWxqGiRqDQgCEgkvbS8wMW15bGoSCjIwMjItMTItMDdyBwgBEgNVSU9wAYIBCwj___________
					8BQAFIAZgBAQ&tfu=EgYIARAAGAA&hl=es-419&authuser=0">Más
								información sobre los vuelos</a></td>
					</tr>
				</table>
				<br>
			</div>
		</div>
	</section>
</body>
</html>