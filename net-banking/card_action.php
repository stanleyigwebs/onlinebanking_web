<?php
$result="";
include 'connect.php';

if(isset($_POST['submit_btn'])) {

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
  $dob = $_POST['dob'];
  $address = $_POST['address'];
  $phno = $_POST['phno'];
$email = $_POST['email'];
$pass_no = $_POST['pass_no'];
$uname = $_POST['uname'];
$pwd = $_POST['pwd'];
$pin = $_POST['pin'];
  
	// header('location: signup.php');
	// echo "Error:Account Creation Successful";

 

    try {
        $SQLInsert = "INSERT INTO request (fname, lname, dob, address, phno, email, pass_no, uname, pwd, pin)
        VALUES (:fname, :lname, :dob, :address, :phno, :email, :pass_no, :uname, :pwd, :pin)";

        $statement = $con->prepare($SQLInsert);
        $statement->execute(array(':fname' =>$fname, ':lname' =>$lname, ':dob' => $dob, ':address' => $address, ':phno' => $phno, ':email' => $email, ':pass_no' => $pass_no, ':uname' => $uname, ':pwd' => $pwd, ':pin' => $pin));

        if($statement->rowCount()==1){
            $result = "Account creation request submitted!<br> <small style='color:red;'>we would contact you through email</small>";
		} 
	
    }
    catch(PDOException $e) {
        echo "Error:" .$e ->actionFailure();
    }
}

?>