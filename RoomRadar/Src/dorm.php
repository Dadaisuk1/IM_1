<?php
    session_start();
    $con = mysqli_connect("localhost", "root", "", "roomradar") 
        or die("Error in Connection");

    if ($con->connect_error) {
        die("Failed to connect: " . $con->connect_error);
    }

    if (isset($_POST['bttnSubmit'])) {
        // $dormID = (int)$_POST['DormID'];
        $street = $_POST['street'];
        $bgy = $_POST['barangay'];
        $city = $_POST['city'];
        $province = $_POST['province'];
        $zipCode = $_POST['zipCode'];

        $sql = $con->prepare("INSERT INTO doorm(street, barangay, city, province, zip_code) VALUES(?, ?, ?, ?, ?)");
        $sql->bind_param("sssss", $street, $bgy, $city, $province, $zipCode);

        if ($sql->execute()) {
            echo "<script language='javascript'>
						alert('New Record Added');    
				  </script>";
        } else {
            echo "Error: " . $sql->error;
        }

        $sql->close();
        $con->close();
    } else if (isset($_POST['bttnBack'])) {
        header("Location: button.html");
        exit();
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dorm.css">
    <title>Dorm</title>
</head>
<body>
    <div class="container">
        <header>DORM REGISTER</header>
        <form action="" method="POST">
            <div class="details">
                <span class="title">Dorm Detials</span>

                <div class="fields">
                    <div class="input">
                        <label>Dorm ID</label>
                        <input type="number" name="DormID" placeholder="Enter your Dorm ID" id="dormId" disabled>
                    </div>

                    <div class="input">
                        <label>Street</label>
                        <input type="text" name="street" placeholder="Enter your Street" id="street">
                    </div>

                    <div class="input">
                        <label>Barangay</label>
                        <input type="text" name="barangay" placeholder="Enter your Barangay" id="barangay">
                    </div>

                    <div class="input">
                        <label>City</label>
                        <input type="text" name="city" placeholder="Enter your City" id="city">
                    </div>

                    <div class="input">
                        <label>Province</label>
                        <input type="text" name="province" placeholder="Enter your Province" id="province">
                    </div>

                    <div class="input">
                        <label>ZIP Code</label>
                        <input type="number" name="zipCode" placeholder="Enter your ZIP Code" id="zipCode">
                    </div>
                </div>

                <div class="buttons">
                    <div class="backBttn">
                        <button type="submit" name="bttnBack" class="backBtn">
                            <img src="img/icon/next.png" alt="icon">    
                            <span class="btnText">Back</span>
                        </button>
                    </div>

                    <div class="submitBttn">
                        <button type="submit" name="bttnSubmit" class="submitBtn">
                            <span class="btnText">Submit</span>
                            <img src="img/icon/next.png" alt="icon">
                        </button>
                    </div>
                </div>
            
            </div>
        </form>
    </div>
</body>
</html>
