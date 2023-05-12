<?php
ob_start();
session_start();
require_once 'config.php';
if(!isset($_SESSION['logged_in'])){
  header('Location: index.php');
}
?>
<html lang="en">
<head>
  <title>Fast Learning</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="css/custom.css">


   

   

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>





<body>

  
<div class="container">
    <div class="row" style="display: flex;align-items: center;">
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <img src="images/eva2.png" class="img-responsive" >
      </div>
      <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12" style="text-align: right">
        Bienvenido a la Plataforma &#128512;
      </div> 
    </div>
    <div class="row">
   <nav class="navbar navbar-default">
   <div class="container-fluid">
    
    <ul class="nav navbar-nav">

      <li class="active"><a href="menu.php">Pagina Principal</a></li>
     <?php
     $qry_top=mysqli_query($con, "select * FROM table_top_category order by top_category_order asc");
     while ($rt=mysqli_fetch_array($qry_top,MYSQLI_ASSOC) ){
      $top_id=$rt["top_category_id"];
      echo '<li class="dropdown">';
      echo '<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">' .$rt["top_category_name"].
      '<span class="caret"></span></a>';
     /* echo '
              <ul class="dropdown-menu">
              <li><a href="#">page1</a></li>
              <li><a href="#">page1</a></li>
               </ul>

      </li>';*/
      echo '<ul class="dropdown-menu">';
        $qry_cat = mysqli_query($con, "select * from table_category where top_category_id='".$top_id."' order by category_order asc");
        while ($rc=mysqli_fetch_array($qry_cat,MYSQLI_ASSOC)) {
          echo '<li><a href="lecture.php?id='.$rc['category_id'].'">'.$rc["category_name"].'</a></li>';
        }
      echo '</ul></li>';
     }
     ?> 
     
    </ul>
      <div class="collapse navbar-collapse">


        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">


            <?php if($_SESSION['logged_in']) { ?>
              <?php echo $_SESSION['name']; ?>
              <span class="caret"></span>
            </a>
            <ul role="menu" class="dropdown-menu">
              <li> <a href="account.php">Mi cuenta</a> </li>
              <li class="divider"></li>
              <li> <a href="logout.php">Salir</a> </li>
            </ul>
            <?php } ?>
          </li>

        </ul>
      </div>
  </div>
 </nav>
 </div>