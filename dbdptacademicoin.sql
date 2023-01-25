-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2023 a las 17:29:08
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbdptacademicoin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `Id_Cargo` int(11) NOT NULL,
  `Descripcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`Id_Cargo`, `Descripcion`) VALUES
(1, 'Administrador'),
(2, 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `car_academica`
--

CREATE TABLE `car_academica` (
  `Id_Curso` varchar(15) NOT NULL,
  `Docente` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `car_academica`
--

INSERT INTO `car_academica` (`Id_Curso`, `Docente`) VALUES
('IF619AIN', 'SEGUNDO-CARPIO-LISETH URPY'),
('IF619BIN', 'SOSA-JAUREGUI-VICTOR DARIO'),
('IF662AIN', 'MEDRANO-VALENCIA-IVAN CESAR'),
('IF616AIN', 'ZAMALLOA-PARO-WILLIAN'),
('IF484AIN', 'CHAVEZ-CENTENO-JAVIER DAVID'),
('IF553AIN', 'PALOMINO-OLIVERA-EMILIO'),
('IF653AIN', 'IF653AIN'),
('IF556AIN', 'VILLALBA-VILLALBA-TANY'),
('IF064AIN', 'SEGUNDO-CARPIO-LISETH URPY'),
('IF618AIN', 'QUISPE-SURCO-VITTALI'),
('DE901AIN', 'ARCE-ZANS-JORGE PAUL'),
('ED901AIN', 'SONCCO-QUISPE-ALFONSO'),
('FP901AIN', 'CRUZADO-TORRE-MIKE CHRISTIAN'),
('ME901AIN', 'ESPINOZA-YABAR-MARITZA'),
('LC901AIN', 'LLERENA-CERVANTES-CARLA'),
('AS901AIN', 'YABAR-ZAMALLOA-JORGE LUIS'),
('ME903AIN', 'PANCCA-QUISPE-RENEE'),
('FI902AIN', 'BARRIENTOS-ECHEGARAY-HONORIO'),
('IF468AIN', 'ACURIO-USCA-NILA ZONIA'),
('IF468BIN', 'IBARRA-ZANBRANO-WALDO ELIO'),
('FP902AIN', 'HOLGADO-TEJADA-LAURA DIANA'),
('FP902BIN', 'DEL PINO-QUISPE-YASHIRA CAROLINA'),
('ME307AIN', 'CAZORLA-MEDINA-EDWIN'),
('IF902AIN', 'DUE?AS-DE LA CRUZ-HENRY SAMUEL'),
('IF902BIN', 'UGARTE-ROJAS-HECTOR EDUARDO'),
('IF450AIN', 'ROZAS-HUACHO-JAVIER ARTURO'),
('IF450BIN', 'ACURIO-USCA-NILA ZONIA'),
('ME351AIN', 'CARRILLO-SEGURA-VAIDYA INES'),
('ME351BIN', 'NEGRON-CALVO-LISARDO'),
('ME350AIN', 'VELASQUEZ-HACHA-IGNACIO'),
('ME350BIN', 'COLQUEHUANCA-ARIAS-ANA MARIA MARLITT'),
('FI370AIN', 'DE LA TORRE-CRUZ-JOSE OLINTHO'),
('FI370BIN', 'RODRIGUEZ-RODRIGUEZ-JANET KIMBERLY'),
('ME352AIN', 'ZARATE-DALENZ-JAIME'),
('ME352BIN', ''),
('IF451AIN', 'CUTIPA-ARAPA-EFRAINA GLADYS'),
('IF451BIN', 'MONZON-CONDORI-LUIS ALVARO'),
('IF480AIN', 'CANDIA-OVIEDO-DENNIS IVAN'),
('IF480BIN', 'DUEÑAS-BUSTINZA-DARIO FRANCISCO'),
('IF452AIN', 'ALZAMORA-PAREDES-ROBERT'),
('IF452BIN', 'MEDINA-MIRANDA-KARELIA'),
('EL371AIN', 'VASQUEZ-GAMARRA-CHRISTIAN'),
('EL371BIN', 'PALOMINO-PE?A-CELSO'),
('ME354AIN', 'FARFAN-ESCALANTE-GUIDO'),
('ME354BIN', 'PUMA-HUA?EC-EPIFANIO'),
('ME355AIN', 'SARCCO USTO ABEL'),
('ME355BIN', 'CHOQUE-PERALTA-ALAIN'),
('IF060AIN', 'VILLENA-LEON-OLMER CLAUDIO'),
('IF453AIN', 'UGARTE-ROJAS-HECTOR EDUARDO'),
('IF453BIN', 'CHULLO-LLAVE-BORIS'),
('IF453CIN', 'MONTOYA-CUBAS-CARLOS FERNANDO'),
('IF610AIN', 'CANDIA-OVIEDO-DENNIS IVAN'),
('ME356AIN', 'CHAPARRO-LAZO-FELIPE'),
('IF481AIN', 'CHOQUE-SOTO-VANESSA MARIBEL'),
('IF650AIN', 'ENCISO-RODAS-LAURO'),
('IF650BIN', 'MONTOYA-CUBAS-CARLOS FERNANDO'),
('IF550AIN', 'CARRASCO-POBLETE-EDWIN'),
('IF454AIN', 'UGARTE-ROJAS-HECTOR EDUARDO'),
('IF455AIN', 'CHULLO-LLAVE-BORIS'),
('IF455BIN', 'QUISPE-SOTA-JULIO VLADIMIR'),
('IF458AIN', 'PILLCO-QUISPE-JOSE MAURO'),
('IF612AIN', 'TICONA-PARI-GUZMAN'),
('IF612BIN', 'MEDINA-MIRANDA-KARELIA'),
('IF611AIN', 'UGARTE-ROJAS-HECTOR EDUARDO'),
('IF611BIN', 'GAMARRA-SALAS-JISBAJ'),
('IF457AIN', 'GAMARRA-SALDIVAR-ENRIQUE'),
('IF551AIN', 'CARRASCO-POBLETE-EDWIN'),
('IF551BIN', 'PE?ALOZA-FIGUEROA-MANUEL AURELIO'),
('IF456AIN', 'QUISPE-TORRES -GERAR FRANCIS'),
('IF456BIN', 'ENCISO-RODAS-LAURO'),
('IF467AIN', 'HUILLCA-HUALLPARIMACHI-RAUL'),
('IF467BIN', 'CHULLO-LLAVE-BORIS'),
('IF466AIN', 'MONTOYA-CUBAS-CARLOS FERNANDO'),
('IF613AIN', 'SEGUNDO-CARPIO-LISETH URPY'),
('IF613BIN', 'MONZON-CONDORI-LUIS ALVARO'),
('IF613CIN', 'MONZON-CONDORI-LUIS ALVARO'),
('IF651AIN', 'ROZAS-HUACHO-JAVIER ARTURO'),
('IF651BIN', 'MONTOYA-CUBAS-CARLOS FERNANDO'),
('IF414ZIN', ''),
('IF063AIN', 'ABARCA-MORA-RAIMAR'),
('IF063BIN', 'DIAZ-CACERES-LISHA SABAH'),
('IF552AIN', 'CUTIPA-ARAPA-EFRAINA GLADYS'),
('IF552BIN', 'VILLAFUERTE-SERNA-RONY'),
('IF652AIN', 'FLORES-PACHECO-LINO PRISCILIANO'),
('IF652BIN', 'FLORES-PACHECO-LINO PRISCILIANO'),
('IF664AIN', 'CARBAJAL-LUNA-JULIO CESAR'),
('IF614AIN', 'VENEGAS-VERGARA-MARIA DEL PILAR'),
('IF614BIN', 'DUEÑAS-BUSTINZA-DARIO FRANCISCO'),
('IF669AIN', 'PALMA-TTITO-LUIS BELTRAN'),
('IF669BIN', 'QUISPE-ONOFRE-CARLOS RAMON'),
('IF482AIN', 'CHOQUE-SOTO-VANESSA MARIBEL'),
('IF482BIN', 'PE?ALOZA-FIGUEROA-MANUEL AURELIO'),
('IF710AIN', 'ORME?O-AYALA-YESHICA ISELA'),
('IF710BIN', 'VERA-OLIVERA-HARLEY'),
('IF459AIN', 'QUISPE-SURCO-VITTALI'),
('IF459BIN', 'VILLAFUERTE-SERNA-RONY'),
('IF483AIN', 'PALOMINO-OLIVERA-EMILIO'),
('IF483BIN', 'COSIO-LOAIZA-STEPHAN JHOEL'),
('IF617AIN', 'ZAMALLOA-PARO-WILLIAN'),
('IF656AIN', 'ALZAMORA-PAREDES-ROBERT'),
('IF654AIN', 'PILLCO-QUISPE-JOSE MAURO'),
('IF657AIN', 'MEDRANO-VALENCIA-IVAN CESAR'),
('IF711AIN', 'ORME?O-AYALA-YESHICA ISELA'),
('IF711BIN', 'DUE?AS-JIMENEZ-RAY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Id_Curso` varchar(10) NOT NULL,
  `Nombre_Curso` varchar(80) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Categoría` varchar(5) NOT NULL,
  `Grupo` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Id_Curso`, `Nombre_Curso`, `Creditos`, `Categoría`, `Grupo`) VALUES
('AS901AIN', 'SOCIEDAD Y CULTURA', 3, 'EG', 'A'),
('DE901AIN', 'CONSTITUCION POLITICA Y DERECHOS HUMANOS', 3, 'EG', 'A'),
('ED901AIN', 'ESTRATEGIAS DE APRENDIZAJE AUTONOMO', 4, 'EG', 'A'),
('EL371AIN', 'ELECTR?NICA Y DISE?O DIGITAL', 3, 'OEES', 'A'),
('EL371BIN', 'ELECTR?NICA Y DISE?O DIGITAL', 3, 'OEES', 'B'),
('FI370AIN', 'FISICA APLICADA', 4, 'OEES', 'A'),
('FI370BIN', 'FISICA APLICADA', 4, 'OEES', 'B'),
('FI902AIN', 'F?SICA I', 4, 'EGT', 'A'),
('FP901AIN', 'FILOSOFIA Y ETICA', 3, 'EG', 'A'),
('FP902AIN', 'LIDERAZGO Y HABILIDADES SOCIALES', 3, 'EG', 'A'),
('FP902BIN', 'LIDERAZGO Y HABILIDADES SOCIALES', 3, 'EG', 'B'),
('IF060AIN', 'M?SICA', 2, 'AEX', 'A'),
('IF063AIN', 'QUECHUA', 2, 'AEX', 'A'),
('IF063BIN', 'QUECHUA', 2, 'AEX', 'B'),
('IF064AIN', 'TALLER DE DEBATE', 2, 'AEX', 'A'),
('IF414ZIN', 'LABORATORIO VI', 2, 'OE', 'Z'),
('IF450AIN', 'ABSTRACCION DE DATOS Y OBJETOS', 4, 'OEES', 'A'),
('IF450BIN', 'ABSTRACCION DE DATOS Y OBJETOS', 4, 'OEES', 'B'),
('IF451AIN', 'PROGRAMACION I', 2, 'OEES', 'A'),
('IF451BIN', 'PROGRAMACION I', 2, 'OEES', 'B'),
('IF452AIN', 'ALGORITMOS Y ESTRUCTURAS DE DATOS', 4, 'OEES', 'A'),
('IF452BIN', 'ALGORITMOS Y ESTRUCTURAS DE DATOS', 4, 'OEES', 'B'),
('IF453AIN', 'PROGRAMACI?N II', 2, 'OEES', 'A'),
('IF453BIN', 'PROGRAMACI?N II', 2, 'OEES', 'B'),
('IF453CIN', 'PROGRAMACI?N II', 2, 'OEES', 'C'),
('IF454AIN', 'TEORIA DE LA COMPUTACION', 3, 'OEES', 'A'),
('IF455AIN', 'ALGORITMOS PARALELOS Y DISTRIBUIDOS', 4, 'OEES', 'A'),
('IF455BIN', 'ALGORITMOS PARALELOS Y DISTRIBUIDOS', 4, 'OEES', 'B'),
('IF456AIN', 'ALGORITMOS AVANZADOS', 4, 'OEES', 'A'),
('IF456BIN', 'ALGORITMOS AVANZADOS', 4, 'OEES', 'B'),
('IF457AIN', 'METODOS NUMERICOS', 3, 'OEES', 'A'),
('IF458AIN', 'COMPUTACION GRAFICA I', 4, 'EEEP', 'A'),
('IF459AIN', 'COMPUTACION GRAFICA II', 4, 'EEEP', 'A'),
('IF459BIN', 'COMPUTACION GRAFICA II', 4, 'EEEP', 'B'),
('IF466AIN', 'COMPILADORES', 3, 'EEEP', 'A'),
('IF467AIN', 'ANALISIS Y DISEÑO DE ALGORITMOS', 3, 'EEEP', 'A'),
('IF467BIN', 'ANALISIS Y DISEÑO DE ALGORITMOS', 3, 'EEEP', 'B'),
('IF468AIN', 'FUNDAMENTOS DE PROGRAMACI?N', 4, 'OEES', 'A'),
('IF468BIN', 'FUNDAMENTOS DE PROGRAMACI?N', 4, 'OEES', 'B'),
('IF480AIN', 'ADMINISTRACION DE TECNOLOGIAS DE INFORMACION', 3, 'OEES', 'A'),
('IF480BIN', 'ADMINISTRACION DE TECNOLOGIAS DE INFORMACION', 3, 'OEES', 'B'),
('IF481AIN', 'INGENIERIA ECONOMICA', 3, 'OEES', 'A'),
('IF482AIN', 'PLANEAMIENTO Y DIRECCION ESTRATEGICA DE TECNOLOGIA DE INFORMACION', 3, 'OEES', 'A'),
('IF482BIN', 'PLANEAMIENTO Y DIRECCION ESTRATEGICA DE TECNOLOGIA DE INFORMACION', 3, 'OEES', 'B'),
('IF483AIN', 'FORMULACION DE PROYECTOS DE TECNOLOGIA DE INFORMACION', 3, 'OEES', 'A'),
('IF483BIN', 'FORMULACION DE PROYECTOS DE TECNOLOGIA DE INFORMACION', 3, 'OEES', 'B'),
('IF484AIN', 'EMPRENDIMIENTO E INNOVACION', 3, 'EEEP', 'A'),
('IF550AIN', 'ORGANIZACI?N Y ARQUITECTURA DEL COMPUTADOR', 4, 'OEES', 'A'),
('IF551AIN', 'SISTEMAS OPERATIVOS', 4, 'OEES', 'A'),
('IF551BIN', 'SISTEMAS OPERATIVOS', 4, 'OEES', 'B'),
('IF552AIN', 'REDES DE COMPUTADORAS I', 4, 'OEES', 'A'),
('IF552BIN', 'REDES DE COMPUTADORAS I', 4, 'OEES', 'B'),
('IF553AIN', 'LENGUAJE ENSAMBLADOR', 3, 'EEEP', 'A'),
('IF556AIN', 'SISTEMAS EMBEBIDOS', 4, 'EEEP', 'A'),
('IF610AIN', 'ANALISIS Y DISEÑO DE SISTEMAS DE INFORMACION', 4, 'OEES', 'A'),
('IF611AIN', 'METODOLOG?A DE DESARROLLO DE SOFTWARE', 3, 'OEES', 'A'),
('IF611BIN', 'METODOLOG?A DE DESARROLLO DE SOFTWARE', 3, 'OEES', 'B'),
('IF612AIN', 'FUNDAMENTOS Y DISE?O DE BASES DE DATOS', 4, 'OEES', 'A'),
('IF612BIN', 'FUNDAMENTOS Y DISE?O DE BASES DE DATOS', 4, 'OEES', 'B'),
('IF613AIN', 'DESARROLLO DE SOFTWARE I', 2, 'OEES', 'A'),
('IF613BIN', 'DESARROLLO DE SOFTWARE I', 2, 'OEES', 'B'),
('IF613CIN', 'DESARROLLO DE SOFTWARE I', 2, 'OEES', 'C'),
('IF614AIN', 'INGENIERIA DE SOFTWARE I', 4, 'OEES', 'A'),
('IF614BIN', 'INGENIERIA DE SOFTWARE I', 4, 'OEES', 'B'),
('IF616AIN', 'DESARROLLO DE SOFTWARE II', 2, 'EEEP', 'A'),
('IF617AIN', 'INGENIERIA DE SOFTWARE II', 4, 'EEEP', 'A'),
('IF618AIN', 'TOPICOS AVANZADOS EN INGENIERIA DE SOFTWARE', 4, 'EEEP', 'A'),
('IF619AIN', 'ANALISIS DE DATOS EMPRESARIALES', 3, 'EEEP', 'A'),
('IF619BIN', 'ANALISIS DE DATOS EMPRESARIALES', 3, 'EEEP', 'B'),
('IF650AIN', 'MODELOS PROBABILISTICOS', 4, 'OEES', 'A'),
('IF650BIN', 'MODELOS PROBABILISTICOS', 4, 'OEES', 'B'),
('IF651AIN', 'INTELIGENCIA ARTIFICIAL', 4, 'OEES', 'A'),
('IF651BIN', 'INTELIGENCIA ARTIFICIAL', 4, 'OEES', 'B'),
('IF652AIN', 'APRENDIZAJE AUTOMATICO', 4, 'OEES', 'A'),
('IF652BIN', 'APRENDIZAJE AUTOMATICO', 4, 'OEES', 'B'),
('IF653AIN', 'MINERIA DE DATOS', 4, 'EEEP', 'A'),
('IF654AIN', 'ROBOTICA', 4, 'EEEP', 'A'),
('IF656AIN', 'PROCESAMIENTO DEL LENGUAJE NATURAL', 4, 'EEEP', 'A'),
('IF657AIN', 'VISION COMPUTACIONAL', 4, 'EEEP', 'A'),
('IF662AIN', 'DEEP LEARNING', 4, 'EEEP', 'A'),
('IF664AIN', 'BIOINFORMATICA', 4, 'EEEP', 'A'),
('IF669AIN', 'MODELADO Y SIMULACION', 4, 'EEEP', 'A'),
('IF669BIN', 'MODELADO Y SIMULACION', 4, 'EEEP', 'B'),
('IF710AIN', 'SEMINARIO DE INVESTIGACION I', 3, 'OEES', 'A'),
('IF710BIN', 'SEMINARIO DE INVESTIGACION I', 3, 'OEES', 'B'),
('IF711AIN', 'SEMINARIO DE INVESTIGACION II', 3, 'OEES', 'A'),
('IF711BIN', 'SEMINARIO DE INVESTIGACION II', 3, 'OEES', 'B'),
('IF902AIN', 'TECNOLOGIAS DE LA INFORMACI?N Y LA COMUNICACI?N', 3, 'EG', 'A'),
('IF902BIN', 'TECNOLOGIAS DE LA INFORMACI?N Y LA COMUNICACI?N', 3, 'EG', 'B'),
('LC901AIN', 'REDACCION DE TEXTOS', 4, 'EG', 'A'),
('ME307AIN', 'MATEM?TICAS DISCRETAS I', 4, 'OEES', 'A'),
('ME350AIN', 'CALCULO II', 4, 'OEES', 'A'),
('ME350BIN', 'CALCULO II', 4, 'OEES', 'B'),
('ME351AIN', 'ALGEBRA LINEAL', 4, 'OEES', 'A'),
('ME351BIN', 'ALGEBRA LINEAL', 4, 'OEES', 'B'),
('ME352AIN', 'PROBABILIDADES Y ESTAD?STICA', 4, 'OEES', 'A'),
('ME352BIN', 'PROBABILIDADES Y ESTAD?STICA', 4, 'OEES', 'B'),
('ME354AIN', 'INVESTIGACI?N OPERATIVA', 4, 'OEES', 'A'),
('ME354BIN', 'INVESTIGACI?N OPERATIVA', 4, 'OEES', 'B'),
('ME355AIN', 'MATEM?TICAS DISCRETAS II', 4, 'OEES', 'A'),
('ME355BIN', 'MATEM?TICAS DISCRETAS II', 4, 'OEES', 'B'),
('ME356AIN', 'ECUACIONES DIFERENCIALES', 4, 'OEES', 'A'),
('ME901AIN', 'MATEMATICA I', 4, 'EG', 'A'),
('ME903AIN', 'CALCULO I', 4, 'EGT', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Id_Curso` varchar(10) NOT NULL,
  `Dia1` varchar(15) NOT NULL,
  `Dia2` varchar(15) NOT NULL,
  `Dia3` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Id_Curso`, `Dia1`, `Dia2`, `Dia3`) VALUES
('IF619AIN', 'MA [14-16]', 'JU [14-16]', ''),
('IF619BIN', 'MA [14-16]', 'JU [14-16]', ''),
('IF662AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF616AIN', 'MA [09-11]', 'JU [09-11]', ''),
('IF484AIN', 'LU [14-16]', 'MI [14-16]', ''),
('IF553AIN', 'LU [11-13]', 'MI [11-13]', ''),
('IF653AIN', 'MA [07-09]', 'JU [07-09]', 'VI [07-08]'),
('IF556AIN', 'MA [09-11]', 'JU [09-11]', 'VI [09-10]'),
('IF064AIN', 'JU [11-13]', 'SA [07-09]', ''),
('IF618AIN', 'LU [11-13]', 'MI [11-13]', 'VI [11-12]'),
('DE901AIN', 'MA [09-11]', 'JU [09-11]', ''),
('ED901AIN', 'LU [07-09]', 'MI [07-09]', 'VI [07-08]'),
('FP901AIN', 'MA [07-09]', 'JU [07-09]', ''),
('ME901AIN', 'LU [11-13]', 'MI [11-13]', 'VI [11-12]'),
('LC901AIN', 'LU [09-11]', 'MI [09-11]', 'VI [09-10]'),
('AS901AIN', 'MA [11-13]', 'JU [11-13]', ''),
('ME903AIN', 'LU [16-18]', 'MI [16-18]', 'VI [16-17]'),
('FI902AIN', 'LU [14-16]', 'MI [14-16]', 'VI [14-15]'),
('IF468AIN', 'LU [09-11]', 'MI [09-11]', 'VI [09-10]'),
('IF468BIN', 'LU [18-20]', 'MI [18-20]', 'VI [18-19]'),
('FP902AIN', 'MA [16-18]', 'JU [16-18]', ''),
('FP902BIN', 'MA [16-18]', 'JU [16-18]', ''),
('ME307AIN', 'MA [09-11]', 'JU [09-11]', 'VI [10-11]'),
('IF902AIN', 'MA [14-16]', 'JU [14-16]', ''),
('IF902BIN', 'MA [14-16]', 'JU [14-16]', ''),
('IF450AIN', 'MA [09-11]', 'JU [09-11]', 'VI [09-10]'),
('IF450BIN', 'LU [16-18]', 'MI [16-18]', 'VI [17-18]'),
('ME351AIN', 'LU [07-09]', 'MI [07-09]', 'VI [07-08]'),
('ME351BIN', 'LU [14-16]', 'MI [14-16]', 'VI [14-15]'),
('ME350AIN', 'MA [07-09]', 'JU [07-09]', 'VI [08-09]'),
('ME350BIN', 'MA [14-16]', 'JU [14-16]', 'VI [15-16]'),
('FI370AIN', 'MA [11-13]', 'JU [11-13]', 'VI [12-13]'),
('FI370BIN', 'MA [18-20]', 'JU [18-20]', 'VI [19-20]'),
('ME352AIN', 'LU [11-13]', 'MI [11-13]', 'VI [11-12]'),
('ME352BIN', 'LU [18-20]', 'MI [18-20]', 'VI [18-19]'),
('IF451AIN', 'LU [09-11]', 'MI [09-11]', ''),
('IF451BIN', 'LU [09-11]', 'MI [09-11]', ''),
('IF480AIN', 'LU [11-13]', 'MI [11-13]', ''),
('IF480BIN', 'LU [18-20]', 'MI [18-20]', ''),
('IF452AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF452BIN', 'LU [16-18]', 'MI [16-18]', 'VI [16-17]'),
('EL371AIN', 'MA [11-13]', 'JU [11-13]', ''),
('EL371BIN', 'MA [11-13]', 'JU [11-13]', ''),
('ME354AIN', 'LU [07-09]', 'MI [07-09]', 'VI [07-08]'),
('ME354BIN', 'LU [14-16]', 'MI [14-16]', 'VI [14-15]'),
('ME355AIN', 'MA [07-09]', 'JU [07-09]', 'VI [08-09]'),
('ME355BIN', 'MA [14-16]', 'JU [14-16]', 'VI [15-16]'),
('IF060AIN', 'VI [11-13]', 'SA [09-11]', ''),
('IF453AIN', 'MA [09-11]', 'JU [09-11]', ''),
('IF453BIN', 'MA [09-11]', 'JU [09-11]', ''),
('IF453CIN', 'MA [16-18]', 'JU [16-18]', ''),
('IF610AIN', 'MA [07-09]', 'JU [07-09]', 'VI [08-09]'),
('ME356AIN', 'MA [11-13]', 'JU [11-13]', 'VI [11-12]'),
('IF481AIN', 'LU [11-13]', 'MI [11-13]', ''),
('IF650AIN', 'MA [09-11]', 'JU [09-11]', 'VI [10-11]'),
('IF650BIN', 'MA [14-16]', 'JU [14-16]', 'VI [15-16]'),
('IF550AIN', 'LU [09-11]', 'MI [09-11]', 'VI [09-10]'),
('IF454AIN', 'LU [07-09]', 'MI [07-09]', ''),
('IF455AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF455BIN', 'LU [14-16]', 'MI [14-16]', 'VI [15-16]'),
('IF458AIN', 'LU [11-13]', 'MI [11-13]', 'VI [11-12]'),
('IF612AIN', 'MA [09-11]', 'JU [09-11]', 'VI [09-10]'),
('IF612BIN', 'MA [16-18]', 'JU [16-18]', 'VI [17-18]'),
('IF611AIN', 'MA [07-09]', 'JU [07-09]', ''),
('IF611BIN', 'MA [14-16]', 'JU [14-16]', ''),
('IF457AIN', 'MA [18-20]', 'JU [18-20]', ''),
('IF551AIN', 'LU [07-09]', 'MI [07-09]', 'VI [08-09]'),
('IF551BIN', 'LU [16-18]', 'MI [16-18]', 'VI [16-17]'),
('IF456AIN', 'LU [11-13]', 'MI [11-13]', 'VI [11-12]'),
('IF456BIN', 'LU [18-20]', 'MI [18-20]', 'VI [18-19]'),
('IF467AIN', 'MA [07-09]', 'JU [07-09]', ''),
('IF467BIN', 'MA [14-16]', 'JU [14-16]', ''),
('IF466AIN', 'MA [18-20]', 'JU [18-20]', ''),
('IF613AIN', 'LU [07-09]', 'MI [07-09]', ''),
('IF613BIN', 'LU [07-09]', 'MI [07-09]', ''),
('IF613CIN', 'LU [14-16]', 'MI [14-16]', ''),
('IF651AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF651BIN', 'LU [16-18]', 'MI [16-18]', 'VI [17-18]'),
('IF414ZIN', ' [00-00]', '', ''),
('IF063AIN', 'VI [07-09]', 'SA [07-09]', ''),
('IF063BIN', 'VI [14-16]', 'SA [16-18]', ''),
('IF552AIN', 'MA [09-11]', 'JU [09-11]', 'VI [09-10]'),
('IF552BIN', 'MA [16-18]', 'JU [16-18]', 'VI [16-17]'),
('IF652AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF652BIN', 'MA [16-18]', 'JU [16-18]', 'VI [17-18]'),
('IF664AIN', 'MA [09-11]', 'JU [09-11]', 'VI [09-10]'),
('IF614AIN', 'MA [07-09]', 'JU [07-09]', 'VI [08-09]'),
('IF614BIN', 'LU [16-18]', 'MI [16-18]', 'VI [16-17]'),
('IF669AIN', 'LU [07-09]', 'MI [07-09]', 'VI [07-08]'),
('IF669BIN', 'LU [14-16]', 'MI [14-16]', 'VI [14-15]'),
('IF482AIN', 'VI [11-13]', 'SA [07-09]', ''),
('IF482BIN', 'MA [18-20]', 'JU [18-20]', ''),
('IF710AIN', 'LU [11-13]', 'MI [11-13]', ''),
('IF710BIN', 'LU [18-20]', 'MI [18-20]', ''),
('IF459AIN', 'MA [07-09]', 'JU [07-09]', 'VI [08-09]'),
('IF459BIN', 'MA [14-16]', 'JU [14-16]', 'VI [15-16]'),
('IF483AIN', 'LU [07-09]', 'MI [07-09]', ''),
('IF483BIN', 'LU [14-16]', 'MI [14-16]', ''),
('IF617AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF656AIN', 'LU [11-13]', 'MI [11-13]', 'VI [11-12]'),
('IF654AIN', 'LU [09-11]', 'MI [09-11]', 'VI [10-11]'),
('IF657AIN', 'MA [09-11]', 'JU [09-11]', 'VI [09-10]'),
('IF711AIN', 'LU [07-09]', 'MI [07-09]', ''),
('IF711BIN', 'LU [07-09]', 'MI [07-09]', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` varchar(5) NOT NULL,
  `Nombres` varchar(80) NOT NULL,
  `CorreoElectrónico` varchar(50) NOT NULL,
  `Telefono` varchar(9) NOT NULL,
  `Foto_Usuario` longblob DEFAULT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Id_Cargo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombres`, `CorreoElectrónico`, `Telefono`, `Foto_Usuario`, `Usuario`, `Password`, `Id_Cargo`) VALUES
('AD001', 'NILA ZONIA ACURIO USCA', 'nila.acurio@unsaac.edu.pe', '966955511', '', 'nila.acurio@unsaac.edu.pe', 'AD001', 1),
('DC001', 'LAURO ENCISO RODAS', 'lauro.enciso@unsaac.edu.pe', '949657397', '', 'lauro.enciso@unsaac.edu.pe', 'DC001', 2),
('DC002', 'JULIO CESAR CARBAJAL LUNA', 'julio.carbajal@unsaac.edu.pe', '983926250', '', 'julio.carbajal@unsaac.edu.pe', 'DC002', 2),
('DC003', 'JAVIER ARTURO ROZAS HUACHO', 'javier.rozas@unsaac.edu.pe', '962652117', '', 'javier.rozas@unsaac.edu.pe', 'DC003', 2),
('DC004', 'LINO PRISCILIANO FLORES PACHECO', 'lino.flores@unsaac.edu.pe', '976987135', '', 'lino.flores@unsaac.edu.pe', 'DC004', 2),
('DC005', 'EDWIN CARRASCO POBLETE', 'edwin.carrasco@unsaac.edu.pe', '974834463', '', 'edwin.carrasco@unsaac.edu.pe', 'DC005', 2),
('DC006', 'EMILIO PALOMINO OLIVERA', 'emilio.palomino@unsaac.edu.pe', '965949169', '', 'emilio.palomino@unsaac.edu.pe', 'DC006', 2),
('DC007', 'ENRIQUE GAMARRA SALDIVAR', 'enrique.gamarra@unsaac.edu.pe', '947028800', '', 'enrique.gamarra@unsaac.edu.pe', 'DC007', 2),
('DC008', 'DENNIS IVAN CANDIA OVIEDO', 'dennis.candia@unsaac.edu.pe', '936530435', '', 'dennis.candia@unsaac.edu.pe', 'DC008', 2),
('DC009', 'RONY VILLAFUERTE SERNA', 'rony.villafuerte@unsaac.edu.pe', '931927043', '', 'rony.villafuerte@unsaac.edu.pe', 'DC009', 2),
('DC010', 'GUZMAN TICONA PARI', 'guzman.ticona@unsaac.edu.pe', '939304221', '', 'guzman.ticona@unsaac.edu.pe', 'DC010', 2),
('DC011', 'YESHICA ISELA ORMEÑO AYALA', 'yeshica.ormeno@unsaac.edu.pe', '948789177', '', 'yeshica.ormeno@unsaac.edu.pe', 'DC011', 2),
('DC012', 'IVAN CESAR MEDRANO VALENCIA', 'ivan.medrano@unsaac.edu.pe', '995147142', '', 'ivan.medrano@unsaac.edu.pe', 'DC012', 2),
('DC013', 'LUIS BELTRAN PALMA TTITO', 'luis.palma@unsaac.edu.pe', '999791170', '', 'luis.palma@unsaac.edu.pe', 'DC013', 2),
('DC014', 'ROBERT WILBERT ALZAMORA PAREDES', 'robert.alzamora@unsaac.edu.pe', '973224075', '', 'robert.alzamora@unsaac.edu.pe', 'DC014', 2),
('DC015', 'WALDO ELIO IBARRA ZAMBRANO', 'waldo.ibarra@unsaac.edu.pe', '989347438', '', 'waldo.ibarra@unsaac.edu.pe', 'DC015', 2),
('DC016', 'KARELIA MEDINA MIRANDA', 'karelia.medina@unsaac.edu.pe', '957941118', '', 'karelia.medina@unsaac.edu.pe', 'DC016', 2),
('DC017', 'JAVIER DAVID CHAVEZ CENTENO', 'javier.chavez@unsaac.edu.pe', '972795956', '', 'javier.chavez@unsaac.edu.pe', 'DC017', 2),
('DC018', 'ROXANA LISETTE QUINTANILLA PORTUGAL', 'roxana.quintanilla@unsaac.edu.pe', '958939545', '', 'roxana.quintanilla@unsaac.edu.pe', 'DC018', 2),
('DC019', 'VANESSA MARIBEL CHOQUE SOTO', 'vanessa.choque@unsaac.edu.pe', '942012267', '', 'vanessa.choque@unsaac.edu.pe', 'DC019', 2),
('DC020', 'MANUEL AURELIO PEÑALOZA FIGUEROA', 'manuel.penaloza@unsaac.edu.pe', '990234286', '', 'manuel.penaloza@unsaac.edu.pe', 'DC020', 2),
('DC021', 'JOSE MAURO PILLCO QUISPE', 'jose.pillco@unsaac.edu.pe', '973852095', '', 'jose.pillco@unsaac.edu.pe', 'DC021', 2),
('DC022', 'LINO AQUILES BACA CARDENAS', 'lino.baca@unsaac.edu.pe', '991658467', '', 'lino.baca@unsaac.edu.pe', 'DC022', 2),
('DC023', 'ESTHER CRISTINA PACHECO VASQUEZ', 'esther.pacheco@unsaac.edu.pe', '953681729', '', 'esther.pacheco@unsaac.edu.pe', 'DC023', 2),
('DC024', 'WILLIAN ZAMALLOA PARO', 'willian.zamalloa@unsaac.edu.pe', '976009599', '', 'willian.zamalloa@unsaac.edu.pe', 'DC024', 2),
('DC025', 'HARLEY VERA OLIVERA', 'harley.vera@unsaac.edu.pe', '930966369', '', 'harley.vera@unsaac.edu.pe', 'DC025', 2),
('DC026', 'MARITZA KATHERINE IRPANOCA CUSIMAYTA', 'maritza.irpanoca@unsaac.edu.pe', '934641853', '', 'maritza.irpanoca@unsaac.edu.pe', 'DC026', 2),
('DC027', 'EFRAINA GLADYS CUTIPA ARAPA', 'efraina.cutipa@unsaac.edu.pe', '990915541', '', 'efraina.cutipa@unsaac.edu.pe', 'DC027', 2),
('DC028', 'DARIO FRANCISCO DUEÑAS BUSTINZA', 'dario.duenas@unsaac.edu.pe', '968856440', '', 'dario.duenas@unsaac.edu.pe', 'DC028', 2),
('DC029', 'DORIS SABINA AGUIRRE CARBAJAL', 'doris.aguirre@unsaac.edu.pe', '995859401', '', 'doris.aguirre@unsaac.edu.pe', 'DC029', 2),
('DC030', 'TANY VILLALBA VILLALBA', 'tany.villalba@unsaac.edu.pe', '998517277', '', 'tany.villalba@unsaac.edu.pe', 'DC030', 2),
('DC031', 'CARLOS FERNANDO MONTOYA CUBAS', 'carlos.montoya@unsaac.edu.pe', '931861275', '', 'carlos.montoya@unsaac.edu.pe', 'DC031', 2),
('DC032', 'CARLOS RAMON QUISPE ONOFRE', 'carlos.quispe@unsaac.edu.pe', '969781988', '', 'carlos.quispe@unsaac.edu.pe', 'DC032', 2),
('DC033', 'BORIS CHULLO LLAVE', 'boris.chullo@unsaac.edu.pe', '970098110', '', 'boris.chullo@unsaac.edu.pe', 'DC033', 2),
('DC034', 'RAY DUEÑAS JIMENEZ', 'ray.duenas@unsaac.edu.pe', '995209405', '', 'ray.duenas@unsaac.edu.pe', 'DC034', 2),
('DC035', 'HECTOR EDUARDO UGARTE ROJAS', 'hector.ugarte@unsaac.edu.pe', '979591713', '', 'hector.ugarte@unsaac.edu.pe', 'DC035', 2),
('DC036', 'LISETH URPY SEGUNDO CARPIO', 'liseth.segundo@unsaac.edu.pe', '929231509', '', 'liseth.segundo@unsaac.edu.pe', 'DC036', 2),
('DC037', 'LUIS ALVARO MONZON CONDORI', 'luis.monzon@unsaac.edu.pe', '976556636', '', 'luis.monzon@unsaac.edu.pe', 'DC037', 2),
('DC038', 'JISBAJ GAMARRAS SALAS', 'jisbaj.gamarras@unsaac.edu.pe', '968961893', '', 'jisbaj.gamarras@unsaac.edu.pe', 'DC038', 2),
('DC039', 'HENRY SAMUEL DUEÑAS DE LA CRUZ', 'henry.duenas@unsaac.edu.pe', '976120164', '', 'henry.duenas@unsaac.edu.pe', 'DC039', 2),
('DC040', 'ANA ROCIO CARDENAS MAITA', 'ana.cardenas@unsaac.edu.pe', '933361843', '', 'ana.cardenas@unsaac.edu.pe', 'DC040', 2),
('DC041', 'RAUL HUILLCA HUALLPARIMACHI', 'raul.huillca@unsaac.edu.pe', '952210064', '', 'raul.huillca@unsaac.edu.pe', 'DC041', 2),
('DC042', 'GABRIELA ZUÑIGA ROJAS', 'gabriela.zuniga@unsaac.edu.pe', '970143787', '', 'gabriela.zuniga@unsaac.edu.pe', 'DC042', 2),
('DC043', 'MARIA DEL PILAR VENEGAS VERGARA', 'maria.pilar@unsaac.edu.pe', '965758166', '', 'maria.pilar@unsaac.edu.pe', 'DC043', 2),
('DC044', 'VICTOR DARIO SOSA JAUREGUI', 'victor.sosa@unsaac.edu.pe', '944004697', '', 'victor.sosa@unsaac.edu.pe', 'DC044', 2),
('DC045', 'JULIO VLADIMIR QUISPE SOTA', 'julio.quispe@unsaac.edu.pe', '963987552', '', 'julio.quispe@unsaac.edu.pe', 'DC045', 2),
('DC046', 'ELIDA FALCON HUALLPA', 'elida.falcon@unsaac.edu.pe', '920399883', '', 'elida.falcon@unsaac.edu.pe', 'DC046', 2),
('DC047', 'VITALI QUISPE SURCO', 'vitali.quispe@unsaac.edu.pe', '957682159', '', 'vitali.quispe@unsaac.edu.pe', 'DC047', 2),
('DC048', 'VANESA LAVILLA ALVAREZ', 'vanesa.lavilla@unsaac.edu.pe', '948051899', '', 'vanesa.lavilla@unsaac.edu.pe', 'DC048', 2),
('DC049', 'LISHA SABAH DIAZ CACERES', 'lisha.diaz@unsaac.edu.pe', '965623592', '', 'lisha.diaz@unsaac.edu.pe', 'DC049', 2),
('DC050', 'MARCIO FERNANDO MERMA QUISPE', 'marcio.merma@unsaac.edu.pe', '932978726', '', 'marcio.merma@unsaac.edu.pe', 'DC050', 2),
('DC051', 'OLMER CLAUDIO VILLENA LEON', 'olmer.villena@unsaac.edu.pe', '945081466', '', 'olmer.villena@unsaac.edu.pe', 'DC051', 2),
('DC052', 'RAIMAR ABARCA MORA', 'raimar.abarca@unsaac.edu.pe', '918477429', '', 'raimar.abarca@unsaac.edu.pe', 'DC052', 2),
('DC053', 'GERAR FRANCIS QUISPE TORRES', 'gerar.quispe@unsaac.edu.pe', '976021411', '', 'gerar.quispe@unsaac.edu.pe', 'DC053', 2),
('DC054', 'JONEL CCENTE ZUZUNAGA', 'jonel.ccente@unsaac.edu.pe', '993863670', '', 'jonel.ccente@unsaac.edu.pe', 'DC054', 2),
('DC055', 'STEPHAN JHOEL COSIO LOAIZA', 'stephan.cosio@unsaac.edu.pe', '978815855', '', 'stephan.cosio@unsaac.edu.pe', 'DC055', 2),
('DC056', 'LUZ INDIRA TICONA FELIX', 'luz.ticona@unsaac.edu.pe', '947871223', '', 'luz.ticona@unsaac.edu.pe', 'DC056', 2),
('DC057', 'EDELMIRA DAVILA ANDRADE', 'edelmira.davila@unsaac.edu.pe', '943887892', '', 'edelmira.davila@unsaac.edu.pe', 'DC057', 2),
('DC060', 'GRUPO DESACTIVADO', 'grupo.desactivado@unsaac.edu.pe', '922031615', '', 'grupo.desactivado@unsaac.edu.pe', 'DC060', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`Id_Cargo`);

--
-- Indices de la tabla `car_academica`
--
ALTER TABLE `car_academica`
  ADD KEY `Id_Curso` (`Id_Curso`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Id_Curso`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD KEY `Id_Curso` (`Id_Curso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Cargo` (`Id_Cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `Id_Cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `car_academica`
--
ALTER TABLE `car_academica`
  ADD CONSTRAINT `car_academica_ibfk_1` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_Curso`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_Curso`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
