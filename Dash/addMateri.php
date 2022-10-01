<?php
    include 'connection.php';

    if(isset($_POST['submit'])) {
        $title = $_POST['title'];
        $short = $_POST['short'];
        $category = $_POST['kategori'];
        $author = $_POST['author'];
        $date = $_POST['date'];
        $isi = $_POST['isi'];
        $lokasi = $_POST['negara'];

        // uniq id

        $id_materi = uniqid("M", false);

        //img upload

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
                    move_uploaded_file($imgTMP, $imgDIRRILL);
                }else{
                    echo "Ext error";
                }
            }else{
                echo "ERORR";
            }
        }else{
            $imgDIR = "../materi_img/dummy.jpeg";
        };

        $sql = 'INSERT INTO `materi`(`Title`, `kategori`, `Desk`, `Isi`, `author`, `img_dir`, `id`, `date`,`Country`) VALUES ("'.$title.'","'.$category.'","'.$short.'","'.$isi.'","'.$author.'","'.$imgDIR.'","'.$id_materi.'","'.$date.'","'.$lokasi.'")';
        $query = mysqli_query($connect, $sql);

        if($query) {
            header('Location: Materi.php');
        }else{
            header('Location: addMateri.php?NotOK');
        }

    }
?>