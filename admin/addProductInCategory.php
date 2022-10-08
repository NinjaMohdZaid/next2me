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

    <title>Add Product Category</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="">Next2Me</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="loginAdmin.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Menu
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item active" href="addProductInCategory.php">Add Product In Category</a></li>
                            <li><a class="dropdown-item " href="addProductCategory.php">Add Product Category</a></li>
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
    if (isset($_GET['insertFlag'])) {
        if ($_GET['insertFlag'] == 1) {
            // category added succcessfully
            echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
             <strong>Product In Category Added Successfully | </strong>You have added 1 new product in Category
             <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
           </div>';
        } else {
            // category not added
            echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
             <strong>Product In Category Not Added !| </strong>Your Product in category not added please try again
             <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
           </div>';
        }
    }

    ?>
    <div class="container my-4">
        <h2 class="text-center">Add Product In Categories</h2>
        <form action="insertProductInCategory.php" method="POST">
            <div class="mb-3">
                <select class="form-select" aria-label="Default select example" name="category" required>
                <option selected>Select a Category</option>
                    <?php
                    $sql="SELECT * FROM `productcategory`";
                    $result=mysqli_query($connect,$sql);
                    while($row=mysqli_fetch_assoc($result))
                    {
                        echo'<option value="'.$row['title'].'">'.$row['title'].'</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="mb-3">
                <select class="form-select" aria-label="Default select example" name="user">
                <option selected>Select an User</option>
                    <?php
                    $sql="SELECT * FROM `accounts`";
                    $result=mysqli_query($connect,$sql);
                    while($row=mysqli_fetch_assoc($result))
                    {
                        echo'<option value="'.$row['email'].'">'.$row['email'].'</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="mb-3">
                <label for="title" class="form-label">Product Title</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="mb-3">
                <label for="imagelink" class="form-label">Image Link</label>
                <input type="text" class="form-control" id="imagelink" name="imagelink" required>
            </div>
            <div class="mb-3">
                <label for="mrp" class="form-label">Product MRP</label>
                <input type="text" class="form-control" id="mrp" name="mrp" required>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Product Price</label>
                <input type="text" class="form-control" id="price" name="price" required>
            </div>
            <div class="mb-3">
                <label for="saving" class="form-label">Product Savings</label>
                <input type="text" class="form-control" id="saving" name="saving" required>
            </div>
            <div class="mb-3">
                <label for="buylink" class="form-label">Product Buy Link</label>
                <input type="text" class="form-control" id="buylink" name="buylink" required>
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
    </div>
    </form>
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