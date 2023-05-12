<?php
include "connection.php";
include "header.php"
?>
	<div class="row">
		<div class="panel panel-default">
  			<div class="panel-heading">Top de Cursos Disponibles</div>
  			<div class="panel-body">
  				<div class="row">
				<?php 
				$qry=mysqli_query($con, "select * from table_category order by category_id desc limit 6");
				while ($row=mysqli_fetch_array($qry, MYSQLI_ASSOC)) {
					echo "<div class='col-lg-2 col-md-2 col-sm-4 col-xs-4'><a href='lecture.php?id=".$row["category_id"]."'><img class='img-thumbnail' src='images/lectures/".$row["category_image"]."'style='width:100%;'/><br/><h4 style='text-align:center;'>".$row["category_name"]."</h4></a></div>";
				}
				?>
				</div>
  			</div>
		</div>
	</div>  
	<div class="row">
		<div class=" col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-left:0px; padding-left:0px;">
		<div class="panel panel-default">
  			<div class="panel-heading">Todos los Cursos Disponibles</div>
  			<div class="panel-body">
				<?php 
				$qry=mysqli_query($con, "select * from table_category order by category_id desc");
				echo "<ul>";
				while ($row=mysqli_fetch_array($qry, MYSQLI_ASSOC)) {
					
					echo "<li><a href='lecture.php?id=".$row["category_id"]."'>".$row["category_name"]."</a></li>";
				}
				echo "<ul>";
				?>
  			</div>
		</div>
		</div>

		<div class=" col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-right:0px; padding-right:0px;">
		<div class="panel panel-default">
  			<div class="panel-heading">Areas de Aprendizaje</div>
  			<div class="panel-body">
				<?php 
				$qry=mysqli_query($con, "select * from table_top_category order by top_category_id desc");
				echo "<ul>";
				while ($row=mysqli_fetch_array($qry, MYSQLI_ASSOC)) {
					
					echo "<li>".$row["top_category_name"]."</li>";
				}
				echo "<ul>";
				?>
  			</div>
		</div>
		</div>
	</div>  
	<?php include"footer.php" ?>
</div>

</body>
</html>
