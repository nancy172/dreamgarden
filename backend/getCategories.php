<?php
    // Se habilita CORS
    header('Access-Control-Allow-Origin: *');

    require_once('conexion.php');

    $sql = "SELECT *
            FROM categorias";
    $stm = $pdo->query($sql);
    $categorias =  $stm->fetchAll( PDO::FETCH_ASSOC );

    echo(json_encode( $categorias));

?>