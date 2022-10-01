<?php
    include 'connection.php';

    if(isset($_POST['submit'])) {
        $nama = $_POST['nama'];
        $birth = $_POST['birth'];
        $password = $_POST['password'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $id = $_POST['id'];


        //get old data

        $sqlOLD = "SELECT * FROM users WHERE id_user = '$id'";
        $queryOLD = mysqli_query($connect, $sqlOLD);
        $data = mysqli_fetch_array($queryOLD);

        $imgDIROLD = $data['user_img'];

        //img upload

        $img = $_FILES['img_usr'];

        $imgName = $_FILES['img_usr']['name'];
        $imgTMP = $_FILES['img_usr']['tmp_name'];
        $imgErr = $_FILES['img_usr']['error'];

        $imgext = explode('.',$imgName);

        $imgtype = strtolower(end($imgext));
        
        $allowed = array('png','jpg','jpeg');

        if ($imgErr !== 4){
            if ($imgErr == 0) {
                if(in_array($imgtype, $allowed)){
                    $imgNewName = uniqid('', true).".".$imgtype;
                    $imgDIR = "../user_img/".$imgNewName;
                    if ($imgDIROLD != "../user_img/user.png") {
                        unlink($imgDIROLD);
                    };
                    move_uploaded_file($imgTMP, $imgDIR);
                }else{
                    echo "Ext error";
                }
            }else{
                echo "ERORR";
            }
        }else{
            $imgDIR = $imgDIROLD;
        };

        $sql = "UPDATE `users` SET `name`='$nama',`birth`='$birth',`password`='$password',`phone`='$phone',`email`='$email',`user_img`='$imgDIR' WHERE id_user = '$id'";
        $query = mysqli_query($connect, $sql);

        if($query) {
            header('Location: User.php');
        }else{
            header('Location: addUser.php?NotOK');
        }

    }
?>