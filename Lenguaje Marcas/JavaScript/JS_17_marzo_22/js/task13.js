function calc() {
    var nom = document.getElementById("prod").value;
    var price = parseInt(document.getElementById("price").value);
    var iva = document.getElementById("iva").value;
    alert(iva);
    var res = (iva * price)/100;
    var total = price + res;   
    document.getElementById("resul").innerHTML = "el producto "+nom+ " cuesta un total de: "+ total;
}