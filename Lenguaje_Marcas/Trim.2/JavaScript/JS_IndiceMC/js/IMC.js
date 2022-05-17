var masa=parseFloat(document.getElementById("masa").value);
var alt=parseFloat(document.getElementById("alt").value);
var imc="";
function imc() {
    var masa=parseFloat(document.getElementById("masa").value);
    var alt=parseFloat(document.getElementById("alt").value);
    var imc= masa / Math.pow(alt,2);
    document.getElementById("imcc").innerHTML=imc
    if (imc <= 18.5) {
        
    } else if (18.5 <= imc && imc <= 24.9) {
        
    } else if (25<= imc && imc <=  26.9) {
        
    } else if (27<= imc && imc <=29.9) {
        
    } else if (30<= imc && imc <=34.9) {
        
    } else if (35<= imc && imc <=39.9) {
        
    } else if (40<= imc && imc <=49.9) {
        
    } else if (50<=imc) {
        document.getElementById("resul").innerHTML="Gordo de mierda"
    }
}