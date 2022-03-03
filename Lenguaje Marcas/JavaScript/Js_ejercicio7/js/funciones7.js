var ran = parseInt(Math.random() * 12);
var sup = "el num introducido es mayor";
var inf = "el num introducido es inferior";
var eq = "Son Iguales!!!";
var inten = 5;
function compruebaNum() {
    var intro=document.getElementById("intro").value;
    if (inten > 0) {
        if (intro < ran ) {
            document.getElementById("resultado").innerHTML= inf;
            inten = inten -1;
            document.getElementById("intentos").innerHTML = inten;
        } else if (intro > ran) {
            document.getElementById("resultado").innerHTML= sup;
            inten = inten -1;
            document.getElementById("intentos").innerHTML = inten;
        } else {
            document.getElementById("resultado").innerHTML= eq;
        }
    } else {
        document.getElementById("intentos").innerHTML = "GAME OVER";
        document.getElementById("resultado").innerHTML= "EL NUMERO ERA: " + ran;
    }
    
}
