function calculaEdad() {
    var nombre = document.getElementById("nombre").value;
    var fecha = document.getElementById("edad").value;

    var nac = new Date(fecha).getTime(); /*convierte la fecha_nac a milisegundos*/
    var hoy = new Date().getTime(); /*fecha hoy*/
    var dias = hoy - nac;
    var total = dias/(1000*3600*24);
    document.getElementById("resultado").innerHTML= fecha + " "+ "esta es su fecha, estos son sus dias de vida: " + total;
}
/*"Buenas Tardes, " + nombre + ", " + "segun mis calculos tiene usted " + dias + "días";*/


function comparaNum() {
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    if (n1>n2) {
        document.getElementById("resul2").innerHTML= n1 + " es mayor a " + n2;
    } else if (n2>n1) {
        document.getElementById("resul2").innerHTML= n2 + " es mayor a " + n1;   
    } else {
        document.getElementById("resul2").innerHTML= "retrasao son iguales";   
    }
}

