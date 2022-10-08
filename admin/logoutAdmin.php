<?php
//logging out admin
if(!isset($_SESSION['adminLog'])){
    session_start();
    session_unset();
    session_destroy();
    $_SESSION['adminLog']=false;
    header("Location:adminPanel.php");
}

?>