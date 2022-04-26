<?php 
  $pies = trim(htmlspecialchars(strip_tags($_REQUEST["pies"]),ENT_QUOTES, "UTF-8"));
  $inch = trim(htmlspecialchars(strip_tags($_REQUEST["inch"]),ENT_QUOTES, "UTF-8")); 


  if (empty($pies)||empty($inch)) {
    print "<p>Los campos estan INCOMPLETOS</p>";
  } else if ($pies <= 0 || $inch <=0) {
    print "<p>Alguno de los campos es menor que 0</p>";
  } else {
    $result=($pies*12+$inch)*2.54;
    print "El resultado es: " . "<br>" . $result . " " . "Centímetros";
  }
?>