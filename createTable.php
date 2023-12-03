<html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' 
        rel='stylesheet'>

</head>
    <table>
            <tr class = "tableColor">
                <th>Room</th>
                <th>Weekday</th>
                <th>Enviroment</th>
                <th>Start</th>
                <th>End</th>
            </tr>  
            
            <?php 
                session_start();
                include("buildingDB.php");

                $sql = "";

                $selectedBuilding = isset($_POST['buidling']) ? $_POST['buidling'] : '';
                $selectedFloor = isset($_POST['floor']) ? $_POST['floor'] : '';
                $selectedWeekday = isset($_POST['weekDay']) ? $_POST['weekDay'] : '';
                $selectedEnvir = isset($_POST['environment']) ? $_POST['environment'] : '';

                if($selectedFloor == 'fNull'){
                    $sql = "SELECT room, weekDay, environment, timeStarts, timeEnds FROM $selectedBuilding 
                    Where weekDay = '$selectedWeekday' 
                    AND environment = '$selectedEnvir'";
                }else{
                    if($selectedWeekday == 'dNull'){
                        $sql = "SELECT room, weekDay, environment, timeStarts, timeEnds FROM $selectedBuilding 
                        Where floor = '$selectedFloor' AND environment = '$selectedEnvir'";
                    }else{
                        if($selectedEnvir == 'eNull'){
                            $sql = "SELECT room, weekDay, environment, timeStarts, timeEnds FROM $selectedBuilding 
                            Where floor = '$selectedFloor' AND weekDay = '$selectedWeekday'";
                        }else{
                            $sql = "SELECT room, weekDay, environment, timeStarts, timeEnds FROM $selectedBuilding 
                            Where floor = '$selectedFloor' AND weekDay = '$selectedWeekday' 
                            AND environment = '$selectedEnvir'";
                        }
                    }
                }
                    
                if($selectedBuilding == 'bNull'){
                    echo '<span style="color:white;">Please select a building';
                    die();
                }
               
                $result = mysqli_query($conn, $sql);
            
                $tableHTML = '<table border="1">';
                
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        ?>
                            <tr class = "tableColor">
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
                    echo '<span style="color:white;">No Result';
                }
                $conn->close();
            ?>
        </table>
</html>
