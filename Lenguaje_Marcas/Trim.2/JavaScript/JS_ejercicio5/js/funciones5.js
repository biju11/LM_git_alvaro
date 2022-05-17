function fraseVeces() {
    var frase=document.getElementById("frase").value;
    var rep=parseInt(document.getElementById("repeticiones").value);
    var resul="";
    for (let c = 0; c < rep; c++) {
        resul = resul + frase + "<br>"
        document.getElementById("drop").innerHTML = resul
    }
}


