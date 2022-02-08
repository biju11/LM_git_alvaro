/*
function whois(){
    var usu = prompt("Quien eres?");
    return usu
}
var usuario = whois
function fondo() {
    if (usuario == "yo"){
        document.getElementById("container").className = "yo";   
    } 
    else if (usuario == "amigo"){
        document.getElementById("container").className = "amigo";
    } 
    else {
        document.getElementById("container").className = "nigger";
    }

    
}

*/
function comprueba(){
    var usu = prompt("Quien eres?");
    if (usu=="yo"){
        document.getElementById("container").className="yo";   
    } else if (usu=="amigo"){
        document.getElementById("container").className="amigo";
    } else {
        document.getElementById("container").className="nigger";
    }
}

window.addEventListener("load",comprueba,false); /*esto estara escuchando la carga del evento*/
