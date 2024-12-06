<?php
    require_once('access.php');
    require_once('conexion.php');

    // Se recibe un json desde el frontend por medio de un fetch
    $jsonData = file_get_contents('php://input');
    $producto = json_decode( $jsonData);

    $nombre = $producto->nombre;
    $precio = $producto->precio;
    $imagen = $producto->imagen;
    $id_categoria = $producto->id_categoria;

    $sql = "INSERT INTO productos( nombre, precio, imagen, id_categoria)
            VALUES(:nombre, :precio, :imagen, :id_categoria)";

    $stm =$pdo->prepare($sql);
    $stm->bindParam(':nombre', $nombre );
    $stm->bindParam(':precio', $precio );
    $stm->bindParam(':imagen', $imagen );
    $stm->bindParam(':id_categoria', $id_categoria );

    if( $stm->execute()) {
        echo( json_encode( ['msg' => 'Ok']   ));
    } else {
        echo( json_encode( ['msg' => 'Error']   ));
    }

?>