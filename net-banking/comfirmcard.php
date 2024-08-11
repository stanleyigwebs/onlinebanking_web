<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

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

    if (isset($_SESSION['loggedIn_cust_id'])) {
        $sql0 = "SELECT * FROM beneficiary".$_SESSION['loggedIn_cust_id'];
    }
?>
<!DOCTYPE html>
<html>
<head>
<title>Crest Provident Bank :: Card payment</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="UI Card Payment template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Lobster+Two:400,400i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'> 
<!-- //web font -->
</head>
<body>
    <div id="overlayer">
        <div class="spinner-border text-primary" role="status">
        <h1 class="load">Searching For Account...</h1></div> 
</div>
       <div class="loader">
    

        
     
    </div>
	<!-- main -->


	<div class="mainw3-agile">
		<span>Comfirm Transaction </span>
		
		<nav aria-label="..." class="text-center">
                <ul class="pagination mb-0">

                  <li class="page-item">
                    <a class="page-link" href="transfer_2.php">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="card.php" >2</a>
                  </li>
                  <li class="page-item active"><a class="page-link" href="#">3</a></li>

                </ul>
			  </nav>
		

<div class="row">
          <div class="col-md-12 mb-5">

            

            <form action="#" onclick="return confirm('Account Banned from making transfer please contact CrestProvident customer care')" class="p-5 bg-white">
               
<div class="row form-group">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="text-black" for="fname">PIN</label>
                  <input type="text" id="fname" class="form-control" required="">
                </div>
             

              <div class="row form-group">
                <div class="col-md-12">
                  <input style="background-color:rgb(238, 184, 5);" type="submit" value="Comfirm" class="btn btn-md text-white">
                </div>
              </div>
  
            </form>
          </div>
          
        </div>


	<!-- //copyright -->  
	<!-- Validator js -->  
	<script src="js/creditCardValidator.js" type="text/javascript"></script>
	<!-- //Validator -->  
	<script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/jquery-ui.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.countdown.min.js"></script>
  <script src="../js/client.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/jquery.fancybox.min.js"></script>
  <script src="../js/jquery.sticky.js"></script>
  <script src="../js/isotope.pkgd.min.js"></script>
<!-- <script src="js/accordion.js" type="text/javascript"></script> -->
  
  <script src="../js/main.js" ></script>
</body>
</html>