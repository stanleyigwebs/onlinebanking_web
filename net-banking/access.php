<?php
    include "connect.php";
    
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    $Routing_no = mysqli_real_escape_string($conn, $_POST["otp"]);

    $sql0 =  "SELECT * FROM customer WHERE Routing_no='".$Routing_no."'";
    $result = $conn->query($sql0);
    $row = $result->fetch_assoc();

    if (($result->num_rows) > 0) {
        $_SESSION['loggedIn_cust_id'] = $row["cust_id"];
        $_SESSION['isCustValid'] = true;
        $_SESSION['LAST_ACTIVITY'] = time();
        header("location:./dashboard.php?sort=tid_up");
    }
    else {
        session_destroy();
        die(header("location:verification.php?loginFailed=true"));
    }
?>
