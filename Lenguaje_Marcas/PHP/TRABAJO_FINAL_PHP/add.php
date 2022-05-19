<?php
$conexion = mysqli_connect("localhost", "root", "usuario.1234", "proyectophp") or die("Problemas de Conexión");

$mision = trim(htmlspecialchars($_REQUEST["mision"], ENT_QUOTES, "UTF-8"));
$nave = trim(htmlspecialchars($_REQUEST["nave"], ENT_QUOTES, "UTF-8"));
$fecha = trim(htmlspecialchars($_REQUEST["fecha"], ENT_QUOTES, "UTF-8"));

$comandante = trim(htmlspecialchars($_REQUEST["comandante"], ENT_QUOTES, "UTF-8"));
$nacion = trim(htmlspecialchars($_REQUEST["nacion"], ENT_QUOTES, "UTF-8"));
$edad = trim(htmlspecialchars($_REQUEST["edad"], ENT_QUOTES, "UTF-8"));



$sqlA="INSERT INTO integrantes(nom_ape,nacion,edad) VALUES ('$comandante','$nacion','$edad');
       INSERT INTO mision(nombre,vehiculo,fecha_inicio,ID_tripulante) SELECT ('$mision','$nave','$fecha',NULL);";

mysqli_multi_query($conexion, $sqlA) or die("Error en el insert del Integrante: ".mysqli_error($conexion));
mysqli_close($conexion);
print "<h2>Mision registrada con exito!</h2>"
?>