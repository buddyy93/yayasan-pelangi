<?php
/**
* @var informasi untuk koneksi database
*/
$dbhost = 'localhost';
$dbuser = 'pras';
$dbpass = '';
$dbname = 'yayasan-pelangi';
 
/** koneksi ke database */
$db = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
 
// check koneksi
if ($db->connect_error) {
    die('Oops!! Terjadi error : ' . $db->connect_error);
}