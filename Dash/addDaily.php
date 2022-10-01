<?php

include 'connection.php';

    if (isset($_POST['submit'])) {
        $hero = $_POST['hero'];
        $quotes = $_POST['quotes'];

        $sql = "INSERT INTO `daily`(`hero`, `quotes`) VALUES ('$hero','$quotes')";
        $query = mysqli_query($connect, $sql);

        if($query) {
            header('Location: Daily.php');
        }else{
            header('Location: addDaily.php?NotOK');
        }
    }

?>