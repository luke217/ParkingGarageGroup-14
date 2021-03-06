<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Superlot</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

 <body>
 <?php
  session_start();
  include('../garage/connect/dbconnect.php');
  ?>
 <div class="container">


     

      <!-- Main component for a primary marketing message or call to action -->
	  <?php
	  include('../garage/navbar.php');
	  ?>
	<div  class="jumbotron">
	<h3>Spots occupancy of Current Time</h3>
	 <?php
	  $size = mysqli_fetch_assoc(mysqli_query($dbconnect,"SELECT Count(*) as size FROM spots "))['size'];
	  
	  $rowSize =10;
	  $columSize = $size/10;
	  
	  $states = mysqli_query($dbconnect,"SELECT state FROM spots ");

	  ?>
	  <Table>
	  <?php
	  for($i=0;$i<$rowSize;$i++){
		?>
		<tr><?php		
		  for($j=0;$j<$columSize;$j++){
		?>
		<td>
			  <button type="button" style='min-height:30px 'class="btn btn-<?php 
			  if(mysqli_fetch_assoc($states)['state']){
				  echo'danger';
			  }  
			  else
			  {echo'success';
			  } 
			  ?>"></button>
			 
			
		</td><?php		  
		  }
		  
		?>
		</tr><?php
	  }
		  
	  ?>
	  </Table>
      </div>
    </div> <!-- /container -->

	<!--
    <div class="container">
     Example row of columns
      <div class="row">
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>

      

      <footer>
        <p>&copy; 2016 Company, Inc.</p>
      </footer>
    </div> <!-- /container -->

 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
