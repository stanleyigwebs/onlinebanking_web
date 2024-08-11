<?php
    include "validate_admin.php";
    include "connect2.php";
    include "header.php";
    include "user_navbar.php";
    include "admin_sidebar.php";
    include "session_timeout.php";


?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="manage_customers_style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
</head>

<body>
 

    <div class="flex-container">
 


                <table id="transactions">
                    <tr>
                        <th>firstname</th>
                        <th>lastname</th>
                        <th>dob</th>
                        <th>address</th>
                        <th>phone</th>
                        <th>email</th>
                        <th>passport</th>
                        <th>username</th>
                        <th>password</th>
                        <th>pin</th>
                    </tr>
                    <?php
 $query = DB::query('SELECT * FROM request ');
foreach ($query as $key => $value) {
    echo '
                    <tr>
                        <td>'.$value['fname'].'</td>
                        <td>
                        '.$value['lname'].'
                        </td>
                        <td>'.$value['dob'].'</td>
                        <td>'.$value['address'].'</td>
                        <td>'.$value['phno'].'</td>
                        <td>'.$value['email'].'</td>
                        <td>'.$value['pass_no'].'</td>
                        <td>'.$value['uname'].'</td>
                        <td>'.$value['pwd'].'</td>
                        <td>'.$value['pin'].'</td>
                       
                    </tr>
                    ';
                }
                
                
                ?>
                     
            </table>
          
                
         
    

    </div>

          
           
          
                <div class="flex-container-bb">
                    <div class="back_button">
                        <a href="manage_customers.php" class="button">Go Back</a>
                    </div>
                </div>
          
         
    </div>

   

</body>
</html>
