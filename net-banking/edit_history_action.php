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

$cust_id =$_SESSION['cust_id'];
    
    $date =  $_POST['date'];
    $time =  $_POST['time'];
    $desc =  $_POST['desc'];
    $debit =  $_POST['debit'];
    $credit =  $_POST['credit'];
    $balance =  $_POST['balance'];

    $tdate = $date . '' . $time;

    $cust_id = intval($cust_id);
    $tdate = mysqli_real_escape_string($conn, $tdate);
    $desc = mysqli_real_escape_string($conn, $desc);
    $debit= floatval($debit);
    $credit = floatval($credit);
    $balance = floatval($balance);


$sql = "INSERT INTO passbook_$cust_id (trans_date, remarks, debit, credit, balance) VALUES (?,?,?,?,?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssddd", $trans_date, $desc, $debit, $credit, $balance);


?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="action_style.css">
</head>

<body>
    <div class="flex-container">
        <div class="flex-item">
            <?php
                if ($stmt->execute()) { ?>
                    <p id="info"><?php echo "Transaction Added Successfully !"; ?></p>
                <?php
                }
                else { ?>
                    <p id="info"><?php echo "Error: " . $sql . "<br>" . $stmt->error . "<br>"; ?></p>
                <?php
                }
            ?>
        </div>
        <?php $conn->close(); ?>

        <div class="flex-item">
            <a href="history.php" class="button">Add again</a>
        </div>

    </div>

</body>
</html>
