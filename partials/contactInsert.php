<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $issue=$_POST['issue'];
    $describe=$_POST['describe'];
    require 'dbmsConnection.php';
    $sql="INSERT INTO `contacts`(`sno`, `email`, `phone`, `issue`, `description`) VALUES (NULL,'$email','$phone','$issue','$describe')";
    $result=mysqli_query($connect,$sql);
    if($result)
    { 
        header('Location:../php/contact.php?flagContact=1');
    }
    else{
           header('Location:../php/contact.php?flagContact=0');
    }
}



?>