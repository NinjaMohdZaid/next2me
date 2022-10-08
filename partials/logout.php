<?php
session_start();
session_destroy();
session_unset();
$_SESSION['loggedIn']=false;
header('Location:../');

?>