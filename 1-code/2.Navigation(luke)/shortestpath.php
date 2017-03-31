
<?php
	include 'BuildAbstractedGraphfromParkinglot.php';
	
	//
	echo 'The line between point 0 and point 1 has weight: '.$weight01.'</br>';
	echo 'The line between point 1 and point 2 has weight: '.$weight12.'</br>';
	echo 'The line between point 1 and point 4 has weight: '.$weight14.'</br>';
	echo 'The line between point 2 and point 3 has weight: '.$weight23.'</br>';
	echo 'The line between point 3 and point 4 has weight: '.$weight34.'</br>';
	echo 'The line between point 4 and point 5 has weight: '.$weight45.'</br>';
	echo 'The line between point 0 and point 5 has weight: '.$weight05.'</br>';
	//multidimentional array to store matrix
	$matrix= array(
					array(       -1, $weight01,        -1,        -1,        -1, $weight05), 
					array($weight01,        -1, $weight12,        -1, $weight14,        -1),
					array(       -1, $weight12,        -1, $weight23,        -1,        -1),
					array(       -1,        -1, $weight23,        -1, $weight34,        -1),
					array(       -1, $weight14,        -1, $weight34,        -1, $weight45),
					array($weight05,        -1,        -1,        -1, $weight45,        -1),
				) ;
	$distance=array();//store the first row of the matrix, &updating according to the new nodes visit

	$visited=array();
	$preD=array();//get the actual for pop

	$min=0;
	$nextNode = 0;
	for ($i = 0; $i <6; $i++)
	{
		$visited[$i] = 0;//initialization
		$preD[$i] = 0;
		for ($j = 0; $j < 6; $j++)
		{
			
			if ($matrix[$i][$j]==-1)
			$matrix[$i][$j] = 999;
		}
	}

	 echo 'The matrix of this graph is as below(the weight 999 represent there is no connection in between two points):'.'</br>';
	for($row=0; $row<6;$row++)///print out matrix
	{
		for($col=0;$col<6; $col++)
		{
			echo $matrix[$row][$col].',';
		}
		echo '</br>';
	}
	

	$root= 0;//"Choose the origin "
	

	if ($root != 0)
	{
		for ($i = 0; $i < 6; $i++)
		{	$temp= $matrix[$i][$root]; 
			$matrix[$i][$root]	= $matrix[$i][0];
			$matrix[$i][0]=$temp;
			}
		for ($i = 0; $i < 6; $i++)
		{   $temp= $matrix[$root][$i];
			$matrix[$root][$i]= matrix[0][$i];
			$matrix[0][$i]=$temp;
			}
	}

	for ($i = 0; $i < 6; $i++)
	{$distance[$i] = $matrix[0][$i];}
	$distance[0] = 0;//initialize the first element
	$visited[0] = 1;


	
	
	//start the shortest path algorithm
	for ($x = 0; $x < 6; $x++)
	{
		$min = 999;
		for ($j = 0; $j < 6; $j++) //pick the shortest path when choose the nextnode
		{
			if ($min > $distance[$j] && $visited[$j] != 1)
			{
				$min = $distance[$j];
				$nextNode = $j;//pick the nextnode
			}
		}
		
		$visited[$nextNode] = 1;
		//actual start the algorithm

		for ($i = 0; $i < 6; $i++)
			if ($visited[$i] != 1)
			{
				if ($min + $matrix[$nextNode][$i] < $distance[$i])
				{
					$distance[$i] = $min + $matrix[$nextNode][$i];
					$preD[$i] = $nextNode;
				}
			}
	}
	
	
	for ( $i = 1; $i < 6; $i++)
	{
		if ($root != 0)
		{
			$j = $i;

			
			if ($i == $root)
				$out = 0;
			else
			{
				$out = $i;
			}
			
			echo 'Path = ' . $out;
			do{
				$j = $preD[$j];

				if ($j == 0)
				{
					$out = $root;
				
				}
				else if ($j == $root)
				{
					$out = 0;
				}
				else
				{
					$out = $j;
				}

				echo ' <- ' .$out;

			} while ($j != 0);

			echo '</br>';

			echo 'The distance is ' . $distance[$i];// output the distance for each path
			echo '</br>';

		}
		else
		{
			$j = $i;
			echo 'Path = ' . $i;
			do{
				$j = $preD[$j];
				echo ' <- '. $j;
			} while ($j != 0);

			echo '</br>';

			echo 'The distance is ' . $distance[$i];// output the distance for each path
			echo '</br>';
		}
	}
	


?>
