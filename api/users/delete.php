<?php
  include_once("../connection.php");

  $id = $_GET['id'];

  $data = array();
  
  $query = $pdo->query("DELETE FROM users WHERE id 
                        like '$id'");

  echo ($query) ?
  json_encode(array("code" => 1, "result" => "Excluído com sucesso")) :
  json_encode(array("code" => 0, "result" => "Erro ao excluir"))

?>