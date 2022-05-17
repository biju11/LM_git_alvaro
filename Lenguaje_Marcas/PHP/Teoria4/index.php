<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta Alumnos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>Consultas a la Base de Datos</h1>
        <hr>
        <br>
        <br>
            <?php
            $credents = mysqli_connect("localhost","root","usuario.1234","cursophp") or die("Problemas de Conexion");

            $sql = "SELECT idAlumno, nombre, mail, codigocurso FROM alumnos";
            $registros = mysqli_query($credents,$sql) or die("Problema en la consulta " . mysqli_error($credents));


            echo"<table class='table table-stripped'>";
            echo"<thead><th>ID Alumno</th><th>Nombre del Alumno</th><th>E-Mail</th></thead>";
            while ($reg=mysqli_fetch_array($registros)){
                echo "<tr>";
                echo "<td>".$reg['idAlumno']."</td>";
                echo "<td>".$reg['nombre']."</td>";
                echo "<td>".$reg['mail']."</td>";
                echo "</tr>";
            }
            echo"</table>";
            ?>
    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>