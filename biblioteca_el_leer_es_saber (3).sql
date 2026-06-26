-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 16:12:40
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_el_leer_es_saber`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_autor`, `nombre`, `apellido`, `fecha_nacimiento`, `nacionalidad`, `biografia`, `creado_en`) VALUES
(1, 'Gabriel', 'García Márquez', '1927-03-06', 'Colombiana', NULL, '2026-06-26 14:06:33'),
(2, 'Mario', 'Vargas Llosa', '1936-03-28', 'Peruana', NULL, '2026-06-26 14:06:33'),
(3, 'Isabel', 'Allende', '1942-08-02', 'Chilena', NULL, '2026-06-26 14:06:33'),
(4, 'Jorge', 'Luis Borges', '1899-08-24', 'Argentina', NULL, '2026-06-26 14:06:33'),
(5, 'Julio', 'Cortázar', '1914-08-26', 'Argentina', NULL, '2026-06-26 14:06:33'),
(6, 'Pablo', 'Neruda', '1904-07-12', 'Chilena', NULL, '2026-06-26 14:06:33'),
(7, 'Carlos', 'Fuentes', '1928-11-11', 'Mexicana', NULL, '2026-06-26 14:06:33'),
(8, 'Laura', 'Esquivel', '1950-09-30', 'Mexicana', NULL, '2026-06-26 14:06:33'),
(9, 'Elena', 'Poniatowska', '1932-05-19', 'Mexicana', NULL, '2026-06-26 14:06:33'),
(10, 'Haruki', 'Murakami', '1949-01-12', 'Japonesa', NULL, '2026-06-26 14:06:33'),
(11, 'J.K.', 'Rowling', '1965-07-31', 'Británica', NULL, '2026-06-26 14:06:33'),
(12, 'Stephen', 'King', '1947-09-21', 'Estadounidense', NULL, '2026-06-26 14:06:33'),
(13, 'George', 'Orwell', '1903-06-25', 'Británica', NULL, '2026-06-26 14:06:33'),
(14, 'Jane', 'Austen', '1775-12-16', 'Británica', NULL, '2026-06-26 14:06:33'),
(15, 'Agatha', 'Christie', '1890-09-15', 'Británica', NULL, '2026-06-26 14:06:33'),
(16, 'Miguel', 'de Cervantes', '1547-09-29', 'Española', NULL, '2026-06-26 14:06:33'),
(17, 'Federico', 'García Lorca', '1898-06-05', 'Española', NULL, '2026-06-26 14:06:33'),
(18, 'Octavio', 'Paz', '1914-03-31', 'Mexicana', NULL, '2026-06-26 14:06:33'),
(19, 'Clarice', 'Lispector', '1920-12-10', 'Brasileña', NULL, '2026-06-26 14:06:33'),
(20, 'Jorge', 'Amado', '1912-08-10', 'Brasileña', NULL, '2026-06-26 14:06:33'),
(21, 'Isabel', 'Allende', '1942-08-02', 'Chilena', NULL, '2026-06-26 14:06:33'),
(22, 'Mario', 'Benedetti', '1920-09-14', 'Uruguaya', NULL, '2026-06-26 14:06:33'),
(23, 'Alfonsina', 'Storni', '1892-05-29', 'Argentina', NULL, '2026-06-26 14:06:33'),
(24, 'Ricardo', 'Darío', '1867-01-18', 'Nicaragüense', NULL, '2026-06-26 14:06:33'),
(25, 'Gabriela', 'Mistral', '1889-04-07', 'Chilena', NULL, '2026-06-26 14:06:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_registro` date DEFAULT curdate(),
  `estado` enum('Activo','inactivo','suspendido') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `dni`, `nombre`, `apellido`, `fecha_nacimiento`, `direccion`, `telefono`, `email`, `fecha_registro`, `estado`) VALUES
(1, '12345678', 'Carlos', 'Rodríguez', '1995-04-12', 'Av. Principal 123', '987654321', 'carlos@email.com', '2026-06-26', 'Activo'),
(2, '23456789', 'Ana', 'López', '1998-07-23', 'Calle 45 #67', '912345678', 'ana@email.com', '2026-06-26', 'Activo'),
(3, '34567890', 'Luis', 'García', '1993-11-05', 'Jr. Los Pinos 89', '945678901', 'luis@email.com', '2026-06-26', 'Activo'),
(4, '45678901', 'María', 'Torres', '2000-02-18', 'Av. Libertad 234', '956789012', 'maria@email.com', '2026-06-26', 'Activo'),
(5, '56789012', 'Pedro', 'Sánchez', '1996-09-30', 'Calle Real 56', '967890123', 'pedro@email.com', '2026-06-26', 'Activo'),
(6, '67890123', 'Laura', 'Martínez', '1997-05-15', 'Av. Bolívar 789', '978901234', 'laura@email.com', '2026-06-26', 'Activo'),
(7, '78901234', 'Diego', 'Hernández', '1994-12-22', 'Jr. Independencia 12', '989012345', 'diego@email.com', '2026-06-26', 'Activo'),
(8, '89012345', 'Sofía', 'Ramírez', '1999-03-08', 'Calle 78 #90', '990123456', 'sofia@email.com', '2026-06-26', 'Activo'),
(9, '90123456', 'Andrés', 'Flores', '1992-08-17', 'Av. Sucre 345', '901234567', 'andres@email.com', '2026-06-26', 'Activo'),
(10, '01234567', 'Valentina', 'Cruz', '2001-06-25', 'Jr. Las Flores 67', '912345678', 'valentina@email.com', '2026-06-26', 'Activo'),
(11, '11234567', 'Jorge', 'Vargas', '1995-10-11', 'Calle 23 #45', '923456789', 'jorge@email.com', '2026-06-26', 'Activo'),
(12, '21234567', 'Camila', 'Morales', '1998-01-30', 'Av. Central 890', '934567890', 'camila@email.com', '2026-06-26', 'Activo'),
(13, '31234567', 'Mateo', 'Ortiz', '1997-04-14', 'Jr. San Martín 123', '945678901', 'mateo@email.com', '2026-06-26', 'Activo'),
(14, '41234567', 'Isabella', 'Gómez', '1999-11-27', 'Calle 12 #34', '956789012', 'isabella@email.com', '2026-06-26', 'Activo'),
(15, '51234567', 'Sebastián', 'Ramos', '1996-07-19', 'Av. España 567', '967890123', 'sebastian@email.com', '2026-06-26', 'Activo'),
(16, '61234567', 'Lucía', 'Díaz', '2000-05-03', 'Jr. Bolívar 89', '978901234', 'lucia@email.com', '2026-06-26', 'Activo'),
(17, '71234567', 'Emiliano', 'Silva', '1993-09-21', 'Calle 67 #89', '989012345', 'emiliano@email.com', '2026-06-26', 'Activo'),
(18, '81234567', 'Mía', 'Navarro', '1998-12-08', 'Av. Libertador 234', '990123456', 'mia@email.com', '2026-06-26', 'Activo'),
(19, '91234567', 'Benjamín', 'Mendoza', '1995-02-16', 'Jr. 28 de Julio 45', '901234567', 'benjamin@email.com', '2026-06-26', 'Activo'),
(20, '10123456', 'Olivia', 'Castro', '1997-06-29', 'Calle Principal 12', '912345678', 'olivia@email.com', '2026-06-26', 'Activo'),
(21, '11123456', 'Lucas', 'Vega', '1999-10-05', 'Av. 28 de Julio 678', '923456789', 'lucas@email.com', '2026-06-26', 'Activo'),
(22, '12123456', 'Emma', 'Rojas', '1994-03-18', 'Jr. Comercio 90', '934567890', 'emma@email.com', '2026-06-26', 'Activo'),
(23, '13123456', 'Daniel', 'Herrera', '1996-08-22', 'Calle 45 #67', '945678901', 'daniel@email.com', '2026-06-26', 'Activo'),
(24, '14123456', 'Victoria', 'Medina', '2001-01-14', 'Av. Grau 123', '956789012', 'victoria@email.com', '2026-06-26', 'Activo'),
(25, '15123456', 'Samuel', 'Castillo', '1998-04-27', 'Jr. Lima 456', '967890123', 'samuel@email.com', '2026-06-26', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `id_editorial` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`id_editorial`, `nombre`, `pais`, `sitio_web`, `creado_en`) VALUES
(1, 'Editorial Planeta', 'España', NULL, '2026-06-26 14:07:09'),
(2, 'Penguin Random House', 'Estados Unidos', NULL, '2026-06-26 14:07:09'),
(3, 'Santillana', 'España', NULL, '2026-06-26 14:07:09'),
(4, 'Alfaguara', 'España', NULL, '2026-06-26 14:07:09'),
(5, 'Seix Barral', 'España', NULL, '2026-06-26 14:07:09'),
(6, 'Anagrama', 'España', NULL, '2026-06-26 14:07:09'),
(7, 'Destino', 'España', NULL, '2026-06-26 14:07:09'),
(8, 'Sudamericana', 'Argentina', NULL, '2026-06-26 14:07:09'),
(9, 'Emecé', 'Argentina', NULL, '2026-06-26 14:07:09'),
(10, 'Fondo de Cultura Económica', 'México', NULL, '2026-06-26 14:07:09'),
(11, 'Siglo XXI', 'México', NULL, '2026-06-26 14:07:09'),
(12, 'Joaquín Mortiz', 'México', NULL, '2026-06-26 14:07:09'),
(13, 'Editorial Norma', 'Colombia', NULL, '2026-06-26 14:07:09'),
(14, 'Tusquets', 'España', NULL, '2026-06-26 14:07:09'),
(15, 'Galaxia Gutenberg', 'España', NULL, '2026-06-26 14:07:09'),
(16, 'Lumen', 'España', NULL, '2026-06-26 14:07:09'),
(17, 'Debate', 'España', NULL, '2026-06-26 14:07:09'),
(18, 'HarperCollins', 'Estados Unidos', NULL, '2026-06-26 14:07:09'),
(19, 'Vintage Books', 'Estados Unidos', NULL, '2026-06-26 14:07:09'),
(20, 'Editorial Océano', 'México', NULL, '2026-06-26 14:07:09'),
(21, 'Ediciones B', 'España', NULL, '2026-06-26 14:07:09'),
(22, 'SM Ediciones', 'España', NULL, '2026-06-26 14:07:09'),
(23, 'Editorial Ariel', 'España', NULL, '2026-06-26 14:07:09'),
(24, 'Editorial Taurus', 'España', NULL, '2026-06-26 14:07:09'),
(25, 'Editorial Crítica', 'España', NULL, '2026-06-26 14:07:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `nombre`, `descripcion`) VALUES
(1, 'Novela', 'Obras de ficción narrativa'),
(2, 'Ciencia Ficción', 'Literatura futurista y tecnológica'),
(3, 'Fantasía', 'Mundos imaginarios y mágicos'),
(4, 'Misterio', 'Novelas de intriga'),
(5, 'Terror', 'Literatura de miedo'),
(6, 'Romance', 'Historias de amor'),
(7, 'Historia', 'Libros históricos'),
(8, 'Biografía', 'Vidas de personas reales'),
(9, 'Autoayuda', 'Desarrollo personal'),
(10, 'Poesía', 'Obra poética'),
(11, 'Drama', 'Literatura dramática'),
(12, 'Aventura', 'Historias de exploración'),
(13, 'Infantil', 'Libros para niños'),
(14, 'Juvenil', 'Literatura para jóvenes'),
(15, 'Clásicos', 'Obras maestras de la literatura'),
(16, 'Ensayo', 'Textos reflexivos'),
(17, 'Novela Negra', 'Crimen y detectives'),
(18, 'Distopía', 'Sociedades futuristas negativas'),
(19, 'Realismo Mágico', 'Mezcla de realidad y fantasía'),
(20, 'Literatura Latinoamericana', 'Autores de Latinoamérica'),
(21, 'Filosofía', 'Pensamiento filosófico'),
(22, 'Psicología', 'Estudios sobre la mente'),
(23, 'Ciencia', 'Divulgación científica'),
(24, 'Economía', 'Libros de economía'),
(25, 'Arte', 'Libros sobre arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `titulo` varchar(200) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_editorial` int(11) DEFAULT NULL,
  `ano_publicacion` year(4) DEFAULT NULL,
  `numero_paginas` int(11) DEFAULT NULL,
  `cantidad_ejemplares` int(11) NOT NULL DEFAULT 1,
  `cantidad_disponible` int(11) NOT NULL DEFAULT 1,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `isbn`, `titulo`, `id_autor`, `id_editorial`, `ano_publicacion`, `numero_paginas`, `cantidad_ejemplares`, `cantidad_disponible`, `descripcion`) VALUES
(51, '9788401023456', 'Cien años de soledad', 1, 1, '1967', 496, 5, 4, 'Obra maestra del realismo mágico'),
(52, '9788420471234', 'La ciudad y los perros', 2, 2, '1963', 384, 4, 3, 'Novela del boom latinoamericano'),
(53, '9788401345679', 'La casa de los espíritus', 3, 1, '1982', 448, 6, 5, 'Saga familiar con toques mágicos'),
(54, '9788437604321', 'El aleph', 4, 3, '1949', 160, 3, 2, 'Cuentos emblemáticos'),
(55, '9788437609875', 'Rayuela', 5, 4, '1963', 652, 4, 4, 'Novela experimental'),
(56, '9788401012345', 'Veinte poemas de amor', 6, 1, '1924', 80, 8, 7, 'Clásico de la poesía'),
(57, '9789681654321', 'La muerte de Artemio Cruz', 7, 5, '1962', 320, 3, 3, 'Reflexión sobre el poder'),
(58, '9781408856789', 'Como agua para chocolate', 8, 6, '1989', 288, 5, 4, 'Novela de amor y cocina'),
(59, '9786074215678', 'La noche de Tlatelolco', 9, 7, '1971', 352, 4, 4, 'Crónica histórica'),
(60, '9781408853456', 'Kafka en la orilla', 10, 8, '2002', 608, 3, 2, 'Realismo mágico japonés'),
(61, '9781408857890', 'Harry Potter y la piedra filosofal', 11, 9, '1997', 256, 10, 8, 'Fantasía juvenil'),
(62, '9780307743657', 'It', 12, 10, '1986', 1138, 4, 3, 'Terror clásico'),
(63, '9780451524935', '1984', 13, 11, '1949', 328, 6, 5, 'Distopía emblemática'),
(64, '9780141439518', 'Orgullo y prejuicio', 14, 12, '0000', 432, 5, 5, 'Clásico de la literatura inglesa'),
(65, '9780007111671', 'Asesinato en el Orient Express', 15, 13, '1934', 256, 4, 4, 'Misterio de Agatha Christie'),
(66, '9780060935467', 'Don Quijote de la Mancha', 16, 14, '0000', 863, 3, 2, 'La gran novela española'),
(67, '9788437604567', 'Bodas de sangre', 17, 4, '1933', 112, 5, 5, 'Tragedia de García Lorca'),
(68, '9789681634567', 'El laberinto de la soledad', 18, 5, '1950', 208, 4, 3, 'Ensayo sobre México'),
(69, '9780811217378', 'La hora de la estrella', 19, 15, '1977', 96, 3, 3, 'Obra maestra de Clarice Lispector'),
(70, '9780307278364', 'Gabriela, clavo y canela', 20, 10, '1958', 432, 4, 4, 'Clásico brasileño'),
(71, '9780061120091', 'La sombra del viento', 21, 16, '2001', 512, 5, 4, 'Misterio y libros'),
(72, '9788401345678', 'La tregua', 22, 1, '1960', 256, 6, 5, 'Novela de Mario Benedetti'),
(73, '9789507312345', 'El dulce daño', 23, 17, '1918', 120, 4, 4, 'Poesía de Alfonsina Storni'),
(74, '9788437609876', 'Azul...', 24, 4, '0000', 180, 3, 3, 'Obra modernista'),
(75, '9788437601234', 'Desolación', 25, 18, '1922', 240, 5, 4, 'Poesía de Gabriela Mistral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_generos`
--

CREATE TABLE `libros_generos` (
  `id_libro` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_clientes` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL DEFAULT curdate(),
  `fecha_devolucion_esperada` date NOT NULL,
  `fecha_devolucion_real` date DEFAULT NULL,
  `estado` enum('Activo','Devuelto','Atrasado','Perdido') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_socios_dni` (`dni`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`id_editorial`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_editorial` (`id_editorial`),
  ADD KEY `idx_libros_titulo` (`titulo`),
  ADD KEY `idx_libros_isbn` (`isbn`);

--
-- Indices de la tabla `libros_generos`
--
ALTER TABLE `libros_generos`
  ADD PRIMARY KEY (`id_libro`,`id_genero`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_socio` (`id_clientes`),
  ADD KEY `idx_prestamos_fecha` (`fecha_prestamo`),
  ADD KEY `idx_prestamos_estado` (`estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `id_editorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_editorial`) REFERENCES `editoriales` (`id_editorial`) ON DELETE SET NULL;

--
-- Filtros para la tabla `libros_generos`
--
ALTER TABLE `libros_generos`
  ADD CONSTRAINT `libros_generos_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE,
  ADD CONSTRAINT `libros_generos_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
