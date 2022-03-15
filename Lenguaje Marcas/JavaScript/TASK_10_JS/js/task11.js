var max = "";
var min = 99999999;
var pos = 0;
var neg = 0;
function add() {
        var num = parseInt(document.getElementById("caja").value);
        if (num < min) {
            min = num;
        } 
        if (num > max) {
            max = num;
        }
        if (num > 0) {
            pos = pos+num;
        } else if (num < 0) {
            neg = neg+num;
        }

        
}


function submitea() {
    document.getElementById("resultado").innerHTML="El máximo es: "+max+"<br>"+"El Mínimo es: "+min+"<br>"+"el sumatorio de positivos es: "+pos+"<br>"+"el sumatorio de negativos es: "+neg+"<br>"+"Gracias !!"
}