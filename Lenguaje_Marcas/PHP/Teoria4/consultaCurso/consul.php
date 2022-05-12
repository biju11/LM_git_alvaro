<?php
            $credents = mysqli_connect("localhost","root","usuario.1234","cursophp") or die("Problemas de Conexion");
            $opcion = $_POST['sel'];
            echo"$opcion";
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