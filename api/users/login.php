<?php
  include_once("../connection.php");

  $user = $_GET['user'];
  $password = $_GET['password'];

  $data = array();
  
  $query = $pdo->query("SELECT * FROM users WHERE user = '$user'  
                        and password = '$password'");
  
  $res = $query->fetchAll(PDO::FETCH_ASSOC);

  for ($i=0; $i < count($res); $i++) { 
    foreach ($res[$i] as $key => $value) {
      
    }
    $data = $res;
  }

  echo ($res) ?
  json_encode(array("code" => 1, "result" => $data)) :
  json_encode(array("code" => 0, "result" => "Dados incorretos"))

?>