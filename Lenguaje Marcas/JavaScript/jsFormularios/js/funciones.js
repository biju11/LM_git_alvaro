function validar(campo) {
    //var nombre = document.getElementById("nombre");
    //alert(nombre.value);




    // "|| es OR "
    // "&& es AND " 
    if (campo.value == null || campo.value == "" || campo.value.lenght == 0) {
        campo.style="border: 2px solid red";
        campo.focus();
    } else {
        campo.style= ""; 
    }
}