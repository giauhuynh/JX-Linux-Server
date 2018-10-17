<?php
    error_reporting(0);
    session_start();
    if(isset($_GET['id'])){
        if($_GET['id'] == "payment"){
            $security_code = substr(md5(rand(0,999)), 15, 4);
            $_SESSION["Securi_P"] = $security_code;
            $image = ImageCreate(89, 38);
            ImageFill($image, 0, 0, ImageColorAllocate($image, 231, 231, 231));
            ImageString($image, 5, 27, 11, $security_code, ImageColorAllocate($image, 0, 0, 0));
            header("Content-Type: image/PNG");
            ImagePNG($image);
            ImageDestroy($image);
            exit();
        }
    }
?>