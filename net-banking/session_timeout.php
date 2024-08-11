<?php
    if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 5000)) {
        header("location:logout_action.php?sessionExpired=true");
        exit();
    }
    $_SESSION['LAST_ACTIVITY'] = time(); // update last activity time stamp

?>
