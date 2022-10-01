<?php
    include 'connection.php';

    if(isset($_POST['submit'])){
        $hero = $_POST['hero'];
        $paraf1 = $_POST['paraf1'];
        $paraf2 = $_POST['paraf2'];

        //get old data

        $sqlOLD = "SELECT * FROM history WHERE id = 1";
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
                            $imgDIR = "./img_history/".$imgNewName;
                            $imgDIRRILL = "../img_history/".$imgNewName;
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
        
                $sql = 'UPDATE `history` SET `hero`="'.$hero.'",`paraf1`="'.$paraf1.'",`paraf2`="'.$paraf2.'",`img_dir`="'.$imgDIR.'" WHERE id = 1';
                $query = mysqli_query($connect, $sql);
        
                if($query) {
                    header('Location: ../index.php');
                }else{
                    header('Location: addUser.php?NotOK');
                }
        
            }

?>