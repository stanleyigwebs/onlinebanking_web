<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_customer.php";
    include "connect.php";
    include "customer_sidebar.php";
    include "verify_beneficiary.php";
    include "session_timeout.php";
    if (isset($_GET['blocktf'])) {
      $_SESSION['blocktf'] = $_GET['blocktf'];
  }
    if (isset($_SESSION['loggedIn_cust_id'])) {
        $sql0 = "SELECT * FROM beneficiary".$_SESSION['loggedIn_cust_id'];

    }

?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="images/favicon.PNG" type="../images/png" sizes="32x32"/>
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
<div class=" pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-6 col-7">
              <h4 class=" text-white d-inline-block mb-0">Activity for: <?php echo $row0["account_no"]; ?></h4>
               <!-- Search form -->
               


            </div>
           

            
            <div class="col-lg-6 col-5 text-right">
        
          <form action="" method="post" class=" navbar-search navbar-search-light form-inline mr-sm-3" id="navbar-search-main">
           
              <div class="input-group input-group-alternative input-group-merge">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-search"></i></span>
                </div>
                <input style="height:15px; width:150px;" class="form-control" placeholder="beneficiary" type="text">
              </div>
        
            <button type="button" class="close" data-action="search-close" data-target="#navbar-search-main" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button> <select class="btn btn-sm btn-neutral"name="by" id="by">
                
                            <option value="name">Name</option>
                            <option value="acno">Ac/No</option>
                        
                    </select>
          </form>
          <a class="btn btn-sm btn-success" href="add_beneficiary.php">Add</a>
          <ul class="navbar-nav align-items-center  ml-md-auto ">
          <li class="nav-item d-sm-none">
              <a class="nav-link" href="#" data-action="search-show" data-target="#navbar-search-main">
                <i class="ni ni-zoom-split-in"></i>
              </a>
            </li>
</ul>

        
                   
          
                    
             
            </div>
          </div>
        </div>
        <nav aria-label="...">
                <ul class="pagination mb-0">

                  <li class="page-item ">
                    <a class="page-link" href="transfer_1.php">1</a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">2</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#" onclick="return confirm('select a beneficiary')">3</a></li>

                </ul>
              </nav>
      </div>
    </div>
    

    <?php
            $result = $conn->query($sql0);
            $isBenefPresent = 0;
            $back_button = FALSE;

            if ($result->num_rows > 0) {
            // output data of each row
            $i = 0;
            while($row = $result->fetch_assoc()) {
                $i++;

                if (isset($_POST['submit'])) {
                    $back_button = TRUE;
                    $search = $_POST['search'];
                    $by = $_POST['by'];

                    if ($by == "name") {
                        $sql1 = "SELECT cust_id, first_name, last_name, account_no FROM customer
                        WHERE cust_id=".$row["benef_cust_id"]." AND (first_name LIKE '%$search%'
                        OR last_name LIKE '%$search%' OR CONCAT(first_name, ' ', last_name) LIKE '%$search%')";
                    }
                    else {
                        $sql1 = "SELECT cust_id, first_name, last_name, account_no FROM customer
                        WHERE cust_id=".$row["benef_cust_id"]." AND account_no LIKE '$search'";
                    }
                }
                else {
                    $sql1 = "SELECT cust_id, first_name, last_name, account_no
                             FROM customer WHERE cust_id=".$row["benef_cust_id"];
                }

                $result1 = $conn->query($sql1);
                if ($result1->num_rows > 0) {
                    $isBenefPresent = 1;
                    $row1 = $result1->fetch_assoc();

                    if (isset($_SESSION['loggedIn_cust_id'])) {
                      $sql2 = "SELECT * FROM customer WHERE cust_id=".$_SESSION['loggedIn_cust_id'];
                      $result2 = $conn->query($sql2);
                      $row2 = $result2->fetch_assoc();
                      }
                ?>
                
    <!-- Page content -->
    <div class="container-fluid mt--6">
               <!-- Card stats -->
               
               <div class="row">
            <div class="col-xl-6 col-md-8">
              <div class="card card-stats">
                <!-- Card body -->
                <a href="<?php echo $row2["blocktf"]; ?>?cust_id=<?php echo $row1["cust_id"] ?>">
                <div class="card-body">
                  <div class="row">
                    <div class="col">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
                      <h5 class="card-title text-uppercase text-muted mb-0">Beneficiary <?php echo $i . "."; ?></h5>
                      <span id="name" class="h2 font-weight-bold mb-0"><?php echo $row1["first_name"] . " " . $row1["last_name"]; ?></span>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    
                    <span class="text-nowrap"><?php echo "Ac/No : " . $row1["account_no"]; ?></span> 

                  </p>
                  <a class="btn btn-sm btn-danger" href="delete_beneficiary.php?cust_id=<?php echo $row1["cust_id"] ?>"
                                     onclick="return confirm('Are you sure?')">Delete</a>
                </div>

              </div>
              </a><br>
            </div>
      <!-- Dark table -->

      <!-- Footer -->

    </div>     
     <div >
            <a class="btn btn-success" href="add_beneficiary.php">Add</a>
        </div>
                </div>




            <?php }}}

            if ($isBenefPresent == 0) { ?>
                <p id="none"> No beneficiaries found :(</p>
            <?php }
            if ($back_button) { ?>
                <div class="flex-container-bb">
                    <div class="back_button">
                        <a href="beneficiary.php" class="button">Go Back</a>
                    </div>
                </div>
            <?php }
            $conn->close(); ?>
    </div>


    <script>
    /*  The problem with lots of menus sharing same anchor(dropdown-content) is that clicking on
        any of the buttons produces the same output as clicking the first button. Thus only the
        menu associated with the first button opens. This is BIG PROBLEM when we have lots of menus
        inside the while-loop.
        Hence, solve this problem using dynamic naming to create different anchors for different
        buttons.
        This is a proper solution and NOT a hack/workaround */
    function dropdown_func(i) {
        // Dynamic naming of the dropdown #id
        var doc_id = "dropdown".concat(i.toString());

        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;

        // Close any menus, if opened, before opening a new one
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
              openDropdown.classList.remove('show');
            }
        }

        document.getElementById(doc_id).classList.toggle("show");
        return false;
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
      if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;

        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }

    // Sticky search-bar
    $(document).ready(function() {
        var curr_scroll;

        $(window).scroll(function () {
            curr_scroll = $(window).scrollTop();

            if ($(window).scrollTop() > 120) {
                $("#the-search-bar").addClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").addClass('fi-search-bar-fixed');
              }
            }

            if ($(window).scrollTop() < 121) {
                $("#the-search-bar").removeClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").removeClass('fi-search-bar-fixed');
              }
            }
        });

        // Fixes some 'unfortunate-graphics-derp' while resizing the window
        $(window).resize(function () {
            var class_name = $("#fi-search-bar").attr('class');

            if ((class_name == "flex-item-search-bar fi-search-bar-fixed") && ($(window).width() < 856)) {
                $("#fi-search-bar").removeClass('fi-search-bar-fixed');
            }

            if ((class_name == "flex-item-search-bar") && ($(window).width() > 855) && (curr_scroll > 120)) {
                $("#fi-search-bar").addClass('fi-search-bar-fixed');
            }
        });
    });

    </script>
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
