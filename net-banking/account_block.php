<?php
    include "validate_customer.php";

    // include "customer_navbar.php";
    include "connect.php";
 
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="success.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js" integrity="sha512-a6ctI6w1kg3J4dSjknHj3aWLEbjitAXAjLDRUxo2wyYmDFRcz2RJuQr5M3Kt8O/TtUSp8n2rAyaXYy1sjoKmrQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
</head>

<body>
<?php
   include "customer_topbar.php";
?>
    <div class="flex-container">

           
<article class="receipt">
	<section class="receipt__half upper">
	    <h1 style="text-align:center">Account Suspended !</h1>
    <h4 class="sm"> Your account has been banned from making Transfer, Due to security reasons you might not be able to perform some transaction.</h4>
    <span style="text-align:center">Please Contact support or Call : +1 (601) 298-8192</span>
		<p><img width="100px" src="https://www.freeiconspng.com/uploads/error-icon-4.png"></p>
		
		
		

	</section>
	
</article>




        <div class="flex-item">
            <a href="dashboard.php" class="btn btn-sm btn-danger">Go Back</a>
        </div>
 


<script type="text/javascript" src="success.js"></script>
</body>

</html>
