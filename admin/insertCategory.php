<?php
//checking method is post 
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $description = $_POST['description'];
    require '../partials/dbmsConnection.php';
    $sql="INSERT INTO `productcategory` (`sno`, `title`, `description`) VALUES (NULL,'$title','$description')";
    $result=mysqli_query($connect,$sql);
    if($result)
    {
        header('Location:addProductCategory.php?insertFlag=1');
    }
    else
    {
        header('Location:addProductCategory.php?insertFlag=0');
    }
}
?>