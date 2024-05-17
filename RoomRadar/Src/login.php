<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login</title>

    <body>
        <div class="loginbox">
            <h1>Login</h1>
            <form action="" method="POST">
                <p>Username</p>
                <input type="text" name= "txtUser" placeholder="Enter Username" required>
                <p>Password</p>
                <input type="Password" name="txtPass" placeholder="Enter Password" required>
                <input type="submit" name="bttnSub" value="Login" class="login"><br>
                <a href="#">Forget your Password?</a><br>
                <a href="#">Don't have account?</a>
            </form>
        </div>
    </body>
</head>
</html>

<?php
    session_start();
    $con = mysqli_connect("localhost", "root", "", "roomradar")
        or die("Error in Connection");
    echo "Connected";

    if(isset($_POST['bttnSub'])){
		$txtUser=$_POST['txtUser'];
		$txtPass=$_POST['txtPass'];
		$sql = "SELECT user_id,password FROM useraccount WHERE user_id='$txtUser'";
		$result = mysqli_query($con,$sql);
		$count = mysqli_num_rows($result);
		
		$row = mysqli_fetch_array($result); 
		
		if($count== 0){
			echo "<script language='javascript'>
						alert('Username not existing.');
				  </script>";
		}else if($row[1] != $txtPass) {
			echo "<script language='javascript'>
						alert('Incorrect password');    
				  </script>";
		} else {
            header("Location: button.php");
            exit();
        }
	}
?>
