<?php
require_once __DIR__ . '/../vendor/autoload.php';
$currentDate = date('Y-m-d H:i:s');
$currentIp = $_SERVER['REMOTE_ADDR'];
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello from Docker</title>
  </head>
  <body>
    <h1>Hello from Docker!</h1>

    <p>This application is Dockerized and includes the following components:</p>

    <ul>
      <li>PHP 8.3 & XDebug</li>
      <li>PHP-FPM</li>
      <li>Nginx</li>
      <li>MySQL</li>
    </ul>
  </body>
</html>
