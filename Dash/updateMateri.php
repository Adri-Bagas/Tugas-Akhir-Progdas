<?php
    include 'connection.php';

    if(isset($_POST['submit'])) {
        $id = $_POST['id'];
        $title = $_POST['title'];
        $short = $_POST['short'];
        $category = $_POST['kategori'];
        $author = $_POST['author'];
        $date = $_POST['date'];
        $isi = $_POST['isi'];
        $lokasi = $_POST['negara'];

        //get old data

        $sqlOLD = "SELECT * FROM materi WHERE id = '$id'";
        $queryOLD = mysqli_query($connect, $sqlOLD);
        $data = mysqli_fetch_array($queryOLD);

        $imgDIROLD = $data['img_dir'];

        //img update

        $img = $_FILES['img'];

        $imgName = $_FILES['img']['name'];
        $imgTMP = $_FILES['img']['tmp_name'];
        $imgErr = $_FILES['img']['error'];

        $imgext = explode('.',$imgName);

        $imgtype = strtolower(end($imgext));
        
        $allowed = array('png','jpg','jpeg');

        if ($imgErr !== 4){
            if ($imgErr == 0) {
                if(in_array($imgtype, $allowed)){
                    $imgNewName = uniqid('', true).".".$imgtype;
                    $imgDIR = "./img_materi/".$imgNewName;
                    $imgDIRRILL = "../img_materi/".$imgNewName;
                    if ($imgDIROLD != "./img_materi/dummy.jpeg") {
                        unlink($imgDIROLD);
                    }
                    move_uploaded_file($imgTMP, $imgDIRRILL);
                }else{
                    echo "Ext error";
                }
            }else{
                echo "ERORR";
            }
        }else{
            $imgDIR = $imgDIROLD;
        };

        $sql = 'UPDATE `materi` SET `Title`="'.$title.'",`kategori`="'.$category.'",`Desk`="'.$short.'",`Isi`="'.$isi.'",`author`="'.$author.'",`img_dir`="'.$imgDIR.'",`date`="'.$date.'",`Country` = "'.$lokasi.'" WHERE `id`="'.$id.'"';
        $query = mysqli_query($connect, $sql);

        if($query) {
            header('Location: Materi.php');
        }else{
            header('Location: addUser.php?NotOK');
        }

    }
?>