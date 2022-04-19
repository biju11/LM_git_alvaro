function validar(campo) {
    //var campo = document.getElementById("nombre");
    //alert(campo.value);
    if (campo.value == null || campo.value == "" || campo.value.length == 0) {
        campo.style = "border: 3px solid red";
        campo.focus();
        muestraError("spnombre","ERROR: CAMPO VACIO")
    } else {
        campo.style = "";
        borrarError("spnombre")
    }
}

function muestraError(campo,mensaje) {
    document.getElementById(campo).innerHTML=mensaje
}

function borrarError(mensajer) {
    document.getElementById(mensajer).innerHTML = ""
}

function validarFormulario() {
    //variable que contendrá errores
    var msgError="";
    //campos a validar
    var nombre = document.getElementById("nombre");
    if (nombre.value == null || nombre.value.length == 0) {
        msgError= msgError + "<li>Error:    El Nombre está Vacío</li>";
    }
    var zipcode=document.getElementById("zipcode");
    if (zipcode.value == null || zipcode.value.length == 0) {
        msgError = msgError + "<li>Error:    El Código Postal es Incorrecto</li>";
    } else if (zipcode.value.length != 5) {
        msgError = msgError + "<li>Error:    El Código Postal es Incorrecto</li>";
    }
    var tel = document.getElementById("tlf");
    if (tel.value == null || tel.value.length == 0) {
        msgError=msgError+"<li>Error:    El Teléfono está Vacío</li>";
    } else if (tel.value.length != 9) {
        msgError=msgError+"<li>Error:    El Teléfono no tiene 9 caracteres</li>";
    } else if (!tel.value.startWith(9) && !tel.value.startWith(6)) {
        msgError=msgError+"<li>Error:    El Teléfono no comienza ni por 9 ni 6</li>";
    }



    //verif
    if (msgError.value == 0) {
        return true; 
    } else {
        document.getElementById("f_error").style.visibility = "visible";
        muestraError("sperror", msgError);
        return false;
    }
    
}
function mostrarEdad(campoEdad) {
    document.getElementById("edad_val").innerHTML = campoEdad.value;
}