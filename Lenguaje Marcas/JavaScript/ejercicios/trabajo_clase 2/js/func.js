function cambiaclass() {
    if (document.getElementsById("divi").className == "success") 
    {
        document.getElementById("noti").innerHTML = "Exito";
        document.getElementsById("parra").innerHTML = "Los Datos son Correctos";
    }
     
    else if (document.getElementByClassName("warn")) 
    {
        document.getElementById("divi").className="warn";
        document.getElementById("noti").innerHTML = "AVISO";
        document.getElementsById("parra").innerHTML = "Cuidado";
    }
    
    else if (document.getElementsByClassName("error")) 
    {
       document.getElementById("divi").className="error";
       document.getElementById("noti").innerHTML = "ERROR";
       document.getElementsById("parra").innerHTML = "Ha surgido un error";
    }
    else {

    }

    
}

window.addEventListener("load",cambiaclass,false); /*esto estara escuchando la carga del evento*/

/*
hacer con variables asi:
    var titulo=document.getElementById("noti");
    var texto=document.getElementById("parra");
    var capa=document.getElementById("divi");
*/

/*
EJEMPLO PROFESOR

function iniciar() {
    var titulo = document.getElementById("titulo");
    var texto = document.getElementById("texto");

    var capa = document.getElementById("capa");
    if (capa.classList.contains("success")) {
        titulo.innerHTML = "CORRECTO";
    var capa = document.getElementById("capa");    
    if (document.getElementById("capa").className == "success") {
        document.getElementById("titulo").innerHTML = "CORRECTO";
        texto.innerHTML = "Los datos son correctos";
    } else if (capa.classList.contains("error")) {
        titulo.innerHTML = "ERROR";
        texto.innerHTML = "Ha surgido un error";
    } else if (capa.classList.contains("warning")) {
        titulo.innerHTML = "AVISO";
        texto.innerHTML = "Tenga cuidado";
    }
}
window.addEventListener("load",iniciar,false);

*/