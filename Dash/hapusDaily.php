<?php
    include 'connection.php';

    $id = $_GET['id'];

    $sql = "DELETE FROM `daily` WHERE id = '$id'";
    $query = mysqli_query($connect, $sql);

    if($query) {
        header('Location: Daily.php');
    }else{
        header('Location: hapusDaily.php?NotOK');
    }
?>