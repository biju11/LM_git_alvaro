<?php
    //
    $nombre = trim(
        htmlspecialchars(
        strip_tags($_REQUEST["nombre"]),
        ENT_QUOTES, "UTF-8"));


    print "Su nombre es " . $_REQUEST["nombre"] . "<br>";
    print_r($_REQUEST);
    print_r($_FILES);

    if (isset($_REQUEST["opc"])){
        print "ha marcado la opcion 1";
    }





?>