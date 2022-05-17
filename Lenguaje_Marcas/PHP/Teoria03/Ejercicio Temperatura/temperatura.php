<?php
    $temper = trim(htmlspecialchars(strip_tags($_REQUEST["temper"]),ENT_QUOTES, "UTF-8"));
    $magnitud = trim(htmlspecialchars(strip_tags($_REQUEST["magnitud"]),ENT_QUOTES, "UTF-8")); 
    $res="";
    if ($temper != "") {
        if ($magnitud == "F") {
            $res=($temper*1.8)+32;
            if ($res< -459.67) {
                print "El valor $res se encuentra por debajo del 0 absoluto";
            } else {
                print "<p>$temper ºC es igual a $res ºF</p>";
            }
        }

        if ($magnitud == "C") {
            $res=(($temper-32)*0.56);
            if ($res < -273) {
                print "<p>El Valor $res se encuentra por debajo del 0 absoluto</p>";
            } else {
                print "<p>$temper ºF es igual a $res ºC</p>";
            }
        } 
    
    
    
    } else {
        print "<p style='color:red;font-weight:bold;'>Introduzca una temperatura</p>";
    }
    

?>