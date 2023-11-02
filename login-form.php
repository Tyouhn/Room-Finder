<?php

$host = "localhost";
$username = "root";
$dbpassword = "jtionnshou@4152";
$dbname = "student";

$conn = mysqli_connect($host, $username, $dbpassword, $dbname);

if (mysqli_connect_errno()) {
    echo'Failed to connect to MySQL: ' . mysqli_connect_error();
}

if($_SERVER['REQUEST_METHOD'] == "POST")
{
    $username = $_POST['username'];
    $password = $_POST['password'];

    if(!empty($username) && !empty($password)){
        $sql = "SELECT * FROM accounts WHERE username = '$username'";
        $result = mysqli_query($conn, $sql);

        if($result){
            if($result && mysqli_num_rows($result) > 0){
                $user_data = mysqli_fetch_assoc($result);
                
                // password_verify($user_data['password'], $password)

                if($user_data['password'] = $password){
                    echo "Welcome";
                }else {
                    echo "wrong password";
                }
            }else {
                echo "wrong username";
            }
        }else {
            echo "not exits";
        }
    }else{
        echo "please enter bot username and password";
    }

}
?>
