<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Dorm Display</title>
    <style>
        .buttons {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .buttons a {
            margin: 10px;
            display: block;
            text-decoration: none;
            width: 80px;
            color: white;
            letter-spacing: 1px;
            border: 2px solid;
            border-radius: 20px;
            cursor: pointer;
            transition: color 0.3s, border-color 0.3s;
        }


        .btnUpdate:hover {
            border-color: black;
            color: black;
        }

        .btnDel:hover {
            border-color: black;
            color: black;
        }

    </style>
</head>
<body>
    <form action="button.php" method="POST">
        <div class="backBttn">
            <button type="submit" name="bttnBack" class="backBtn">
                <img src="img/icon/next.png" alt="icon">    
                <span class="btnText">Back</span>
            </button>
        </div>
    </form>
    
    <?php
        session_start();
        $con = mysqli_connect("localhost", "root", "", "roomradar") 
            or die("Error in connection");
        
        if ($con->connect_error) {
            die("Failed to connect: " . $con->connect_error);
        }

        $sql = "SELECT * FROM dorm ORDER BY CAST(dorm_id AS UNSIGNED)";
        $result = $con->query($sql);

        if ($result->num_rows > 0) {
            echo "
                    <table border='1'>
                        <tr>
                            <td>Dorm ID</td>
                            <td>Street</td>
                            <td>Barangay</td>
                            <td>City</td>
                            <td>Province</td>
                            <td>ZIP Code</td>
                            <td>Actions</td>
                        <tr>";
        
            while ($row = $result->fetch_assoc()) {
                echo "
                    <tr>
                        <td>" . $row["dorm_id"] . "</td>
                        <td>" . $row["street"] . "</td>
                        <td>" . $row["barangay"] . "</td>
                        <td>" . $row["city"] . "</td>
                        <td>" . $row["province"] . "</td>
                        <td>" . $row["zip_code"] . "</td>
                        <td>
                            <div class='buttons'>
                                <a href='update.php?updateid=" . $row["dorm_id"] . "' class='btnUpdate'>Update</a>
                                <a href='delete.php?deleteid=" . $row["dorm_id"] . "' class='btnDel'>Delete</a>
                            </div>
                        </td>
                    </tr>";
        }
        echo "</table>";
        } else {
            echo "No rooms found.";
        }
    
        if (isset($_POST['bttnBack'])) {
            header("Location: button.php");
            exit();
        }
        $con->close();
    ?>
</body>
</html>
