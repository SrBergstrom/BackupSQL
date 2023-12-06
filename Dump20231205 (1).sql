/*
	Tablas incluidas: TODAS
*/

CREATE DATABASE  IF NOT EXISTS `tienda_04` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `tienda_04`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda_04
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `idArticulo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria articulos',
  `idCategoria` int(11) NOT NULL COMMENT 'llave foranea categorias',
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Código del artículo',
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nombre del artículo',
  `precioVenta` decimal(11,2) DEFAULT NULL COMMENT 'Precio de venta del artículo',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT 'Cantidad en stock del artículo',
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Descripción detallada del artículo',
  `estado` tinyint(4) DEFAULT 0 COMMENT 'Indica si el artículo está activo o no',
  PRIMARY KEY (`idArticulo`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria categorias',
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nombre de la categoría',
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Descripción de la categoría',
  `estado` tinyint(1) DEFAULT NULL COMMENT 'Indica si la categoría está activa o no',
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria clientes',
  `tipoCliente` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo de persona del cliente (un cliente puede comprarnos o vendernos articulos)',
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nombre completo del cliente',
  `tipoDocumento` enum('DNI','Pasaporte','RUC','Otro') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo de documento del cliente',
  `numDocumento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número del documento de identidad o registro único del cliente',
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Dirección del cliente',
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número de teléfono del cliente',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Correo electrónico del cliente',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalle_ingresos`
--

DROP TABLE IF EXISTS `detalle_ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ingresos` (
  `idIngreso` int(11) NOT NULL COMMENT 'LLave foranea ingresos',
  `idArticulo` int(11) NOT NULL COMMENT 'LLave foranea articulos',
  `cantidad` int(11) NOT NULL COMMENT 'Cantidad de unidades ingresadas',
  `precio` decimal(10,2) NOT NULL COMMENT 'Precio unitario del artículo ingresado',
  PRIMARY KEY (`idIngreso`,`idArticulo`),
  KEY `idArticulo` (`idArticulo`),
  CONSTRAINT `detalle_ingresos_ibfk_1` FOREIGN KEY (`idIngreso`) REFERENCES `ingresos` (`idIngreso`) ON DELETE CASCADE,
  CONSTRAINT `detalle_ingresos_ibfk_2` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tgr_actualizar_total_bi_detalle_ingresos
BEFORE INSERT ON detalle_ingresos
FOR EACH ROW
BEGIN
    -- Declaración de variables locales
    DECLARE precio DECIMAL(10, 2);
    DECLARE cantidad INT;
    DECLARE total_anterior DECIMAL(10, 2);

    -- Manejo de casos en los que precio o cantidad pueden ser nulos
    SELECT COALESCE(NEW.precio, 0), COALESCE(NEW.cantidad, 0) INTO precio, cantidad;

    -- Obtención del total anterior
    SELECT total INTO total_anterior FROM ingresos WHERE idIngreso = NEW.idIngreso;

    -- Verificación de existencia de un registro con el mismo idIngreso
    IF total_anterior IS NOT NULL THEN
        -- Actualización del total sumando la nueva cantidad total
        UPDATE ingresos SET total = total + (precio * cantidad) WHERE idIngreso = NEW.idIngreso;
    ELSE
        -- Inserción de un nuevo registro si no existe uno con el mismo idIngreso
        INSERT INTO ingresos (idIngreso, total) VALUES (NEW.idIngreso, precio * cantidad);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ventas` (
  `idVenta` int(11) NOT NULL COMMENT 'LLave foranea ventas',
  `idArticulo` int(11) NOT NULL COMMENT 'LLave foanea articulos',
  `cantidad` int(11) NOT NULL COMMENT 'Cantidad de unidades vendidas',
  `precio` decimal(10,2) NOT NULL COMMENT 'Precio unitario del artículo vendido',
  `descuento` decimal(10,2) NOT NULL COMMENT 'Monto del descuento aplicado al artículo',
  PRIMARY KEY (`idVenta`,`idArticulo`),
  KEY `idArticulo` (`idArticulo`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`) ON DELETE CASCADE,
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tgr_calcular_bi_detalle_ventas
BEFORE INSERT ON detalle_ventas
FOR EACH ROW
BEGIN
    DECLARE v_categoria INT;
    DECLARE v_descuento DECIMAL(10, 2);
    DECLARE v_precio DECIMAL(10, 2);

    -- Obtenemos la categoría del artículo, utilizamos la funcion anterior creada
    SELECT udf_encontrar_categoria(NEW.idArticulo) INTO v_categoria;

    -- Obtenemos el precio del artículo
    SELECT precioVenta INTO v_precio FROM articulos WHERE idArticulo = NEW.idArticulo;

    -- Calculamos el descuento basado en la categoría
    SET v_descuento = 
        CASE 
            WHEN v_categoria BETWEEN 1 AND 7 THEN v_categoria * 0.1
            ELSE 0  -- Valor por defecto si ninguna condición es verdadera
        END;

    -- Asignamos el descuento al nuevo registro en detalle_ventas
    SET NEW.descuento = (v_descuento * v_precio);

    -- Calculamos el precio final
    SET NEW.precio = v_precio - NEW.descuento;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tgr_actualizartotal_bi_detalle_ventas
BEFORE INSERT ON detalle_ventas
FOR EACH ROW
BEGIN
    -- Declaramos las variables locales para almacenar precio, cantidad y total
    DECLARE v_precio DECIMAL(10, 2);
    DECLARE v_cantidad INT;
    DECLARE v_total DECIMAL(10, 2);
    DECLARE v_total_anterior DECIMAL(10, 2);

    -- Obtenemos precio y cantidad del nuevo registro en detalle_ventas
    SELECT NEW.precio, NEW.cantidad INTO v_precio, v_cantidad;
    
    SELECT total INTO v_total_anterior FROM ventas WHERE idVenta = NEW.idVenta ;

    -- Calculamos el total
    SET v_total = v_precio * v_cantidad;
	
    IF v_total_anterior IS NOT NULL THEN
		-- Actualizamos la tabla ventas con el total calculado
		UPDATE ventas SET total = (v_total  + v_total_anterior) WHERE idVenta = NEW.idVenta;
	ELSE 
		UPDATE ventas SET total = (v_total) WHERE idVenta = NEW.idVenta;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresos` (
  `idIngreso` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria ingresos',
  `idCliente` int(11) NOT NULL COMMENT 'LLave foranea clientes',
  `idUsuario` int(11) NOT NULL COMMENT 'LLave foranea usuarios',
  `tipoComprobante` enum('Factura','Boleta','Otro') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo de comprobante del ingreso (Factura o Boleta)',
  `serieComprobante` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número de serie del comprobante',
  `numComprobante` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número del comprobante',
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha y hora del ingreso',
  `impuesto` decimal(5,2) DEFAULT NULL COMMENT 'Tasa de impuesto aplicada en porcentaje',
  `total` decimal(11,2) DEFAULT NULL COMMENT 'Total del ingreso',
  `estado` enum('Pendiente','Pagado','Anulado') COLLATE utf8mb4_unicode_ci DEFAULT 'Pendiente' COMMENT 'Estado del ingreso',
  PRIMARY KEY (`idIngreso`),
  KEY `idCliente` (`idCliente`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE,
  CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tgr_actualizar_total_bu_ingresos
BEFORE UPDATE ON ingresos
FOR EACH ROW
BEGIN
    -- Declaración de variable local
    DECLARE total DECIMAL(10, 2);
    
    -- Asignación del nuevo total de la tabla
    SET total = NEW.total;
    
    -- Actualización del impuesto (no se necesita un UPDATE adicional ya que el trigger está en esa tabla)
    SET NEW.impuesto = total * 0.18;  -- Impuesto del 18%
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria roles',
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nombre del rol',
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Descripción del rol',
  `estado` tinyint(1) DEFAULT NULL COMMENT 'Estado del rol (activo o inactivo)',
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria usuarios',
  `idRol` int(11) NOT NULL COMMENT 'LLave foranea roles',
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nombre del usuario',
  `tipoDocumento` enum('DNI','RUC','Pasaporte','Licencia','Otro') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo de documento del usuario',
  `direccion` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Dirección del usuario',
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número de teléfono del usuario',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Correo electrónico del usuario',
  `clave` varbinary(255) DEFAULT NULL COMMENT 'Clave del usuario almacenada de forma segura',
  `estado` tinyint(4) DEFAULT 0 COMMENT 'Estado del usuario (activo o inactivo)',
  PRIMARY KEY (`idUsuario`),
  KEY `idRol` (`idRol`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria ventas',
  `idCliente` int(11) NOT NULL COMMENT 'LLave foranea clientes',
  `idUsuario` int(11) NOT NULL COMMENT 'LLave foranea usuario',
  `tipoComprobante` enum('Factura','Boleta','Otro') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de comprobante de venta',
  `serieComprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número de serie del comprobante',
  `numComprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número del comprobante',
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha y hora de la venta',
  `impuesto` decimal(5,2) DEFAULT NULL COMMENT 'Tasa de impuesto aplicada en porcentaje',
  `total` decimal(11,2) DEFAULT NULL COMMENT 'Total de la venta',
  `estado` enum('Pendiente','Pagado','Anulado','Otro') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendiente' COMMENT 'Estado de la venta',
  PRIMARY KEY (`idVenta`),
  KEY `idCliente` (`idCliente`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tgr_actualizarimpuesto_bu_ventas
BEFORE UPDATE ON ventas
FOR EACH ROW
BEGIN
    -- Declaramos la variable local para almacenar total
    DECLARE total DECIMAL(10, 2);

    -- Obtenemos el total
    SET total = NEW.total;

    -- Actualizamos la tabla ventas con el descuento calculado --> 18%
    SET NEW.impuesto = total * 0.18;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'tienda_04'
--

--
-- Dumping routines for database 'tienda_04'
--
/*!50003 DROP FUNCTION IF EXISTS `udf_encontrar_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `udf_encontrar_categoria`(v_idArticulo INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE v_categoria INT;

    SELECT c.idCategoria INTO v_categoria
    FROM 
		categorias c INNER JOIN articulos a ON c.idCategoria = a.idCategoria
    WHERE idArticulo = v_idArticulo;

    RETURN (v_categoria);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CargarYInsertarVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CargarYInsertarVenta`(IN p_rutaArchivo VARCHAR(255))
BEGIN
    DECLARE jsonContent TEXT;

    -- Leer los datos desde el archivo JSON
    SET jsonContent = LOAD_FILE(p_rutaArchivo);
    SET jsonContent = REPLACE(jsonContent, '\\', '\\\\'); -- Corregir la escapada de barras invertidas

    -- Construir y ejecutar la consulta
    CALL InsertarVentaJSON(
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.idVenta')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.idCliente')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.idUsuario')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.tipoComprobante')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.serieComprobante')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.numComprobante')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.estado')),
        JSON_UNQUOTE(JSON_EXTRACT(jsonContent, '$.detalleVentas'))
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarVentaJSON` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarVentaJSON`(
    IN p_idVenta INT,
    IN p_idCliente INT,
    IN p_idUsuario INT,
    IN p_tipoComprobante VARCHAR(30),
    IN p_serieComprobante VARCHAR(30),
    IN p_numComprobante VARCHAR(30),
    IN p_estado VARCHAR(30),
    IN p_detalleVentas JSON
)
BEGIN
	/*
		En MySQL, cuando se produce un error o una advertencia dentro de un bloque BEGIN...END. 
        el manejador de errores correspondiente se activará automáticamente. 
        El orden en el que declaras los manejadores de errores dentro del bloque no afecta su comportamiento.
    */
    -- Declaración de variables locales
    DECLARE i INT DEFAULT 0;
    DECLARE idArticulo INT;
    DECLARE cantidad INT;

    -- Manejar excepciones SQL
    DECLARE exit handler for sqlexception
    BEGIN
        -- Manejar la excepción SQL aquí
        ROLLBACK;
        SELECT 'Error al intentar insertar el registro' AS Rollback;
    END;

    -- Manejar advertencias SQL
    DECLARE exit handler for sqlwarning
    BEGIN
        -- Manejar la advertencia SQL aquí
        ROLLBACK;
        SELECT 'Advertencia al intentar insertar el registro' AS Advertencia;
    END;

    -- Iniciar la transacción
    START TRANSACTION;

    -- Insertar en la tabla de ventas
    INSERT INTO ventas (idVenta, idCliente, idUsuario, tipoComprobante, serieComprobante, numComprobante, estado)
    VALUES (p_idVenta, p_idCliente, p_idUsuario, p_tipoComprobante, p_serieComprobante, p_numComprobante, p_estado);

    -- Obtener la longitud del array JSON
    SET i = JSON_LENGTH(p_detalleVentas);

    -- Iterar sobre el array JSON de detalleVentas
    WHILE i > 0 DO
		/*
			La función JSON_UNQUOTE se utiliza para eliminar las comillas que rodean una cadena JSON.
            La función JSON_EXTRACT se utiliza para extraer un valor de un objeto o array JSON.
        */
        -- Obtener valores del array JSON
        SET idArticulo = JSON_UNQUOTE(JSON_EXTRACT(p_detalleVentas, CONCAT('$[', i - 1, '].idArticulo')));
        SET cantidad = JSON_UNQUOTE(JSON_EXTRACT(p_detalleVentas, CONCAT('$[', i - 1, '].cantidad')));

        -- Insertar en la tabla de detalle_ventas
        INSERT INTO detalle_ventas (idVenta, idArticulo, cantidad)
        VALUES (p_idVenta, idArticulo, cantidad);

		-- Decrementar el índice para avanzar al siguiente elemento del array JSON
        SET i = i - 1;
        
    END WHILE;

    -- Confirmar la transacción
    COMMIT;
    SELECT 'Registro insertado correctamente' AS Commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 23:04:14
