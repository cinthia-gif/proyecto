 <?php

if(isset($_POST['registrar'])){

    include('conectar.php');

 $ncurso=$_REQUEST['ncurso'];
 $descripcion=$_REQUEST['descripcion'];
 $foto=$_FILES['foto']['name'];
 $conexion->query("INSERT INTO $t(nombre,detalle,foto)values('$ncurso','$descripcion','$foto')");
 include('cerrar.php');

}
?>
