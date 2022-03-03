/*usar libreria Math*/
function calculaPotencia() {
    var base=parseInt(document.getElementById("base").value);
    var exp=parseInt(document.getElementById("exp").value);
    var res=Math.pow(base,exp);
    document.getElementById("resultado").innerHTML= "su numero es: "+ res;
}

