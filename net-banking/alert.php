<?php
$result="";
$cust_id="";
    include "validate_admin.php";
    include "connect.php";
    include "header.php";
    include "user_navbar.php";
    include "admin_sidebar.php";
    include "session_timeout.php";


    $trans_id = $_GET['trans_id'];
    $query = DB::query("SELECT * FROM passbook".$_SESSION['cust_id']);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="customer_add_style.css">
    <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
    <title>Document</title>
</head>
<body>

<h3><?= $result; ?></h3>
<?php

        foreach ($query as $value) {
            echo '
<form class="add_customer_form" action="approve_action.php?trans_id='.$value['trans_id'].'" method="post">
        <div class="flex-container-form_header">
            <h1 id="form_header">Send alert</h1>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Transaction Id:'.$value['trans_id'].'</label>
            </div>
        </div>

            <div class="flex-container">
            <div class=container>
                <label>Transaction date & time:'.$value['trans_date'].'</label>
               
            </div>
            </div>
            <div class="flex-container">
            <div class=container>
                <label>Description</label><br>
                <select style="width:300px">
                <option value='.$value['remarks'].'>'.$value['remarks'].'</option>
                <option value="Transfer Successful">Transfer Successful</option>
                </select>
               
            </div>
            </div>
            <div class="flex-container">

            </div>
            <div class="flex-container">
            <div class=container>
                <label>Amount:'.$value['debit'].'</label><br>
                
            </div>
            </div>
            <div class="flex-container">
            <div class=container>
            <label>Balance (USD) : 
               </label>
               <input type="text" name="" value='.$value['balance'].'>
            </div>
            </div>
        <div class="flex-container">

                <input class="btn  btn-primary" name="send"  type="submit" value="send">
            </div>
        <form>
        ';
        }
        ?>
</body>
</html>