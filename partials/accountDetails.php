<?php
$sqlA="SELECT * FROM `accounts` WHERE email='$email'";
$resultA=mysqli_query($connect,$sqlA);
$rowA=mysqli_fetch_assoc($resultA);
?>