<?php

$mision = trim(htmlspecialchars($_REQUEST["n_mision"], ENT_QUOTES, "UTF-8"));
$nave = trim(htmlspecialchars($_REQUEST["nave"], ENT_QUOTES, "UTF-8"));
$fecha = trim(htmlspecialchars($_REQUEST["fecha"], ENT_QUOTES, "UTF-8"));

$comandante = trim(htmlspecialchars($_REQUEST["comandante"], ENT_QUOTES, "UTF-8"));
$nacion = trim(htmlspecialchars($_REQUEST["nacion"], ENT_QUOTES, "UTF-8"));
$edad = trim(htmlspecialchars($_REQUEST["edad"], ENT_QUOTES, "UTF-8"));

$conexion = mysqli_connect("localhost", "root", "usuario.1234", "proyectophp") or die("Problemas de Conexión");
$sql = "INSERT INTO integrantes(nom_ape, nacion, edad,ID_tripulante) VALUES ('$comandante','$nacion','$edad',NULL)";
mysqli_query($conexion, $sql) or die("Error en el insert del Integrante: ".mysqli_error($conexion));
$sql = "INSERT INTO mision(nombre,vehiculo,fecha_inicio,ID_tripulante) SELECT ('$mision','$nave','$fecha',integrantes.ID_tripulante) FROM integrantes WHERE nom_ape LIKE '%$comandante%'";
mysqli_query($conexion, $sql) or die("Error en el insert de la Mision: ".mysqli_error($conexion));
mysqli_close($conexion);


print "<h2>Mision registrada con exito!</h2>"
?>