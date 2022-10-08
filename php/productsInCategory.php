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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <title>Buy <?php echo $_GET['category'];  ?> on High Discounts</title>
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
else
{
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
    <div class="container my-4">
        <h2 class="text-center">Exiting <?php echo $_GET['category'];  ?> available here with offers</h2>
        <form action="productsInCategory.php" class="form-inline my-2 my-lg-0 d-flex justify-contents-center align-items-center" method="GET">
            <input type="hidden" name="category" value="<?php echo $_GET['category']; ?>">
            <input class="form-control mr-sm-2" type="search" placeholder="Search Products" aria-label="Search" name="search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
        </form>
        <div class="container my-4">
        <?php
        $category = $_GET['category'];
        require '../partials/dbmsConnection.php';
        if (isset($_GET['search'])){
            // with where
            $search=$_GET['search'];
            $sql = "SELECT * FROM `productincategory` WHERE title LIKE '%$search%' AND category='$category'";
        } 
        else {
            $sql = "SELECT * FROM `productincategory` WHERE category='$category'";
           
        }
        $result = mysqli_query($connect, $sql);
        $num=mysqli_num_rows($result);
        if ($num > 0) {
            echo '<div class="row row-cols-1 row-cols-md-3 g-4">';
            while ($row = mysqli_fetch_assoc($result)) {

echo '<div class="col">
<div class="card h-100  d-flex justify-content-center align-items-center">
    '.$row['image'].'
    <div class="card-body">
        <h5 class="card-title">'.$row['title'].'</h5>
        <p class="card-text"><s>MRP: ₹'.$row['mrp'].'<br></s>Price: ₹'.$row['price'].'<br>You Save: ₹'.$row['saving'].'</p>
        <a class="btn btn-outline-primary" href="'.$row['buylink'].'" role="button" target="_blank">Buy Now</a>
    </div>
</div>
</div>';

            }
            echo '</div>';

        }
        else
        {
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    -->
</body>

</html>