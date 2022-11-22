/**
 * 
 */
 function evaluar(){
	
	let respuestasC =["si","templos","1464","01/01/796","si"];
	let respuestasU = new Array();
	let respuestasP = new Array();
	let aciertos = 0;
	let countP = 0;
	
	for(var i = 0; i<5; i++){
		respuestasP=document.getElementsByName('p'+(i+1));
		for (var j = 0; j<=2; j++){
			if(respuestasP[j].checked==true){
				countP++;
				respuestasU[i]=respuestasP[j].value;
				if(respuestasP[j].value==respuestasC[i]){
					aciertos++;
				}
			}
		}
	}
	for(var i = 0; i<5; i++){
		console.log("Respuesta " + respuestasU[i]);
	}
	if(countP==5){
		html="<table class='tablee'>";
		html+="<tr>";
		html+="<td>Pregunta</td>";
		html+="<td>Respuestas Usuario</td>";
		html+="<td>Respuestas Correctas</td>";
		html+="<tr>";
		for(var i = 0; i<5; i++){
			html+="<tr>";
			html+="<td>"+(i+1)+"</td>";
			html+="<td>"+respuestasU[i]+"</td>";
			html+="<td>"+respuestasC[i] +"</td>";
			html+="<tr>";
		}
		html+="</table>";
		html+="<span class='display-1'>Calificacion  " + aciertos + "</span>"
		document.getElementById('resultado').innerHTML=html;	
	}else{
		alert("Falta contestar preguntas");
	}
	
}

function resetear(){
	for(var i = 0; i<5; i++){
		respuestasP=document.getElementsByName('p'+(i+1));
		for (var j = 0; j<=2; j++){
			respuestasP[j].checked=false;
		}
	}	
	document.getElementById('resultado').innerHTML="";
}

function pulsar2() {
alert("Se ha dejado el comentario sobre la pagina");
}

function pulsar2() {
alert("Se ha puntuado la pagina");
}
