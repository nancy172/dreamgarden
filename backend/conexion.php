<?php
    $host = 'localhost';
    $dbname = 'ecommerce';
    $user = 'root';
    $password = '';
    try {
        $pdo =  new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    } catch (PDOException $error) {
        echo( $error);
    }
?>