<?php
    include "validate_admin.php";
    include "header.php";
    include "user_navbar.php";
    include "admin_sidebar.php";
    include "session_timeout.php";
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin_home_style.css">
</head>

<body>
    <div class="flex-container">
        <div class="flex-item">
            <h1 id="customer">
                Welcome Investor !
            </h1>
            <p id="customer" style="max-width:800px">
                From here you can manage all of core Internet Banking settings.
                You can add/manage customers, view their transactions, Build history edit their
                details and even delete them.
                <br>Please keep in mind that with big power comes big responsibility.
                Therefore please do not misuse your admin for small clients Target block😝.
            </p>
            <div class="flex-item" style="width: 250px;">
            <sm>your developer</sm><br>
            <sm>Codeley(stanlee & co)</sm>
</div>
        </div>
    </div>

</body>
</html>

<?php include "easter_egg.php"; ?>
