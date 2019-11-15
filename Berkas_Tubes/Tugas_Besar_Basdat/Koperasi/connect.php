<?php

 // this will avoid mysql_connect() deprecation error.
 error_reporting( ~E_DEPRECATED & ~E_NOTICE );
 // but I strongly suggest you to use PDO or MySQLi.
 
 define('dbHOST', 'localhost');
 define('dbUSER', 'root');
 define('dbPASS', '');
 define('dbNAME', 'koperasi');
 
 $conn = mysqli_connect(dbHOST,dbUSER,dbPASS);
 $dbcon = mysqli_select_db($conn,dbNAME);
 
 if ( !$conn ) {
  die("Connection failed : " . mysqli_error());
 }
 
 if ( !$dbcon ) {
  die("Database Connection failed : " . mysql_error());
 }
 
 ?>