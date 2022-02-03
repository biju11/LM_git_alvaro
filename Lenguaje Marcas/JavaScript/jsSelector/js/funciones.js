//Javascript siempre espera a que haya un evento, el unico que es automatico es la carga del documento

function mostrar_hola(){
    /*
    var usu = prompt("Como quiere que le llame?");
    document.getElementById("texto").innerHTML = "Hola, " + usu + "<br>";
    var radios = document.getElementsByName("valores")
    for (let i = 0; i < radios.length; i++){
        alert(radios[i].value);}
        alert(document.getElementsByTagName("p")[0]);*/
        document.getElementsByClassName("clase")[1].onclick = mostrar("Pulsado");
}
function mostrar(texto){
    alert(texto);
    
}
function mostrarMensaje() {
    document.getElementById("texto").innerHTML = "Hola";
    document.getElementById("texto").className = "bordeycolor";
}

function ocultar(){
    document.getElementById("container").style = "display: none"
}

function mostrar(){
    document.getElementById("container").style = "display: block"
}

window.addEventListener("load",mostrar_hola,false) /*esto estara escuchando la carga del evento*/

