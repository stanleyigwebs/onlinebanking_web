<?php
    include "validate_customer.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";
    include "session_timeout.php";

    if (isset($_GET['cust_id'])) {
        $id = $_GET['cust_id'];
    }

    $sql0 = "SELECT * FROM customer WHERE cust_id=".$id;
    $result0 = $conn->query($sql0);
    $row0 = $result0->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="customer_add_style.css">
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
    <form class="" action="send_funds_action.php?cust_id=<?php echo $id ?>" method="post">
        
        <div class="flex-container-form_header">
            <h1 id="form_header">Transfer Funds</h1>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>
                    To : <label id="info_label">
                        <?php echo $row0["first_name"]." ".$row0["last_name"] ?>
                    </label>
                </label>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Account No : <label id="info_label"><?php echo $row0["account_no"] ?></label></label>
            </div>
        </div>
<div class="form-group mb-3">
                  <div class="input-group-merge input-group-alternative">
        <div class="flex-container">
            <div class=container>
                <label>Enter Amount (in $) :</label><br>
                <input type="text" name="amt" id="input-price" class="form-control just-number price-format-input" style="border: #f5dcdc 2px solid" placeholder="$0.00" size="24" type="text" autocomplete="off" required />
            </div>
        </div>
       

        <div class="flex-container">
            <div  class=container>
                <label>Enter your Pin:</b></label><br>
                <input class="form-control" style="border: #f5dcdc 2px solid" type="password" style="width:70px;" name="password" maxlength="4" size="43"  required />
            </div>
        </div>
</div></div>
        <div class="flex-container">


            <div class="container">
                <button class="btn btn-sm btn-primary" type="submit">Submit</button>
            </div>
            <div class="container">
                <a href="beneficiary.php" class="btn btn-sm btn-neutral">Go Back</a>
            </div>
            <div class="container">
                <button type="reset" class="reset btn btn-sm btn-danger" onclick="return confirmReset();">Reset</button>
            </div>
        </div>

    </form>

    <script>
    function confirmReset() {
        return confirm('Do you really want to reset?')
    }
    </script>
<script>
    $(document).on("keypress", ".just-number", function (e) {
  let charCode = (e.which) ? e.which : e.keyCode;
  if (charCode > 31 && (charCode < 48 || charCode > 57)) {
    return false;
  }
});
$(document).on('keyup', '.price-format-input', function (e) {
  let val = this.value;
  val = val.replace(/,/g, "");

    
  
 
});

$(document).ready(function(){
  $('#input-price').focus();
})

</script>
</body>
</html>
