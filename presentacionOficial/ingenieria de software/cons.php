<?php

if(isset($_POST['registrar'])){
  echo "regisrado";
    include('conectar.php');

 $ncurso=$_REQUEST['ncurso'];
 $descripcion=$_REQUEST['descripcion'];
 $nombreimg=$_FILES['foto']['name'];
 $archivo=$_FILES['foto']['tmp_name'];
 $ruta="imgcurso";
$ruta=$ruta."/".$nombreimg;
 move_uploaded_file($archivo, $ruta);
$conexion->query("INSERT INTO $t(nombre,detalle,foto)values('$ncurso','$descripcion','$ruta')");
 if ($conexion) {
 	echo "registrado correctamente";
 }else{
 	echo "Error al insertar";
 }
 include('cerrar.php');
echo "regisrado";
}
?>
