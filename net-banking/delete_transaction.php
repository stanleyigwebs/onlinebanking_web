<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_customer.php";
    include "connect.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";
    include "session_timeout.php";

    if (!isset($_GET['cust_id']) || !isset($_GET['trans_id'])) {
        die("Customer ID or Transaction ID is not provided.");
    }
    $success = false;
    $success = true;
    $cust_id = intval($_GET['cust_id']);
    $trans_id = intval($_GET['trans_id']);
    
    // Delete the transaction
    $sql = "DELETE FROM passbook" . $cust_id . " WHERE trans_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $trans_id);
    
    if ($stmt->execute()) {
        echo "Transaction deleted successfully.";
    } else {
        echo "Error deleting transaction: " . $conn->error;
    }
    
    $stmt->close();
    $conn->close();
    
?>
