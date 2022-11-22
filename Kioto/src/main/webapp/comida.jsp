<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Kioto</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<header>
	<nav>
		<a href="index.jsp">Inicio</a> <a href="lugares.jsp">Lugares de
			interés</a> <a href="comida.jsp">Platos tipicos</a> <a
			href="hospedaje.jsp">Hospedaje</a> <a href="mapa.jsp">Mapa</a> <a
			href="formulario.jsp">Formulario</a>
	</nav>
	<section class="texto-header">
		<h1>Platos típicos</h1>
	</section>
</header>
<body>

	<section class="continfo">

		<div class="tab"><br>
			<table border="2" , Width="700 px" , Height="400px">
				<tr>
					<th bgcolor="#FF8B43" , style="border: solid 3px #D46918;">Nombre</th>
					<th bgcolor="#FF8B43" , style="border: solid 3px #D46918;">Restaurante</th>
					<th bgcolor="#FF8B43" , style="border: solid 3px #D46918;">Imagen</th>
				</tr>
				<tr>
					<td style="border: solid 3px #D46918;">Yodofu</td>
					<td style="border: solid 3px #D46918;"><a
						href="https://www.tripadvisor.es/Restaurant_Review-g298564-d1173256-Reviews-Yudofu_Sagano-Kyoto_Kyoto_Prefecture_Kinki.html">Yudofu
							Sagano</a></td>
					<td style="border: solid 3px #D46918;"><iframe width="560"
							height="315" src="https://www.youtube.com/embed/p7NtxeUI0sw"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope;picture-in-picture"
							allowfullscreen></iframe></td>
				</tr>
				<tr>
					<td style="border: solid 3px #D46918;">Té de Uji</td>
					<td style="border: solid 3px #D46918;"><a
						href="https://www.tripadvisor.com.mx/Restaurant_Review-g946495-d7579725-Reviews-Taihoan-Uji_Kyoto_Prefecture_Kinki.html">Taihoan</a></td>
					<td style="border: solid 3px #D46918;"><img
						src="imagenes/uji.jpg"></td>
				</tr>
				<tr>
					<td style="border: solid 3px #D46918;">Kyo-Gashi</td>
					<td style="border: solid 3px #D46918;"><a
						href="https://www.tripadvisor.co/Attraction_Review-g298564-d1870766-Reviews-Kyogashi_Museum-Kyoto_Kyoto_Prefecture_Kinki.html">Kyogashi
							Museum</a></td>
					<td style="border: solid 3px #D46918;"><iframe width="560"
							height="315" src="https://www.youtube.com/embed/uDye14UGXxc"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe></td>
				</tr>
			</table><br>

		</div>
	</section>

</body>
</html>