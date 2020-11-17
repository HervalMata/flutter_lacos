<?php
  include_once("../connection.php");

  $name = $_POST['name'];
  $email = $_POST['email'];
  $cpf = $_POST['cpf'];
  $phone = $_POST['phone'];
  $password = $_POST['password'];
  $id = $_POST['id'];

  if ($name == '' or $email == '' or $cpf == '') {
    echo(json_encode(array("message" => 'Preencha os dados')));
  }

  if ($id == '') {
    $res = $pdo->query("SELECT * FROM users 
                      WHERE user = '$email' or cpf = '$cpf' ");

    $data = $res->fetchAll(PDO::FETCH_ASSOC);

    $lines = count($data);

    if ($lines > 0) {
      $email_recovery = $data[0]['user'];
      $cpf_recovery = $data[0]['cpf'];
    }

    if ($email == @$email_recovery) {
      echo(json_encode(array("message" => 'Email Já cadastrado')));
    }

    if ($cpf == @$cpf_recovery) {
      echo(json_encode(array("message" => 'CPF Já cadastrado')));
    }

    $res = $pdo->prepare("INSERT INTO users (name, cpf, phone, user, password, level) 
                        values (:name, :cpf, :phone, :user, :password, :level)");

    $res->bindValue(":name", $name);
    $res->bindValue(":user", $user);    
    $res->bindValue(":cpf", $cpf); 
    $res->bindValue(":password", $password); 
    $res->bindValue(":level", 'Cliente');  
    $res->bindValue(":phone", $phone);  
    $res->execute();
    
    if ($res) {
      echo(json_encode(array("message" => 'Inserido com sucesso')));
    }
  } else {
    $res = $pdo->prepare("UPDATE users SET name = :name, cpf = :cpf, 
                        phone = :phone, user = :user, password = :password, level = :level 
                        WHERE id = :id");

    $res->bindValue(":name", $name);
    $res->bindValue(":user", $user);    
    $res->bindValue(":cpf", $cpf); 
    $res->bindValue(":password", $password); 
    $res->bindValue(":level", 'Cliente');  
    $res->bindValue(":phone", $phone);  
    $res->execute();
    
    if ($res) {
      echo(json_encode(array("message" => 'Atualizado com sucesso')));
    }
  }

?>