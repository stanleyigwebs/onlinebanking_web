<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_admin.php";
    include "connect.php";
    include "header.php";
    include "user_navbar.php";
    include "admin_sidebar.php";
    include "session_timeout.php";
if (!isset($_GET['cust_id'])) {
    die("customer id is not provided");
}

$cust_id = $_GET['cust_id'];
$success = false;

//fetch latest balance
$query_bal = "SELECT balance FROM passbook$cust_id ORDER BY trans_date DESC LIMIT 1";
$result_bal = $conn->query($query_bal);
$latest_bal = 0;

if ($result_bal->num_rows > 0){
    $row = $result_bal->fetch_assoc();
    $latest_bal = $row['balance'];
}
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $trans_date = $_POST['trans_date'];
    $remarks = $_POST['remarks'];
    $debit = $_POST['debit'];
    $credit = $_POST['credit'];
    $balance = $_POST['balance'];

    //insert transaction

    $stmt = $conn->prepare ("INSERT INTO passbook$cust_id (trans_date, remarks, debit, credit, balance) VALUES (?,?,?,?,?)");
    $stmt->bind_param("ssddd", $trans_date, $remarks, $debit, $credit, $balance);
    $stmt->execute();

    $success =true;

    $latest_bal=$balance;
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="customer_add_style.css">
</head>

<body>

<?php if ($sucess)
echo'
<div class="flex-item">
        <p class="info">Transaction added successfully!</p>
    </div>
'
?>
    

    <form class="add_customer_form" action="history.php?cust_id=<?php echo $cust_id; ?>" method="post">
        <div class="flex-container-form_header">
            <h1 id="form_header">Add Transaction.</h1>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Customer ID : <label id="info_label"> <?php echo $cust_id ?> </label></label>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Date & Time :</label><br>
                <input name="trans_date" size="30" type="datetime-local" required />
            </div>

        </div>


        <div class="flex-container">
            <div class=container>
                <label>Description:</label>
            </div>
            <div  class=container>
            <textarea name="remarks" required /></textarea>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Debit :</label><br>
                <input class="form-control just-number price-format-input" name="debit" size="30" id="input-price" type="text" placeholder="00000000"  required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Credit :</label><br>
                <input class="form-control just-number price-format-input" name="credit" size="25" id="input-price" type="text" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Balance :</label><br>
                <input class="form-control just-number price-format-input" name="balance" id="input-price" size="30" type="text" value="<?php echo $latest_bal ?>"  required />
            </div>
            

        <div class="flex-container">
            <div class="container">
                <a href="/build.php" class="button">Go Back</a>
            </div>
            <div class="container">
                <button type="submit">Insert</button>
            </div>
        </div>

    </form>

</body>

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
</html>
