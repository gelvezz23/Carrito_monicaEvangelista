<?php
	
	$link=@mysqli_connect("localhost","root","");
	@mysqli_select_db($link,"modulext_carritodecompras") or die("ERROR CONECTANDO LA BASE DE DATOS");
	

?>