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
	<title>Portal Administrador</title>
</head>
<body>
<div class="fondo">
<div class="cont">
	<div class="barralateral">
		<div class="foto">
			<center>
				<h3 class="bv">Bienvenido</h3>
				<h3 style="color: #B30027;">NILA ZONIA ACURIO USCA</h3>
				<br>
				<img src="images/Img_Docentes/sonia.jpg" width="110" height="110" style="border-radius: 55px;">
			</center>			
		</div>
		<center>
		<div class="cargo"><h3 style="padding-top: 5px;">ADMINISTRADOR</h3></div>
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
			          <span><a href="PerfilA.php">Mi Perfil</a></span>
			        </li>
			        <li>
			          <i class="iconos"><img src="images/lista.png" width="30" height="30"></i>
			          <span><a href="Lista_Cursos.php">Lista Cursos</a></span>
			        </li>
			        <li>
			          <i class="iconos"><img src="images/docentes.png" width="30" height="30"></i>
			          <span><a href="Lista_Docentes.php">Lista Docentes</a></span>
			        </li>
			        <li>
			          <i class="iconos"><img src="images/carga.png" width="30" height="30"></i>
			          <span><a href="Carga_Academica.php">Carga Academica</a></span>
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
					<td width="550px" style="text-align: right;"><a href="administrador.html"><input type="submit"  name="register" value="Inicio" class="botocerrarsesion"></a>|<a href="index.php"><input type="submit" name="register" value="Cerrar Sesión" class="botocerrarsesion"></a></td>
				</tr>
			</table>
		</div>
		<hr style="margin-top: 5px;">
		<p class="titulo">LISTA DE DOCENTES - SEMESTRE 2022-II</p>
		<div class="frm">
			<?php
			$query_Docentes = "select * FROM usuario WHERE Id_Cargo=2 order BY Nombres";
			$listadocente = mysqli_query($con, $query_Docentes);
			if ($listadocente){
				echo "<table class='lista' cellpadding='0' cellspacing='0' width='790px'>";
				echo "<tr><th class='tablacursos''>Nro.</th><th class='tablacursos'>CODIGO</th><th class='tablacursos'>NOMBRE DE DOCENTE</th><th class='tablacursos'>CORREO ELECTRONICO</th><th class='tablacursos'>TELEFONO</th><th class='tablacursos'></th><th class='tablacursos'></th></tr>";
				$cont=0;
				while (($fila = mysqli_fetch_assoc($listadocente)) != null){
					$idusuario = $fila['Id_Usuario'];
					$nombreusuario = $fila['Nombres'];
					$correo = $fila['CorreoElectrónico'];
					$telefono = $fila['Telefono'];
					$cont=$cont+1;
					echo "<tr>";
					echo "<td class='contador'>$cont</td>";
					echo "<td class=''>$idusuario</td>";
					echo "<td class='nombreusuario'>$nombreusuario</td>";
					echo "<td class=''>$correo</td>";
					echo "<td class=''>$telefono</td>";
					echo "<td class=''>
						<main>
							<input type='radio' id='mostrar-modal' name='modal'/>
							<label for='mostrar-modal'>Editar</label>
							<input type='radio' id='cerrar-modal' name='modal'/>
							
							<div id='modal'>
							     <table class='tabladatos'>
							        <tr>
							          <td class='datostabla'>Codigo:</td>
							          <td><input type='text' name='usuario' class='celdadatos' value='$idusuario' disabled='disabled' style='background: #f2e4f9;'></td>
							        </tr>
							        <tr>
							          <td class='datostabla'>Nombres:</td>
							          <td><input type='text' name='usuario' class='celdadatos' value='$nombreusuario'></td>
							        </tr>
							        <tr>
							          <td class='datostabla'>Email:</td>
							          <td><input type='text' name='usuario' class='celdadatos' value='$correo'></td>
							        </tr>
							        <tr>
							          <td class='datostabla'>Foto de Perfil:</td>
							          <td><input type='file' class='botonfoto'></td>
							        </tr>
							        <tr>
							          <td class='datostabla'>Telefono:</td>
							          <td><input type='text' name='usuario' class='celdadatos' value='$telefono'></td>
							        </tr>
							        <tr>
							          <td class='datostabla'></td>
							          <td><input type='submit' name='' value='Guardar' class='botonguardar'>
							          <label for='cerrar-modal'><h4 class='botonguardar'>Cancelar</h4></label></td>
							        </tr>
							    </table>
							</div>
						</main>
						  <script  src='./script.js'></script>
					</td>";
					echo "<td class=''><input type='submit' name='register' value='Eliminar' class='botoneliminar'></td>";
					echo "</tr>";
				}
				echo "</table>";
			}
			?>
		</div>
		<div class="boton">
			<input type="submit" name="register" value="Exportar PDF" class="botonguardar">
		</div>
	</div>
</div>
</div>
</body>
</html>