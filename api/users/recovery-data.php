<?php
  include_once("../connection.php");

  $id = $_GET['id'];

  $data = array();
  
  $query = $pdo->query("SELECT * FROM users WHERE id 
                        like '$id'");
  
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