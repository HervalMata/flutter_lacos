<?php

$db = 'flutter_lacos';
$host = 'http://127.0.0.1:3306';
$user = 'root';
$password = 'math3036';

date_default_timezone_set('America/Sao_Paulo');

try {
    $pdo = new PDO("mysql:dbname=$db;host=$host;charset=utf8", "$user", "$password");
  } catch (Exception $e) {
    echo "Erro ao conectar com o banco de dados" . $e;
  }
?>