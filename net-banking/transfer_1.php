<!--
=========================================================
* Argon Dashboard - v1.2.0
=========================================================
* Product Page: https://www.creative-tim.com/product/argon-dashboard


* Copyright  CrestProvidentBank (http://www.creative-tim.com)
* Coded by www.creative-tim.com



=========================================================
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<?php
    include "validate_customer.php";
    include "header.php";
    include "customer_navbar.php";
   include "customer_sidebar.php";


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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Enjoy the benefits of being a CrestProvidentBank client. We offer checking &amp; savings accounts, credit cards, insurance, and loans. Open your CrestProvidentBank account today!">
  <meta name="author" content="CrestProvidentBank">
  <title>Crest Provident Bank::Transfer</title>
  <!-- Favicon -->
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
 
    <!-- Header -->
    <!-- Header -->
  <div class="main-content" id="panel">
  

    <div class="header bg-secondary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-2 col-10">
              <h6 class="h2 mb-0">Please select the account</h6>

            </div>

          </div>
          <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination mb-0">

                  <li class="page-item active ">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#" onclick="return confirm('Please select an account')">2</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#" onclick="return confirm('complete the previous step')">3</a></li>

                </ul>
              </nav>
            </div>
          <!-- Card stats -->
          <div class="row">
            <div class="col-xl-6 col-md-8">
              <div class="card card-stats">
                <!-- Card body -->
                <a href="beneficiary.php">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">SAVINGS ACCOUNT</h5>
                      <span class="h2 font-weight-bold mb-0">$<?php echo number_format($row1["balance"]); ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-primary text-white rounded-circle shadow">
                        <i class="fas fa-dollar-sign"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <span class="text-success mr-2"><i class=" fa fa-circle"></i></span>
                    <span class="text-nowrap">Account number</span> - <?php echo $row0["account_no"]; ?>
                  </p>
                </div>
</a>
              </div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->

      <!-- Footer -->
  </div>
  
  <!-- Argon Scripts -->


  <!-- Core -->
  <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Optional JS -->
  <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
  <script src="assets/vendor/chart.js/dist/Chart.extension.js"></script>
  <!-- Argon JS -->
  <script src="assets/js/argon.js?v=1.2.0"></script>
</body>

</html>
