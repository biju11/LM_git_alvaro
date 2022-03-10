function calc(oper) {
    var res="";
    var n1=parseInt(document.getElementById("n1").value);
    var n2=parseInt(document.getElementById("n2").value);
    if (oper == "+") {
        res = eval(n1+n2);
    } else if (oper == "-") {
        res = eval(n1-n2);
    } else if (oper == "*") {
        res = eval(n1*n2);
    } else if (oper == "/") {
        res = eval(n1-n2);
    }
    document.getElementById("resul").innerHTML=res
}