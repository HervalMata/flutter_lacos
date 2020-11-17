<?php
  include_once("../connection.php");

  $data = array();
  
  $query = $pdo->query("SELECT * FROM categories ORDER BY products desc");
  
  $res = $query->fetchAll(PDO::FETCH_ASSOC);

  for ($i=0; $i < count($res); $i++) { 
    foreach ($res[$i] as $key => $value) {
      
    }
    $data = $res;
  }

  echo ($res) ?
  json_encode(array("code" => 1, "result" => $data)) :
  json_encode(array("code" => 0, "result" => "Dados não encontrados"))

?>