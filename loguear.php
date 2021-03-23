<?php
    require 'conexion.php';
    session_start();

    $usuario = $_POST['usuario'];
    $clave = $_POST['contraseña'];

    $q = "SELECT COUNT(*) as contar from usuarios where usuario = '$usuario' and contraseña = '$clave'";
    $consulta = mysqli_query($conexion,$q);
    $array = mysqli_fetch_array($consulta);

    if($usuario=="admin" && $clave == "adminLobo"){
        $_SESSION['username'] = $usuario;
        header("location: sesionFelipe.html");
    }elseif($usuario=="lobo" && $clave == "gcLobo"){
        header("location: formulario.html");
    }else{
        echo "Datos incorrectos";
    }

?>