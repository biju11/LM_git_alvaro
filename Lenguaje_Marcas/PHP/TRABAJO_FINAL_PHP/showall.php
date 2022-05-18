<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta a toda la Base de Datos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

</body>
</html>


<?php
                    $conexion = mysqli_connect("localhost", "root", "usuario.1234", "proyectophp") 
                                    or die("Problemas de Conexión");

                    $sql = "SELECT mision.nombre, mision.vehiculo, mision.fecha_inicio,integrantes.nom_ape,integrantes.nacion,integrantes.edad FROM mision,integrantes WHERE mision.ID_tripulante=INTEGRANTES.ID_tripulante ORDER BY 3 asc";

                    $registros = mysqli_query($conexion, $sql) 
                            or die("Problemas en select:".mysqli_error($conexion));


                            
                    echo "<table class='table table-dark table-hover'>";
                    echo "<thead><th>Nombre de Mision</th><th>Vehiculo</th><th>Fecha de Inicio</th><th>Nombre del Integrante</th><th>Nacion de Origen</th><th>Edad Actual</th></thead>";                        
                    while ($reg=mysqli_fetch_array($registros)) {
                        echo "<tr>";
                        
                        echo "<td>" . $reg['nombre'] . "</td>";
                        echo "<td>" . $reg['vehiculo'] . "</td>";
                        echo "<td>" . $reg['fecha_inicio'] . "</td>";
                        echo "<td>" . $reg['nom_ape'] . "</td>";
                        echo "<td>" . $reg['nacion'] . "</td>";
                        echo "<td>" . $reg['edad'] . "</td>";        
                        echo "</tr>";
                    }
                    echo "</table>";
                    echo "<a href='index.html' class='btn btn-outline-dark text-decoration-none'>Volver a Inicio</a>";
        
                    mysqli_close($conexion);
?>