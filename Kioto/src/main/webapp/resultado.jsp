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
		String pregunta1=request.getParameter("p1");
		String pregunta2=request.getParameter("p2");
		String pregunta3=request.getParameter("p3");
		String pregunta4=request.getParameter("p4");
		String pregunta5=request.getParameter("p5");
	 	
	 	int nota1=1;
	 	int nota2=1;
	 	int nota3=1;
	 	int nota5=1;
	 	int nota4=1;
	 	int notaf=1;

	 	if(pregunta1.equals("si") ){
	 		nota1=2;
	 	}else{
	 		nota1=0;
	 	} 	
	 	if(pregunta2.equals("templos")){
	 		nota2=2;
	 	}else{
	 		nota2=0;
	 	} 	 	
	 	if(pregunta3.equals("1464")){
	 		nota3=2;
	 	}else{
	 		nota3=0;
	 	}	 	
	 	if(pregunta4.equals("01/01/796")){
	 		nota4=2;
	 	}else{
	 		nota4=0;
	 	}
	 	if(pregunta5.equals("si")){
	 		nota5=2;
	 	}else{
	 		nota5=0;
	 	}
	 	
	 	notaf=nota1+nota2+nota3+nota4+nota5;
		
    String nom=request.getParameter("nombre");
    usdatos dat = new usdatos();
    dat.ingresarUsuario(nom, notaf);

   /* out.print(dat.consultarUsuarios());*/
	%>

</body>
</html>