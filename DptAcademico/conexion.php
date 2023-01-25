<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "dbdptacademicoin";
if (!$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname)){
    die("Fallo la conexion!");
}

?>
            