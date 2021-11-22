<?php
require 'config/personal.php';
$request = $_REQUEST['items'];
if(isset($request)){
  $host = 'localhost';
  $user = $DB_USER;
  $password = $DB_PASSWORD;
  $dbName = $DB_NAME;
  $table = 'categories';
  $pdo = new PDO("mysql:host=$host;dbname=$dbName", $user, $password);
  $stmt = $pdo->prepare("SELECT * FROM $table");
  $stmt->execute();
  $data = $stmt->fetchAll();
  $pdo = null;

  $items = [['header' => 'Categorias']];
  foreach($data as $key){
    $ejemplo = [
      'text' => $key['description'],
      'url'  => 'categories/'.$key['id'],
      'icon' => 'fa fa-book-medical',
    ];
    array_push($items, $ejemplo);
  }
  //echo $data;
  echo json_encode($items);
}
