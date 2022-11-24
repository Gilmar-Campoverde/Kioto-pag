<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.usuarios.us.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Kioto</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>

<header>
	<nav>
		<a href="formulario.jsp">Formulario</a>
	</nav>

	<section class="texto-header">
		<h1>Tabla de clasificaciones</h1>
	</section>

</header>

<body>

<%
		String nombre=request.getParameter("cmbUsuarios");
		String opinion=request.getParameter("txtsug");
		int valo=Integer.parseInt(request.getParameter("txtrango"));
		Recomendaciones val = new Recomendaciones();
		int id_val = val.consultarmaxID()+1;
		
		val.ingresarValoracion(id_val, valo, opinion, nombre);

			out.print(val.consultarValoraciones());
		%>


</body>
</html>