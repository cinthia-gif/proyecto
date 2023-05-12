<?php
/*session_start();
if(!isset($_SESSION["user_id"])){
  header("location:login.php");
}*/
include "connection.php";
$id="";
if (isset($_GET["id"])) {
  $id=mres($con,$_GET["id"]);
}
else{
  header("location:menu.php");
}
/*if(isset($_GET["id"]) && isset($_GET["sub_category_id"])){
  $qs=mysqli_query($con,"select * from table_study where category_id='".mres($con,$_GET["id"])."'and sub_category_id='".mres($con,$_GET["sub_category_id"])."'");
  if(mysqli_num_rows($qs)==0){
    $qi=mysqli_query($con,"insert into table_study values ('','".mers($con,$_SESSION["user_id"])."','".mres($con,$_GET["id"])."','".mres($con,$_GET["sub_category_id"])."')");
  }
}*/
?>

<?php
include "header.php";
 ?>  
 
    <div class="row" >
      <div class="col-lg-3" style="padding-left: 0px;">
        <ul class="nav nav-pills nav-stacked">
          <li class="active"><a href="">
            <?php
            $qc=mysqli_query($con,"select category_name, category_image from table_category where category_id='".$id."'" );
            $rc= mysqli_fetch_array($qc,MYSQLI_NUM);
            echo "<h4>".$rc[0]."</h4>";
            echo "<img src='images/lectures/".$rc[1]."' class='img-responsive' style='width:100%'/>";
            ?>


          </a></li>
          <?php
          $ql=mysqli_query($con,"select * from table_sub_category where category_id='".$id."' order by sub_category_id asc");
          while ($rl=mysqli_fetch_array($ql,MYSQLI_ASSOC)) {
            echo '<li><a href="?id='.$id.'&sub_category_id='.$rl["sub_category_id"].'">'.$rl["sub_category_name"].'</a></li>' ;
          }
          echo '<li><a href="exam.php?exam_id='.$id.'">Examen del Curso</a></li>';
          ?>
         
        </ul>   
      </div>
      <div class="col-lg-9">
        <?php 
        if (isset($_GET["sub_category_id"])) {
          $ql=mysqli_query($con, "select * from table_lecture where sub_category_id='".$_GET["sub_category_id"]."'");
        }else{
          $ql=mysqli_query($con, "select * from table_lecture inner join table_sub_category on table_lecture.sub_category_id = table_sub_category.sub_category_id where table_sub_category.category_id = '".$id."' and table_sub_category.sub_category_order=1");
        }
        while ($row=mysqli_fetch_array($ql, MYSQLI_ASSOC)) {
          echo $row["lecture_content"];
        }
        ?>
      </div>
    </div>
    <?php include"footer.php"; ?>
</div>
</body>
</html>