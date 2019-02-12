|1	<?php
session_start();
include "conexion.php";
		$arreglo=$_SESSION['carrito'];
		
		for($i=0;$i<count($arreglo);$i++){
			
			
			$nom=$arreglo[$i]['Nombre'];
			$cantidad=$arreglo[$i]['Cantidad'];
			$precio=$arreglo[$i]['Precio'];
			$total=$arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio'];
			$total=$total+($arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio']);			
		}
		

?><!DOCTYPE html>
<html lang="es">
<head>
	
	<title>Carrito de Compras</title>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  href="../js/scripts.js"></script>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Monica Evangelista Designer</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="index.php">
                        Boutique
                    </a>
                </li>
                <li>
                    <a href="./carritodecompras.php" title="ver carrito de compras">Ver carrito<span class="badge"><span class="badge">obtenidos:
 <?php 
 $total=0;
			if(isset($_SESSION['carrito'])){
			$datos=$_SESSION['carrito'];
			
			$total=0;
			for($i=0;$i<count($datos);$i++){
          $numeross= $datos[$i]['Cantidad'];
			echo $numeross." / ";
  }
			}
			?></span></a>
                </li>
                 <li>
                   
                </li>
                
                
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                   <div class="col-lg-12"> 
                      <a href="#menu-toggle" class="" id="menu-toggle"><img src="img/logo.png"><img src="img/menulogo.png"></a>
	<section>
    
	<?php 
	
		


			$total=0;
			if(isset($_SESSION['carrito'])){
			$datos=$_SESSION['carrito'];
			
			$total=0;
			for($i=0;$i<count($datos);$i++){
				
	$nomb=$_POST['nombre'];
$corr =$_POST['correo'];
$tele = $_POST['telefono'];
$dd = $_POST['direccion'];
$ident = $_POST['cedula'];
$producto = $datos[$i]['Imagen'];
$prec = $datos[$i]['Cantidad']*$datos[$i]['Precio'];
$cantt = $datos[$i]['Cantidad'];
echo "<h1>".$nomb."</h1>";
echo $corr;
$sqlll="INSERT INTO comprar(
	nombre, 
	correo,
	telefono,
	direccion,
	cedula,
	preciototal,
	cantidad,
	productoimg)VALUES(
	'".$nomb."', 
	'".$corr."', 
	'".$tele."', 
	'".$dd."', 
	'".$ident."',
	'".$prec."',
	'".$cantt."',
	'".$producto."')"; 
	if ($link->query($sqlll))
    {    	
    echo "<div align=center>
	<h1 class=blanco>Su orden fue tomada<br>
    <br>Bienvenido</h1>
	<div>";

    }else
{
	
    echo "<h1>fallo en el envio</h1><br>";
    echo "<h1>Intente Registrarse mas tarde.</h1>";
    echo "<h1></h1>";
    echo mysql_error($link);
	
}
	
		}
	}
	
	?>

		
	</section>
    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
</body>
</html>