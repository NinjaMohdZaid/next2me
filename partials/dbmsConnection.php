<!--Program to connect with sql database-->
<?php
$servername="sql212.epizy.com";
$username="epiz_26689209";
$password="OtWT862ZIbDy";
$database="epiz_26689209_details";
//connecting to the database jobSeeker 
$connect=mysqli_connect($servername,$username,$password,$database);
if(!$connect)
{
die("failed to connect".mysqli_connect_error());
}
?>