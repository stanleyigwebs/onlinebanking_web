<?php
    include "validate_customer.php";

    // include "customer_navbar.php";
    include "connect.php";
 
    include "session_timeout.php";

    /*  Set appropriate error number if errors are encountered.
        Key (for err_no) :
        -1 = Connection Error.
         0 = Successful Transaction.
         1 = Insufficient Funds.
         2 = Wrong password entered. */
    $err_no = 0;

    if (isset($_GET['cust_id'])) {
        $receiver_id = $_GET['cust_id'];
        $sname = $_GET['fname'.''.'lname'];
    }

    $sender_id = $_SESSION['loggedIn_cust_id'];
    $amt = mysqli_real_escape_string($conn, $_POST["amt"]);
    
    $pin = mysqli_real_escape_string($conn, $_POST["password"]);

    $sql0 = "SELECT * FROM customer WHERE cust_id=".$sender_id." AND pin='".$pin."'";
    $result0 = $conn->query($sql0);
    $row0 = $result0->fetch_assoc();

    $sql5 = "SELECT * FROM customer WHERE cust_id=".$receiver_id;
    $result5 = $conn->query($sql5);
    $row5 = $result5->fetch_assoc();

    if (($result0->num_rows) > 0) {
        $sql1 = "SELECT balance,trans_id FROM passbook".$sender_id." ORDER BY trans_id DESC LIMIT 1";
        $result1 = $conn->query($sql1);
        $row1 = $result1->fetch_assoc();
        $sender_balance = $row1["balance"];
       

        $updated_sender_balance = $sender_balance - ($amt +($amt * 0.5/100));
        if($updated_sender_balance >= 0) {
            $sql2 = "SELECT balance FROM passbook".$receiver_id." ORDER BY trans_id DESC LIMIT 1";
            $result2 = $conn->query($sql2);
            $row2 = $result2->fetch_assoc();
            $receiver_balance = $row2["balance"];
           
            $updated_receiver_balance = $receiver_balance + $amt;

            $sql3 = "INSERT INTO passbook".$sender_id." VALUES(
                        NULL,
                        NOW(),
                        'EFT-00BNK".$row1["trans_id"]." online transfer to beneficiary: ".$row5["first_name"]." ".$row5["last_name"].", AC/No: ".$row5["account_no"]."',
                        '$amt',
                        '0',
                        '$updated_sender_balance'
                    )";

            $sql4 = "INSERT INTO passbook".$receiver_id." VALUES(
                        NULL,
                        NOW(),
                        'Received from: ".$row0["first_name"]." ".$row0["last_name"].", AC/No: ".$row0["account_no"]."',
                        '0',
                        '$amt',
                        '$updated_receiver_balance'
                    )";

            if (($conn->query($sql3) === TRUE) && ($conn->query($sql4) === TRUE)) {
                $err_no = 0;
				

            }
        }
        else {
            $err_no = 1;
        }
    }
    else {
        $err_no = 2;
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="success.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js" integrity="sha512-a6ctI6w1kg3J4dSjknHj3aWLEbjitAXAjLDRUxo2wyYmDFRcz2RJuQr5M3Kt8O/TtUSp8n2rAyaXYy1sjoKmrQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
</head>
<style>
    .text-danger strong {
    		color: #9f181c;
		}
		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}
		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}
		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}
		.receipt-main::after {
			background: #1e1e59 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}
		.receipt-main thead {
			background: #1e1e59 none repeat scroll 0 0;
		}
		.receipt-main thead th {
			color:#fff;
		}
		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}
		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}
		.receipt-right p i {
			text-align: center;
			width: 18px;
		}
		.receipt-main td {
			padding: 9px 20px !important;
		}
		.receipt-main th {
			padding: 13px 20px !important;
		}
		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}
		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}	
		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}
		.receipt-header-mid .receipt-left h1 {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
		}
		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}
		
		#container {
			background-color: #dcdcdc;
		}
</style>
<body>

<?php
   include "customer_topbar.php";
?>
   
<div class="container">
	<div class="row">
    <?php
            if ($err_no == 0) { ?>  
        <div class="receipt-main col-xs-10 col-sm-10 col-md-12 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="receipt-left">
							<img class="img-responsive" alt="logo" width="250px" src="./image/logo.PNG">
						</div>
					</div>
					<!-- <div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<div class="receipt-right">
							<h5>TechiTouch.</h5>
							<p>+91 12345-6789 <i class="fa fa-phone"></i></p>
							<p>info@gmail.com <i class="fa fa-envelope-o"></i></p>
							<p>Australia <i class="fa fa-location-arrow"></i></p>
						</div>
					</div> -->
				</div>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid">
					<div class="col-xs-10 col-sm-12 col-md-12 text-left">
						<div class="receipt-right">
							<h5>Transaction Details <small><br>Transaction Type : Payment</small></h5>
							<p><b>Transaction ref :</b> <b id="one"></b></p><br>
							<p><b>Transaction status :</b> Success</p><br>
							<p><b>EFT payment status :</b> Created</p><br>
                            <p><b>Amount :</b> <?="$$amt"?></p><br>
                            <p><b>Sender Name :</b> <?php echo htmlspecialchars($row["first_name"])."". htmlspecialchars($row["last_name"]); ?></p>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h1>Transaction Receipt</h1>
						</div>
					</div>
				</div>
            </div>
			<script>
      window.onload = function() {
            // Function to generate a random 10-digit number
            function generateRandomNumber() {
                return Math.floor(1000000000 + Math.random() * 9000000000);
            }

            // Get the <p> element
            var transactionRefElement = document.getElementById('one');

            // Generate the random number and set it as the content of the <p> element
            transactionRefElement.innerHTML += generateRandomNumber();
        };
</script>
            <div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Electronic Funds Transfer</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9">Payment Method</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i> Electronic Funds Transfer (ETF)</td>
                        </tr>
                        <tr>
                            <td class="col-md-9">Client Reference</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i>[Not available]</td>
                        </tr>
                        <tr>
                            <td class="col-md-9">Account status</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i>Active</td>
                        </tr>
                        <tr>
                            <td class="col-md-9">Email address</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i><?php echo $row['email'] ?></td>
                        </tr>
                        <tr>
                            <td class="col-md-9">Receiver Name</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i><?php echo htmlspecialchars($row5["first_name"])."". htmlspecialchars($row5["last_name"]); ?></td>
                        </tr>
                        <tr>
                            <td class="col-md-9">Receiver Account no</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i><?php echo $row5['account_no'] ?></td>
                        </tr>
                        <tr>
                            <td class="col-md-9">Transaction Date</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i><?php echo date("Y-m-d H:i:s");?></td>
                        </tr>
                        <tr>
                            <td class="text-right">
                            <p>
                                <strong>Transfer Amount: </strong>
                            </p>
                            <p>
                                <strong>Transfer Fees: </strong>
                            </p>
							</td>
                            <td>
                    
                            <p>
                                <strong><i class="fa fa-usd">USD</i> <?="$amt"?>.00</strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-usd">USD</i> <?="$amt" * 0.5/100 ?>.00</strong>
                            </p>
				
							</td>
                        </tr>
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-6 col-sm-6 col-md-12 text-center">
						<div class="">
							
							<h7 style="color: rgb(140, 140, 140);">Thank you for Banking with CrestProvident Bank!</h7>
						</div>
                    </div>
				</div>
            </div>
            <div class="flex-item">
            <a href="transfer_1.php" style="width:100%" class="btn btn-md btn-danger">Go Back</a>
        </div>
        </div>    
	</div>
</div>    
<!-- <article class="receipt">
	<section class="receipt__half upper">
    <h1 class="sm"><?php echo "Transfer Successful !\n"; ?></h1>
		<p><img width="150px" src="https://cdn3.iconfinder.com/data/icons/flat-actions-icons-9/792/Tick_Mark_Dark-512.png"></p>
		<h1><?="$$amt.00"?></h1>
		
		
		<div class="receipt__content">
			<table>
				<tbody>
					<tr>
						<td>Amount Sent</td>
						<td></td>
					</tr>
					<tr>
						<td>Vat Fees</td>
						<td>$0.00</td>
					</tr>
             
				</tbody>
			</table>
		</div>
	</section>
	
	<section class="receipt__half lower">
		<button>More info</button>
	</section>
</article> -->
<?php } ?>

<?php
            if ($err_no == 2) { ?>
              
           
<article class="receipt">
	<section class="receipt__half upper">
    <h1 class="sm"><?php echo "Wrong pin entered !\n"; ?></h1>
		<p><img width="100px" src="https://www.freeiconspng.com/uploads/error-icon-4.png"></p>
		<h1><?="$$amt"?></h1>
		
		

	</section>
	
</article>
<?php } ?>

<?php
            if ($err_no == 1) { ?>
              
           
<article class="receipt">
	<section class="receipt__half upper">
    <h1 class="sm"><?php echo "Insufficient Funds !\n"; ?></h1>
		<p><img width="100px" src="https://www.freeiconspng.com/uploads/error-icon-4.png"></p>
		
		
		

	</section>
	
</article>
<?php } ?>

<?php
            if ($err_no == -1) { ?>
              
           
<article class="receipt">
	<section class="receipt__half upper">
    <h1 class="sm"><?php echo "Connection Error ! Please try again later.\n"; ?></h1>
		<p><img width="100px" src="https://www.freeiconspng.com/uploads/error-icon-4.png"></p>
		
		
		

	</section>
	
</article>
<?php } ?>
 


<script type="text/javascript" src="success.js"></script>
</body>

</html>
