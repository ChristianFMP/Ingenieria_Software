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
		<p class="titulo">LISTA DE CURSOS - CON DOCENTES ASIGNADOS</p>
		<div class="frm">
			<?php
			$query_Carga_Academica = "select C.Id_Curso,C.Nombre_Curso,C.Creditos,C.Grupo,CA.Docente 
									FROM car_academica CA , curso C 
									WHERE CA.Id_Curso=C.Id_Curso 
									ORDER BY C.Nombre_Curso";
			$lista_Carga_Academica = mysqli_query($con, $query_Carga_Academica);
			if ($lista_Carga_Academica){
				echo "<table class='lista' cellpadding='0' cellspacing='0' width='100%'>";
				echo "<tr><th class='tablacursos''>Nro.</th><th class='tablacursos'>CODIGO</th><th class='tablacursos'>NOMBRE DEL CURSO</th><th class='tablacursos'>CR</th><th class='tablacursos'>CAT</th><th class='tablacursos' style='width:300px;'>DOCENTE</th></tr>";
				$cont=0;
				while (($fila = mysqli_fetch_assoc($lista_Carga_Academica)) != null){
					$idcurso = $fila['Id_Curso'];
					$nombrecurso = $fila['Nombre_Curso'];
					$creditos = $fila['Creditos'];
					$grupo = $fila['Grupo'];
					$docente = $fila['Docente'];
					$cont=$cont+1;
					echo "<tr>";
					echo "<td class='contador'>$cont</td>";
					echo "<td class='celdadni'>$idcurso</td>";
					echo "<td class='nombrecurso'>$nombrecurso</td>";
					echo "<td class='creditos'>$creditos</td>";
					echo "<td class='categoria'>$grupo</td>";
					echo "<td class='categoria' style='color:#2196f3;font-size: 11px;'>$docente</td>";
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