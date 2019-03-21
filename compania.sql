-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-02-2016 a las 00:38:50
-- Versión del servidor: 5.5.46-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `compania`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Departamento`
--

CREATE TABLE IF NOT EXISTS `Departamento` (
  `nombred` varchar(16) NOT NULL,
  `numerod` int(11) NOT NULL,
  `nssgte` char(9) NOT NULL,
  `fechainicgte` date DEFAULT NULL,
  PRIMARY KEY (`numerod`),
  UNIQUE KEY `nombred` (`nombred`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Departamento`
--

INSERT INTO `Departamento` (`nombred`, `numerod`, `nssgte`, `fechainicgte`) VALUES
('Direccion', 1, '888665555', '1971-06-19'),
('Administracion', 4, '987654321', '1985-01-01'),
('Investigacion', 5, '333445555', '1978-05-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Dependiente`
--

CREATE TABLE IF NOT EXISTS `Dependiente` (
  `nsse` char(9) NOT NULL,
  `nombre_dependiente` varchar(15) NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fechan` date DEFAULT NULL,
  `parentesco` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`nsse`,`nombre_dependiente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Dependiente`
--

INSERT INTO `Dependiente` (`nsse`, `nombre_dependiente`, `sexo`, `fechan`, `parentesco`) VALUES
('123456789', 'Alicia', 'F', '1978-12-31', 'Hija'),
('123456789', 'Elizabeth', 'F', '1957-05-05', 'Conyuge'),
('123456789', 'Miguel', 'M', '1978-01-01', 'Hijo'),
('333445555', 'Alicia', 'F', '1978-04-08', 'Hija'),
('333445555', 'Jobita', 'F', '1948-05-03', 'Conyuge'),
('333445555', 'Teodoro', 'M', '1973-10-25', 'Hijo'),
('987654321', 'Abdiel', 'M', '1932-02-29', 'Conyuge');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE IF NOT EXISTS `Empleado` (
  `nombrep` varchar(15) NOT NULL,
  `inic` char(1) DEFAULT NULL,
  `apellido` varchar(15) NOT NULL,
  `nss` char(9) NOT NULL,
  `fechan` date DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `nsssuper` char(9) DEFAULT NULL,
  `nd` int(11) NOT NULL,
  PRIMARY KEY (`nss`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`nombrep`, `inic`, `apellido`, `nss`, `fechan`, `direccion`, `sexo`, `salario`, `nsssuper`, `nd`) VALUES
('Jose', 'B', 'Silva', '123456789', '1955-01-09', 'Fresnos 731, Higueras, MX', 'M', 30000.00, '333445555', 5),
('Federico', 'T', 'Vizcarra', '333445555', '1945-12-08', 'Valle 638, Higueras, MX', 'M', 40000.00, '888665555', 5),
('Josefa', 'A', 'Esparza', '453453453', '1962-07-31', 'Rosas 5631, Higueras, MX', 'F', 25000.00, '333445555', 5),
('Ramon', 'K', 'Nieto', '666884444', '1952-08-15', 'Espiga 875, Heras, MX', 'M', 38000.00, '333445555', 5),
('Jaime', 'E', 'Botello', '888665555', '1927-11-10', 'Sorgo 450, Higueras, MX', 'M', 55000.00, 'null', 1),
('Jazmin', 'S', 'Valdes', '987654321', '1931-06-20', 'Bravo 291, Belen, MX', 'F', 43000.00, '888665555', 4),
('Ahmed', 'V', 'Jabbar', '987987987', '1959-03-29', 'Dallas 980, Higueras, MX', 'M', 25000.00, '333445555', 4),
('Alicia', 'J', 'Zapata', '999887777', '1958-07-19', 'Catillo 3321,Sucre, MX', 'F', 25000.00, '987654321', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Lugares_depto`
--

CREATE TABLE IF NOT EXISTS `Lugares_depto` (
  `numerod` int(11) NOT NULL,
  `lugard` varchar(15) NOT NULL,
  PRIMARY KEY (`numerod`,`lugard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Lugares_depto`
--

INSERT INTO `Lugares_depto` (`numerod`, `lugard`) VALUES
(1, 'Higueras'),
(4, 'Santiago'),
(5, 'Belen'),
(5, 'Higueras'),
(5, 'Sacramento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proyecto`
--

CREATE TABLE IF NOT EXISTS `Proyecto` (
  `nombrep` varchar(15) NOT NULL,
  `numerop` int(11) NOT NULL,
  `lugarp` varchar(15) DEFAULT NULL,
  `numd` int(11) NOT NULL,
  PRIMARY KEY (`numerop`),
  UNIQUE KEY `nombrep` (`nombrep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Proyecto`
--

INSERT INTO `Proyecto` (`nombrep`, `numerop`, `lugarp`, `numd`) VALUES
('ProductoX', 1, 'Belen', 5),
('ProductoY', 2, 'Sacramento', 5),
('ProductoZ', 3, 'Higueras', 5),
('Automatizacion', 10, 'Santiago', 4),
('Reorganizacion', 20, 'Higueras', 1),
('Nuevasprestacio', 30, 'Santiago', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Trabaja_en`
--

CREATE TABLE IF NOT EXISTS `Trabaja_en` (
  `nsse` char(9) NOT NULL,
  `nump` int(11) NOT NULL,
  `horas` decimal(3,1) NOT NULL,
  PRIMARY KEY (`nsse`,`nump`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Trabaja_en`
--

INSERT INTO `Trabaja_en` (`nsse`, `nump`, `horas`) VALUES
('123456789', 1, 32.5),
('123456789', 2, 7.5),
('333445555', 2, 10.0),
('333445555', 3, 10.0),
('333445555', 10, 10.0),
('333445555', 20, 10.0),
('453453453', 1, 20.0),
('453453453', 2, 20.0),
('666884444', 3, 40.0),
('888665555', 20, 0.0),
('987654321', 20, 15.0),
('987654321', 30, 20.0),
('987987987', 10, 35.0),
('987987987', 30, 5.0),
('999887777', 10, 10.0),
('999887777', 30, 30.0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
