<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php

    //llamaremos a otro archivo php con require
    require("biblioteca.php");

    function calculaHipotenusa($cat1, $cat2){
        $hipo= sqrt(pow($cat1,2)+pow($cat2,2));
        echo"<p>La hipotenusa es $hipo</p>";
    }
    $c1=rand(1,9);
    $c2=rand(1,9);
    $calc=calculaHipotenusa($c1,$c2);
    echo"$calc";
    


    //separador de funciones

    function imprime($msg){
        echo "<h1 style='font-family: monospace'>$msg</h1>";
    }
    imprime("Este texto será imprimido por la funcion 'imprime()'");



    // Esta funcion esta alojada en otro archivo

    muestraCopyright();












    ?>

</body>
</html>