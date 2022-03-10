/*
function multiplica(num) {
    var txt="<h2> Tabla del " + num + "</h3> <br>"
    for (let i = 1; i <= 10; i++) {
        txt= txt + num +" * "+ i + " = " + eval(num*i) +"<br>"
    }
    document.getElementById("result").innerHTML=txt
}
*/


function total() {
    for (let i = 1; i <= 10; i++) {
        var txt= txt + "<h2>" + "Tabla del " + i + "</h2>" + "<br>";
        for (let j = 1; j <= 10; j++) {
            txt = txt + i + " X " + j + " = " + eval(i*j) + "<br>";
        }
    }
    document.getElementById("result").innerHTML = txt
}

window.addEventListener("load",total,false)