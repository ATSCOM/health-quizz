<?php
$request = $_REQUEST['items'];
if(isset($request)){
  $host = 'localhost';
  $user = 'yxd';
  $password = 'AmHt2018Ab.';
  $dbName = 'health';
  $table = 'quizzes';
  $pdo = new PDO("mysql:host=$host;dbname=$dbName", $user, $password);
  $stmt = $pdo->prepare("SELECT * FROM $table");
  $stmt->execute();
  $data = $stmt->fetchAll();

  $items = [];
  foreach($data as $key){
    $ejemplo = [
      'text' => $key['description'],
      'url'  => 'category/'.$key['id'],
      'icon' => 'fas fa-chart-area',
    ];
    array_push($items, $ejemplo);
  }
  //echo $data;
  echo json_encode($items);
}
