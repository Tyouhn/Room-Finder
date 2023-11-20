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

        <form id = "tableForm"> 
            <table>
                <tr>
                    <td>    
                        <label for = "floor"> Floor </label>
                        <select id = "floor" name = "floor">
                            <option value = "fNull"> -----</option>
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
                        <label for = "weekDay"> Weekday </label>
                        <select id = "weekDay" name = "weekDay">
                            <option value = "dNull"> -------</option>
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
                        <label for = "environment"> Environment </label>
                        <select id = "environment" name = "environment">
                            <option value = "eNull"> -----</option>
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
                        <button onclick = "createTable()" type = "button" name = "save">Confirm</button>
                    </td>
                </tr>

            </table>
        </form>

        <div id = "wrapperTable" class = ".wrapperTable">
            <h1></h1>
        </div>


        <script>
            function createTable(){
                event.preventDefault();

                var selectedFloor = document.getElementById('floor').value;
                var selectedWeekday = document.getElementById('weekDay').value;
                var selectedEnvir = document.getElementById('environment').value;

                var formData = new FormData(document.getElementById('tableForm'));

                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'createTable2.php', true);


                xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        // Update the HTML container with the response
                        document.getElementById('wrapperTable').innerHTML = xhr.responseText;
                    }
                    };

                xhr.send(formData);
            }

        </script>

    </div>
</body>
</html>
