<?php
//checking method is post 
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $category=$_POST['category'];
    $user=$_POST['user'];
    $image=$_POST['imagelink'];
    $title = $_POST['title'];
    $mrp = $_POST['mrp'];
    $price=$_POST['price'];
    $saving=$_POST['saving'];
    $buylink=$_POST['buylink'];
    require '../partials/dbmsConnection.php';
    $sql="INSERT INTO `productincategory`(`sno`, `category`,`user`,`image`, `title`, `mrp`, `price`, `saving`, `buylink`) VALUES (Null,'$category','$user','$image','$title','$mrp','$price','$saving','$buylink')";
    $result=mysqli_query($connect,$sql);
    if($result)
    {
        header('Location:addProductInCategory.php?insertFlag=1');
    }
    else
    {
        header('Location:addProductInCategory.php?insertFlag=0');
    }
}
?>