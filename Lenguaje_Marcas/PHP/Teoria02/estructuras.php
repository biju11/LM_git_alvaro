<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teoría02</title>

    <style>
        .azul{
            color: royalblue;
        }
        .rojo{
            color: red;
        }
        .verde{
            color: green;
        }
        table{
            border: 3px solid black;
        }
    </style>
</head>
<body>
<?php
    $aleatorio=rand(1,10);
    if ($aleatorio < 5) {
        echo "<p class='azul'> El Valor $aleatorio es menor que 5 </p>";
    } else if ($aleatorio > 5) {
        echo "<p class='rojo'> El Valor $aleatorio es mayor que 5 </p>";
    } else {
        echo "<p class='verde'>El valor $aleatorio coincide con 5</p>";
    }

    for ($i=6; $i >0 ; $i--) {
        echo"$i </br>";
       }

    $fil= rand(1,3);
    echo "<p>$fil filas</p>";
    $col= rand(1,5);
    echo "<p>$col columnas</p>";
    echo "<table>";
    for ($j=0; $j < $fil; $j++) {
        echo"<tr>";
        for ($k=0; $k < $col; $k++) {
            echo "<td>$j-$k</td>";
        } echo "</tr>";
    }
    echo"</table>";


?>
</body>
</html>