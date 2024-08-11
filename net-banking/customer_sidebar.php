<?php 
include "connect.php";
    include "session_timeout.php";
    if(!isset($_SESSION)) {
        session_start();
    }

    if (isset($_SESSION['loggedIn_cust_id'])) {
      $sql0 = "SELECT * FROM customer WHERE cust_id=".$_SESSION['loggedIn_cust_id'];
      $result = $conn->query($sql0);
      $row = $result->fetch_assoc();
  }
    $id = $_SESSION['loggedIn_cust_id'];

    $sql0 = "SELECT * FROM customer WHERE cust_id=".$id;
    $result0 = $conn->query($sql0);
    $row0 = $result0->fetch_assoc();

    $sql1 = "SELECT * FROM passbook".$id." WHERE trans_id=(
                    SELECT MAX(trans_id) FROM passbook".$id.")";
    $result1 = $conn->query($sql1);
    $row1 = $result1->fetch_assoc();

    if ($row1["debit"] == 0) {
        $transaction = $row1["credit"];
        $type = "credit";
    }
    else {
        $transaction = $row1["debit"];
        $type = "debit";
    }

    $time = strtotime($row1["trans_date"]);
    $sanitized_time = date("d/m/Y, g:i A", $time);

    $sql2 = "SELECT COUNT(*) FROM beneficiary".$id;
    $result2 = $conn->query($sql2);
    $row2 = $result2->fetch_assoc();
?>


<!DOCTYPE html>
<html>
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" href="images/favicon.PNG" type="image/png" sizes="32x32"/>
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
</head>

<body>
<script src="//code.tidio.co/yltibvefj0gub18elzrybpspieij7v18.js" async></script>
 <nav  style="background: linear-gradient(87deg, #213292b2 0, #0e0133b0 100%);"class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-dark" id="sidenav-main">
  
  <div class="scrollbar-inner">
    <!-- Brand -->
    <div class="sidenav-header  align-items-center">
      <a class="navbar-brand" href="javascript:void(0)">
        <img src="./image/logo.PNG" class="navbar-brand-img" alt="...">
      </a>
    </div>
    <div class="navbar-inner">
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Nav items -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active text-dark" href="dashboard.php?sort=tid_up">
              <i class="fa fa-landmark"></i>
              <span class="nav-link-text">My Account</span>
            </a>
          </li>



          <li class="nav-item">
            <a class="nav-link" href="customer_transactions.php?sort=tid_up">
              <i class="ni ni-bullet-list-67"></i>
              <span class="nav-link-text">Transaction History</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo $row0["status"]; ?>">
              <i class="ni ni-send"></i>
              <span class="nav-link-text">Transfer</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo $row0["status"]; ?>">
              <i class="fa fa-exchange-alt"></i>
              <span class="nav-link-text">Transfer to Other Bank</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo $row0["status"]; ?>">
              <i class=" fab fa-cc-visa"></i>
              <span class="nav-link-text">International Transfer</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="loan.php">
              <i class="ni ni-money-coins"></i>
              <span class="nav-link-text">Loan</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pay_bills.php">
              <i class="ni ni-box-2"></i>
              <span class="nav-link-text">Pay Bills</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="customer_profile.php">
              <i class="ni ni-settings-gear-65"></i>
              <span class="nav-link-text">Account settings</span>
            </a>
          </li>
        </ul>
        <!-- Divider -->
        <hr class="my-3">
        <!-- Heading -->
        <h6 class="navbar-heading p-0 text-muted">
          <span class="docs-normal">Other Services</span>
        </h6>
        <!-- Navigation -->
        <ul class="navbar-nav mb-md-3">
          <li class="nav-item">
            <a class="nav-link" href="contactus.php">
              <i class="ni ni-chat-round"></i>
              <span class="nav-link-text">Contact us</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="mailto:servicecfb@crestprovidentb.com">
              <i class="ni ni-user-run"></i>
              <span class="nav-link-text">Complain</span>
            </a>
          </li>
        
        </ul>
      </div>
    </div>
  </div>
</nav>
<!-- Main content -->
<div class="main-content" id="panel">
  <!-- Topnav -->
  <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
    <div class="container-fluid">
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Search form -->

        <!-- Navbar links -->
        <ul class="navbar-nav align-items-center  ml-md-auto ">
          <li class="nav-item d-xl-none">
            <!-- Sidenav toggler -->
            <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin" data-target="#sidenav-main">
              <div class="sidenav-toggler-inner">
                <i class="sidenav-toggler-line"></i>
                <i class="sidenav-toggler-line"></i>
                <i class="sidenav-toggler-line"></i>
              </div>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="logout_action.php" onclick="return confirm('Are you sure?')" role="button" >
              <i class="ni ni-button-power"></i>
            </a>
           
          </li>
        </ul>
        <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <i class="fa fa-user"></i>
                </span>
                <div class="media-body  ml-2  d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold"><?php echo $row0["last_name"] ?></span>
                </div>
              </div>
            </a>
           
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Core -->
  <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="assets/js/argon.js?v=1.2.0"></script>
</body>
</html>
