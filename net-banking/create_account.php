
<!--
=========================================================
* Argon Dashboard - v1.2.0
=========================================================
* Product Page: https://www.creative-tim.com/product/argon-dashboard

* Copyright  Creative Tim (http://www.creative-tim.com)
* Coded by www.creative-tim.com
=========================================================
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->

<?php
$result="";
include 'connect.php';

if(isset($_POST['submit_btn'])) {

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
  $dob = $_POST['dob'];
  $address = $_POST['address'];
  $phno = $_POST['phno'];
$email = $_POST['email'];
$pass_no = $_POST['pass_no'];
$uname = $_POST['uname'];
$pwd = $_POST['pwd'];
$pin = $_POST['pin'];
  
	// header('location: signup.php');
	// echo "Error:Account Creation Successful";

 

    try {
        $SQLInsert = "INSERT INTO request (fname, lname, dob, address, phno, email, pass_no, uname, pwd, pin)
        VALUES (:fname, :lname, :dob, :address, :phno, :email, :pass_no, :uname, :pwd, :pin)";

        $statement = $con->prepare($SQLInsert);
        $statement->execute(array(':fname' =>$fname, ':lname' =>$lname, ':dob' => $dob, ':address' => $address, ':phno' => $phno, ':email' => $email, ':pass_no' => $pass_no, ':uname' => $uname, ':pwd' => $pwd, ':pin' => $pin));

        if($statement->rowCount()==1){
            $result = "Account creation request submitted!<br> <small style='color:red;'>we would contact you through email</small>";
		} 
	
    }
    catch(PDOException $e) {
        echo "Error:" .$e ->actionFailure();
    }
}

?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Enjoy the benefits of being a CrestProvidentBank client. We offer checking &amp; savings accounts, credit cards, insurance, and loans. Open your CrestProvidentBank account today!">
  <meta name="author" content="CrestProvidentBank">
  <title>Crest Provident Bank::loginpage</title>
  <!-- Favicon --><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="icon" href="./../images/favicon.PNG" type="image/png" sizes="32x32"/>
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
 
  <!-- Icons -->
  <link rel="stylesheet" href="./assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="./assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Argon CSS -->
  <link rel="stylesheet" href="./assets/css/argon.css?v=1.2.0" type="text/css">
</head>

<body class="bg-default">
  <!-- Navbar -->
 
  <!-- Main content -->
  <div class="main-content">
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8 pt-lg-9">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-xl-5 col-lg-6 col-md-8 px-5">
              <h1 class="text-white">CrestProvidentBank Account Form</h1>
            
            </div>
          </div>
        </div>
      </div>
      <div class="separator separator-bottom separator-skew zindex-100">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
          <div class="card bg-secondary border-0 mb-0">
           
            <div class="card-body px-lg-5 py-lg-5">
              <div class="text-center text-muted mb-4">
                <small>Personal Information</small>
              </div>
              <h3 style="color:green"><?= $result; ?></h3>
              <form role="form" action="" method="post">
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">

                    <input class="form-control" name="fname" placeholder="FirstName" type="text" required="">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="lname" placeholder="LastName" type="text" required="">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="MiddleName" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                  <div class="input-group-prepend">
                      <span class="input-group-text">D.O.B</span>
                    </div>
                    <input class="form-control" name="dob" placeholder="" type="date" required="">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="address" placeholder="Address" type="text" required="">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="City" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="State" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="Zip code" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="phno" placeholder="Phone Number" type="text" required="">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="email" placeholder="Email Address" type="text" required="">
                  </div>
                </div>

                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="Country of citizenship" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="Country of residence" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="" placeholder="Social security number" type="text">
                  </div>
                </div>
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                  <div class="input-group-prepend">
                      <span class="input-group-text">other country</span>
                    </div>
                    
                    <input class="form-control" name="pass_no" placeholder="Passport Number" type="text" required="">
                  </div>
                </div>
                <div class="text-center text-muted mb-4">
                <small>Valid Identification</small>
              </div>
                <div class="form-group">
                  <div class="input-group input-group-merge input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-badge"></i></span>
                    </div>
                <input type="file" class="form-control" placeholder="front" id="image" required="">
  </div>
  </div>
                <div class="text-center text-muted mb-4">
                <small>Online Banking Information</small>
              </div>
              <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <input class="form-control" name="uname" placeholder="Username" type="text" required="">
                  </div>
                </div>

                <div class="form-group">
                  <div class="input-group input-group-merge input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    <input class="form-control" name="pwd" placeholder="Password" type="password" required="">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-merge input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-key-25"></i></span>
                    </div>
                    <input class="form-control" name="pin" maxlength="4" placeholder="Transaction Pin(4 digit)" type="password" required="">
                  </div>
                </div>
                <div class="text-center">
                  <button type="submit" name="submit_btn" class="btn btn-primary my-4">Submit</button>
                </div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- Footer -->
  <footer class="py-5" id="footer-main">
    <div class="container">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
          <div class="copyright text-center text-xl-left text-muted">
            &copy; 2020 <a href="https://crestprovidentb.com" class="font-weight-bold ml-1" target="_blank">CrestProvidentBank</a>
          </div>
        </div>
        <div class="col-xl-6">
          <ul class="nav nav-footer justify-content-center justify-content-xl-end">
            <li class="nav-item">
              <a href="https://crestprovidentb.com" class="nav-link" target="_blank">CrestProvidentBank</a>
            </li>
            <li class="nav-item">
              <a href="https://crestprovidentb.com/#about" class="nav-link" target="_blank">About Us</a>
            </li>
            <li class="nav-item">
              <a href="https://crestprovidentb.com#blog" class="nav-link" target="_blank">Blog</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link" target="_blank"> License</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="./assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="./assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="./assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="./assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="./assets/js/argon.js?v=1.2.0"></script>
</body>

</html>
<!-- <!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home_style.css">
</head>

<body>
    <div class="flex-container-background">
        <div class="flex-container">
            <div class="flex-item-0">
                <h1 id="form_header">Your Bank at Your Fingertips.</h1>
            </div>
        </div>

        <div class="flex-container">
            <div class="flex-item-1">
                <form action="customer_login_action.php" method="post">
                    <div class="flex-item-login">
                        <h2>Welcome</h2>
                    </div>

                    <div class="flex-item">
                        <input type="text" name="cust_uname" placeholder="Enter your Username"  required="" aria-autocomplete="none">
                    </div>

                    <div class="flex-item">
                        <input type="password" name="cust_psw" placeholder="Enter your Password" required="" aria-autocomplete="none">
                    </div>

                    <div class="flex-item">
                        <button type="submit">Login</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

</body>
</html> -->

<?php include "easter_egg.php"; ?>
