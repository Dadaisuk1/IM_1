<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>Home</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #ffffff;
            font-family: Poppins;
            background-image: url('img/building(1).jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .buttons {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.601);
            backdrop-filter: blur(5px);
            width: 200px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 20px;
        }

        .buttons a {
            display: block;
            text-decoration: none;
            width: 100px;
            color: #333;
            padding: 10px;
            margin: 10px 0;
            letter-spacing: 2.5px;
            text-align: center;
            border: 2px solid;
            border-radius: 20px;
            transition: color 0.3s, border-color 0.3s;
        }

        .buttons .btnLogout {
            font-weight: 600;
            font-size: 12px;
        }

        .buttons .buttonTop {
            font-weight: 800;
            font-size: large;
        }

        .buttons a:hover {
            color: #ffc107;
            border-color: #ffc107;;
        }
    </style>
    <title>Options</title>
</head>  
<body>
    <div class="buttons">
        <div class="buttonTop">
            <a href="dorm.php">INSERT</a>
            <a href="display.php">DISPLAY</a>
        </div>
        <div class="buttonBot">
            <form method="POST" onsubmit="return confirmLogout();">
                <button type="submit" name="btnLogout">Logout</button>
            </form>
        </div>
    </div>
    <script>
        function confirmLogout() {
            return confirm('Are you sure you want to log out?');
        }
    </script>
</body>
</html>

<?php
    session_start();
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['btnLogout'])) {
        // Destroy the session and redirect to login page
        session_destroy();
        header("Location: Login.php");
        exit();
}