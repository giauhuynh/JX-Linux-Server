<?php
    require_once 'config.php';

    $db->debug = true;

    echo '<p>'.$_SERVER['REMOTE_ADDR'].'</p>';

    $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE('<p style="color:red">Connect: False!!!</p>');

    echo '<p style="color:green;">Connect is OK. Can you delete this file now!</p>';

    exit();
?>




