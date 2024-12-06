<?php 
    // Se habilita CORS
    header('Access-Control-Allow-Origin: *');

    require_once('conexion.php');


    // $sql = "SELECT id_producto, nombre, precio, 
    //         CONCAT('http://localhost/backend/uploads/', imagen) AS imagen, 
    //         id_categoria
    //         FROM productos";

     // Consulta para unir productos con categorías
     $sql = "SELECT p.id_producto, 
            p.nombre, 
            p.precio, 
            CONCAT('http://localhost/backend/uploads/', p.imagen) AS imagen, 
            p.id_categoria, 
            c.nombre AS nombre_categoria
            FROM productos AS p
            INNER JOIN categorias AS c ON p.id_categoria = c.id_categoria";

    $stm = $pdo->query($sql);
    $productos =  $stm->fetchAll( PDO::FETCH_ASSOC );

    echo(json_encode( $productos ));
?>