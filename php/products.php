<?php
require '../partials/dbmsConnection.php';
session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM `accounts` WHERE email='$email' AND password='$password'";
    $result = mysqli_query($connect, $sql);
    $num = mysqli_num_rows($result);
    if ($num == 1) {
        $_SESSION['loggedIn'] = TRUE;
        $_SESSION['email'] = $email;
        header('Location:userInterface.php');
    } else {
        $flagCredentials = 1; //incorrect credentials
    }
}
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Buy Products</title>
</head>

<body>
<?php
if(!isset($_SESSION['loggedIn']))
{ 
    echo '
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../">Next2Me</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="../">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="about.php">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="contact.php">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="products.php">Buy Products</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Businesses
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="productReferal.php">Product Referal</a></li>
                            <li><a class="dropdown-item" href="mlm.php">Multi Level Marketing (MLM)</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">New Happenings</a></li>
                        </ul>
                    </li>
                </ul>

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary mx-4" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Login
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Login To Nex2Me</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                            <form action="" method="POST">
                            <div class="mb-3">
                              <label for="email" class="form-label">Email address</label>
                              <input type="email" class="form-control" id="email" aria-describedby="email" name="email">
                            </div>
                            <div class="mb-3">
                              <label for="password" class="form-label">Password</label>
                              <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                          </form>
                            </div>
                        </div>
                    </div>
                </div>

                <button type="button" class="btn btn-primary mx-4" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    Sign Up
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Create your account to join us</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                            <form action="../partials/createUserAccount.php" method="POST">
                  <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" required name="name">
                  </div>
                  <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="text" class="form-control" id="phone" required minlength="10" maxlength="12" name="phone">
                  </div>
                  <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" aria-describedby="email" required name="email">
                  </div>
                  <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="text" class="form-control" id="password" required minlength="6" name="password">
                  </div>
                  <div class="mb-3">
                    <label for="conifrmPassword" class="form-label">Confirm Password</label>
                    <input type="password" class="form-control" id="conifrmPassword" required minlength="6" name="confirmPassword">
                  </div>
                  <button type="submit" class="btn btn-primary">Sign Up</button>
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>';
}
else{
      echo '<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
      <div class="container-fluid">
          <a class="navbar-brand" href="../">Next2Me</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                      <a class="nav-link" aria-current="page" href="../">Home</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link " href="about.php">About</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link " href="contact.php">Contact Us</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link active" href="products.php">Buy Products</a>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Businesses
                      </a>
                      <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" href="productReferal.php">Product Referal</a></li>
                          <li><a class="dropdown-item" href="mlm.php">Multi Level Marketing (MLM)</a></li>
                          <li>
                              <hr class="dropdown-divider">
                          </li>
                          <li><a class="dropdown-item" href="#">New Happenings</a></li>
                      </ul>
                  </li>
              </ul>
              <a class="btn btn-primary" href="../partials/logout.php" role="button">Logout</a>
          </div>
      </div>
      </nav>';
}
?>
    <?php
    if(isset($flagCredentials))
    {
      echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
      <strong>Incorrect Credentials!</strong> Please check either email or password is incorrect
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>';
    }
  if (isset($_GET['flagAccount'])) {
    if ($_GET['flagAccount'] == 1) {
      echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Password Not Matched!</strong> Confirm password not matched with the password
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>';
    } 
    else 
    {
      if ($_GET['flagAccount'] == 2) {
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Email Already In Use!</strong> Please use another email this email is already in use
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>';
      } else {
        if ($_GET['flagAccount'] == 3) {
          echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Phone Number Already in use!</strong> Please use another phone number this phone number is already in use
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>';
        } else {
          echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Account Cannot be created !</strong> Please try again letter at this moment we cannot proccessed your request
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>';
        }
      }
    }
  }


  ?>
    <div class="container my-2">
        <h2 class="text-center">Products</h2>
        <form action="products.php" class="form-inline my-2 my-lg-0 d-flex justify-contents-center align-items-center" method="GET">
            <input class="form-control mr-sm-2" type="search" placeholder="Search Category" aria-label="Search" name="search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
    <div class="container">
        
            <?php
            require '../partials/dbmsConnection.php';
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
                            <a href="productsInCategory.php?category='.$row['title'].'" class="btn btn-outline-primary" role="button">Buy Products</a>
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
    <footer class="container">
        <p class="float-end"><a href="#">Back to top</a></p>
        <p>Next2Me <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>