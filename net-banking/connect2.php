<?php
//PDO CONNECTION
class DB {

    private static function connect(){
    $servername = "localhost";
     $username = "root";
      $dbpassword = "";
    //$username = "learncla_justin"
   $dbName = "trustwealthb_bank";
 
     $pdo = new PDO("mysql:host=$servername;dbname=$dbName", $username, $dbpassword);
     $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      return $pdo;
      //CHECK CONNECTION
         if(!$pdo){
         die("connection failed: " . $pdo->getMessage());
         }
    }
 
    public static function query($query , $params = array()){
        $statement = self::connect()->prepare($query);
        $statement->execute($params);
 
        if(explode(' ' ,$query)[0] == 'SELECT'){
            $data = $statement->fetchAll();
            return $data;
        }
        
    }
 
 
 }
?>