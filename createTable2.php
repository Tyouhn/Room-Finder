<html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' 
        rel='stylesheet'>

</head>

    <table>
            <tr class = "">
                <th>Room</th>
                <th>Weekday</th>
                <th>Enviroment</th>
                <th>Start</th>
                <th>End</th>
            </tr>  
            
            <?php 
                session_start();
                include("buildingDB.php");

                $selectedFloor = isset($_POST['floor']) ? $_POST['floor'] : '';
                $selectedWeekday = isset($_POST['weekDay']) ? $_POST['weekDay'] : '';
                $selectedEnvir = isset($_POST['environment']) ? $_POST['environment'] : '';

                $sql = "SELECT room, weekDay, environment, timeStarts, timeEnds FROM west26 Where floor = '$selectedFloor' AND weekDay = '$selectedWeekday' AND environment = '$selectedEnvir'";
                $result = mysqli_query($conn, $sql);
            
                $tableHTML = '<table border="1">';

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        ?>
                            <tr class = "">
                                <td><?php echo $row['room']?></td>
                                <td><?php echo $row['weekDay']?></td>
                                <td><?php echo $row['environment']?></td>
                                <td><?php echo $row['timeStarts']?></td>
                                <td><?php echo $row['timeEnds']?></td>
                            </tr>
                       <?php
                    }
                    
                    
                }
                else {
                    echo "No Result";
                }
                $conn->close();
            ?>
        </table>
</html>
