<?php
require '../partials/dbmsConnection.php';
$sno=$_GET['sno'];
$sql="DELETE FROM `productcategory` WHERE sno='$sno'";
$result=mysqli_query($connect,$sql);
if($result)
{
  header('Location:loginAdmin.php?deleteFlag=1');
}
else
{
  header('Location:loginAdmin.php?deleteFlag=0');
}
?>