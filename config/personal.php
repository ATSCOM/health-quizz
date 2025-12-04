<?php
## INFO DB - Ahora usando variables de entorno de Laravel
$DB_USER = env('DB_USERNAME', 'health_user');
$DB_PASSWORD = env('DB_PASSWORD', 'secret');
$DB_NAME = env('DB_DATABASE', 'health_quizz');

## INFO URI - Para Docker
$HOST = env('DB_HOST', 'mysql');
