<?php


 error_reporting( ~E_DEPRECATED & ~E_NOTICE );
 
 
 define('DBHOST', 'localhost:8080');
 define('DBUSER', 'root');
 define('DBPASS', '');
 define('DBNAME', 'members');
 
 $conn = mysql_connect(DBHOST,DBUSER,DBPASS);
 $dbcon = mysql_select_db(DBNAME);
 
 if ( !$conn ) {
  die("Connection failed : " . mysql_error());
 }
 
 if ( !$dbcon ) {
  die("Database Connection failed : " . mysql_error());
 }
 ?>