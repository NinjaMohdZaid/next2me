<?php
//admin panel for admin login
session_start();
if (!isset($_SESSION['adminLog'])) {
    header('Location:adminPanel.php');
} else {
    require '../partials/dbmsConnection.php';
}
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

    <title>Welcome Admin</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="loginAdmin.php">Next2Me</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="loginAdmin.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Menu
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="addProductInCategory.php">Add Product In Category</a></li>
                            <li><a class="dropdown-item" href="addProductCategory.php">Add Product Category</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">So</a>
                    </li>
                </ul>
                <a class="btn btn-primary" href="logoutAdmin.php" role="button">Logout</a>
            </div>
        </div>
    </nav>
    <?php

if(isset($_GET['deleteFlag']))
{
    if($_GET['deleteFlag']==1)
    {
      echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
      <strong>Category Deleted Successfully | </strong>You have deleted 1 product Category
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>';
    }
    else
    {
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Category Not Deleted !| </strong>Your category not deleted please try again
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
    }
}


?>
    <div class="container my-2">
        <h2 class="text-center">Products</h2>
        <form action="loginAdmin.php" class="form-inline my-2 my-lg-0 d-flex justify-contents-center align-items-center" method="GET">
            <input class="form-control mr-sm-2" type="search" placeholder="Search Category" aria-label="Search" name="search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
    <div class="container">
        
            <?php
            if (isset($_GET['search'])){
                // with where
                $search=$_GET['search'];
                $sql = "SELECT * FROM `productcategory` WHERE title LIKE '%$search%'";
            } else {

                $sql = "SELECT * FROM `productcategory`";
            }
            $result = mysqli_query($connect, $sql);
            $num = mysqli_num_rows($result);

            if ($num > 0) {
                echo '<div class="row row-cols-1 row-cols-md-2 g-4">';
                //there is something
                while ($row = mysqli_fetch_assoc($result)) {
                    echo '
            <div class="card mb-3 mx-2" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="https://source.unsplash.com/600x700/?' . $row['title'] . '" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">' . $row['title'] . '</h5>
                            <p class="card-text">' . mb_strimwidth($row['description'], 0, 100, ".....") . '</p>
                            <a href="deleteCategory.php?sno='.$row['sno'].'" class="btn btn-outline-primary" role="button">Delete</a>
                        </div>
                    </div>
                </div>
            </div>';
                }
            } else {
                echo '<div class="alert alert-info" role="alert">
                No Result Found
              </div>';
            }
            ?>
        </div>
    </div>
    <hr>
    <?php
    $sql="SELECT * FROM `visited`";
    $result=mysqli_query($connect,$sql);
    $row=mysqli_fetch_assoc($result);
    echo '<h2>Visited Users : '.$row['v'].'</h2>';
    ?>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    -->
</body>

</html>