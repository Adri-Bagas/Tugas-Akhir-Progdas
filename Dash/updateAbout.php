<?php
    include 'connection.php';

    if(isset($_POST['submit'])){
        $hero = $_POST['hero'];
        $sub = $_POST['sub_text'];
        $li_1 = $_POST['li_1'];
        $li_2 = $_POST['li_2'];

        //get old data

        $sqlOLD = "SELECT * FROM about WHERE id = 2";
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
                            $imgDIR = "./img_about/".$imgNewName;
                            $imgDIRRILL = "../img_about/".$imgNewName;
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
        
                $sql = 'UPDATE `about` SET `Hero`="'.$hero.'",`sub_text`="'.$sub.'",`li_1`="'.$li_1.'",`li_2`="'.$li_2.'",`img_dir`="'.$imgDIR.'" WHERE id = 2';
                $query = mysqli_query($connect, $sql);
        
                if($query) {
                    header('Location: ../index.php');
                }else{
                    header('Location: addUser.php?NotOK');
                }
        
            }

?>