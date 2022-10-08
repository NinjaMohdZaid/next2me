<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    require 'dbmsConnection.php';
    $name=$_POST['name'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $confirmPassword=$_POST['confirmPassword'];
    if($password!=$confirmPassword)
    {
        $flagAccount=1;//password not match
    }
    else{
           //checking email or phone is already in used or not
           $sql="SELECT * FROM `accounts` WHERE email='$email'";
           $result=mysqli_query($connect,$sql);
           $num=mysqli_num_rows($result);
           if($num==1)
           {
               $flagAccount=2;//email already in used
           }
           else
           {
            $sql1="SELECT * FROM `accounts` WHERE phone='$phone'";
            $result1=mysqli_query($connect,$sql1);
            $num1=mysqli_num_rows($result1);
            if($num1==1)
            {
                $flagAccount=3;//phone number already in use
            }
            else
            {
                 //account should be created here
                 $sql2="INSERT INTO `accounts`(`sno`, `name`, `phone`, `email`, `password`,`earnings`) VALUES (NULL,'$name','$phone','$email','$password','20')";
                 $result2=mysqli_query($connect,$sql2);
                 if($result2)
                 {
                     header('Location:../php/userInterface.php');
                     session_start();
                     $_SESSION['loggedIn']=TRUE;
                     $_SESSION['email']=$email;
                 }
                 else
                 {
                    $flagAccount=4;//account not created at this moment

                 }
            }

           }
       
    }
    if(isset($flagAccount)){
        // this is for showing error
        $backLink=$_SERVER['HTTP_REFERER'];//gives back link + status
      if($backLink=='http://www.polivalenteninja.epizy.com/next2me/')
        {
            header("Location:$backLink/index.php?flagAccount=$flagAccount");  
        }
        else
        {
            header("Location:$backLink?flagAccount=$flagAccount");
        }
    }
}
?>