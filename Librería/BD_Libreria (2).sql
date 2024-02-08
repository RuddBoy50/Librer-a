CREATE DATABASE  IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `libreria`;
-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: libreria
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_cat_editorial`
--

DROP TABLE IF EXISTS `tbl_cat_editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_editorial` (
  `Editorial_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Editorial_Editorial` varchar(45) NOT NULL,
  `Editorial_Activo` varchar(45) NOT NULL,
  PRIMARY KEY (`Editorial_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_editorial`
--

LOCK TABLES `tbl_cat_editorial` WRITE;
/*!40000 ALTER TABLE `tbl_cat_editorial` DISABLE KEYS */;
INSERT INTO `tbl_cat_editorial` VALUES (1,'Grupo Planeta','1'),(2,'Albatros','1'),(3,'Salamandra','1');
/*!40000 ALTER TABLE `tbl_cat_editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cat_genero`
--

DROP TABLE IF EXISTS `tbl_cat_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_genero` (
  `Genero_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Genero_Genero` varchar(45) NOT NULL,
  `Genero_Activo` varchar(45) NOT NULL,
  PRIMARY KEY (`Genero_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_genero`
--

LOCK TABLES `tbl_cat_genero` WRITE;
/*!40000 ALTER TABLE `tbl_cat_genero` DISABLE KEYS */;
INSERT INTO `tbl_cat_genero` VALUES (1,'Terror','1'),(2,'Ciencia-Ficcion','1'),(3,'Romance','1');
/*!40000 ALTER TABLE `tbl_cat_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cat_idioma`
--

DROP TABLE IF EXISTS `tbl_cat_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_idioma` (
  `Idioma_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idioma_Idioma` varchar(45) NOT NULL,
  `Idioma_Activo` varchar(45) NOT NULL,
  PRIMARY KEY (`Idioma_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_idioma`
--

LOCK TABLES `tbl_cat_idioma` WRITE;
/*!40000 ALTER TABLE `tbl_cat_idioma` DISABLE KEYS */;
INSERT INTO `tbl_cat_idioma` VALUES (1,'Español','1'),(2,'Ingles','1'),(3,'Frances','1');
/*!40000 ALTER TABLE `tbl_cat_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hist_ventas`
--

DROP TABLE IF EXISTS `tbl_hist_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hist_ventas` (
  `Historico_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Historico_LibroId` int(11) NOT NULL,
  PRIMARY KEY (`Historico_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hist_ventas`
--

LOCK TABLES `tbl_hist_ventas` WRITE;
/*!40000 ALTER TABLE `tbl_hist_ventas` DISABLE KEYS */;
INSERT INTO `tbl_hist_ventas` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `tbl_hist_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ope_libro`
--

DROP TABLE IF EXISTS `tbl_ope_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ope_libro` (
  `Libro_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Libro_Libro` varchar(45) NOT NULL,
  `Libro_GeneroId` int(11) NOT NULL,
  `Libro_EditorialId` int(11) NOT NULL,
  `Libro_IdiomaId` int(11) NOT NULL,
  `Libro_Precio` int(11) NOT NULL,
  `Libro_Existencias` int(11) NOT NULL,
  `Libro_Activo` varchar(45) NOT NULL,
  PRIMARY KEY (`Libro_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ope_libro`
--

LOCK TABLES `tbl_ope_libro` WRITE;
/*!40000 ALTER TABLE `tbl_ope_libro` DISABLE KEYS */;
INSERT INTO `tbl_ope_libro` VALUES (1,'Don Quijote de la Mancha',1,2,2,125,35,'1');
/*!40000 ALTER TABLE `tbl_ope_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'libreria'
--

--
-- Dumping routines for database 'libreria'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarLibro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarLibro`(
    IN p_Libro_Nombre VARCHAR(45),
    IN p_Genero_Id INT,
    IN p_Editorial_Id INT,
    IN p_Idioma_Id INT,
    IN p_Precio INT,
    IN p_Existencias INT,
    IN p_Activo VARCHAR(45)
)
BEGIN
    INSERT INTO tbl_ope_Libro (
        Libro_Libro,
        Libro_GeneroId,
        Libro_EditorialId,
        Libro_IdiomaId,
        Libro_Precio,
        Libro_Existencias,
        Libro_Activo
    )
    VALUES (
        p_Libro_Nombre,
        p_Genero_Id,
        p_Editorial_Id,
        p_Idioma_Id,
        p_Precio,
        p_Existencias,
        p_Activo
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarLibro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarLibro`(
    IN p_Libro_Id INT,
    IN p_Libro_Nombre VARCHAR(45),
    IN p_Genero_Id INT,
    IN p_Editorial_Id INT,
    IN p_Idioma_Id INT,
    IN p_Precio INT,
    IN p_Existencias INT
)
BEGIN
    DECLARE isLibroActivo INT;

    -- Verificar si el libro está activo
    SELECT Libro_Activo INTO isLibroActivo FROM tbl_ope_Libro WHERE Libro_Id = p_Libro_Id;

    IF isLibroActivo = 1 THEN
        -- Modificar el libro
        UPDATE tbl_ope_Libro
        SET
            Libro_Libro = p_Libro_Nombre,
            Libro_GeneroId = p_Genero_Id,
            Libro_EditorialId = p_Editorial_Id,
            Libro_IdiomaId = p_Idioma_Id,
            Libro_Precio = p_Precio,
            Libro_Existencias = p_Existencias
        WHERE
            Libro_Id = p_Libro_Id;

        -- Mostrar el libro modificado
        SELECT
            Libro_Id,
            Libro_Libro,
            Libro_GeneroId,
            Libro_EditorialId,
            Libro_IdiomaId,
            Libro_Precio,
            Libro_Existencias
        FROM
            tbl_ope_Libro
        WHERE
            Libro_Id = p_Libro_Id;
    ELSE
        -- Si el libro no está activo, no se realiza ninguna modificación
        SELECT 'El libro no está activo. No se ha realizado ninguna modificación.' AS Message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarLibrosActivos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarLibrosActivos`()
BEGIN
    SELECT
        L.Libro_Id,
        L.Libro_Libro,
        G.Genero_Genero,
        E.Editorial_Editorial,
        I.Idioma_Idioma,
        L.Libro_Precio,
        L.Libro_Existencias
    FROM
        tbl_ope_Libro L
        JOIN tbl_cat_Genero G ON L.Libro_GeneroId = G.Genero_Id
        JOIN tbl_cat_Editorial E ON L.Libro_EditorialId = E.Editorial_Id
        JOIN tbl_cat_Idioma I ON L.Libro_IdiomaId = I.Idioma_Id
    WHERE
        L.Libro_Activo = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarVentasHistoricas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarVentasHistoricas`()
BEGIN
    SELECT
        H.Historico_Id,
        L.Libro_Libro
    FROM
        tbl_hist_Ventas H
        JOIN tbl_ope_Libro L ON H.Historico_LibroId = L.Libro_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VentaLibro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VentaLibro`(
    IN p_Libro_Id INT,
    IN p_CantidadVendida INT
)
BEGIN
    DECLARE isLibroActivo INT;
    DECLARE LibroExistencias INT;

    -- Verificar si el libro está activo
    SELECT Libro_Activo, Libro_Existencias INTO isLibroActivo, LibroExistencias FROM tbl_ope_Libro WHERE Libro_Id = p_Libro_Id;

    IF isLibroActivo = 1 THEN
        -- Verificar si hay suficientes existencias para la venta
        IF LibroExistencias >= p_CantidadVendida THEN
            -- Registrar la venta en la tabla tbl_hist_Ventas
            INSERT INTO tbl_hist_Ventas (Historico_LibroId) VALUES (p_Libro_Id);

            -- Actualizar las existencias del libro
            UPDATE tbl_ope_Libro
            SET Libro_Existencias = Libro_Existencias - p_CantidadVendida
            WHERE Libro_Id = p_Libro_Id;

            SELECT 'Venta realizada exitosamente.' AS Message;
        ELSE
            SELECT 'No hay suficientes existencias para la venta.' AS Message;
        END IF;
    ELSE
        SELECT 'El libro no está activo. No se ha realizado la venta.' AS Message;
    END IF;
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

-- Dump completed on 2024-02-01 22:53:26
