<?php 
    session_start();
    include("accountDB.php");  
    
    $username = $_POST["username"];  
    $password = $_POST["password"];  
    $rpassword = $_POST["psw-repeat"]; 
            
    $sql = "Select * from accounts where username='$username'"; 
    $result = mysqli_query($conn, $sql); 
    $user = mysqli_num_rows($result);  

    if($user == 0) { 
        if(($password == $rpassword)) { 

            $sql = "INSERT INTO `accounts` ( `username`,  
                `password`) VALUES ('$username',  
                '$password')"; 
    
            $result = mysqli_query($conn, $sql); 
    
            if ($result) { 
                mysqli_refresh($conn, MYSQLI_REFRESH_TABLES);
            echo "<script>alert('Congratulations, you have successfully registered!');
            window.location='homepage.html' </script>"; 
            } 
        }  
        else {  
            echo "<script>alert('The password does not match');
            window.location='registerform.html' </script>"; 
        }       
    } 
   if($user>0)  
   { 
    echo "<script>alert('The username is already taken');
            window.location='registerform.html' </script>"; 
   }  
?> 