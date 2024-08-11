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

    if (isset($_GET['cust_id'])) {
        $_SESSION['cust_id'] = $_GET['cust_id'];
    }

    $sql0 = "SELECT * FROM customer WHERE cust_id=".$_SESSION['cust_id'];
    $sql1 = "SELECT * FROM passbook".$_SESSION['cust_id']." WHERE trans_id=(
                    SELECT MAX(trans_id) FROM passbook".$_SESSION['cust_id'].")";

    $result0 = $conn->query($sql0);
    $result1 = $conn->query($sql1);

    if ($result0->num_rows > 0) {
        // output data of each row
        while($row = $result0->fetch_assoc()) {
            $fname = $row["first_name"];
            $lname = $row["last_name"];
            $gender = $row["gender"];
            $dob = $row["dob"];
            $Routing = $row["Routing_no"];
            $email = $row["email"];
            $phno = $row["phone_no"];
            $address = $row["address"];
            $branch = $row["branch"];
            $acno = $row["account_no"];
            $pin = $row["pin"];
            $cus_uname = $row["uname"];
            $cus_pwd = $row["pwd"];
            $stat = $row["status"];
            $bloc = $row["blocktf"];
        }
    }

    if ($result1->num_rows > 0) {
        // output data of each row
        while($row = $result1->fetch_assoc()) {
            $balance = $row["balance"];
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="customer_add_style.css">
</head>

<body>
    <form class="add_customer_form" action="edit_customer_action.php" method="post">
        <div class="flex-container-form_header">
            <h1 id="form_header">Edit/View Customer details . . .</h1>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Customer ID : <label id="info_label"> <?php echo $_SESSION['cust_id'] ?> </label></label>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>First Name :</label><br>
                <input name="fname" size="30" type="text" value="<?php echo $fname ?>" required />
            </div>
            <div  class=container>
                <label>Last Name :</b></label><br>
                <input name="lname" size="30" type="text" value="<?php echo $lname ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Balance (USD) : <label id="info_label"> <?php echo number_format($balance) ?> </label>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Gender :
                    <label id="info_label">
                    <?php
                        if ($gender == "male") {echo "Male";}
                        elseif ($gender == "female") {echo "Female";}
                        else {echo "Others";}
                    ?>
                    <label>
                </label>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Account Status:</label>
            </div>
            <div  class=container>
                <select name="stat">
                    <option value="transfer_1.php" <?php if ($stat == 'transfer_1.php') {?> selected="selected" <?php }?>>Active</option>
                <option value="account_block.php" <?php if ($stat == 'account_block.php') {?> selected="selected" <?php }?>>Disabled</option>
                    
                </select>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Block Transfer:</label>
            </div>
            <div  class=container>
                <select name="bloc">
                    <option value="valid.php" <?php if ($bloc == 'valid.php') {?> selected="selected" <?php }?>>Turned On</option>
                <option value="send_funds.php" <?php if ($bloc == 'send_funds.php') {?> selected="selected" <?php }?>>Turned Off</option>
                    
                </select>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Date of Birth :</label><br>
                <input name="dob" size="30" type="text" placeholder="yyyy-mm-dd" value="<?php echo $dob ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Routing No :</label><br>
                <input name="Routing" size="25" type="text" value="<?php echo $Routing ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Email-ID :</label><br>
                <input name="email" size="30" type="text" value="<?php echo $email ?>" required />
            </div>
            <div  class=container>
                <label>Phone No. :</b></label><br>
                <input name="phno" size="30" type="text" value="<?php echo $phno ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Address :</label><br>
                <textarea name="address" required /><?php echo $address ?></textarea>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Bank Branch :</label>
            </div>
            <div  class=container>
                <select name="branch">
                <option value="Virginia" <?php if ($branch == 'Virginia') { ?> selected="selected" <?php } ?>>Virginia</option>
    <option value="Florida" <?php if ($branch == 'Florida') { ?> selected="selected" <?php } ?>>Florida</option>
    <option value="California" <?php if ($branch == 'California') { ?> selected="selected" <?php } ?>>California</option>
    <option value="Maryland" <?php if ($branch == 'Maryland') { ?> selected="selected" <?php } ?>>Maryland</option>
    <option value="Texas" <?php if ($branch == 'Texas') { ?> selected="selected" <?php } ?>>Texas</option>
    <option value="Georgia" <?php if ($branch == 'Georgia') { ?> selected="selected" <?php } ?>>Georgia</option>
    <option value="North Carolina" <?php if ($branch == 'North Carolina') { ?> selected="selected" <?php } ?>>North Carolina</option>
    <option value="Washington State" <?php if ($branch == 'Washington State') { ?> selected="selected" <?php } ?>>Washington State</option>
    <option value="South Carolina" <?php if ($branch == 'South Carolina') { ?> selected="selected" <?php } ?>>South Carolina</option>
    <option value="Louisiana" <?php if ($branch == 'Louisiana') { ?> selected="selected" <?php } ?>>Louisiana</option>
    <option value="Arizona" <?php if ($branch == 'Arizona') { ?> selected="selected" <?php } ?>>Arizona</option>
    <option value="Kentucky" <?php if ($branch == 'Kentucky') { ?> selected="selected" <?php } ?>>Kentucky</option>
    <option value="Mississippi" <?php if ($branch == 'Mississippi') { ?> selected="selected" <?php } ?>>Mississippi</option>
    <option value="Nevada" <?php if ($branch == 'Nevada') { ?> selected="selected" <?php } ?>>Nevada</option>
    <option value="Illinois" <?php if ($branch == 'Illinois') { ?> selected="selected" <?php } ?>>Illinois</option>
    <option value="Hawaii" <?php if ($branch == 'Hawaii') { ?> selected="selected" <?php } ?>>Hawaii</option>
    <option value="Colorado" <?php if ($branch == 'Colorado') { ?> selected="selected" <?php } ?>>Colorado</option>
    <option value="Oklahoma" <?php if ($branch == 'Oklahoma') { ?> selected="selected" <?php } ?>>Oklahoma</option>
    <option value="New York State" <?php if ($branch == 'New York State') { ?> selected="selected" <?php } ?>>New York State</option>
    <option value="Alabama" <?php if ($branch == 'Alabama') { ?> selected="selected" <?php } ?>>Alabama</option>
    <option value="Connecticut" <?php if ($branch == 'Connecticut') { ?> selected="selected" <?php } ?>>Connecticut</option>
    <option value="Tennessee" <?php if ($branch == 'Tennessee') { ?> selected="selected" <?php } ?>>Tennessee</option>
    <option value="Rhode Island" <?php if ($branch == 'Rhode Island') { ?> selected="selected" <?php } ?>>Rhode Island</option>
    <option value="New Jersey" <?php if ($branch == 'New Jersey') { ?> selected="selected" <?php } ?>>New Jersey</option>
    <option value="Nebraska" <?php if ($branch == 'Nebraska') { ?> selected="selected" <?php } ?>>Nebraska</option>
                </select>
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Account No :</label><br>
                <input name="acno" size="25" type="text" value="<?php echo $acno ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div  class=container>
                <label>PIN(4 digit) :</b></label><br>
                <input name="pin" size="15" type="text" value="<?php echo $pin ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div class=container>
                <label>Username :</label><br>
                <input name="cus_uname" size="30" type="text" value="<?php echo $cus_uname ?>" required />
            </div>
            <div  class=container>
                <label>Password :</b></label><br>
                <input name="cus_pwd" size="30" type="text" value="<?php echo $cus_pwd ?>" required />
            </div>
        </div>

        <div class="flex-container">
            <div class="container">
                <a href="/manage_customers.php" class="button">Go Back</a>
            </div>
            <div class="container">
                <button type="submit">Update</button>
            </div>
        </div>

    </form>

</body>
</html>
