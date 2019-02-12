<!DOCTYPE html>

<html lang="es">

<head>

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

	

	<script type="text/javascript"  href="./js/scripts.js"></script>

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
                    <a href="./carritodecompras.php" title="ver carrito de compras">Ver carrito</a>
                </li>
                 <li>
                    <a href="./index.php" title="Volver">Volver</a>
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

		include 'conexion.php';

		$re=$link->query("select * from productos where id=".$_GET['id'])or die();

		while ($f=mysqli_fetch_array($re)) {

		?>

			

			<center>

				<img src="<?php echo $f['imagen'];?>"><br>

				<span><?php echo $f['nombre'];?></span><br>

				<span>Precio: <?php echo $f['precio'];?></span><br>

				<a class="btn btn-danger" href="./carritodecompras.php?id=<?php  echo $f['id'];?>">Añadir al carrito de compras</a>

			</center>

		

	<?php

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