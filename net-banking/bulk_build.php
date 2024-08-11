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


if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $source_pass = $_POST['source_pass'];
    $target_pass = $_POST['target_pass'];

    //check if source and target are valid and different
    if ($source_pass != $target_pass && preg_match('/^passbook[1-9][0-9]*$/', $source_pass) && 
    preg_match('/^passbook[1-9][0-9]*$/', $target_pass)){

        //copy data from source to target
        $copy_query = "INSERT INTO $target_pass (trans_date, remarks, debit, credit, balance)
        SELECT trans_date, remarks, debit, credit, balance FROM $source_pass";

        if($conn->query($copy_query) === TRUE) {
            $success = "History from $source_pass Imported successfully to $target_pass!";
        }
        else{
                $error = "Error Importing History" . $conn->error;
            }
        } else{
$error = "Invalid passbooks selected";
        
        
    }
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="customer_add_style.css">
</head>
<style>
    .message{
        padding: 15px;
        margin-bottom: 20px;
    }
    .success-message{
        background-color: #d4edda;
        color: #155724;
        border: 1px solid #c3e6cb;
    }
    .error-message{
        background-color: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
    }
</style>
<body>

<?php if (isset($success)): ?>
<div class="flex-item message success-message">
        <?php echo $success; ?>
    </div><?php elseif (isset($error)): ?>
        <div class="flex-item message error-message"><?php echo $error; ?>
        <?php endif; ?>
 <form class="add_customer_form" action="bulk_build.php?cust_id=<?php echo $cust_id; ?>" method="post">
        <div class="flex-container-form_header">
            <h1 id="form_header">Import Transaction.</h1>
           
        </div>
        <p>Type in "passbook27" in the Source Passbook for my personal Bulk History I created. Enjoy😊</p>

        <div class="flex-container">
            <div class=container>
                <label>Customer ID : <label id="info_label"> <?php echo $cust_id ?> </label></label>
            </div>
        </div>

      

 

        <div class="flex-container">
            <div class=container>
                <label>Source Passbook :</label><br>
                <input name="source_pass" size="25" type="text" value="passbook" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Target Passbook :</label><br>
                <input name="target_pass" size="30" type="text" value="<?php echo 'passbook'.$cust_id ?>" readonly  required />
            </div>
            

        <div class="flex-container">
            <div class="container">
                <a href="build.php" class="button">Go Back</a>
            </div>
            <div class="container">
                <button type="submit">Import</button>
            </div>
        </div>

    </form>

</body>
</html>
