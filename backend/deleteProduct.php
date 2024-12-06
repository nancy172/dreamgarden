<?php
    require_once('access.php');
    require_once('conexion.php');

    $jsonData = file_get_contents('php://input');
    $producto = json_decode( $jsonData);

    $id_producto = $producto->id_producto;


    $sql = "DELETE FROM productos
            WHERE id_producto = :id_producto";

    $stm =$pdo->prepare($sql);
    $stm->bindParam(':id_producto', $id_producto );

    if( $stm->execute()) {
        echo( json_encode( ['msg' => 'Ok']   ));
    } else {
        echo( json_encode( ['msg' => 'Error']   ));
    }

?>