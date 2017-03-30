<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Manager Panel</title>
</head>
<style>
    body {
        margin: 0px;
        border: 0px;
    }
    
    #header {
        width: 1004;
        height: 120px;
        background: black;
        color: white;
    }
    
    #sidebar {
        width: 300px;
        height: 600px;
        background: #9e9e9e;
        float: left;
    }
    
    #data {
        height: 800px;
        background: #607d8b;
        color: black;
        font-family: inherit;
        font-size: 25px;
    }
    
    #adminlogo {
        background: white;
        border-radius: 50px;
        height: 80px;
        width: 80px;
        margin-top: 20px;
    }
    
    ul li {
        padding: 20px;
        border-bottom: 2px solid grey;
    }
    
    ul li:hover {
        background: #9e9e9e;
        color: white;
    }
</style>

<body>
    <div id="header">
        <a href="manager.php">
            <center><img src="pics/User-icon.png" alt="adminlogo" id="adminlogo">
                <br>Manager logged in </center>
        </a>
    </div>
    <div id="sidebar">
        <ul>
            <a href="setSystem.php" style="color:black">
                <li>Set System</li>
            </a>
            <a href="selectSpot.php" style="color:black">
                <li>Set Spots</li>
            </a>
            <a href="findUser.php" style="color:black">
                <li>Find User</li>
            </a>
            <a href="graph.php" style="color:black">
                <li>Data Graph</li>
            </a>
            <a href="add.php" style="color:black">
                <li>Add User</li>
            </a>
        </ul>
    </div>
    <div id="data"> Adding User:
        <form action="add.php" method="POST"> User Name:
            <input style="text" name="name">
            <br> Plate Number:
            <input style="text" name="plate">
            <br> Password:
            <input style="text" name="pass">
            <br>
            <input type="submit" name="submit" value="Submit"> </form>
        
        <?php
            include 'connection.php';
            ?>
            <br>
            <br>
        
        
            <?php
            if (!empty($_POST['submit']))
            {
                $name=$_POST['name'];
                $plate=$_POST['plate'];
                $pass=$_POST['pass'];
                if (!empty($name) && !empty($plate) && !empty($pass))
                {
                $result = mysqli_query($conn,"INSERT INTO `users` (`user_id`, `username`, `plateNum`, `password`, `role`, `billing`) VALUES (NULL,'$name', '$plate','$pass','user', '0')");    
                if($result)
                {
                    echo "user added.";
                }else{
                    echo "failed to add the user.";
                }
                }
            }
            
            
            
        ?>
    </div>
</body>

</html>