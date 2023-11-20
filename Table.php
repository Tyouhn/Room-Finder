<?php
session_start();?>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' 
        rel='stylesheet'>

</head>

<body class = "main">
    <div id = "wrapperBody" class = "wrapper" align = "center">
        <h1 calss = "tableLabel"> Room List</h1>

        <?php
            if(isset($_SESSION['status']))
            {
                echo"<h4>" . "". $_SESSION["status"] ."</h4>";
                unset($_SESSION['status']);
            }
        ?>
        <!--action = "main.html" -->

        <form method = "POST"> 
            <table>
                <tr>
                    <td>    
                        <label for = ""> Floor </label>
                        <select name = "floor">
                            <option value = "fNull"> Select</option>
                            <option value = "1st"> 1st</option>
                            <option value = "2nd"> 2nd</option>
                            <option value = "3rd"> 3rd</option>
                            <option value = "4th"> 4th</option>
                            <option value = "5th"> 5th</option>
                            <option value = "6th"> 6th</option>
                            <option value = "7th"> 7th</option>
                            <option value = "8th"> 8th</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>    
                        <label for = ""> Weekday </label>
                        <select name = "weekday">
                            <option value = "dNull"> Select</option>
                            <option value = "Monday"> Monday</option>
                            <option value = "Tuesday"> Tuesday</option>
                            <option value = "Wednesday"> Wednesday</option>
                            <option value = "Thursday"> Thursday</option>
                            <option value = "Friday"> Friday</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>    
                        <label for = ""> Environment </label>
                        <select name = "envir">
                            <option value = "eNull"> Select</option>
                            <option value = "quiet"> quiet</option>
                            <option value = "nosiy"> nosiy</option>
                            <option value = "chaotic"> chaotic</option>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for = ""> Start </label>
                        <input type = "time" name = "startdate">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for = ""> End </label>
                        <input type = "time" name = "enddate">
                    </td>
                </tr>

                <tr>
                    <td>
                        <button type = "submit" name = "save">Confirm</button>
                    </td>
                </tr>

            </table>
        </form>

        <script>
            function createTable(){
                
            }

        </script>

        <table>
            <tr class = "tableColor">
                <th>Room</th>
                <th>Weekday</th>
                <th>Enviroment</th>
                <th>Start</th>
                <th>End</th>
            </tr>  
            
            <?php 
                $conn = mysqli_connect("localhost", "root", "jtionnshou@4152", "buildings");
                $sql = "SELECT room, weekDay, environment, timeStarts, timeEnds FROM west26 Where floor = '7th'";
                $result = mysqli_query($conn, $sql); //$conn->query($sql);
            
                $tableHTML = '<table border="1">';
                //$tableHTML = '<tr><th>ID</th><th>Name</th><th>Email</th></tr>';

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
                    echo "No Results";
                }
                $conn->close();
            ?>
        </table>

    </div>
</body>
</html>
