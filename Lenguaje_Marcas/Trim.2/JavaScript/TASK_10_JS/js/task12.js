function validar() {
    var ok = true;
    var texto = "";
    var mail=document.getElementById("email");
    var web=document.getElementById("web");
    var edad=document.getElementById("edad");
    var pass=document.getElementById("passwd");
    var verif=document.getElementById("2fa");

    if  (  mail.length == 0 || mail.value == ""
        || web.length == 0 || web.value == ""
        || edad.length == 0|| edad.value == ""
        || pass.length == 0 || pass.value == ""
        || verif.length == 0|| verif.value == ""
        ){
        texto+= "<li>Formulario incompleto o erroneo</li></br>";
        document.getElementById("res").innerHTML=texto;
        ok = false;
    } else if (String(mail.value).indexOf("@") == -1 && 
               String(mail.value).indexOf(".")== -1 &&
               String(mail.value).indexOf("@") > String(mail.value).indexOf(".")
               ){
        texto+="<li>El Formato del Email no es válido</li></br>";
        document.getElementById("res").innerHTML=texto;
    }
}