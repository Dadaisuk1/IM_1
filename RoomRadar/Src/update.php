<?php
    session_start();
    $con = mysqli_connect("localhost", "root", "", "roomradar") 
        or die("Error in Connection");
    
    if ($con->connect_error) {
        die("Failed to connect: " . $con->connect_error);
    }

    if (!isset($_SESSION['user_id'])) {
        header("Location: login.php");
        exit();
    }

    // Check if the updateid parameter is set
    if (isset($_GET['updateid'])) {
        $dormID = $_GET['updateid'];
        $sql = "SELECT * FROM `dorm` WHERE dorm_id = '$dormID'";
        $result = mysqli_query($con, $sql);

        if ($result) {
            $row = mysqli_fetch_assoc($result);
            $dormID = $row['dorm_id'];
            $street = $row['street'];
            $bgy = $row['barangay'];
            $city = $row['city'];
            $province = $row['province'];
            $zipCode = $row['zip_code'];
        } else {
            echo "Error: " . $con->error;
        }
    }

    if (isset($_POST['bttnSubmit'])) {
        $dormID = $_POST['dormId'];
        $street = $_POST['street'];
        $bgy = $_POST['barangay'];
        $city = $_POST['city'];
        $province = $_POST['province'];
        $zipCode = $_POST['zipCode'];
    
        $sql = "UPDATE `dorm` SET dorm_id = '$dormID', street = '$street', barangay = '$bgy', city = '$city', province = '$province', zip_code = '$zipCode' WHERE dorm_id = '$dormID'";
        $result = mysqli_query($con, $sql);
        
        if ($result) {
            echo "<script>alert('Update Successfully');</script>";
            header("Location: display.php");
            exit();
        } else {
            echo "Error: " . $con->error;
        }
    } else if (isset($_POST['bttnBack'])) {
        header("Location: display.php");
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
                        <input type="text" name="dormId" value="<?php echo $dormID;?>" readonly>
                    </div>

                    <div class="input">
                        <label>Street</label>
                        <input type="text" name="street" placeholder="Enter your Street" id="street" autocomplete="off" value="<?php echo $street;?>">
                    </div>

                    <div class="input">
                        <label>Barangay</label>
                        <input type="text" name="barangay" placeholder="Enter your Barangay" id="barangay" autocomplete="off" value="<?php echo $bgy;?>">
                    </div>

                    <div class="input">
                        <label>City</label>
                        <input type="text" name="city" placeholder="Enter your City" id="city" autocomplete="off" value="<?php echo $city;?>">
                    </div>

                    <div class="input">
                        <label>Province</label>
                        <input type="text" name="province" placeholder="Enter your Province" id="province" autocomplete="off" value="<?php echo $province;?>">
                    </div>

                    <div class="input">
                        <label>ZIP Code</label>
                        <input type="number" name="zipCode" placeholder="Enter your ZIP Code" id="zipCode" autocomplete="off" value="<?php echo $zipCode;?>">
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
                            <span class="btnText">Update</span>
                            <img src="img/icon/next.png" alt="icon">
                        </button>
                    </div>
                </div>
            
            </div>
        </form>
    </div>
</body>
</html>
