<?php

    $username = $_POST ["username"];
    $password = $_POST ["password"];

    if(!empty($username)){
    if(!empty($password)){
        $host = "localhost";
        $username = "root";
        $dbpassword = "jtionnshou@4152";
        $dbname = "student";

       $mysqli = new mysqli($host, $username, $dbpassword, $dbname);

        if($mysqli->error){
            die("Connection error: " . $mysqli->error);
        }else{
            echo "Successfully";
        }
        
    }else{
        echo "Password should not be empty";
        die();
    }
    }else{
        echo "Username should not be empty";
        die();
    }
?>