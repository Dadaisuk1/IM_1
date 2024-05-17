<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dorm Display</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font: 'Montserrat';
        }

        body {
            background-color: rgb(230, 236, 240);
            font-family: Montserrat;
            background-image: url(img/building\(1\).jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        table {
            background-color: rgba(230, 236, 240, 0.34);
            margin: 50px auto 0;
            position: flex;
            table-layout: auto;
            width: 80%;
            border-collapse: collapse;
            box-sizing: border-box;
            padding: 30px 30px;
            border-radius: 20px;
            backdrop-filter: blur(3px);
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            -ms-border-radius: 5px;
            -o-border-radius: 5px;
            font-weight: 500;
            letter-spacing: 0.8px;
            color: white;
            border-top-left-radius: 30px;
            border-top-right-radius: 30px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border: none;
        }

        th, td {
            padding: 8px;
            border-bottom: 1px solid #edecec;
            text-align: center;
            border-radius: 20px;
        }

        tr:first-child td {
            border-top: none; /* Remove top border for first row */
        }

        tr:last-child td {
            border-bottom: none; /* Remove bottom border for last row */
        }

        td:first-child {
            border-left: none; /* Remove left border for first column */
        }

        td:last-child {
            border-right: none; /* Remove right border for last column */
        }
         
        .buttons {
            display: flex;
            align-items: center;
            justify-content: center;
        }


        .backBtn {
            display: flex;
        }

        .backBttn {
            flex: 1;
        }

        .backBttn img {
            transform: scaleX(-1);
        }

        .backBtn:hover {
            background-color: #fcfcfc;
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

        form .backBttn .backBtn {
            margin: 50px 65px 0;
            align-items: center;
            justify-content: center;
            height: 45px;
            max-width: 100px;
            width: 100%;
            border-radius: 5px;
            transition: all 0.3s linear;
            color: #000000;
            cursor: pointer;
            background-color: rgba(230, 236, 240, 0.696);
        }

        form button img {
            margin: 0 6px;
        }


    </style>
    <script>
        function confirmDelete() {
            return confirm('Are you sure you want to delete this record?');
        }
    </script>
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

        if (!isset($_SESSION['user_id'])) {
            header("Location: login.php");
            exit();
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
                                <a href='delete.php? deleteid=" . $row["dorm_id"] . "' class='btnDel' onclick='return confirmDelete()'>Delete</a>
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
