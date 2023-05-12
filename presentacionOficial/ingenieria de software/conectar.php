<?php
$s="localhost";
$bd="evap";
$u="root";
$p="";
$t="curso";
$conexion=mysqli_connect($s,$u,"")or die("no se pudo conectar a la bdd");

$db = mysqli_select_db($conexion,$bd) or die("upps! no se ha conectado a la bdd");

/*
$consulta="SELECT* FROM  curso";
$resultado=mysqli_query($conexion,$consulta) or die("algo anda mal");


/*echo "<table borde='2'>";
echo "<tr>";
echo "<th>crear_curso</th>";
echo "<th>detalle_curso</th>";
echo "<th>imagen_curso</th>";
echo "</tr>";

while ($columna = mysqli_fetch_array( $resultado ))
{
 echo "<tr>";
 echo "<td>" . $columna['crear_curso'] . "</td><td>" . $columna['detalle_curso'] . "</td><td>" . $columna['imagen_curso'] . "</td>";
 echo "</tr>";

	}
echo "</table>";
*/
?>
