<?php
$config = [];
$config['providers'] = [];
$config['secure'] = [];
$config['secure']['mail'] = [];
$config['secure']['database'] = [];
$config['secure']['providers'] = [];



$config['product'] = 'tripulante';
$config['version'] = '1.0';
$config['description'] = 'Tripulante';
$config['environment'] = 'development'; /* development | production */

$path = __DIR__;

$db_host_name = '127.0.0.1';
$db_port = '3306';
//$db_database = 'tripulan_cuentos';
$db_database = 'tripulante';
//$db_username = 'tripulan_root';
$db_username = 'root';
//$db_password = 't-Z{{mub8?YO';
$db_password = 'mysql';

$config['secure']['database']['connection'] = "mysql:dbname=$db_database;host=$db_host_name;port=$db_port;";
$config['secure']['database']['username'] = $db_username;
$config['secure']['database']['password'] = $db_password;



?>
