var n1=parseFloat(document.getElementById("n1").value);
var n2=parseFloat(document.getElementById("n2").value);
var signo=''
document.querySelector('#sum').addEventListener('click', () =>{signo = '+'});
document.querySelector('#dif').addEventListener('click', () =>{signo = '-'});
document.querySelector('#prod').addEventListener('click', () =>{signo = '*';});
document.querySelector('#frac').addEventListener('click', () =>{signo = '/';});
function calc(signo){
    if (signo == 'sum') {
        var res = parseFloat(n1+n2);
        document.getElementById("resultado").innerHTML= res
    } else if (signo == 'dif') {
        var res =parseFloat(n1-n2);
        document.getElementById("resultado").innerHTML= res
    } else if (signo == 'prod') {
        var res=parseFloat(n1*n2);
        document.getElementById("resultado").innerHTML= res
    } else if (signo == 'frac') {
        var res=parseFloat(n1/n2);
        document.getElementById("resultado").innerHTML= res
    }
}

/*window.addEventListener("load",calcula)*/
/*document.getElementById("resultado").innerHTML=resultado*/



