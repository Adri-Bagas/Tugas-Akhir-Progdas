<?php
    include 'connection.php';

    if (isset($_POST['submit'])) {
        $id = $_POST['id'];
        $hero = $_POST['hero'];
        $quotes = $_POST['quotes'];

        $sql = "UPDATE `daily` SET `hero`='$hero',`quotes`='$quotes' WHERE id = '$id'";
        $query = mysqli_query($connect, $sql);

        if($query) {
            header('Location: Daily.php');
        }else{
            header('Location: updateDaily.php?NotOK');
        }
    }
?>