function comparaNum() {
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var n3 = parseInt(document.getElementById("n3").value);

    if ((n1>n2) && (n1>n3)) {
        document.getElementById("resul1").innerHTML= n1 + " es el mayor de todos";
            if (n2>n3) {
                document.getElementById("resul2").innerHTML= n2 + " esta en la posicion central";
                document.getElementById("resul3").innerHTML= n3 + " es el menor de todos";
            }
            else if (n3>n2){
                document.getElementById("resul2").innerHTML= n3 + " esta en la posicion central";
                document.getElementById("resul3").innerHTML= n2 + " es el menor de todos";
            }
    }
    else if ((n2>n1) && (n2>n3)) {
        document.getElementById("resul1").innerHTML= n2 + " es el mayor de todos";
            if (n1>n3) {
                document.getElementById("resul2").innerHTML= n1 + " esta en la posicion central";
                document.getElementById("resul3").innerHTML= n3 + " es el menor de todos";
            }
            else if (n3>n1){
                document.getElementById("resul2").innerHTML= n3 + " esta en la posicion central";
                document.getElementById("resul3").innerHTML= n1 + " es el menor de todos";
            }
    }
    else if ((n3>n1) && (n3>n2)) {
        document.getElementById("resul1").innerHTML= n3 + " es el mayor de todos";
            if (n1>n2) {
                document.getElementById("resul2").innerHTML= n1 + " esta en la posicion central";
                document.getElementById("resul3").innerHTML= n2 + " es el menor de todos";
            }
            else if (n2>n1){
                document.getElementById("resul2").innerHTML= n3 + " esta en la posicion central";
                document.getElementById("resul3").innerHTML= n2 + " es el menor de todos";
            }
    }
}