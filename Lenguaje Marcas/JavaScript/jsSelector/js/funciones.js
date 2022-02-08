//Javascript siempre espera a que haya un evento, el unico que es automatico es la carga del documento

function mostrar_hola(){
    /*
    var usu = prompt("Como quiere que le llame?");
    document.getElementById("texto").innerHTML = "Hola, " + usu + "<br>";
    var radios = document.getElementsByName("valores");
    for (let i = 0; i < radios.length; i++){
        alert(radios[i].value);}
        alert(document.getElementsByTagName("p")[0]);
        document.getElementsByClassName("clase")[1].onclick = mostrar("Pulsado");*/

        //document.querySelector("#container p:first-child").onclick = alerta

        var coleccion = document.querySelectorAll("#container p");
        document.getElementById("container").querySelectorAll("p");

        for (let i = 0; i < coleccion.length; i++) {
            coleccion[i].innerHTML = "aqui va el parrafo " + (i+1);
        }

}

function mostrar(texto){
    alert(texto);    
}

function alerta(){
    alert("Alerta")
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

