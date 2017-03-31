<?php
	include 'connection.php';
	
	//The system divides the parking lots into 6 pieces by separating the spot_id numbers, and each piece of parking lots is close to a specific joint.
	
	$con=10;//$con represents the number of spots of each piece of the parking lot.
	

	//The logic here is that if a joint has anyone nearby at that time that the system requests the navigation, the joint has the corresponding weights on itself.
	
	$query0= "SELECT COUNT(*) as weight FROM reservations 
	WHERE 
	(
		(Now() < DATE_ADD(beginTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(beginTime, INTERVAL 5 MINUTE)) 
		OR 
		(Now() < DATE_ADD(endTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(endTime, INTERVAL 5 MINUTE))
	)
	AND
	spot_id<$con";
	
	$query1= "SELECT COUNT(*) as weight FROM reservations 
	WHERE 
	(
		(Now() < DATE_ADD(beginTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(beginTime, INTERVAL 5 MINUTE)) 
		OR 
		(Now() < DATE_ADD(endTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(endTime, INTERVAL 5 MINUTE))
	)
	AND
	spot_id<(2*$con)AND spot_id>=$con";
	
	$query2= "SELECT COUNT(*) as weight FROM reservations 
	WHERE 
	(
		(Now() < DATE_ADD(beginTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(beginTime, INTERVAL 5 MINUTE)) 
		OR 
		(Now() < DATE_ADD(endTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(endTime, INTERVAL 5 MINUTE))
	)
	AND
	spot_id<(3*$con)AND spot_id>=(2*$con)";
	
	$query3= "SELECT COUNT(*) as weight FROM reservations 
	WHERE 
	(
		(Now() < DATE_ADD(beginTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(beginTime, INTERVAL 5 MINUTE)) 
		OR 
		(Now() < DATE_ADD(endTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(endTime, INTERVAL 5 MINUTE))
	)
	AND
	spot_id<(4*$con)AND spot_id>=(3*$con)";
	
	$query4= "SELECT COUNT(*) as weight FROM reservations 
	WHERE 
	(	
		(Now() < DATE_ADD(beginTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(beginTime, INTERVAL 5 MINUTE)) 
		OR 
		(Now() < DATE_ADD(endTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(endTime, INTERVAL 5 MINUTE))
	)
	AND
	spot_id<(5*$con)AND spot_id>=(4*$con)";
	
	$query5= "SELECT COUNT(*) as weight FROM reservations 
	WHERE 
	(
		(Now() < DATE_ADD(beginTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(beginTime, INTERVAL 5 MINUTE)) 
		OR 
		(Now() < DATE_ADD(endTime, INTERVAL 5 MINUTE) AND Now() > DATE_SUB(endTime, INTERVAL 5 MINUTE))
	)
	AND
	spot_id<(6*$con)AND spot_id>=(5*$con)";
	
	
	$response0 = @mysqli_query($conn, $query0);
	$response1 = @mysqli_query($conn, $query1);
	$response2 = @mysqli_query($conn, $query2);
	$response3 = @mysqli_query($conn, $query3);
	$response4 = @mysqli_query($conn, $query4);
	$response5 = @mysqli_query($conn, $query5);


	if($response0)
	{
		$num0=mysqli_fetch_assoc($response0);
	}
	if($response1)
	{
		$num1=mysqli_fetch_assoc($response1);
	}
	if($response2)
	{
		$num2=mysqli_fetch_assoc($response2);
	}
	if($response3)
	{
		$num3=mysqli_fetch_assoc($response3);
	}
	if($response4)
	{
		$num4=mysqli_fetch_assoc($response4);
	}
	if($response5)
	{
		$num5=mysqli_fetch_assoc($response5);
		//echo $num5['weight'].'<br />';
	}
	
	//For the lines connecting the joints, they have the weights obtained by summing the weights of those two joints.
	
	$weight01=$num0['weight']+$num1['weight'];//for example, $weight01 is the weight of the line between joint 0 and joint 1
	$weight05=$num0['weight']+$num5['weight'];
	$weight12=$num1['weight']+$num2['weight'];
	$weight14=$num1['weight']+$num4['weight'];
	$weight23=$num2['weight']+$num3['weight'];
	$weight34=$num3['weight']+$num4['weight'];
	$weight45=$num4['weight']+$num5['weight'];
	
	//echo $weight12;
?>