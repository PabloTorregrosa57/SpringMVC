-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2017 a las 06:21:05
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inventario_libros`
--
CREATE DATABASE IF NOT EXISTS `inventario_libros` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `inventario_libros`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE IF NOT EXISTS `autores` (
  `codigo_autor` varchar(6) NOT NULL,
  `nombre_autor` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`codigo_autor`, `nombre_autor`, `nacionalidad`) VALUES
('AUT001', 'Julio Cortazar', 'Argentino'),
('AUT002', 'Roque Dalton', 'Salvadoreño'),
('AUT003', 'Miguel de Cervantes', 'Español'),
('AUT004', 'Oscar Wilde', 'Irlandes'),
('AUT006', 'Luis Alonso Arenivar', 'Salvadoreño'),
('AUT007', 'Eugenia Perez Martinez', 'Española'),
('AUT008', 'Aurelio Baldor', 'Cubano'),
('AUT009', 'Gabriel Garcia Marquez', 'Colombiano'),
('AUT010', 'Victor Lopez Castellanos', 'Salvadoreño'),
('AUT011', 'Mario Vargas Llosa', 'Peruano'),
('AUT012', 'Doris Lessing', 'Britanica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE IF NOT EXISTS `editoriales` (
  `codigo_editorial` varchar(6) NOT NULL DEFAULT '',
  `nombre_editorial` varchar(30) NOT NULL,
  `contacto` varchar(30) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  PRIMARY KEY (`codigo_editorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`codigo_editorial`, `nombre_editorial`, `contacto`, `telefono`) VALUES
('EDI001', 'Clasicos Roxsil', 'Juan Perez', '2285-8574'),
('EDI002', 'Editorial UDB', 'Hector Grenni', '2273-8574'),
('EDI003', 'Alfaguara', 'Santiago Morales', '2285-7485'),
('EDI004', 'Rama Editores', 'Marlon Castro', '2285-7485'),
('EDI005', 'McGraw-Hill', 'Steven Clinton', '2274-8596'),
('EDI006', 'Editorial Santillana', 'Miguel Sanchez', '2274-8574');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE IF NOT EXISTS `generos` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `nombre_genero`, `descripcion`) VALUES
(1, 'Novela', 'Genero narrativo'),
(2, 'Poesía', 'Genero lirico'),
(3, 'Teatro', 'Obras clásicas de teatro'),
(4, 'Programación', 'Libros de programación'),
(5, 'Superación', 'Libros de superación y autoayuda'),
(6, 'Ciencias exactas', 'Libros de matemática y física'),
(7, 'Diccionarios', 'Diccionarios de diferentes idiomas y temas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
  `codigo_libro` varchar(9) NOT NULL,
  `nombre_libro` varchar(50) NOT NULL,
  `existencias` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `codigo_autor` varchar(6) NOT NULL,
  `codigo_editorial` varchar(6) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`codigo_libro`),
  KEY `fk_libro_autor` (`codigo_autor`),
  KEY `fk_libro_editorial` (`codigo_editorial`),
  KEY `fk_libro_genero` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigo_libro`, `nombre_libro`, `existencias`, `precio`, `codigo_autor`, `codigo_editorial`, `id_genero`, `descripcion`) VALUES
('LIB000001', 'Rayuela', 3, '15.25', 'AUT001', 'EDI003', 1, 'Rayuela es una novela del escritor argentino Julio Cortázar. Escrita en París y publicada por primera vez el 28 de junio de 1963,​ constituye una de las obras centrales del boom latinoamericano.'),
('LIB000002', 'Historias de Cronopios', 10, '5.39', 'AUT001', 'EDI003', 1, 'Historias de Cronopios y de Famas es una obra fantástica del escritor argentino Julio Cortázar publicada en 1962 por el editorial Minotauro.'),
('LIB000003', 'Las historias prohibidas de pulgarcito', 4, '8.75', 'AUT002', 'EDI001', 1, 'Hay dos cosas que son ciertas aquí, ahora y siempre. La primera es que la historia –la oficial, la de mayúsculas reverenciales– la escriben los ganadores...'),
('LIB000004', 'Don Quijote de la Mancha', 5, '18.50', 'AUT003', 'EDI003', 1, 'Don Quijote de la Mancha​ es una novela escrita por el español Miguel de Cervantes Saavedra. Publicada su primera parte con el título de El ingenioso hidalgo don Quijote de la Mancha.'),
('LIB000005', 'Novelas ejemplares', 2, '5.78', 'AUT003', 'EDI003', 1, 'Se trata de doce novelas cortas que siguen el modelo establecido en Italia. Su denominación de ejemplares obedece al carácter didáctico y moral que incluyen en alguna medida los relatos. '),
('LIB000006', 'De profundis', 1, '3.25', 'AUT004', 'EDI001', 1, 'De profundis es la epístola que Oscar Wilde escribió para su compañero, Lord Alfred Douglas en la prisión de Reading en marzo de 1897, dos meses antes de que cumpliera su sentencia, la cual fue impuesta por el delito de sodomía.'),
('LIB000007', 'La Balada de la Cárcel de Reading ', 3, '2.25', 'AUT004', 'EDI001', 2, 'La Balada de la Cárcel de Reading es un poema escrito por Oscar Wilde durante su exilio en Berneval o Dieppe, Francia. Fue escrito tras su liberación de la prisión de Reading en torno al 19 de mayo de 1897. El poema es una de las baladas más representativas tanto del autor como de la literatura.'),
('LIB000008', 'Algebra Vectorial. Cuadernos de catedra', 20, '15.50', 'AUT006', 'EDI002', 6, 'Cuadernos de cátedra sobre matrices y vectores para las carreras de la facultad de ingeniería de la Universidad Don Bosco.'),
('LIB000009', 'Calculo diferencial. Cuadernos de cátedra', 5, '16.00', 'AUT006', 'EDI002', 6, 'Libro de calculo diferencial para los estudiantes de ingeniería de la Universidad Don Bosco. Abarca desde introducción a las funciones hasta aplicaciones de la derivada.'),
('LIB000010', 'Cálculo integral. Cuadernos de cátedra.', 50, '15.50', 'AUT006', 'EDI002', 6, 'Libro de calculo integral para los estudiantes de ingeniería de la Universidad Don Bosco. Abarca desde integrales definidas hasta aplicaciones de las integrales.'),
('LIB000011', 'HIBERNATE. PERSISTENCIA DE OBJETOS EN JEE', 2, '25.96', 'AUT007', 'EDI004', 4, 'Este libro ofrece, además de una introducción al framework y a la persistencia de datos en Java, un recorrido por las distintas maneras de interactuar con una base de datos relacional, empezando desde ejemplos sencillos a escenarios más complejos de mapeos. También cubre otros aspectos como el lenguaje HQL que nos permite un control más preciso de las consultas a la base de datos'),
('LIB000012', 'DESARROLLO DE APLICACIONES CON EL FRAMEWORK SPRING', 3, '20.99', 'AUT007', 'EDI004', 4, 'A través de este libro te introducirás en el framework Spring y en sus conceptos clave como la inversión de control. Partiendo de ejemplos simples irás descubriendo las distintas facetas de este framework con especial énfasis en el desarrollo de aplicaciones web y sin perder de vista la integración con Hibernate.'),
('LIB000015', 'Algebra', 50, '23.50', 'AUT008', 'EDI006', 6, 'Álgebra​ es un libro del matemático y profesor cubano Aurelio Baldor. La primera edición se produjo el 19 de junio de 1941. El texto de Baldor es el libro más consultado en escuelas y colegios de Latinoamérica.'),
('LIB000016', 'Aritmetica', 50, '26.50', 'AUT008', 'EDI006', 6, ' No hay mejor manera que empezar el estudio de los números o matemáticas elementales que con el libro de aritmética baldor.'),
('LIB000018', '100 años de soledad', 2, '15.00', 'AUT009', 'EDI001', 1, 'Cien años de soledad es una novela del escritor colombiano Gabriel García Márquez, ganador del Premio Nobel de Literatura en 1982. Es considerada una obra maestra de la literatura hispanoamericana y universal, así como una de las obras más traducidas y leídas en español.'),
('LIB000019', 'El coronel no tiene quien le escriba', 3, '3.25', 'AUT009', 'EDI001', 1, 'El coronel no tiene quien le escriba es una novela corta publicada por el escritor colombiano Gabriel García Márquez en 1961. Es una de las más célebres de las escritas por el autor, y su protagonista, un viejo coronel que espera la pensión que nunca llega, es considerado como uno de los personajes más entrañables de la literatura hispanoamericana del siglo XX. Fue incluida en la lista de las 100 mejores novelas en español del siglo XX del periódico español El Mundo.'),
('LIB000020', 'Apuntes de cátedra para una física de equilibrio', 17, '12.00', 'AUT010', 'EDI002', 6, 'Cuaderno de cátedra para el curso de Física Aplicada para los alumnos de la Facultad de Estudios Tecnológicos de la Universidad Don Bosco.'),
('LIB000021', 'La ciudad y los perros', 2, '15.00', 'AUT011', 'EDI003', 1, 'La ciudad y los perros es la primera novela del escritor peruano Mario Vargas Llosa, Premio Nobel de Literatura 2010. Ganador con el Premio Biblioteca Breve en 1962, fue publicada en octubre de 1963 y ganó el Premio de la Crítica Española.'),
('LIB000022', 'El quinto hijo', 1, '17.25', 'AUT012', 'EDI003', 1, 'Harriet y David están enamorados, deciden casarse y formar un hogar en donde poder criar felices a sus hijos. Después de los cuatro primeros niños, la llegada del quinto parece prometer aún más dicha a la pareja. Sin embargo, el bebé se empieza a mover en las entrañas de Harriet demasiado pronto y con demasiada violencia. Harriet da a luz en un difícil parto y eso no es más que el comienzo: el niño se desarrolla de forma inusual y se convierte en un extraño para sus hermanos... Un inquietante retrato de familia que habla crudamente de la naturaleza humana.');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_libro_autor` FOREIGN KEY (`codigo_autor`) REFERENCES `autores` (`codigo_autor`),
  ADD CONSTRAINT `fk_libro_editorial` FOREIGN KEY (`codigo_editorial`) REFERENCES `editoriales` (`codigo_editorial`),
  ADD CONSTRAINT `fk_libro_genero` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
