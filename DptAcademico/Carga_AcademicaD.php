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
		<p class="titulo">LISTA DE CURSOS A CARGO 2022 - II</p>
		<div class="frm">
			<?php
			$query_Carga_Academica = "select C.Id_Curso,C.Nombre_Curso,C.Creditos,C.Categoría,C.Grupo,H.Dia1,H.Dia2,H.Dia3 FROM curso C, car_academica CA, horario H WHERE CA.Id_Curso=C.Id_Curso and C.Id_Curso=H.Id_Curso and CA.Docente='ROZAS-HUACHO-JAVIER ARTURO'";
			$lista_Carga_Academica = mysqli_query($con, $query_Carga_Academica);
			if ($lista_Carga_Academica){
				echo "<table class='lista' cellpadding='0' cellspacing='0'>";
				echo "<tr><th class='tablacursos''>Nro.</th><th class='tablacursos'>CODIGO</th><th class='tablacursos'  style='width:300px;'>NOMBRE DEL CURSO</th><th class='tablacursos'>CR</th><th class='tablacursos'>CAT</th><th class='tablacursos'>GRUPO</th><th class='tablacursos'>HORARIO</th><th class='tablacursos'>SILABOS</th></tr>";
				$cont=0;
				while (($fila = mysqli_fetch_assoc($lista_Carga_Academica)) != null){
					$idcurso = $fila['Id_Curso'];
					$nombrecurso = $fila['Nombre_Curso'];
					$creditos = $fila['Creditos'];
					$categoria = $fila['Categoría'];
					$grupo = $fila['Grupo'];
					$dia1 = $fila['Dia1'];
					$dia2 = $fila['Dia2'];
					$dia3 = $fila['Dia3'];
					$cont=$cont+1;
					echo "<tr>";
					echo "<td class='contador'>$cont</td>";
					echo "<td class='celdadni'>$idcurso</td>";
					echo "<td class='nombrecurso'>$nombrecurso</td>";
					echo "<td class='creditos'>$creditos</td>";
					echo "<td class='creditos'>$categoria</td>";
					echo "<td class='categoria'>$grupo</td>";
					echo "<td class=''>
					<table class='' style='justify-content: center;'>
						<tr><td>$dia1</td></tr>
						<tr><td>$dia2</td></tr>
						<tr><td>$dia3</td></tr>
					</table></td>";
					echo "<td class='' id=''>
					  <input type='file'name='src-file1' aria-label='Archivo'>
					</td>";
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