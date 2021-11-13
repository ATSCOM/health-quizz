<?php
$request = $_REQUEST['items'];
if(isset($request)){
  $pdo = new PDO('mysql:host=localhost;dbname=health', 'jl', '911');
  $stmt = $pdo->prepare('SELECT * FROM categories');
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
