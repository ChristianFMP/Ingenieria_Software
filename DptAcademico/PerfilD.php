<?php
include("conexion.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/menu.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="./style.css">
	<title>Portal Docente</title>
</head>
<body>
<div class="fondo">
<div class="cont">
	<div class="barralateral">
		<div class="foto">
			<center>
				<h3 class="bv">Bienvenido</h3>
				<h3 style="color: #B30027;">JAVIER ARTURO ROZAS HUACHO</h3>
				<br>
				<img src="images/Img_Docentes/rozas.jpg" width="110" height="110" style="border-radius: 55px;">
			</center>			
		</div>
		<center>
		<div class="cargo"><h3 style="padding-top: 5px;">DOCENTE</h3></div>
		</center>
		<div class="menulateral">
			<br>
			<div class="card">
			  <div class="menu">
			    <div class="toggle">
			      <div class="line-1"></div>
			      <div class="line-2"></div>
			    </div>
			      <ul>
			        <li>
			          <i class="iconos"><img src="images/perfil.png" width="30" height="30"></i>
			          <span><a href="PerfilD.php">Mi Perfil</a></span>
			        </li>
			        <li>
			          <i class="iconos"><img src="images/carga.png" width="30" height="30"></i>
			          <span><a href="Carga_AcademicaD.php">Carga Academica</a></span>
			        </li>
			      </ul>
			  </div>
			</div>
			<script src="js/menu.js"></script>
		</div>
	</div>
	<div class="contenidofrm">
		<div class="cerrarsecion">
			<table>
				<tr>
					<td width="50px"><img src="images/UNSAAC_Logo.png" width="60" height="60"></td>
					<td width="300px" style="color: #B30027;font-weight: bold;"><center><h3>UNIVERSIDAD NACIONAL DE</h3><h2>SAN ANTONIO ABAD DEL CUSCO</h2></center></td>
					<td width="550px" style="text-align: right;"><a href="docente.html"><input type="submit"  name="register" value="Inicio" class="botocerrarsesion"></a>|<a href="index.php"><input type="submit" name="register" value="Cerrar Sesión" class="botocerrarsesion"></a></td>
				</tr>
			</table>
		</div>
		<hr style="margin-top: 5px;">
		<p class="titulo">DOCENTE - DATOS PERSONALES DEL USUARIO</p>
		<div class="frm" style="width: 860px;">
			<?php
			$query_perfil = "select * FROM usuario WHERE Id_Usuario='DC003'";
			$docente = mysqli_query($con, $query_perfil);
			if ($docente){
				echo "<table class='tabladatos' style='margin-top:170px;margin-left:490px;position: fixed;'>";
				$cont=0;
				while (($fila = mysqli_fetch_assoc($docente)) != null){
					$idusuario = $fila['Id_Usuario'];
					$nombreusuario = $fila['Nombres'];
					$correo = $fila['CorreoElectrónico'];
					$telefono = $fila['Telefono'];
					echo "<tr>
							<td class='datostabla'>Codigo:</td>
							<td><input type='text' class='celdadatos' value='$idusuario' disabled='disabled' style='background: #f2e4f9;'></td>
						  </tr>";
					echo "<tr>
							<td class='datostabla'>Nombres:</td>
							<td><input type='text' class='celdadatos' value='$nombreusuario'></td>
						  </tr>";
					echo "<tr>
							<td class='datostabla'>Email:</td>
							<td><input type='text' class='celdadatos' value='$correo'></td>
						  </tr>";
					echo "<tr>
							<td class='datostabla'>Foto de Perfil:</td>
							<td><input type='file' class='botonfoto' ></td>
						  </tr>";
					echo "<tr>
							<td class='datostabla'>Telefono:</td>
							<td><input type='text' class='celdadatos' value='$telefono'></td>
						  </tr>";
					echo "<tr></tr>";
					echo "<tr></tr>";
					echo "<tr>
							<td class=''></td>
							<td class=''><input type='submit' name='register' value='Guardar' class='botonguardar'></td>
					     </tr>";
				}
				echo "</table>";
			}
			?>
		</div>

	</div>
</div>
</div>
</body>
</html>