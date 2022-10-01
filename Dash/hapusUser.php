<?php 

include 'connection.php';
$id = $_GET['id'];

$sqlOLD = "SELECT * FROM users WHERE id_user = '$id'";
$query2 = mysqli_query($connect,$sqlOLD);
$data = mysqli_fetch_array($query2);

$img = $data['img_dir'];

if($img != "../user_img/user.png") {
  unlink($img);
}


$sql = "DELETE FROM users WHERE id_user = '$id'";
$query = mysqli_query($connect,$sql);



if($query){
  header('Location: User.php');
}else{
  header('Location: delete.php?status=gagal');
}



?> 