<?php
  include_once("../connection.php");

  $name = '%' . $_GET['name'] . '%';
  $id_cat = $_GET['idcat'];

  $data = array();
  
  if ($id_cat == '') {
    $query = $pdo->query("SELECT * FROM products WHERE name 
                        like '$name'");
  } else {
    $query = $pdo->query("SELECT * FROM products WHERE category 
                        = '$id_cat'");
  }
  
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