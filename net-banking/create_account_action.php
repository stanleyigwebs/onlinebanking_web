<?php
    include "connect.php";
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="action_style.css">
</head>

<?php
$first_name = mysqli_real_escape_string($conn, $_POST["fname"]);
$last_name = mysqli_real_escape_string($conn, $_POST["lname"]);
$dob = mysqli_real_escape_string($conn, $_POST["dob"]);
$Routing_no = mysqli_real_escape_string($conn, $_POST["Routing"]);
$email = mysqli_real_escape_string($conn, $_POST["email"]);
$phone_no = mysqli_real_escape_string($conn, $_POST["phno"]);
$address = mysqli_real_escape_string($conn, $_POST["address"]);
$pin = mysqli_real_escape_string($conn, $_POST["pin"]);
$uname = mysqli_real_escape_string($conn, $_POST["cus_uname"]);
$pwd = mysqli_real_escape_string($conn, $_POST["cus_pwd"]);

$sql0 = "SELECT MAX(cust_id) FROM customer";
$result = $conn->query($sql0);
$row = $result->fetch_assoc();
$id = $row["MAX(cust_id)"] + 1;

/*  Prevent mismatch between cust_id and benef/passbook table number.
    This is because when a row is deleted from customer AUTO_INCREMENT does
    not reset but keeps increasing.
    Hence resest AUTO_INCREMENT to $id and eleminate the error. */
$sql5 = "ALTER TABLE customer AUTO_INCREMENT=".$id;
$conn->query($sql5);

$sql1 = "CREATE TABLE passbook".$id."(
            trans_id INT NOT NULL AUTO_INCREMENT,
            trans_date DATETIME,
            remarks VARCHAR(255),
            debit INT,
            credit INT,
            balance INT,
            PRIMARY KEY(trans_id)
        )";

$sql2 = "CREATE TABLE beneficiary".$id."(
            benef_id INT NOT NULL AUTO_INCREMENT,
            benef_cust_id INT UNIQUE,
            account_no INT UNIQUE,
            PRIMARY KEY(benef_id)
        )";

$sql3 = "INSERT INTO customer VALUES(
            NULL,
            '$first_name',
            '$last_name',
            '$dob',
            '$Routing_no',
            '$email',
            '$phone_no',
            '$address',
            '$pin',
            '$uname',
            '$pwd'
        )";

$sql4 = "INSERT INTO passbook".$id." VALUES(
            NULL,
            NOW(),
            'Opening Balance',
            '0',
            '0.00',
            '0.00'
        )";

?>

<body>
    <div class="flex-container">
        <div class="flex-item">
            <?php
            if (($conn->query($sql3) === TRUE)) { ?>
                <p id="info"><?php echo "Account creation submitted successfully !\n"; ?></p>
        </div>

        <div class="flex-item">
            <?php
            if (($conn->query($sql1) === TRUE)) { ?>
                <p id="info"><?php echo "successful!\n"; ?></p>
            <?php
            } else { ?>
                <p id="info"><?php
                echo "Error: " . $sql1 . "<br>" . $conn->error . "<br>"; ?></p>
            <?php } ?>
        </div>

        <div class="flex-item">
            <?php
            if (($conn->query($sql4) === TRUE)) { ?>
                <p id="info"><?php echo "updated successfully !\n"; ?></p>
            <?php
            } else { ?>
                <p id="info"><?php
                echo "Error: " . $sql4 . "<br>" . $conn->error . "<br>"; ?></p>
            <?php } ?>
        </div>

        <div class="flex-item">
            <?php
            if (($conn->query($sql2) === TRUE)) { ?>
                <p id="info"><?php echo "We would review and create your account!\n"; ?></p>
            <?php
            } else { ?>
                <p id="info"><?php
                echo "Error: " . $sql2 . "<br>" . $conn->error . "<br>"; ?></p>
            <?php } ?>
        </div>

            <?php
            } else { ?>
        </div>
        <div class="flex-item">
                <p id="info"><?php
                echo "Error: " . $sql3 . "<br>" . $conn->error . "<br>"; ?></p>
            <?php } ?>
        </div>
        <?php $conn->close(); ?>

        <div class="flex-item">
            <a href="crestprovidentb.com" class="button">Go back</a>
        </div>

    </div>

</body>
</html>
