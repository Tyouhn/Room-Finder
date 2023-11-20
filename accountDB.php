<?php
    $host = "localhost";
    $username = "root";
    $dbpassword = "jtionnshou@4152";
    $dbname = "student";
    
    $conn = mysqli_connect($host, $username, $dbpassword, $dbname);
    
    if (mysqli_connect_errno()) {
        echo'Failed to connect to MySQL: ' . mysqli_connect_error();
    }
?>
