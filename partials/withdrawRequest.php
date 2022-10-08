<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    session_start();
    $email=$_SESSION['email'];
    require '../partials/dbmsConnection.php';
    require '../partials/accountDetails.php';
    $amount=$_POST['amount'];
    $branchName=$_POST['branchName'];
    $accountNumber=$_POST['accountNumber'];
    $ifsc=$_POST['ifsc'];
    $password=$_POST['password'];
    if($password!=$rowA['password'])
    {
        $flagWithdraw=1;//account password is wrong
    }
    else{
        $sql="INSERT INTO `withdrawrequests`(`sno`, `email`, `accountNumber`,`branchName`,`ifsc`, `amount`) VALUES (NULL,'$email','$accountNumber','$branchName','$ifsc','$amount')";
        $result=mysqli_query($connect,$sql);
        if($result)
        {
            $flagWithdraw=2;//amount withdraw request submitted proccess to completion
        }
        else
        {
            $flagWithdraw=3;//amount withdraw request not completed at this moment
            echo 'yaha';
        }
    }

}







?>