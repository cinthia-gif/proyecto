<?php 
$s="localhost";
$bd="nariths_learn";
$u="root";
$p="";

$con=mysqli_connect($s,$u,$p,$bd)or die("no se pudo conectar a la bdd");

function mres($con, $data){
       
        return mysqli_real_escape_string($con,rtrim(ltrim($data)));
    }

?>