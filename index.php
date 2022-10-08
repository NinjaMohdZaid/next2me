<?php
require 'partials/dbmsConnection.php';
session_start();
if(isset($_SESSION['loggedIn']))
{
  header('Location:php/userInterface.php');
}
if($_SERVER['REQUEST_METHOD']=='POST')
{
  $email=$_POST['email'];
  $password=$_POST['password'];
  $sql="SELECT * FROM `accounts` WHERE email='$email' AND password='$password'";
  $result=mysqli_query($connect,$sql);
  $num=mysqli_num_rows($result);
  if($num==1)
  {
     $_SESSION['loggedIn']=TRUE;
     $_SESSION['email']=$email;
     header('Location:php/userInterface.php');
  }
  else
  {
    $flagCredentials=1;//incorrect credentials
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

  <title>Welcome To Next2Me</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="">Next2Me</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="php/about.php">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="php/contact.php">Contact Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="php/products.php">Buy Products</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Businesses
            </a>
            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="php/productReferal.php">Product Referal</a></li>
              <li><a class="dropdown-item" href="php/mlm.php">Multi Level Marketing (MLM)</a></li>
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

                <form action="partials/createUserAccount.php" method="POST">
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
  </nav>
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
  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://source.unsplash.com/1600x500/?nature" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Welcome To Next2Me</h2>
          <p>A only place where you can earn independently</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="https://source.unsplash.com/1600x500/?trip" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Make your dreams better</h2>
        </div>
      </div>
      <div class="carousel-item">
        <img src="https://source.unsplash.com/1600x500/?money" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Make Money with Comfort</h2>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <div class="container my-5">
    <h2>Welcome To Next2Me A Place Where You Can Earn Money Independently</h2>
    <p>Check The Businesses which are porovided by Next2Me......</p>
  </div>
  <div class="container my-4 ">
    <div class="card mb-3">
      <img src="https://source.unsplash.com/1600x500/?shirts,shoes,jeans,trouser,mobiles,smartphones,laptops" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Product Referals Business</h5>
        <p class="card-text">You can promote Amazon products as part of your other business offerings to create an additional income stream. Whether you sell a product or service, chances are there are products and services your customers and clients can benefit from on Amazon....</p>
        <a href="php/productReferal.php" class="btn btn-outline-primary">Read Full Note</a>
      </div>
    </div>
    <!-- <div class="card mb-4">
      <img src="https://source.unsplash.com/1600x500/?Network Markrting" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Multilevel Marketing (MLM)</h5>
        <p class="card-text">Multilevel marketing (MLM) is a strategy some direct sales companies use to encourage existing distributors to recruit new distributors who are paid a percentage of their recruits' sales. The recruits are the distributor's "downline." Distributors also make money through direct sales of products to customers....</p>
        <a href="php/mlm.php" class="btn btn-outline-primary">Read Full Note</a>
      </div>
    </div> -->
  </div>
  <hr>
  <div class="container">
    <h2>Buy Product On High Discounts</h2>
    <?php
    
    $sql = "SELECT * FROM `productcategory`";
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
                      <a href="php/productsInCategory.php?category=' . $row['title'] . '" class="btn btn-outline-primary" role="button">Buy Products</a>
                  </div>
              </div>
          </div>
      </div>';
      }
    }


    ?>
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
<?php

$sqlU="SELECT * FROM `visited`";
$resultU=mysqli_query($connect,$sqlU);
$row=mysqli_fetch_assoc($resultU);
$users=$row['v']+1;
$sqlU="UPDATE `visited` SET `v`='$users'";
$resultU=mysqli_query($connect,$sqlU);
?>