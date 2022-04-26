<?php
    $temper = trim(htmlspecialchars(strip_tags($_REQUEST["temper"]),ENT_QUOTES, "UTF-8"));
    $magnitud = trim(htmlspecialchars(strip_tags($_REQUEST["magnitud"]),ENT_QUOTES, "UTF-8")); 

    if ($temper != "") {
        if ($magnitud == "farenheit") {
            $res= ($temper*1.8)+32;
            if ($res< -459.67) {
                print "El valor $res se encuentra por debajo del 0 absoluto";
            } else {
                print "<p>$temper en $magnitud es igual a $res ºF</p>";
            }
        }    
    
    
    
    
    
    
    
    
    
    
    
    
    
    } else {
        print "<p>Introduzca una temperatura</p>"
    }
    

?>