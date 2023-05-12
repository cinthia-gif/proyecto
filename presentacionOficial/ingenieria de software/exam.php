<?php
/*session_start();
if(!isset($_SESSION["user_id"])){
  header("location:login.php");
}*/
include "connection.php";
$exam_id="";

if (isset($_GET["exam_id"])) {
  $exam_id=mres($con,$_GET["exam_id"]);
}
else{
  header("location:menu.php");
}


?>

<?php
include "header.php";
 ?>  
 
    <div class="row" >
      <div class="col-lg-3" style="padding-left: 0px;">
        <ul class="nav nav-pills nav-stacked">
          <li class="active"><a href="">
            <?php
            $qc=mysqli_query($con,"select category_name, category_image from table_category where category_id='".$exam_id."'" );
            $rc= mysqli_fetch_array($qc,MYSQLI_NUM);
            echo "<h4>".$rc[0]."</h4>";
            echo "<img src='images/lectures/".$rc[1]."' class='img-responsive' style='width:100%'/>";
            ?>


          </a></li>
          
         
        </ul>   
      </div>
      <div class="col-lg-9">
        <?php

            if (isset($_POST["btn_exam"])){
            
            $total=0;
            echo "<h3>Resultados</h3>";
            $count=0;
           

            $qa=mysqli_query($con,"select * from table_exam where category_id='".$_GET["exam_id"]."'");
            echo '<table class="table table-bordered table-hover">';
            echo '<thead><tr><th>#</th><th> Tu respuesta</th><th> Respuesta Correcta</th><th>Resultado</th></tr> </thead>';
            echo '<tbody>';
            while ($row=mysqli_fetch_array($qa,MYSQLI_ASSOC)) {
                $count++;
               
                    if($_POST["r_".$count]==$row["answer"]){
                        $total++;
                    echo "<tr class='success'><td>".$count."</td><td>".$_POST["r_".$count]."</td><td>".$row["answer"]."<td>
                    <span class='glyphicon glyphicon-ok text-success' aria-hidden='true'></span></td></tr>";
                    
                    }

                    if($_POST["r_".$count]!=$row["answer"]){
                    echo "<tr class='danger'><td>".$count."</td><td>".$_POST["r_".$count]."</td><td>".$row["answer"]."<td>
                    <span class='glyphicon glyphicon-remove text-danger' aria-hidden='true'></span></td></tr>";
                    
                    }
                }
                echo '</tbody></table>';
                if(($total/$count)>=0.5){
                    echo '<div class="alert alert-success"> <h3>Felicidades !!! &#128521; Pasaste el Curso </h3> </div>';
                } 
                else {
                     echo '<div class="alert alert-danger"> <h3>Que Triste !!! &#128546; Reprobaste el Curso <small> Tu debes estudiar mejor, para aprobar necesitas el 50% </small></h3></div>';
                }
            }
        ?>
            
        <center><h2>"Examen de Rendimiento"</h2></center>
        <form id="form_exam" action='<?php echo $_SERVER["PHP_SELF"]."?exam_id=".$exam_id;?>' method="post">
        <?php 
        
        $ql=mysqli_query($con,"select * from table_exam
        where category_id='".$exam_id."'");
        $count=0;
        
        while ($row=mysqli_fetch_array($ql,MYSQLI_ASSOC)) {
          $count++;
          echo "<p>".$row["exam_content"]."</p>";
          echo "<ul style='list-style-type:none;'>";
         
            echo '<li><input type="radio" name="r_'.$count.'" value="a"/>'.$row["a"].'</li>';
            echo '<li><input type="radio" name="r_'.$count.'" value="b"/>'.$row["b"].'</li>';
            echo '<li><input type="radio" name="r_'.$count.'" value="c"/>'.$row["c"].'</li>';
            echo '<li><input type="radio" name="r_'.$count.'" value="d"/>'.$row["d"].'</li>';
         
            echo "</ul>";
        }
        
        ?>
        <input type="submit" name="btn_exam" id="btn_exam" value="Finish" class="btn btn-success"/>
        <br/> <br/>
        </form>
      </div>
    </div>
    <?php include"footer.php"; ?>
</div>
</body>
</html>