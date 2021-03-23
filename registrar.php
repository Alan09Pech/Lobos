<?php
    /*En este archivo es donde se reciben y se incertan los tados en las
    tablas de la BD. Cada apartado del form tiene sus propias varibles y 
    sus propios métodos de incersión*/

    
    //recivir valores del form
include "conexion.php";


    //Datos personales

    $nombre  = $_POST["nombre"];
    $apellido= $_POST["apellidos"];
    $fecha   = $_POST["fecha"];
    $sexo    = $_POST["sexo"];
    $calle   = $_POST["calle"];
    $n       = $_POST["N°"];
    $cruce   = $_POST["cruce"];
    $colonia = $_POST["colonia"];
    $municipio = $_POST["municipio"];
    $cp = $_POST["CP"];
    $celular = $_POST["celular"];
    $curp = $_POST["curp"];
    $mailper = $_POST["Mpersonal"];
    $mailInst= $_POST["Minstitucional"];
    $facebook= $_POST["facebook"];
    $fechaIngreso =$_POST["fechaIngreso"];
    $telEmergencia = $_POST["celEmergencia"];
    

    $insertar = "INSERT INTO datos_personales(apellidos,nombre,fechaNacimiento,sexo,calle,
    N°,Cruce,Colonia_Fracc,Municipio,codigoPostal,Telefono,CURP,mail_Personal,mail_Institucional,
    perfil_Facebook,fechaIngreso,Tel_Emergencia)

    VALUE ('$apellido', '$nombre', '$fecha','$sexo','$calle','$n','$cruce',
    '$colonia','$municipio','$cp','$celular','$curp', '$mailper', '$mailInst',
    '$facebook','$fechaIngreso','$telEmergencia')";
    
    $resultado = mysqli_query($conexion,$insertar);

    if($resultado){
        echo "Hecho";
    }else{
        echo "No hecho";
    }

/////////////////////////////////////////////////////////////////////////////////////    
    //Datos académicos
    $matricula = $_POST["matricula"];
    $carrera = $_POST["carrera"];
    $ingreso = $_POST["ingreso"];
    $guion = $_POST["guion"];
    $vanDer = $_POST["vd"];
    $caja = $_POST["Caja"];
    $caboCajero = $_POST["Cabo_cajero"];
    $lienzo = $_POST["lienzo"];
    $vanIzq = $_POST["vi"];
    $corneta = $_POST["corneta"];
    $cCorneta =$_POST["ccorneta"];
    $abanderado = $_POST["abanderado"];
    $retDer = $_POST["rd"];
    $corOrdenes = $_POST["co"];
    $comandanteBG = $_POST["comandanteBG"];
    $comandanteEB = $_POST["comandanteEB"];
    $retIzq = $_POST["ri"];

    $insertar2 = "INSERT INTO datos_académicos(matricula,carrera,ingreso,guion,vanDer,caja,cabCajero,
    lienzo,vanIzq,corneta,cabCor,abanderado,retDer,CO,comandanteBG,comandanteEB,retIzq) 
    VALUES('$matricula','$carrera','$ingreso','$guion','$vanDer','$caja','$caboCajero','$lienzo',
    '$vanIzq','$corneta','$cCorneta','$abanderado','$retDer','$corOrdenes','$comandanteBG','$comandanteEB','$retIzq')";
    
    $resultado = mysqli_query($conexion,$insertar2);

    if($resultado){
        echo "Hecho";
    }else{
        echo "No hecho";
    }

////////////////////////////////////////////////////////////////////////////////////    

    //Datos médicos
    $seguroSocial = $_POST["seguro"];
    $tipoSangre = $_POST["sangre"];
    $enfermedad = $_POST["enfermedad"];
    
    $insertar3 =  "INSERT INTO datos_médicos(seguroSocial,Tipo_Sangre,Enfermedad_Alergia)
    VALUES('$seguroSocial', '$tipoSangre', '$enfermedad')";



$resultado = mysqli_query($conexion,$insertar3);

if($resultado){
    echo "Hecho";
}else{
    echo "No hecho";
}
