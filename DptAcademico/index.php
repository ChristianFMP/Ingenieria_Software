<?php
session_start();
include("conexion.php");
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$usuario = $_POST['usuario'];
	$password = $_POST['pass'];
	$query = "select * from usuario where (Usuario = '$usuario') limit 1";
	$registro = mysqli_query($con, $query);
	if ($registro){
		if (mysqli_num_rows($registro) > 0){
			$datos_usuario = mysqli_fetch_assoc($registro);
			// Validar contraseña
			if ($datos_usuario['Password'] === $password){
				$_SESSION['Id_Usuario'] = $datos_usuario['Id_Usuario'];
				// Redirigir a la pagina de administrador docente
				if ($datos_usuario['Id_Cargo'] == 2){
					header("Location: docente.html");
					die;
				}
				else{
					header("Location: administrador.html");
					die;
				}
			}
			else{
				echo "<script>alert('Contraseña Incorrecta')</script>";
			}
		}
		else{
			echo "<script>alert('El usuario no existe en la base de datos')</script>";
		}
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Departamento Academico Informatica</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="contenido">
	<div><br><center><h2 style="color: #000;">LOGIN</h2></center></div>
	<div class="logo"><center><img src="images/logoinformatica.png" width="200" height="200"></center></div>
	<form method="post">
	<div class="frm">
		<hr class="linea">
		<table>
			<tr><td class="Textotabla">Usuario:</td><td><input type="text" name="usuario" placeholder="Email" class="Celdalogin" required></td></tr>			
			<tr><td class="Textotabla">Contraseña:</td><td><input type="password" name="pass" placeholder="Codigo" class="Celdalogin" required></td></tr>
		</table>
	</div>
	<hr class="linea">
	<div class="btn">
		<center>
		<table>
			<tr><td><input type="submit" name="register" value="INGRESAR" class="botoniniciosesion"></td></tr>
		</table></center>
	</div>
	</form>
</div>
</br>
</body>
</html>