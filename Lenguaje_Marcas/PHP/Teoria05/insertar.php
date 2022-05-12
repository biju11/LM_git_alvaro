<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Teoria05</title>
</head>
<body>
    <div class="container">
        <h2>Inserte Estudiante</h2>
        <?php
    $credents = mysqli_connect("localhost","root","usuario.1234","cursophp") or die("Problemas de Conexion");

    $nombre = trim(htmlspecialchars(strip_tags($_REQUEST["nombre"]),ENT_QUOTES, "UTF-8"));
    $mail = trim(htmlspecialchars(strip_tags($_REQUEST["mail"]),ENT_QUOTES, "UTF-8"));
    $idcurso = trim(htmlspecialchars(strip_tags($_REQUEST["curso"]),ENT_QUOTES, "UTF-8"));

    $sql = "INSERT INTO alumnos(nombre,mail,codigoCurso) VALUES ('$nombre','$mail',$idcurso)";

    mysqli_query($credents,$sql) or die ("Problemas en el Insert: ".mysqli_error($credents));
    mysqli_close($credents);

?>
    </div>
</body>
</html>

