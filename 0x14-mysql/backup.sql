-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','hbnb_test_db','hbnb_test','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2022-03-30 01:59:54',NULL),('default',0,'memory_block_read_cost',NULL,'2022-03-30 01:59:54',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('debian-sys-maint','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('debian-sys-maint','localhost','AUDIT_ADMIN','Y'),('debian-sys-maint','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('debian-sys-maint','localhost','BACKUP_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','CLONE_ADMIN','Y'),('debian-sys-maint','localhost','CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','ENCRYPTION_KEY_ADMIN','Y'),('debian-sys-maint','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('debian-sys-maint','localhost','FLUSH_STATUS','Y'),('debian-sys-maint','localhost','FLUSH_TABLES','Y'),('debian-sys-maint','localhost','FLUSH_USER_RESOURCES','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_ADMIN','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_STREAM','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ENABLE','Y'),('debian-sys-maint','localhost','PASSWORDLESS_USER_ADMIN','Y'),('debian-sys-maint','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','REPLICATION_APPLIER','Y'),('debian-sys-maint','localhost','REPLICATION_SLAVE_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_USER','Y'),('debian-sys-maint','localhost','ROLE_ADMIN','Y'),('debian-sys-maint','localhost','SERVICE_CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','SESSION_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','SET_USER_ID','Y'),('debian-sys-maint','localhost','SHOW_ROUTINE','Y'),('debian-sys-maint','localhost','SYSTEM_USER','Y'),('debian-sys-maint','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','XA_RECOVER_ADMIN','Y'),('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_STREAM','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(264,'&'),(422,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(423,'->'),(425,'->>'),(87,'/'),(75,':='),(59,'<'),(266,'<<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(267,'>>'),(90,'ABS'),(879,'ACCOUNT'),(91,'ACOS'),(659,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(913,'ADMIN'),(270,'AES_DECRYPT'),(271,'AES_ENCRYPT'),(581,'AFTER'),(247,'AGAINST'),(934,'AGGREGATE'),(582,'ALGORITHM'),(721,'ALL'),(50,'ALTER'),(583,'ANALYZE'),(62,'AND'),(526,'ANY_VALUE'),(660,'ARCHIVE'),(254,'ARRAY'),(722,'AS'),(464,'ASC'),(185,'ASCII'),(92,'ASIN'),(774,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(7,'ASYMMETRIC_DERIVE'),(8,'ASYMMETRIC_ENCRYPT'),(9,'ASYMMETRIC_SIGN'),(10,'ASYMMETRIC_VERIFY'),(643,'AT'),(93,'ATAN'),(94,'ATAN2'),(880,'ATTRIBUTE'),(911,'AUTHENTICATION'),(743,'AUTOCOMMIT'),(584,'AUTOEXTEND_SIZE'),(585,'AUTO_INCREMENT'),(458,'AVG'),(586,'AVG_ROW_LENGTH'),(755,'BACKUP'),(769,'BEFORE'),(744,'BEGIN'),(288,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(563,'BINLOG'),(527,'BIN_TO_UUID'),(460,'BIT_AND'),(269,'BIT_COUNT'),(187,'BIT_LENGTH'),(461,'BIT_OR'),(462,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(647,'BTREE'),(465,'BY'),(42,'BYTE'),(969,'CACHE'),(689,'CALL'),(497,'CAN_ACCESS_COLUMN'),(498,'CAN_ACCESS_DATABASE'),(499,'CAN_ACCESS_TABLE'),(500,'CAN_ACCESS_USER'),(501,'CAN_ACCESS_VIEW'),(661,'CASCADE'),(76,'CASE'),(255,'CAST'),(860,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(745,'CHAIN'),(881,'CHALLENGE_RESPONSE'),(587,'CHANGE'),(564,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(289,'CHARSET'),(188,'CHAR_LENGTH'),(588,'CHECK'),(589,'CHECKSUM'),(882,'CIPHER'),(861,'CLASS_ORIGIN'),(914,'CLIENT'),(942,'CLONE'),(695,'CLOSE'),(65,'COALESCE'),(963,'CODE'),(290,'COERCIBILITY'),(546,'COLLATE'),(291,'COLLATION'),(590,'COLUMN'),(591,'COLUMNS'),(862,'COLUMN_NAME'),(551,'COMMENT'),(746,'COMMIT'),(758,'COMMITTED'),(662,'COMPACT'),(552,'COMPLETION'),(938,'COMPONENT'),(272,'COMPRESS'),(663,'COMPRESSED'),(592,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(708,'CONCURRENT'),(857,'CONDITION'),(593,'CONNECTION'),(292,'CONNECTION_ID'),(747,'CONSISTENT'),(594,'CONSTRAINT'),(863,'CONSTRAINT_CATALOG'),(864,'CONSTRAINT_NAME'),(865,'CONSTRAINT_SCHEMA'),(858,'CONTINUE'),(97,'CONV'),(260,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(463,'COUNT'),(100,'CRC32'),(51,'CREATE'),(11,'CREATE_ASYMMETRIC_PRIV_KEY'),(12,'CREATE_ASYMMETRIC_PUB_KEY'),(13,'CREATE_DH_PARAMETERS'),(14,'CREATE_DIGEST'),(738,'CROSS'),(664,'CSV'),(482,'CUME_DIST'),(123,'CURDATE'),(883,'CURRENT'),(124,'CURRENT_DATE'),(293,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(294,'CURRENT_USER'),(855,'CURSOR'),(866,'CURSOR_NAME'),(127,'CURTIME'),(595,'DATA'),(295,'DATABASE'),(947,'DATABASES'),(636,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(256,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(846,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(847,'DECLARE'),(2,'DEFAULT'),(837,'DEFAULT_AUTH'),(553,'DEFINER'),(653,'DEFINITION'),(101,'DEGREES'),(701,'DELAYED'),(596,'DELAY_KEY_WRITE'),(665,'DELETE'),(483,'DENSE_RANK'),(466,'DESC'),(980,'DESCRIBE'),(654,'DESCRIPTION'),(867,'DIAGNOSTICS'),(597,'DIRECTORY'),(554,'DISABLE'),(598,'DISCARD'),(459,'DISTINCT'),(723,'DISTINCTROW'),(88,'DIV'),(555,'DO'),(599,'DROP'),(737,'DUAL'),(724,'DUMPFILE'),(702,'DUPLICATE'),(666,'DYNAMIC'),(77,'ELSE'),(848,'ELSEIF'),(192,'ELT'),(556,'ENABLE'),(709,'ENCLOSED'),(547,'ENCRYPTION'),(78,'END'),(644,'ENDS'),(600,'ENGINE'),(948,'ENGINES'),(565,'ERROR'),(949,'ERRORS'),(239,'ESCAPE'),(710,'ESCAPED'),(557,'EVENT'),(961,'EVENTS'),(645,'EVERY'),(925,'EXCEPT'),(601,'EXCHANGE'),(845,'EXECUTE'),(642,'EXISTS'),(859,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(884,'EXPIRE'),(981,'EXPLAIN'),(970,'EXPORT'),(193,'EXPORT_SET'),(932,'EXTENDED'),(682,'EXTENT_SIZE'),(149,'EXTRACT'),(424,'EXTRACTION)'),(261,'EXTRACTVALUE'),(885,'FACTOR'),(886,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(930,'FAST'),(667,'FEDERATED'),(856,'FETCH'),(194,'FIELD'),(711,'FIELDS'),(915,'FILE'),(683,'FILE_BLOCK_SIZE'),(803,'FILTER'),(195,'FIND_IN_SET'),(887,'FINISH'),(602,'FIRST'),(484,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(971,'FLUSH'),(566,'FOR'),(739,'FORCE'),(603,'FOREIGN'),(196,'FORMAT'),(493,'FORMAT_BYTES'),(494,'FORMAT_PICO_TIME'),(296,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(668,'FULL'),(604,'FULLTEXT'),(169,'FUNCTION'),(972,'GENERAL'),(336,'GEOMCOLLECTION'),(337,'GEOMETRYCOLLECTION'),(868,'GET'),(502,'GET_DD_COLUMN_PRIVILEGES'),(503,'GET_DD_CREATE_OPTIONS'),(504,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(283,'GET_LOCK'),(759,'GLOBAL'),(916,'GRANT'),(950,'GRANTS'),(66,'GREATEST'),(576,'GROUP'),(528,'GROUPING'),(467,'GROUP_CONCAT'),(454,'GTID_SUBSET'),(455,'GTID_SUBTRACT'),(696,'HANDLER'),(725,'HAVING'),(669,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(703,'HIGH_PRIORITY'),(888,'HISTORY'),(648,'HOST'),(951,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(297,'ICU_VERSION'),(719,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(704,'IGNORE'),(775,'IGNORE_SERVER_IDS'),(605,'IMPORT'),(67,'IN'),(52,'INDEX'),(952,'INDEXES'),(531,'INET6_ATON'),(532,'INET6_NTOA'),(529,'INET_ATON'),(530,'INET_NTOA'),(712,'INFILE'),(912,'INITIAL'),(637,'INITIAL_SIZE'),(889,'INITIATE'),(426,'INLINE'),(740,'INNER'),(567,'INNODB'),(199,'INSERT'),(606,'INSERT_METHOD'),(939,'INSTALL'),(568,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(505,'INTERNAL_AUTO_INCREMENT'),(506,'INTERNAL_AVG_ROW_LENGTH'),(508,'INTERNAL_CHECKSUM'),(507,'INTERNAL_CHECK_TIME'),(509,'INTERNAL_DATA_FREE'),(510,'INTERNAL_DATA_LENGTH'),(511,'INTERNAL_DD_CHAR_LENGTH'),(512,'INTERNAL_GET_COMMENT_OR_ERROR'),(513,'INTERNAL_GET_ENABLED_ROLE_JSON'),(514,'INTERNAL_GET_HOSTNAME'),(515,'INTERNAL_GET_USERNAME'),(516,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(517,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(518,'INTERNAL_INDEX_LENGTH'),(519,'INTERNAL_IS_ENABLED_ROLE'),(520,'INTERNAL_IS_MANDATORY_ROLE'),(521,'INTERNAL_KEYS_DISABLED'),(522,'INTERNAL_MAX_DATA_LENGTH'),(523,'INTERNAL_TABLE_ROWS'),(524,'INTERNAL_UPDATE_TIME'),(68,'INTERVAL'),(705,'INTO'),(607,'INVISIBLE'),(838,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(760,'ISOLATION'),(890,'ISSUER'),(284,'IS_FREE_LOCK'),(533,'IS_IPV4'),(534,'IS_IPV4_COMPAT'),(535,'IS_IPV4_MAPPED'),(536,'IS_IPV6'),(285,'IS_USED_LOCK'),(537,'IS_UUID'),(525,'IS_VISIBLE_DD_OBJECT'),(849,'ITERATE'),(726,'JOIN'),(257,'JSON'),(416,'JSON_ARRAY'),(470,'JSON_ARRAYAGG'),(434,'JSON_ARRAY_APPEND'),(435,'JSON_ARRAY_INSERT'),(419,'JSON_CONTAINS'),(420,'JSON_CONTAINS_PATH'),(444,'JSON_DEPTH'),(421,'JSON_EXTRACT'),(436,'JSON_INSERT'),(428,'JSON_KEYS'),(445,'JSON_LENGTH'),(437,'JSON_MERGE'),(438,'JSON_MERGE_PATCH'),(439,'JSON_MERGE_PRESERVE'),(417,'JSON_OBJECT'),(471,'JSON_OBJECTAGG'),(429,'JSON_OVERLAPS'),(451,'JSON_PRETTY'),(418,'JSON_QUOTE'),(440,'JSON_REMOVE'),(441,'JSON_REPLACE'),(449,'JSON_SCHEMA_VALID'),(450,'JSON_SCHEMA_VALIDATION_REPORT'),(430,'JSON_SEARCH'),(442,'JSON_SET'),(452,'JSON_STORAGE_FREE'),(453,'JSON_STORAGE_SIZE'),(448,'JSON_TABLE'),(446,'JSON_TYPE'),(443,'JSON_UNQUOTE'),(447,'JSON_VALID'),(431,'JSON_VALUE'),(53,'KEY'),(569,'KEYRING'),(608,'KEYS'),(609,'KEY_BLOCK_SIZE'),(977,'KILL'),(485,'LAG'),(697,'LAST'),(153,'LAST_DAY'),(298,'LAST_INSERT_ID'),(486,'LAST_VALUE'),(201,'LCASE'),(487,'LEAD'),(232,'LEADING'),(72,'LEAST'),(850,'LEAVE'),(978,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(761,'LEVEL'),(223,'LIKE'),(690,'LIMIT'),(713,'LINES'),(338,'LINESTRING'),(104,'LN'),(714,'LOAD'),(204,'LOAD_FILE'),(715,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(610,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(577,'LOGFILE'),(770,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(851,'LOOP'),(206,'LOWER'),(691,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(570,'MASTER'),(776,'MASTER_AUTO_POSITION'),(777,'MASTER_BIND'),(778,'MASTER_COMPRESSION_ALGORITHMS'),(779,'MASTER_CONNECT_RETRY'),(780,'MASTER_HEARTBEAT_PERIOD'),(781,'MASTER_HOST'),(782,'MASTER_LOG_FILE'),(783,'MASTER_LOG_POS'),(784,'MASTER_PASSWORD'),(785,'MASTER_PORT'),(538,'MASTER_POS_WAIT'),(786,'MASTER_RETRY_COUNT'),(787,'MASTER_SSL'),(788,'MASTER_SSL_CA'),(789,'MASTER_SSL_CERT'),(790,'MASTER_SSL_CIPHER'),(791,'MASTER_SSL_CRL'),(792,'MASTER_SSL_CRLPATH'),(793,'MASTER_SSL_KEY'),(794,'MASTER_SSL_VERIFY_SERVER_CERT'),(795,'MASTER_TLS_CIPHERSUITES'),(796,'MASTER_TLS_VERSION'),(797,'MASTER_USER'),(798,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(472,'MAX'),(891,'MAX_CONNECTIONS_PER_HOUR'),(892,'MAX_QUERIES_PER_HOUR'),(611,'MAX_ROWS'),(684,'MAX_SIZE'),(893,'MAX_UPDATES_PER_HOUR'),(894,'MAX_USER_CONNECTIONS'),(395,'MBRCONTAINS'),(396,'MBRCOVEREDBY'),(397,'MBRCOVERS'),(398,'MBRDISJOINT'),(399,'MBREQUALS'),(400,'MBRINTERSECTS'),(401,'MBROVERLAPS'),(402,'MBRTOUCHES'),(403,'MBRWITHIN'),(273,'MD5'),(931,'MEDIUM'),(432,'MEMBER'),(727,'MEMORY'),(670,'MERGE'),(869,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(473,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(612,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(613,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(671,'MRG_MYISAM'),(339,'MULTILINESTRING'),(340,'MULTIPOINT'),(341,'MULTIPOLYGON'),(953,'MUTEX'),(672,'MYISAM'),(870,'MYSQL_ERRNO'),(655,'NAME'),(946,'NAMES'),(539,'NAME_CONST'),(40,'NATIONAL'),(741,'NATURAL'),(41,'NCHAR'),(673,'NDB'),(674,'NDBCLUSTER'),(799,'NETWORK_NAMESPACE'),(895,'NEVER'),(698,'NEXT'),(571,'NO'),(685,'NODEGROUP'),(896,'NONE'),(64,'NOT'),(160,'NOW'),(929,'NO_WRITE_TO_BINLOG'),(488,'NTH_VALUE'),(489,'NTILE'),(70,'NULL'),(83,'NULLIF'),(871,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(433,'OF'),(728,'OFFSET'),(897,'OLD'),(558,'ON'),(548,'ONLY'),(699,'OPEN'),(614,'OPTIMIZE'),(973,'OPTIMIZER_COSTS'),(917,'OPTION'),(898,'OPTIONAL'),(716,'OPTIONALLY'),(579,'OPTIONS'),(73,'OR'),(213,'ORD'),(468,'ORDER'),(656,'ORGANIZATION'),(742,'OUTER'),(729,'OUTFILE'),(649,'OWNER'),(615,'PACK_KEYS'),(616,'PARSER'),(675,'PARTIAL'),(617,'PARTITION'),(618,'PARTITIONING'),(619,'PASSWORD'),(899,'PASSWORD_LOCK_TIME'),(427,'PATH)'),(490,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(943,'PERSIST'),(944,'PERSIST_ONLY'),(109,'PI'),(940,'PLUGIN'),(964,'PLUGINS'),(839,'PLUGIN_DIR'),(342,'POINT'),(343,'POLYGON'),(650,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(766,'PREPARE'),(559,'PRESERVE'),(700,'PREV'),(620,'PRIMARY'),(918,'PRIVILEGES'),(800,'PRIVILEGE_CHECKS_USER'),(578,'PROCEDURE'),(919,'PROCESS'),(954,'PROCESSLIST'),(965,'PROFILE'),(966,'PROFILES'),(923,'PROXY'),(495,'PS_CURRENT_THREAD_ID'),(496,'PS_THREAD_ID'),(771,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(692,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(900,'RANDOM'),(274,'RANDOM_BYTES'),(491,'RANK'),(549,'READ'),(35,'REAL'),(621,'REBUILD'),(767,'RECOVER'),(572,'REDO_LOG'),(676,'REDUNDANT'),(657,'REFERENCE'),(677,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(901,'REGISTRATION'),(974,'RELAY'),(967,'RELAYLOG'),(801,'RELAY_LOG_FILE'),(802,'RELAY_LOG_POS'),(748,'RELEASE'),(286,'RELEASE_ALL_LOCKS'),(287,'RELEASE_LOCK'),(573,'RELOAD'),(622,'REMOVE'),(560,'RENAME'),(623,'REORGANIZE'),(624,'REPAIR'),(216,'REPEAT'),(762,'REPEATABLE'),(217,'REPLACE'),(836,'REPLICA'),(968,'REPLICAS'),(804,'REPLICATE_DO_DB'),(805,'REPLICATE_DO_TABLE'),(806,'REPLICATE_IGNORE_DB'),(807,'REPLICATE_IGNORE_TABLE'),(808,'REPLICATE_REWRITE_DB'),(809,'REPLICATE_WILD_DO_TABLE'),(810,'REPLICATE_WILD_IGNORE_TABLE'),(811,'REPLICATION'),(902,'REQUIRE'),(772,'RESET'),(876,'RESIGNAL'),(926,'RESOURCE'),(979,'RESTART'),(680,'RESTRICT'),(903,'RETAIN'),(853,'RETURN'),(872,'RETURNED_SQLSTATE'),(935,'RETURNS'),(904,'REUSE'),(218,'REVERSE'),(924,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(905,'ROLE'),(299,'ROLES_GRAPHML'),(574,'ROLLBACK'),(114,'ROUND'),(706,'ROW'),(720,'ROWS'),(300,'ROW_COUNT'),(625,'ROW_FORMAT'),(492,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(754,'SAVEPOINT'),(561,'SCHEDULE'),(301,'SCHEMA'),(955,'SCHEMAS'),(873,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(707,'SELECT'),(469,'SEPARATOR'),(3,'SERIAL'),(763,'SERIALIZABLE'),(580,'SERVER'),(764,'SESSION'),(302,'SESSION_USER'),(550,'SET'),(275,'SHA'),(276,'SHA1'),(277,'SHA2'),(730,'SHARE'),(956,'SHOW'),(920,'SHUTDOWN'),(115,'SIGN'),(878,'SIGNAL'),(258,'SIGNED'),(116,'SIN'),(562,'SLAVE'),(540,'SLEEP'),(975,'SLOW'),(749,'SNAPSHOT'),(651,'SOCKET'),(936,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(812,'SOURCE'),(813,'SOURCE_AUTO_POSITION'),(814,'SOURCE_BIND'),(815,'SOURCE_COMPRESSION_ALGORITHMS'),(816,'SOURCE_CONNECT_RETRY'),(817,'SOURCE_HEARTBEAT_PERIOD'),(818,'SOURCE_HOST'),(819,'SOURCE_LOG_FILE'),(820,'SOURCE_LOG_POS'),(821,'SOURCE_PASSWORD'),(822,'SOURCE_PORT'),(541,'SOURCE_POS_WAIT'),(823,'SOURCE_RETRY_COUNT'),(824,'SOURCE_SSL'),(825,'SOURCE_SSL_CA'),(826,'SOURCE_SSL_CERT'),(827,'SOURCE_SSL_CIPHER'),(828,'SOURCE_SSL_CRL'),(829,'SOURCE_SSL_CRLPATH'),(830,'SOURCE_SSL_KEY'),(831,'SOURCE_SSL_VERIFY_SERVER_CERT'),(832,'SOURCE_TLS_CIPHERSUITES'),(833,'SOURCE_TLS_VERSION'),(834,'SOURCE_USER'),(835,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(225,'SPACE'),(626,'SPATIAL'),(877,'SQLSTATE'),(840,'SQL_AFTER_GTIDS'),(841,'SQL_AFTER_MTS_GAPS'),(842,'SQL_BEFORE_GTIDS'),(731,'SQL_BIG_RESULT'),(732,'SQL_BUFFER_RESULT'),(733,'SQL_CALC_FOUND_ROWS'),(773,'SQL_LOG_BIN'),(734,'SQL_NO_CACHE'),(735,'SQL_SMALL_RESULT'),(843,'SQL_THREAD'),(117,'SQRT'),(906,'SSL'),(750,'START'),(717,'STARTING'),(646,'STARTS'),(278,'STATEMENT_DIGEST'),(279,'STATEMENT_DIGEST_TEXT'),(627,'STATS_AUTO_RECALC'),(628,'STATS_PERSISTENT'),(629,'STATS_SAMPLE_PAGES'),(957,'STATUS'),(474,'STD'),(475,'STDDEV'),(476,'STDDEV_POP'),(477,'STDDEV_SAMP'),(844,'STOP'),(962,'STORAGE'),(678,'STORED'),(736,'STRAIGHT_JOIN'),(240,'STRCMP'),(937,'STRING'),(165,'STR_TO_DATE'),(365,'ST_AREA'),(344,'ST_ASBINARY'),(408,'ST_ASGEOJSON'),(346,'ST_ASTEXT'),(345,'ST_ASWKB'),(347,'ST_ASWKT'),(373,'ST_BUFFER'),(374,'ST_BUFFER_STRATEGY'),(366,'ST_CENTROID'),(410,'ST_COLLECT'),(384,'ST_CONTAINS'),(375,'ST_CONVEXHULL'),(385,'ST_CROSSES'),(376,'ST_DIFFERENCE'),(349,'ST_DIMENSION'),(386,'ST_DISJOINT'),(387,'ST_DISTANCE'),(411,'ST_DISTANCE_SPHERE'),(359,'ST_ENDPOINT'),(350,'ST_ENVELOPE'),(388,'ST_EQUALS'),(367,'ST_EXTERIORRING'),(389,'ST_FRECHETDISTANCE'),(404,'ST_GEOHASH'),(306,'ST_GEOMCOLLFROMTEXT'),(321,'ST_GEOMCOLLFROMWKB'),(307,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(322,'ST_GEOMETRYCOLLECTIONFROMWKB'),(308,'ST_GEOMETRYFROMTEXT'),(323,'ST_GEOMETRYFROMWKB'),(371,'ST_GEOMETRYN'),(351,'ST_GEOMETRYTYPE'),(409,'ST_GEOMFROMGEOJSON'),(309,'ST_GEOMFROMTEXT'),(324,'ST_GEOMFROMWKB'),(390,'ST_HAUSDORFFDISTANCE'),(368,'ST_INTERIORRINGN'),(377,'ST_INTERSECTION'),(391,'ST_INTERSECTS'),(360,'ST_ISCLOSED'),(352,'ST_ISEMPTY'),(353,'ST_ISSIMPLE'),(412,'ST_ISVALID'),(405,'ST_LATFROMGEOHASH'),(355,'ST_LATITUDE'),(361,'ST_LENGTH'),(310,'ST_LINEFROMTEXT'),(325,'ST_LINEFROMWKB'),(378,'ST_LINEINTERPOLATEPOINT'),(379,'ST_LINEINTERPOLATEPOINTS'),(311,'ST_LINESTRINGFROMTEXT'),(326,'ST_LINESTRINGFROMWKB'),(406,'ST_LONGFROMGEOHASH'),(356,'ST_LONGITUDE'),(413,'ST_MAKEENVELOPE'),(312,'ST_MLINEFROMTEXT'),(327,'ST_MLINEFROMWKB'),(314,'ST_MPOINTFROMTEXT'),(329,'ST_MPOINTFROMWKB'),(316,'ST_MPOLYFROMTEXT'),(331,'ST_MPOLYFROMWKB'),(313,'ST_MULTILINESTRINGFROMTEXT'),(328,'ST_MULTILINESTRINGFROMWKB'),(315,'ST_MULTIPOINTFROMTEXT'),(330,'ST_MULTIPOINTFROMWKB'),(317,'ST_MULTIPOLYGONFROMTEXT'),(332,'ST_MULTIPOLYGONFROMWKB'),(372,'ST_NUMGEOMETRIES'),(369,'ST_NUMINTERIORRING'),(370,'ST_NUMINTERIORRINGS'),(362,'ST_NUMPOINTS'),(392,'ST_OVERLAPS'),(380,'ST_POINTATDISTANCE'),(407,'ST_POINTFROMGEOHASH'),(318,'ST_POINTFROMTEXT'),(333,'ST_POINTFROMWKB'),(363,'ST_POINTN'),(319,'ST_POLYFROMTEXT'),(334,'ST_POLYFROMWKB'),(320,'ST_POLYGONFROMTEXT'),(335,'ST_POLYGONFROMWKB'),(414,'ST_SIMPLIFY'),(354,'ST_SRID'),(364,'ST_STARTPOINT'),(348,'ST_SWAPXY'),(381,'ST_SYMDIFFERENCE'),(393,'ST_TOUCHES'),(382,'ST_TRANSFORM'),(383,'ST_UNION'),(415,'ST_VALIDATE'),(394,'ST_WITHIN'),(357,'ST_X'),(358,'ST_Y'),(874,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(907,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(478,'SUM'),(921,'SUPER'),(168,'SYSDATE'),(658,'SYSTEM'),(303,'SYSTEM_USER'),(54,'TABLE'),(757,'TABLES'),(630,'TABLESPACE'),(875,'TABLE_NAME'),(118,'TAN'),(688,'TEMPORARY'),(718,'TERMINATED'),(79,'THEN'),(927,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(259,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(575,'TLS'),(638,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(982,'TRADITIONAL'),(233,'TRAILING'),(751,'TRANSACTION'),(983,'TREE'),(687,'TRIGGER'),(958,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(631,'TYPE'),(235,'UCASE'),(908,'UNBOUNDED'),(765,'UNCOMMITTED'),(280,'UNCOMPRESS'),(281,'UNCOMPRESSED_LENGTH'),(639,'UNDO'),(236,'UNHEX'),(941,'UNINSTALL'),(632,'UNION'),(633,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(756,'UNLOCK'),(909,'UNREGISTER'),(20,'UNSIGNED'),(852,'UNTIL'),(681,'UPDATE'),(262,'UPDATEXML'),(634,'UPGRADE'),(237,'UPPER'),(922,'USAGE'),(686,'USE'),(304,'USER'),(976,'USER_RESOURCES'),(933,'USE_FRM'),(693,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(542,'UUID'),(543,'UUID_SHORT'),(544,'UUID_TO_BIN'),(282,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(545,'VALUES'),(45,'VARCHARACTER'),(945,'VARIABLE'),(959,'VARIABLES'),(481,'VARIANCE'),(46,'VARYING'),(479,'VAR_POP'),(480,'VAR_SAMP'),(928,'VCPU'),(305,'VERSION'),(641,'VIEW'),(679,'VIRTUAL'),(635,'VISIBLE'),(640,'WAIT'),(456,'WAIT_FOR_EXECUTED_GTID_SET'),(457,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(960,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(694,'WHERE'),(854,'WHILE'),(252,'WITH'),(752,'WORK'),(652,'WRAPPER'),(753,'WRITE'),(910,'X509'),(768,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL'),(265,'^'),(263,'|'),(268,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(483,2),(502,2),(503,2),(510,2),(513,2),(514,2),(522,2),(523,2),(546,2),(551,2),(590,2),(608,2),(610,2),(616,2),(618,2),(2,3),(522,3),(2,4),(546,4),(551,4),(606,4),(607,4),(3,5),(698,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(628,26),(22,27),(23,28),(23,29),(522,29),(23,30),(24,31),(242,31),(628,31),(25,32),(26,33),(26,34),(26,35),(628,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(502,39),(503,39),(510,39),(513,39),(514,39),(522,39),(549,39),(550,39),(552,39),(636,39),(637,39),(639,39),(643,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(510,49),(511,49),(524,49),(608,49),(53,50),(502,50),(503,50),(504,50),(505,50),(506,50),(507,50),(508,50),(509,50),(510,50),(511,50),(512,50),(608,50),(613,50),(619,50),(53,51),(513,51),(514,51),(515,51),(516,51),(517,51),(518,51),(519,51),(520,51),(521,51),(522,51),(524,51),(525,51),(526,51),(609,51),(610,51),(620,51),(628,51),(639,51),(647,51),(648,51),(649,51),(650,51),(651,51),(652,51),(654,51),(53,52),(510,52),(516,52),(522,52),(530,52),(554,52),(639,52),(665,52),(687,52),(690,52),(53,53),(510,53),(522,53),(523,53),(546,53),(53,54),(510,54),(522,54),(535,54),(539,54),(540,54),(545,54),(547,54),(557,54),(623,54),(624,54),(625,54),(626,54),(627,54),(639,54),(652,54),(681,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(513,64),(514,64),(515,64),(521,64),(609,64),(610,64),(63,65),(510,65),(64,66),(65,67),(66,67),(240,67),(552,67),(642,67),(645,67),(646,67),(665,67),(675,67),(67,68),(131,68),(515,68),(608,68),(610,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(523,70),(72,71),(73,72),(76,73),(521,73),(77,74),(78,75),(80,76),(591,76),(80,77),(591,77),(80,78),(570,78),(588,78),(591,78),(592,78),(595,78),(596,78),(598,78),(80,79),(591,79),(592,79),(80,80),(591,80),(81,81),(513,81),(514,81),(515,81),(521,81),(527,81),(528,81),(529,81),(533,81),(534,81),(535,81),(538,81),(592,81),(608,81),(609,81),(610,81),(611,81),(612,81),(629,81),(692,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(510,119),(540,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(608,131),(610,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(505,169),(518,169),(519,169),(531,169),(532,169),(628,169),(629,169),(639,169),(650,169),(662,169),(663,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(695,196),(696,196),(697,196),(194,197),(195,198),(196,199),(546,199),(547,199),(548,199),(197,200),(198,201),(199,202),(554,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(596,216),(214,217),(521,217),(549,217),(550,217),(551,217),(608,217),(617,217),(215,218),(216,219),(554,219),(217,220),(218,221),(219,222),(220,223),(232,223),(639,223),(645,223),(646,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(542,231),(545,231),(552,231),(639,231),(642,231),(645,231),(646,231),(665,231),(675,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(552,250),(240,251),(689,251),(240,252),(510,252),(516,252),(522,252),(608,252),(610,252),(613,252),(688,252),(241,253),(242,253),(571,253),(572,253),(640,253),(641,253),(688,253),(242,254),(242,255),(242,256),(242,257),(695,257),(696,257),(697,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(252,269),(253,270),(254,271),(255,272),(256,273),(257,274),(258,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(265,283),(266,284),(267,285),(268,286),(269,287),(270,288),(271,289),(636,289),(637,289),(272,290),(273,291),(639,291),(644,291),(274,292),(275,293),(276,294),(504,294),(515,294),(277,295),(502,295),(503,295),(513,295),(514,295),(520,295),(527,295),(528,295),(639,295),(647,295),(648,295),(278,296),(279,297),(280,298),(281,299),(282,300),(605,300),(283,301),(502,301),(503,301),(513,301),(514,301),(527,301),(528,301),(639,301),(647,301),(648,301),(284,302),(285,303),(286,304),(520,304),(580,304),(581,304),(608,304),(610,304),(612,304),(614,304),(620,304),(654,304),(287,305),(288,306),(288,307),(289,308),(289,309),(290,310),(290,311),(291,312),(291,313),(292,314),(292,315),(293,316),(293,317),(294,318),(295,319),(295,320),(296,321),(296,322),(297,323),(297,324),(298,325),(298,326),(299,327),(299,328),(300,329),(300,330),(301,331),(301,332),(302,333),(303,334),(303,335),(304,336),(305,337),(306,338),(307,339),(308,340),(309,341),(310,342),(311,343),(312,344),(312,345),(313,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(329,363),(330,364),(331,365),(332,366),(333,367),(334,368),(335,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,416),(382,417),(383,418),(384,419),(385,420),(386,421),(387,422),(388,422),(387,423),(387,424),(388,425),(388,426),(388,427),(389,428),(390,429),(391,430),(392,431),(393,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(414,454),(415,455),(416,456),(417,457),(418,458),(418,459),(423,459),(424,459),(427,459),(428,459),(433,459),(552,459),(555,459),(419,460),(420,461),(421,462),(422,463),(423,463),(660,463),(685,463),(424,464),(552,464),(424,465),(510,465),(522,465),(542,465),(549,465),(550,465),(552,465),(556,465),(558,465),(608,465),(610,465),(424,466),(552,466),(695,466),(696,466),(697,466),(424,467),(424,468),(510,468),(542,468),(552,468),(556,468),(557,468),(558,468),(559,468),(424,469),(425,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(478,523),(479,524),(480,525),(481,526),(482,527),(484,528),(485,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(495,539),(496,540),(497,541),(498,542),(499,543),(500,544),(501,545),(546,545),(551,545),(559,545),(502,546),(503,546),(510,546),(513,546),(514,546),(522,546),(502,547),(503,547),(510,547),(513,547),(514,547),(522,547),(502,548),(503,548),(560,548),(561,548),(562,548),(563,548),(569,548),(570,548),(502,549),(503,549),(544,549),(560,549),(561,549),(562,549),(563,549),(568,549),(569,549),(570,549),(688,549),(502,550),(503,550),(510,550),(513,550),(514,550),(522,550),(523,550),(546,550),(549,550),(550,550),(551,550),(552,550),(558,550),(560,550),(561,550),(562,550),(563,550),(574,550),(606,550),(607,550),(608,550),(616,550),(617,550),(618,550),(622,550),(635,550),(636,550),(637,550),(638,550),(639,550),(643,550),(504,551),(510,551),(515,551),(516,551),(522,551),(524,551),(608,551),(610,551),(504,552),(515,552),(504,553),(515,553),(504,554),(510,554),(515,554),(619,554),(620,554),(504,555),(515,555),(543,555),(598,555),(504,556),(510,556),(515,556),(619,556),(620,556),(504,557),(515,557),(529,557),(649,557),(504,558),(506,558),(515,558),(523,558),(554,558),(504,559),(515,559),(504,560),(510,560),(511,560),(539,560),(614,560),(504,561),(515,561),(504,562),(515,562),(579,562),(581,562),(583,562),(677,562),(679,562),(691,562),(506,563),(642,563),(686,563),(506,564),(575,564),(577,564),(578,564),(579,564),(580,564),(581,564),(582,564),(583,564),(675,564),(678,564),(679,564),(688,564),(506,565),(688,565),(506,566),(552,566),(575,566),(577,566),(578,566),(579,566),(580,566),(581,566),(582,566),(583,566),(600,566),(603,566),(604,566),(617,566),(622,566),(639,566),(675,566),(678,566),(679,566),(688,566),(695,566),(696,566),(697,566),(506,567),(522,567),(639,567),(506,568),(567,568),(506,569),(506,570),(571,570),(572,570),(573,570),(575,570),(640,570),(641,570),(666,570),(691,570),(506,571),(522,571),(523,571),(506,572),(506,573),(613,573),(506,574),(560,574),(561,574),(562,574),(563,574),(564,574),(565,574),(566,574),(570,574),(506,575),(507,576),(517,576),(524,576),(552,576),(619,576),(620,576),(621,576),(622,576),(507,577),(517,577),(524,577),(508,578),(518,578),(519,578),(531,578),(532,578),(639,578),(651,578),(670,578),(671,578),(509,579),(520,579),(509,580),(520,580),(533,580),(510,581),(510,582),(510,583),(623,583),(695,583),(696,583),(697,583),(510,584),(511,584),(522,584),(524,584),(510,585),(510,586),(522,586),(510,587),(575,587),(576,587),(577,587),(510,588),(522,588),(624,588),(510,589),(522,589),(625,589),(510,590),(510,591),(522,591),(549,591),(639,591),(645,591),(646,591),(510,592),(522,592),(510,593),(522,593),(689,593),(695,593),(696,593),(697,593),(510,594),(522,594),(510,595),(520,595),(522,595),(549,595),(510,596),(522,596),(510,597),(522,597),(510,598),(608,598),(510,599),(511,599),(527,599),(528,599),(529,599),(530,599),(531,599),(532,599),(533,599),(534,599),(535,599),(536,599),(537,599),(538,599),(586,599),(587,599),(608,599),(611,599),(612,599),(621,599),(629,599),(510,600),(511,600),(522,600),(524,600),(536,600),(639,600),(658,600),(688,600),(510,601),(510,602),(522,602),(544,602),(510,603),(520,603),(522,603),(523,603),(510,604),(516,604),(522,604),(510,605),(545,605),(549,605),(510,606),(522,606),(510,607),(516,607),(522,607),(510,608),(639,608),(665,608),(510,609),(522,609),(510,610),(552,610),(567,610),(568,610),(608,610),(610,610),(688,610),(510,611),(522,611),(510,612),(522,612),(510,613),(608,613),(510,614),(626,614),(510,615),(522,615),(510,616),(516,616),(522,616),(510,617),(522,617),(542,617),(546,617),(549,617),(551,617),(552,617),(554,617),(687,617),(690,617),(510,618),(510,619),(520,619),(580,619),(581,619),(608,619),(610,619),(617,619),(510,620),(510,621),(510,622),(510,623),(510,624),(627,624),(510,625),(522,625),(510,626),(516,626),(521,626),(534,626),(510,627),(522,627),(510,628),(522,628),(510,629),(522,629),(510,630),(511,630),(524,630),(536,630),(510,631),(620,631),(510,632),(555,632),(556,632),(510,633),(510,634),(624,634),(510,635),(516,635),(522,635),(511,636),(524,636),(511,637),(524,637),(511,638),(564,638),(565,638),(566,638),(571,638),(572,638),(575,638),(577,638),(617,638),(511,639),(524,639),(536,639),(604,639),(511,640),(524,640),(512,641),(526,641),(538,641),(513,642),(514,642),(515,642),(521,642),(527,642),(528,642),(529,642),(533,642),(534,642),(535,642),(538,642),(608,642),(609,642),(610,642),(611,642),(612,642),(629,642),(692,642),(515,643),(515,644),(515,645),(515,646),(516,647),(520,648),(520,649),(520,650),(520,651),(520,652),(521,653),(521,654),(521,655),(521,656),(521,657),(534,657),(521,658),(534,658),(620,658),(522,659),(523,659),(522,660),(522,661),(523,661),(535,661),(538,661),(522,662),(522,663),(522,664),(549,664),(522,665),(523,665),(542,665),(522,666),(522,667),(522,668),(639,668),(645,668),(646,668),(672,668),(682,668),(522,669),(522,670),(522,671),(522,672),(522,673),(522,674),(522,675),(522,676),(522,677),(523,677),(613,677),(522,678),(522,679),(523,680),(535,680),(538,680),(523,681),(546,681),(552,681),(558,681),(524,682),(524,683),(524,684),(524,685),(524,686),(554,686),(699,686),(525,687),(537,687),(639,687),(535,688),(541,689),(542,690),(544,690),(552,690),(556,690),(557,690),(558,690),(559,690),(642,690),(675,690),(542,691),(546,691),(549,691),(550,691),(551,691),(558,691),(568,691),(542,692),(624,692),(627,692),(542,693),(554,693),(585,693),(664,693),(542,694),(544,694),(558,694),(645,694),(646,694),(665,694),(544,695),(599,695),(544,696),(604,696),(544,697),(544,698),(544,699),(602,699),(639,699),(667,699),(544,700),(546,701),(548,701),(551,701),(546,702),(546,703),(552,703),(546,704),(549,704),(550,704),(552,704),(554,704),(558,704),(690,704),(546,705),(551,705),(552,705),(556,705),(690,705),(546,706),(559,706),(546,707),(547,707),(551,707),(552,707),(556,707),(695,707),(696,707),(697,707),(549,708),(550,708),(549,709),(549,710),(549,711),(639,711),(645,711),(646,711),(549,712),(550,712),(549,713),(550,713),(549,714),(690,714),(549,715),(550,715),(568,715),(623,715),(626,715),(627,715),(688,715),(549,716),(549,717),(549,718),(550,719),(608,719),(610,719),(550,720),(552,721),(555,721),(578,721),(579,721),(608,721),(613,721),(615,721),(616,721),(618,721),(687,721),(690,721),(552,722),(554,722),(568,722),(608,722),(610,722),(613,722),(552,723),(552,724),(552,725),(552,726),(554,726),(552,727),(552,728),(552,729),(552,730),(552,731),(552,732),(552,733),(552,734),(552,735),(552,736),(554,736),(553,737),(554,738),(554,739),(619,739),(621,739),(554,740),(554,741),(554,742),(560,743),(561,743),(562,743),(563,743),(560,744),(561,744),(562,744),(563,744),(570,744),(588,744),(560,745),(561,745),(562,745),(563,745),(560,746),(561,746),(562,746),(563,746),(570,746),(560,747),(561,747),(562,747),(563,747),(570,747),(560,748),(561,748),(562,748),(563,748),(564,748),(565,748),(566,748),(570,748),(560,749),(561,749),(562,749),(563,749),(570,749),(560,750),(561,750),(562,750),(563,750),(570,750),(580,750),(581,750),(560,751),(561,751),(562,751),(563,751),(569,751),(560,752),(561,752),(562,752),(563,752),(560,753),(561,753),(562,753),(563,753),(568,753),(569,753),(570,753),(564,754),(565,754),(566,754),(567,755),(567,756),(568,756),(608,756),(610,756),(568,757),(639,757),(667,757),(682,757),(688,757),(569,758),(569,759),(635,759),(680,759),(684,759),(569,760),(569,761),(569,762),(569,763),(569,764),(635,764),(680,764),(684,764),(569,765),(570,766),(584,766),(586,766),(587,766),(570,767),(570,768),(571,769),(572,769),(571,770),(572,770),(639,770),(640,770),(641,770),(688,770),(571,771),(572,771),(573,772),(578,772),(579,772),(691,772),(692,772),(574,773),(575,774),(577,774),(575,775),(577,775),(575,776),(575,777),(575,778),(575,779),(575,780),(575,781),(575,782),(575,783),(575,784),(575,785),(575,786),(575,787),(575,788),(575,789),(575,790),(575,791),(575,792),(575,793),(575,794),(575,795),(575,796),(575,797),(575,798),(575,799),(577,799),(575,800),(577,800),(575,801),(577,801),(575,802),(577,802),(576,803),(576,804),(576,805),(576,806),(576,807),(576,808),(576,809),(576,810),(576,811),(577,811),(613,811),(577,812),(577,813),(577,814),(577,815),(577,816),(577,817),(577,818),(577,819),(577,820),(577,821),(577,822),(577,823),(577,824),(577,825),(577,826),(577,827),(577,828),(577,829),(577,830),(577,831),(577,832),(577,833),(577,834),(577,835),(578,836),(580,836),(582,836),(678,836),(691,836),(580,837),(581,837),(580,838),(581,838),(582,838),(583,838),(580,839),(581,839),(580,840),(581,840),(580,841),(581,841),(580,842),(581,842),(580,843),(581,843),(582,843),(583,843),(582,844),(583,844),(585,845),(613,845),(586,846),(587,846),(590,847),(600,847),(603,847),(604,847),(592,848),(593,849),(594,850),(595,851),(596,852),(597,853),(598,854),(600,855),(601,856),(603,857),(604,858),(604,859),(605,860),(606,860),(607,860),(605,861),(606,861),(607,861),(605,862),(606,862),(607,862),(605,863),(606,863),(607,863),(605,864),(606,864),(607,864),(605,865),(606,865),(607,865),(605,866),(606,866),(607,866),(605,867),(605,868),(605,869),(606,869),(607,869),(605,870),(606,870),(607,870),(605,871),(605,872),(605,873),(606,873),(607,873),(605,874),(606,874),(607,874),(605,875),(606,875),(607,875),(606,876),(606,877),(607,877),(607,878),(608,879),(610,879),(608,880),(610,880),(608,881),(608,882),(610,882),(608,883),(610,883),(617,883),(608,884),(610,884),(608,885),(608,886),(610,886),(608,887),(608,888),(610,888),(608,889),(608,890),(610,890),(608,891),(610,891),(608,892),(610,892),(608,893),(610,893),(608,894),(610,894),(608,895),(610,895),(608,896),(613,896),(616,896),(618,896),(608,897),(608,898),(610,898),(608,899),(610,899),(608,900),(610,900),(617,900),(608,901),(608,902),(610,902),(608,903),(617,903),(608,904),(610,904),(608,905),(609,905),(610,905),(611,905),(613,905),(616,905),(618,905),(608,906),(610,906),(608,907),(610,907),(608,908),(610,908),(608,909),(608,910),(610,910),(610,911),(610,912),(613,913),(613,914),(613,915),(613,916),(615,916),(613,917),(615,917),(613,918),(615,918),(669,918),(688,918),(613,919),(613,920),(694,920),(613,921),(613,922),(615,923),(615,924),(618,925),(619,926),(620,926),(621,926),(622,926),(619,927),(620,927),(619,928),(620,928),(623,929),(626,929),(627,929),(688,929),(624,930),(624,931),(627,932),(645,932),(646,932),(665,932),(682,932),(627,933),(628,934),(628,935),(628,936),(628,937),(630,938),(632,938),(630,939),(631,939),(631,940),(633,940),(639,940),(632,941),(633,941),(634,942),(635,943),(692,943),(635,944),(635,945),(638,946),(639,947),(656,947),(657,947),(639,948),(659,948),(639,949),(660,949),(639,950),(664,950),(639,951),(677,951),(688,951),(639,952),(639,953),(658,953),(639,954),(672,954),(639,955),(656,955),(657,955),(639,956),(640,956),(641,956),(642,956),(643,956),(644,956),(645,956),(646,956),(647,956),(648,956),(649,956),(650,956),(651,956),(652,956),(654,956),(656,956),(657,956),(658,956),(659,956),(660,956),(661,956),(662,956),(663,956),(664,956),(665,956),(666,956),(667,956),(668,956),(669,956),(670,956),(671,956),(672,956),(673,956),(674,956),(675,956),(676,956),(677,956),(678,956),(679,956),(680,956),(681,956),(682,956),(683,956),(684,956),(685,956),(639,957),(658,957),(663,957),(666,957),(671,957),(678,957),(679,957),(680,957),(681,957),(688,957),(639,958),(683,958),(639,959),(684,959),(639,960),(685,960),(642,961),(661,961),(675,961),(659,962),(662,963),(670,963),(668,964),(673,965),(674,966),(675,967),(676,968),(687,969),(690,969),(688,970),(688,971),(688,972),(688,973),(688,974),(688,975),(688,976),(689,977),(690,978),(693,979),(695,980),(696,980),(697,980),(695,981),(696,981),(697,981),(695,982),(696,982),(697,982),(695,983),(696,983),(697,983);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (649,'SHOW CREATE EVENT',3,'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. It requires the EVENT privilege for the database from\nwhich the event is to be shown. For example (using the same event\ne_daily defined and then altered in [HELP SHOW EVENTS]):\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html\n\n','mysql> SHOW CREATE EVENT myschema.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n           time_zone: SYSTEM\n        Create Event: CREATE DEFINER=`jon`@`ghidora` EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT \'Saves total number of sessions then\n                                clears the table each day\'\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                              FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html'),(650,'SHOW CREATE FUNCTION',3,'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html'),(651,'SHOW CREATE PROCEDURE',3,'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine. The value\ndisplayed for the Create Procedure or Create Function field is NULL if\nyou have only CREATE ROUTINE, ALTER ROUTINE, or EXECUTE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html\n\n','mysql> SHOW CREATE PROCEDURE test.citycount\\G\n*************************** 1. row ***************************\n           Procedure: citycount\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n    Create Procedure: CREATE DEFINER=`me`@`localhost`\n                      PROCEDURE `citycount`(IN country CHAR(3), OUT cities INT)\n                      BEGIN\n                        SELECT COUNT(*) INTO cities FROM world.city\n                        WHERE CountryCode = country;\n                      END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n     Create Function: CREATE DEFINER=`me`@`localhost`\n                      FUNCTION `hello`(s CHAR(20))\n                      RETURNS char(50) CHARSET utf8mb4\n                      DETERMINISTIC\n                      RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html'),(652,'SHOW CREATE TABLE',3,'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the named table. To use\nthis statement, you must have some privilege for the table. This\nstatement also works with views.\n\nAs of MySQL 8.0.16, MySQL implements CHECK constraints and SHOW CREATE\nTABLE displays them. All CHECK constraints are displayed as table\nconstraints. That is, a CHECK constraint originally specified as part\nof a column definition displays as a separate clause not part of the\ncolumn definition. Example:\n\nmysql> CREATE TABLE t1 (\n         i1 INT CHECK (i1 <> 0),      -- column constraint\n         i2 INT,\n         CHECK (i2 > i1),             -- table constraint\n         CHECK (i2 <> 0) NOT ENFORCED -- table constraint, not enforced\n       );\n\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `i1` int(11) DEFAULT NULL,\n  `i2` int(11) DEFAULT NULL,\n  CONSTRAINT `t1_chk_1` CHECK ((`i1` <> 0)),\n  CONSTRAINT `t1_chk_2` CHECK ((`i2` > `i1`)),\n  CONSTRAINT `t1_chk_3` CHECK ((`i2` <> 0)) /*!80016 NOT ENFORCED */\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nWhen altering the storage engine of a table, table options that are not\napplicable to the new storage engine are retained in the table\ndefinition to enable reverting the table with its previously defined\noptions to the original storage engine, if necessary. For example, when\nchanging the storage engine from InnoDB to MyISAM, InnoDB-specific\noptions such as ROW_FORMAT=COMPACT are retained.\n\nmysql> CREATE TABLE t1 (c1 INT PRIMARY KEY) ROW_FORMAT=COMPACT ENGINE=InnoDB;\nmysql> ALTER TABLE t1 ENGINE=MyISAM;\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `c1` int NOT NULL,\n  PRIMARY KEY (`c1`)\n) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT\n\nWhen creating a table with strict mode disabled, the storage engine\'s\ndefault row format is used if the specified row format is not\nsupported. The actual row format of the table is reported in the\nRow_format column in response to SHOW TABLE STATUS. SHOW CREATE TABLE\nshows the row format that was specified in the CREATE TABLE statement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html\n\n','mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE `t` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `s` char(60) DEFAULT NULL,\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html'),(653,'SHOW CREATE TRIGGER',3,'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows the CREATE TRIGGER statement that creates the\nnamed trigger. This statement requires the TRIGGER privilege for the\ntable associated with the trigger.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html'),(654,'SHOW CREATE USER',3,'Syntax:\nSHOW CREATE USER user\n\nThis statement shows the CREATE USER statement that creates the named\nuser. An error occurs if the user does not exist. The statement\nrequires the SELECT privilege for the mysql system schema, except to\nsee information for the current user. For the current user, the SELECT\nprivilege for the mysql.user system table is required for display of\nthe password hash in the IDENTIFIED AS clause; otherwise, the hash\ndisplays as <secret>.\n\nTo name the account, use the format described in\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html. The host\nname part of the account name, if omitted, defaults to \'%\'. It is also\npossible to specify CURRENT_USER or CURRENT_USER() to refer to the\naccount associated with the current session.\n\nPassword hash values displayed in the IDENTIFIED WITH clause of output\nfrom SHOW CREATE USER may contain unprintable characters that have\nadverse effects on terminal displays and in other environments.\nEnabling the print_identified_with_as_hex system variable (available as\nof MySQL 8.0.17) causes SHOW CREATE USER to display such hash values as\nhexadecimal strings rather than as regular string literals. Hash values\nthat do not contain unprintable characters still display as regular\nstring literals, even with this variable enabled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html'),(655,'SHOW CREATE VIEW',3,'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows the CREATE VIEW statement that creates the named\nview.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html'),(656,'SHOW DATABASES',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(657,'SHOW SCHEMAS',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(658,'SHOW ENGINE',3,'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine. It\nrequires the PROCESS privilege. The statement has these variants:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex and rw-lock statistics.\n\n*Note*:\n\nInnoDB mutexes and rwlocks can also be monitored using Performance\nSchema tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/monitor-innodb-mutex-waits-perf\normance-schema.html.\n\nMutex statistics collection is configured dynamically using the\nfollowing options:\n\no To enable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_enable=\'latch\';\n\no To reset mutex statistics, run:\n\nSET GLOBAL innodb_monitor_reset=\'latch\';\n\no To disable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_disable=\'latch\';\n\nCollection of mutex statistics for SHOW ENGINE INNODB MUTEX can also be\nenabled by setting innodb_monitor_enable=\'all\', or disabled by setting\ninnodb_monitor_disable=\'all\'.\n\nSHOW ENGINE INNODB MUTEX output has these columns:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  For mutexes, the Name field reports only the mutex name. For rwlocks,\n  the Name field reports the source file where the rwlock is\n  implemented, and the line number in the file where the rwlock is\n  created. The line number is specific to your version of MySQL.\n\no Status\n\n  The mutex status. This field reports the number of spins, waits, and\n  calls. Statistics for low-level operating system mutexes, which are\n  implemented outside of InnoDB, are not reported.\n\n  o spins indicates the number of spins.\n\n  o waits indicates the number of mutex waits.\n\n  o calls indicates how many times the mutex was requested.\n\nSHOW ENGINE INNODB MUTEX does not list mutexes and rw-locks for each\nbuffer pool block, as the amount of output would be overwhelming on\nsystems with a large buffer pool. SHOW ENGINE INNODB MUTEX does,\nhowever, print aggregate BUF_BLOCK_MUTEX spin, wait, and call values\nfor buffer pool block mutexes and rw-locks. SHOW ENGINE INNODB MUTEX\nalso does not list any mutexes or rw-locks that have never been waited\non (os_waits=0). Thus, SHOW ENGINE INNODB MUTEX only displays\ninformation about mutexes and rw-locks outside of the buffer pool that\nhave caused at least one OS-level wait.\n\nUse SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal\noperation of the Performance Schema code:\n\nmysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\\G\n...\n*************************** 3. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.size\nStatus: 76\n*************************** 4. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.count\nStatus: 10000\n*************************** 5. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.memory\nStatus: 760000\n...\n*************************** 57. row ***************************\n  Type: performance_schema\n  Name: performance_schema.memory\nStatus: 26459600\n...\n\nThis statement is intended to help the DBA understand the effects that\ndifferent Performance Schema options have on memory requirements.\n\nName values consist of two parts, which name an internal buffer and a\nbuffer attribute, respectively. Interpret buffer names as follows:\n\no An internal buffer that is not exposed as a table is named within\n  parentheses. Examples: (pfs_cond_class).size,\n  (pfs_mutex_class).memory.\n\no An internal buffer that is exposed as a table in the\n  performance_schema database is named after the table, without\n  parentheses. Examples: events_waits_history.size,\n  mutex_instances.count.\n\no A value that applies to the Performance Schema as a whole begins with\n  performance_schema. Example: performance_schema.memory.\n\nBuffer attributes have these meanings:\n\no size is the size of the internal record used by the implementation,\n  such as the size of a row in a table. size values cannot be changed.\n\no count is the number of internal records, such as the number of rows\n  in a table. count values can be changed using Performance Schema\n  configuration options.\n\no For a table, tbl_name.memory is the product of size and count. For\n  the Performance Schema as a whole, performance_schema.memory is the\n  sum of all the memory used (the sum of all other memory values).\n\nIn some cases, there is a direct relationship between a Performance\nSchema configuration parameter and a SHOW ENGINE value. For example,\nevents_waits_history_long.count corresponds to\nperformance_schema_events_waits_history_long_size. In other cases, the\nrelationship is more complex. For example, events_waits_history.count\ncorresponds to performance_schema_events_waits_history_size (the number\nof rows per thread) multiplied by\nperformance_schema_max_thread_instances ( the number of threads).\n\nSHOW ENGINE NDB STATUS If the server has the NDB storage engine\nenabled, SHOW ENGINE NDB STATUS displays cluster status information\nsuch as the number of connected data nodes, the cluster connectstring,\nand cluster binary log epochs, as well as counts of various Cluster API\nobjects created by the MySQL Server when connected to the cluster.\nSample output from this statement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7,\n  connected_host=198.51.100.103, connected_port=1186, number_of_data_nodes=4,\n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126,\n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0,\n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe Status column in each of these rows provides information about the\nMySQL server\'s connection to the cluster and about the cluster binary\nlog\'s status, respectively. The Status information is in the form of\ncomma-delimited set of name/value pairs.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engine.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engine.html'),(659,'SHOW ENGINES',3,'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is.\n\nFor information about MySQL storage engines, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-storage-engine.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/storage-engines.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engines.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engines.html'),(660,'SHOW ERRORS',3,'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nSHOW ERRORS is a diagnostic statement that is similar to SHOW WARNINGS,\nexcept that it displays information only for errors, rather than for\nerrors, warnings, and notes.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nSHOW ERRORS and error_count apply only to errors, not warnings or\nnotes. In other respects, they are similar to SHOW WARNINGS and\nwarning_count. In particular, SHOW ERRORS cannot display information\nfor more than max_error_count messages, and error_count can exceed the\nvalue of max_error_count if the number of errors exceeds\nmax_error_count.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-errors.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-errors.html'),(661,'SHOW EVENTS',3,'Syntax:\nSHOW EVENTS\n    [{FROM | IN} schema_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement displays information about Event Manager events, which\nare discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/event-scheduler.html. It\nrequires the EVENT privilege for the database from which the events are\nto be shown.\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 1\n      Interval field: DAY\n              Starts: 2018-08-08 11:06:34\n                Ends: NULL\n              Status: ENABLED\n          Originator: 1\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-events.html'),(662,'SHOW FUNCTION CODE',3,'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html'),(663,'SHOW FUNCTION STATUS',3,'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html'),(664,'SHOW GRANTS',3,'Syntax:\nSHOW GRANTS\n    [FOR user_or_role\n        [USING role [, role] ...]]\n\nuser_or_role: {\n    user (see )\n  | role (see .\n}\n\nThis statement displays the privileges and roles that are assigned to a\nMySQL user account or role, in the form of GRANT statements that must\nbe executed to duplicate the privilege and role assignments.\n\n*Note*:\n\nTo display nonprivilege information for MySQL accounts, use the SHOW\nCREATE USER statement. See [HELP SHOW CREATE USER].\n\nSHOW GRANTS requires the SELECT privilege for the mysql system schema,\nexcept to display privileges and roles for the current user.\n\nTo name the account or role for SHOW GRANTS, use the same format as for\nthe GRANT statement (for example, \'jeffrey\'@\'localhost\'):\n\nmysql> SHOW GRANTS FOR \'jeffrey\'@\'localhost\';\n+------------------------------------------------------------------+\n| Grants for jeffrey@localhost                                     |\n+------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `jeffrey`@`localhost`                      |\n| GRANT SELECT, INSERT, UPDATE ON `db1`.* TO `jeffrey`@`localhost` |\n+------------------------------------------------------------------+\n\nThe host part, if omitted, defaults to \'%\'. For additional information\nabout specifying account and role names, see\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/role-names.html.\n\nTo display the privileges granted to the current user (the account you\nare using to connect to the server), you can use any of the following\nstatements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any equivalent syntax) is used in\ndefiner context, such as within a stored procedure that executes with\ndefiner rather than invoker privileges, the grants displayed are those\nof the definer and not the invoker.\n\nIn MySQL 8.0 compared to previous series, SHOW GRANTS no longer\ndisplays ALL PRIVILEGES in its global-privileges output because the\nmeaning of ALL PRIVILEGES at the global level varies depending on which\ndynamic privileges are defined. Instead, SHOW GRANTS explictly lists\neach granted global privilege:\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD,         |\n| SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES,  |\n| SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION   |\n| SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE,  |\n| ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE,      |\n| CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT      |\n| OPTION                                                              |\n| GRANT PROXY ON \'\'@\'\' TO `root`@`localhost` WITH GRANT OPTION        |\n+---------------------------------------------------------------------+\n\nApplications that process SHOW GRANTS output should be adjusted\naccordingly.\n\nAt the global level, GRANT OPTION applies to all granted static global\nprivileges if granted for any of them, but applies individually to\ngranted dynamic privileges. SHOW GRANTS displays global privileges this\nway:\n\no One line listing all granted static privileges, if there are any,\n  including WITH GRANT OPTION if appropriate.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is granted, if there are any, including WITH GRANT OPTION.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is not granted, if there are any, without WITH GRANT OPTION.\n\nWith the optional USING clause, SHOW GRANTS enables you to examine the\nprivileges associated with roles for the user. Each role named in the\nUSING clause must be granted to the user.\n\nSuppose that user u1 is assigned roles r1 and r2, as follows:\n\nCREATE ROLE \'r1\', \'r2\';\nGRANT SELECT ON db1.* TO \'r1\';\nGRANT INSERT, UPDATE, DELETE ON db1.* TO \'r2\';\nCREATE USER \'u1\'@\'localhost\' IDENTIFIED BY \'u1pass\';\nGRANT \'r1\', \'r2\' TO \'u1\'@\'localhost\';\n\nSHOW GRANTS without USING shows the granted roles:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\n\nAdding a USING clause causes the statement to also display the\nprivileges associated with each role named in the clause:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT SELECT ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r2\';\n+-------------------------------------------------------------+\n| Grants for u1@localhost                                     |\n+-------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                      |\n| GRANT INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                 |\n+-------------------------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\', \'r2\';\n+---------------------------------------------------------------------+\n| Grants for u1@localhost                                             |\n+---------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                              |\n| GRANT SELECT, INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                         |\n+---------------------------------------------------------------------+\n\n*Note*:\n\nA privilege granted to an account is always in effect, but a role is\nnot. The active roles for an account can differ across and within\nsessions, depending on the value of the activate_all_roles_on_login\nsystem variable, the account default roles, and whether SET ROLE has\nbeen executed within a session.\n\nMySQL 8.0.16 and higher supports partial revokes of global privileges,\nsuch that a global privilege can be restricted from applying to\nparticular schemas (see\nhttps://dev.mysql.com/doc/refman/8.0/en/partial-revokes.html). To\nindicate which global schema privileges have been revoked for\nparticular schemas, SHOW GRANTS output includes REVOKE statements:\n\nmysql> SET PERSIST partial_revokes = ON;\nmysql> CREATE USER u1;\nmysql> GRANT SELECT, INSERT, DELETE ON *.* TO u1;\nmysql> REVOKE SELECT, INSERT ON mysql.* FROM u1;\nmysql> REVOKE DELETE ON world.* FROM u1;\nmysql> SHOW GRANTS FOR u1;\n+--------------------------------------------------+\n| Grants for u1@%                                  |\n+--------------------------------------------------+\n| GRANT SELECT, INSERT, DELETE ON *.* TO `u1`@`%`  |\n| REVOKE SELECT, INSERT ON `mysql`.* FROM `u1`@`%` |\n| REVOKE DELETE ON `world`.* FROM `u1`@`%`         |\n+--------------------------------------------------+\n\nSHOW GRANTS does not display privileges that are available to the named\naccount but are granted to a different account. For example, if an\nanonymous account exists, the named account might be able to use its\nprivileges, but SHOW GRANTS does not display them.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-grants.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-grants.html'),(665,'SHOW INDEX',3,'Syntax:\nSHOW [EXTENDED] {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\n\nmysql> SHOW INDEX FROM City\\G\n*************************** 1. row ***************************\n        Table: city\n   Non_unique: 0\n     Key_name: PRIMARY\n Seq_in_index: 1\n  Column_name: ID\n    Collation: A\n  Cardinality: 4188\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n*************************** 2. row ***************************\n        Table: city\n   Non_unique: 1\n     Key_name: CountryCode\n Seq_in_index: 1\n  Column_name: CountryCode\n    Collation: A\n  Cardinality: 232\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden indexes that MySQL uses internally and are not accessible\nby users.\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW INDEX returns the following fields:\n\no Table\n\n  The name of the table.\n\no Non_unique\n\n  0 if the index cannot contain duplicates, 1 if it can.\n\no Key_name\n\n  The name of the index. If the index is the primary key, the name is\n  always PRIMARY.\n\no Seq_in_index\n\n  The column sequence number in the index, starting with 1.\n\no Column_name\n\n  The column name. See also the description for the Expression column.\n\no Collation\n\n  How the column is sorted in the index. This can have values A\n  (ascending), D (descending), or NULL (not sorted).\n\no Cardinality\n\n  An estimate of the number of unique values in the index. To update\n  this number, run ANALYZE TABLE or (for MyISAM tables) myisamchk -a.\n\n  Cardinality is counted based on statistics stored as integers, so the\n  value is not necessarily exact even for small tables. The higher the\n  cardinality, the greater the chance that MySQL uses the index when\n  doing joins.\n\no Sub_part\n\n  The index prefix. That is, the number of indexed characters if the\n  column is only partly indexed, NULL if the entire column is indexed.\n\n  *Note*:\n\n  Prefix limits are measured in bytes. However, prefix lengths for\n  index specifications in CREATE TABLE, ALTER TABLE, and CREATE INDEX\n  statements are interpreted as number of characters for nonbinary\n  string types (CHAR, VARCHAR, TEXT) and number of bytes for binary\n  string types (BINARY, VARBINARY, BLOB). Take this into account when\n  specifying a prefix length for a nonbinary string column that uses a\n  multibyte character set.\n\n  For additional information about index prefixes, see\n  https://dev.mysql.com/doc/refman/8.0/en/column-indexes.html, and\n  [HELP CREATE INDEX].\n\no Packed\n\n  Indicates how the key is packed. NULL if it is not.\n\no Null\n\n  Contains YES if the column may contain NULL values and \'\' if not.\n\no Index_type\n\n  The index method used (BTREE, FULLTEXT, HASH, RTREE).\n\no Comment\n\n  Information about the index not described in its own column, such as\n  disabled if the index is disabled.\n\no Index_comment\n\n  Any comment provided for the index with a COMMENT attribute when the\n  index was created.\n\no Visible\n\n  Whether the index is visible to the optimizer. See\n  https://dev.mysql.com/doc/refman/8.0/en/invisible-indexes.html.\n\no Expression\n\n  MySQL 8.0.13 and higher supports functional key parts (see\n  https://dev.mysql.com/doc/refman/8.0/en/create-index.html#create-inde\n  x-functional-key-parts), which affects both the Column_name and\n  Expression columns:\n\n  o For a nonfunctional key part, Column_name indicates the column\n    indexed by the key part and Expression is NULL.\n\n  o For a functional key part, Column_name column is NULL and\n    Expression indicates the expression for the key part.\n\nInformation about table indexes is also available from the\nINFORMATION_SCHEMA STATISTICS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-statistics-t\nable.html. The extended information about hidden indexes is available\nonly using SHOW EXTENDED INDEX; it cannot be obtained from the\nSTATISTICS table.\n\nYou can list a table\'s indexes with the mysqlshow -k db_name tbl_name\ncommand.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-index.html'),(666,'SHOW MASTER STATUS',3,'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the source server. It requires the REPLICATION CLIENT privilege (or\nthe deprecated SUPER privilege).\n\nExample:\n\nmysql> SHOW MASTER STATUS\\G\n*************************** 1. row ***************************\n             File: source-bin.000002\n         Position: 1307\n     Binlog_Do_DB: test\n Binlog_Ignore_DB: manual, mysql\nExecuted_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\n1 row in set (0.00 sec)\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html'),(667,'SHOW OPEN TABLES',3,'Syntax:\nSHOW OPEN TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttps://dev.mysql.com/doc/refman/8.0/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html'),(668,'SHOW PLUGINS',3,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html'),(669,'SHOW PRIVILEGES',3,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The privileges displayed include all static\nprivileges, and all currently registered dynamic privileges.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html'),(670,'SHOW PROCEDURE CODE',3,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, or have the SELECT privilege\nat the global level.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n       BEGIN\n         DECLARE fanta INT DEFAULT 55;\n         DROP TABLE t2;\n         LOOP\n           INSERT INTO t3 VALUES (fanta);\n           END LOOP;\n         END//\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n\nmysql> CREATE FUNCTION test.hello (s CHAR(20))\n       RETURNS CHAR(50) DETERMINISTIC\n       RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW FUNCTION CODE test.hello;\n+-----+---------------------------------------+\n| Pos | Instruction                           |\n+-----+---------------------------------------+\n|   0 | freturn 254 concat(\'Hello, \',s@0,\'!\') |\n+-----+---------------------------------------+\n1 row in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html'),(671,'SHOW PROCEDURE STATUS',3,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine.\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2018-08-08 13:54:11\n             Created: 2018-08-08 13:54:11\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2020-03-10 11:10:03\n             Created: 2020-03-10 11:10:03\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html'),(672,'SHOW PROCESSLIST',3,'Syntax:\nSHOW [FULL] PROCESSLIST\n\nThe MySQL process list indicates the operations currently being\nperformed by the set of threads executing within the server. The SHOW\nPROCESSLIST statement is one source of process information. For a\ncomparison of this statement with other sources, see\nhttps://dev.mysql.com/doc/refman/8.0/en/processlist-access.html#process\nlist-sources.\n\n*Note*:\n\nAs of MySQL 8.0.22, an alternative implementation for SHOW PROCESSLIST\nis available based on the Performance Schema processlist table, which,\nunlike the default SHOW PROCESSLIST implementation, does not require a\nmutex and has better performance characteristics. For details, see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-processlist-\ntable.html.\n\nIf you have the PROCESS privilege, you can see all threads, even those\nbelonging to other users. Otherwise (without the PROCESS privilege),\nnonanonymous users have access to information about their own threads\nbut not threads for other users, and anonymous users have no access to\nthread information.\n\nWithout the FULL keyword, SHOW PROCESSLIST displays only the first 100\ncharacters of each statement in the Info field.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html'),(673,'SHOW PROFILE',3,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype: {\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n}\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect\nthem to be removed in a future MySQL release. Use the Performance\nSchema instead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nTo control profiling, use the profiling session variable, which has a\ndefault value of 0 (OFF). Enable profiling by setting profiling to 1 or\nON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nneither of those statements appears in the profile list. Malformed\nstatements are profiled. For example, SHOW PROFILING is an illegal\nstatement, and a syntax error occurs if you try to execute it, but it\nshows up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretion for the\ntwo statements for some status values (see\nhttps://dev.mysql.com/doc/refman/8.0/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-profile.html'),(674,'SHOW PROFILES',3,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect it\nto be removed in a future MySQL release. Use the Performance Schema\ninstead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html'),(675,'SHOW RELAYLOG EVENTS',3,'Syntax:\nSHOW RELAYLOG EVENTS\n    [IN \'log_name\']\n    [FROM pos]\n    [LIMIT [offset,] row_count]\n    [channel_option]\n\nchannel_option:\n    FOR CHANNEL channel\n\nShows the events in the relay log of a replica. If you do not specify\n\'log_name\', the first relay log is displayed. This statement has no\neffect on the source. SHOW RELAYLOG EVENTS requires the REPLICATION\nSLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html'),(676,'SHOW REPLICAS',3,'Syntax:\n{SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, use SHOW REPLICAS in place of SHOW SLAVE HOSTS, which is\ndeprecated from that release. In releases before MySQL 8.0.22, use SHOW\nSLAVE HOSTS. SHOW REPLICAS requires the REPLICATION SLAVE privilege.\n\nSHOW REPLICAS should be executed on a server that acts as a replication\nsource. The statement displays information about servers that are or\nhave been connected as replicas, with each row of the result\ncorresponding to one replica server, as shown here:\n\nmysql> SHOW REPLICAS;\n+------------+-----------+------+-----------+--------------------------------------+\n| Server_id  | Host      | Port | Source_id | Replica_UUID                         |\n+------------+-----------+------+-----------+--------------------------------------+\n|         10 | iconnect2 | 3306 |         3 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n|         21 | athena    | 3306 |         3 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the replica server, as configured\n  in the replica server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the replica server, as specified on the\n  replica with the --report-host option. This can differ from the\n  machine name as configured in the operating system.\n\no User: The replica server user name, as specified on the replica with\n  the --report-user option. Statement output includes this column only\n  if the source server is started with the --show-replica-auth-info or\n  --show-slave-auth-info option.\n\no Password: The replica server password, as specified on the replica\n  with the --report-password option. Statement output includes this\n  column only if the source server is started with the\n  --show-replica-auth-info or --show-slave-auth-info option.\n\no Port: The port on the source to which the replica server is\n  listening, as specified on the replica with the --report-port option.\n\n  A zero in this column means that the replica port (--report-port) was\n  not set.\n\no Source_id: The unique server ID of the source server that the replica\n  server is replicating from. This is the server ID of the server on\n  which SHOW REPLICAS is executed, so this same value is listed for\n  each row in the result.\n\no Replica_UUID: The globally unique ID of this replica, as generated on\n  the replica and found in the replica\'s auto.cnf file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html'),(677,'SHOW SLAVE HOSTS',3,'Syntax:\n{SHOW SLAVE HOSTS | SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, SHOW SLAVE HOSTS is deprecated and the alias SHOW\nREPLICAS should be used instead. The statement works in the same way as\nbefore, only the terminology used for the statement and its output has\nchanged. Both versions of the statement update the same status\nvariables when used. Please see the documentation for SHOW REPLICAS for\na description of the statement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html'),(678,'SHOW REPLICA STATUS',3,'Syntax:\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, use SHOW REPLICA STATUS in\nplace of SHOW SLAVE STATUS, which is deprecated from that release. In\nreleases before MySQL 8.0.22, use SHOW SLAVE STATUS. The statement\nrequires the REPLICATION CLIENT privilege (or the deprecated SUPER\nprivilege).\n\nSHOW REPLICA STATUS is nonblocking. When run concurrently with STOP\nREPLICA, SHOW REPLICA STATUS returns without waiting for STOP REPLICA\nto finish shutting down the replication SQL (applier) thread or\nreplication I/O (receiver) thread (or both). This permits use in\nmonitoring and other applications where getting an immediate response\nfrom SHOW REPLICA STATUS is more important than ensuring that it\nreturned the latest data. The SLAVE keyword was replaced with REPLICA\nin MySQL 8.0.22.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW REPLICA STATUS\\G\n*************************** 1. row ***************************\n             Replica_IO_State: Waiting for source to send event\n                  Source_Host: localhost\n                  Source_User: repl\n                  Source_Port: 13000\n                Connect_Retry: 60\n              Source_Log_File: source-bin.000002\n          Read_Source_Log_Pos: 1307\n               Relay_Log_File: replica-relay-bin.000003\n                Relay_Log_Pos: 1508\n        Relay_Source_Log_File: source-bin.000002\n           Replica_IO_Running: Yes\n          Replica_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Source_Log_Pos: 1307\n              Relay_Log_Space: 1858\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Source_SSL_Allowed: No\n           Source_SSL_CA_File:\n           Source_SSL_CA_Path:\n              Source_SSL_Cert:\n            Source_SSL_Cipher:\n               Source_SSL_Key:\n        Seconds_Behind_Source: 0\nSource_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Source_Server_Id: 1\n                  Source_UUID: 3e11fa47-71ca-11e1-9e33-c80aa9429562\n             Source_Info_File:\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n    Replica_SQL_Running_State: Reading event from the relay log\n           Source_Retry_Count: 10\n                  Source_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Source_SSL_Crl:\n           Source_SSL_Crlpath:\n           Retrieved_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n            Executed_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n                Auto_Position: 1\n         Replicate_Rewrite_DB:\n                 Channel_name:\n           Source_TLS_Version: TLSv1.2\n       Source_public_key_path: public_key.pem\n        Get_source_public_key: 0\n            Network_Namespace:\n\nThe Performance Schema provides tables that expose replication\ninformation. This is similar to the information available from the SHOW\nREPLICA STATUS statement, but represented in table form. For details,\nsee\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-replication-\ntables.html.\n\nFrom MySQL 8.0.27, you can set the GTID_ONLY option on the CHANGE\nREPLICATION SOURCE TO statement to stop a replication channel from\npersisting file names and file positions in the replication metadata\nrepositories. With this setting, file positions for the source binary\nlog file and the relay log file are tracked in memory. The SHOW REPLICA\nSTATUS statement still displays file positions in normal use. However,\nbecause the file positions are not being regularly updated in the\nconnection metadata repository and the applier metadata repository\nexcept in a few situations, they are likely to be out of date if the\nserver is restarted.\n\nFor a replication channel with the GTID_ONLY setting after a server\nstart, the read and applied file positions for the source binary log\nfile (Read_Source_Log_Pos and Exec_Source_Log_Pos) are set to zero, and\nthe file names (Source_Log_File and Relay_Source_Log_File) are set to\nINVALID. The relay log file name (Relay_Log_File) is set according to\nthe relay_log_recovery setting, either a new file that was created at\nserver start or the first relay log file present. The file position\n(Relay_Log_Pos) is set to position 4, and GTID auto-skip is used to\nskip any transactions in the file that were already applied.\n\nWhen the receiver thread contacts the source and gets valid position\ninformation, the read position (Read_Source_Log_Pos) and file name\n(Source_Log_File) are updated with the correct data and become valid.\nWhen the applier thread applies a transaction from the source, or skips\nan already executed transaction, the executed position\n(Exec_Source_Log_Pos) and file name (Relay_Source_Log_File) are updated\nwith the correct data and become valid. The relay log file position\n(Relay_Log_Pos) is also updated at that time.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html'),(679,'SHOW SLAVE STATUS',3,'Syntax:\nSHOW {SLAVE | REPLICA} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, SHOW SLAVE STATUS is deprecated\nand the alias SHOW REPLICA STATUS should be used instead. The statement\nworks in the same way as before, only the terminology used for the\nstatement and its output has changed. Both versions of the statement\nupdate the same status variables when used. Please see the\ndocumentation for SHOW REPLICA STATUS for a description of the\nstatement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html'),(680,'SHOW STATUS',3,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nStatus variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-status-var\n  iable-tables.html.\n\no The mysqladmin extended-status command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW STATUS, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW STATUS accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays the global status\n  values. A global status variable may represent status for some aspect\n  of the server itself (for example, Aborted_connects), or the\n  aggregated status over all connections to MySQL (for example,\n  Bytes_received and Bytes_sent). If a variable has no global value,\n  the session value is displayed.\n\no With a SESSION modifier, the statement displays the status variable\n  values for the current connection. If a variable has no session\n  value, the global value is displayed. LOCAL is a synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each status variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-status.html'),(681,'SHOW TABLE STATUS',3,'Syntax:\nSHOW TABLE STATUS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html'),(682,'SHOW TABLES',3,'Syntax:\nSHOW [EXTENDED] [FULL] TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThe optional EXTENDED modifier causes SHOW TABLES to list hidden tables\ncreated by failed ALTER TABLE statements. These temporary tables have\nnames beginning with #sql and can be dropped using DROP TABLE.\n\nThis statement also lists any views in the database. The optional FULL\nmodifier causes SHOW TABLES to display a second output column with\nvalues of BASE TABLE for a table, VIEW for a view, or SYSTEM VIEW for\nan INFORMATION_SCHEMA table.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-tables.html'),(683,'SHOW TRIGGERS',3,'Syntax:\nSHOW TRIGGERS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names (not trigger names) to match and causes the statement\nto display triggers for those tables. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nFor the ins_sum trigger defined in\nhttps://dev.mysql.com/doc/refman/8.0/en/triggers.html, the output of\nSHOW TRIGGERS is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: 2018-08-08 10:10:12.61\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n             Definer: me@localhost\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html'),(684,'SHOW VARIABLES',3,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nSystem variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-system-var\n  iable-tables.html.\n\no The mysqladmin variables command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW VARIABLES, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW VARIABLES accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays global system variable\n  values. These are the values used to initialize the corresponding\n  session variables for new connections to MySQL. If a variable has no\n  global value, no value is displayed.\n\no With a SESSION modifier, the statement displays the system variable\n  values that are in effect for the current connection. If a variable\n  has no session value, the global value is displayed. LOCAL is a\n  synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each system variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nSHOW VARIABLES is subject to a version-dependent display-width limit.\nFor variables with very long values that are not completely displayed,\nuse SELECT as a workaround. For example:\n\nSELECT @@GLOBAL.innodb_data_file_path;\n\nMost system variables can be set at server startup (read-only variables\nsuch as version_comment are exceptions). Many can be changed at runtime\nwith the SET statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html,\nand [HELP SET].\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the %\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because _ is a wildcard that matches any\nsingle character, you should escape it as \\_ to match it literally. In\npractice, this is rarely necessary.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-variables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-variables.html'),(685,'SHOW WARNINGS',3,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS is a diagnostic statement that displays information about\nthe conditions (errors, warnings, and notes) resulting from executing a\nstatement in the current session. Warnings are generated for DML\nstatements such as INSERT, UPDATE, and LOAD DATA as well as DDL\nstatements such as CREATE TABLE and ALTER TABLE.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nSHOW WARNINGS is also used following EXPLAIN, to display the extended\ninformation generated by EXPLAIN. See\nhttps://dev.mysql.com/doc/refman/8.0/en/explain-extended.html.\n\nSHOW WARNINGS displays information about the conditions resulting from\nexecution of the most recent nondiagnostic statement in the current\nsession. If the most recent statement resulted in an error during\nparsing, SHOW WARNINGS shows the resulting conditions, regardless of\nstatement type (diagnostic or nondiagnostic).\n\nThe SHOW COUNT(*) WARNINGS diagnostic statement displays the total\nnumber of errors, warnings, and notes. You can also retrieve this\nnumber from the warning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nA difference in these statements is that the first is a diagnostic\nstatement that does not clear the message list. The second, because it\nis a SELECT statement is considered nondiagnostic and does clear the\nmessage list.\n\nA related diagnostic statement, SHOW ERRORS, shows only error\nconditions (it excludes warnings and notes), and SHOW COUNT(*) ERRORS\nstatement displays the total number of errors. See [HELP SHOW ERRORS].\nGET DIAGNOSTICS can be used to examine information for individual\nconditions. See [HELP GET DIAGNOSTICS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html'),(686,'BINLOG',3,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See https://dev.mysql.com/doc/refman/8.0/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event.\n\nTo execute BINLOG statements when applying mysqlbinlog output, a user\naccount requires the BINLOG_ADMIN privilege (or the deprecated SUPER\nprivilege), or the REPLICATION_APPLIER privilege plus the appropriate\nprivileges to execute each log event.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/binlog.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/binlog.html'),(687,'CACHE INDEX',3,'Syntax:\nCACHE INDEX {\n      tbl_index_list [, tbl_index_list] ...\n    | tbl_name PARTITION (partition_list)\n  }\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [{INDEX|KEY} (index_name[, index_name] ...)]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It applies only to MyISAM tables, including partitioned MyISAM\ntables. After the indexes have been assigned, they can be preloaded\ninto the cache if desired with LOAD INDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/cache-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/cache-index.html'),(688,'FLUSH',3,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL] {\n    flush_option [, flush_option] ...\n  | tables_option\n}\n\nflush_option: {\n    BINARY LOGS\n  | ENGINE LOGS\n  | ERROR LOGS\n  | GENERAL LOGS\n  | HOSTS\n  | LOGS\n  | PRIVILEGES\n  | OPTIMIZER_COSTS\n  | RELAY LOGS [FOR CHANNEL channel]\n  | SLOW LOGS\n  | STATUS\n  | USER_RESOURCES\n}\n\ntables_option: {\n    TABLES\n  | TABLES tbl_name [, tbl_name] ...\n  | TABLES WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... FOR EXPORT\n}\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. Each FLUSH\noperation requires the privileges indicated in its description.\n\n*Note*:\n\nIt is not possible to issue FLUSH statements within stored functions or\ntriggers. However, you may use FLUSH in stored procedures, so long as\nthese are not called from stored functions or triggers. See\nhttps://dev.mysql.com/doc/refman/8.0/en/stored-program-restrictions.htm\nl.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replicas. To suppress logging, specify the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*:\n\nFLUSH LOGS, FLUSH BINARY LOGS, FLUSH TABLES WITH READ LOCK (with or\nwithout a table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not\nwritten to the binary log in any case because they would cause problems\nif replicated to a replica.\n\nThe FLUSH statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe mysqladmin utility provides a command-line interface to some flush\noperations, using commands such as flush-hosts, flush-logs,\nflush-privileges, flush-status, and flush-tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nSending a SIGHUP or SIGUSR1 signal to the server causes several flush\noperations to occur that are similar to various forms of the FLUSH\nstatement. Signals can be sent by the root system account or the system\naccount that owns the server process. This enables the flush operations\nto be performed without having to connect to the server, which requires\na MySQL account that has privileges sufficient for those operations.\nSee https://dev.mysql.com/doc/refman/8.0/en/unix-signal-response.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using RESET with replication.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/flush.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/flush.html'),(689,'KILL',3,'Syntax:\nKILL [CONNECTION | QUERY] processlist_id\n\nEach connection to mysqld runs in a separate thread. You can kill a\nthread with the KILL processlist_id statement.\n\nThread processlist identifiers can be determined from the ID column of\nthe INFORMATION_SCHEMA PROCESSLIST table, the Id column of SHOW\nPROCESSLIST output, and the PROCESSLIST_ID column of the Performance\nSchema threads table. The value for the current thread is returned by\nthe CONNECTION_ID() function.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given processlist_id, after\n  terminating any statement the connection is executing.\n\no KILL QUERY terminates the statement the connection is currently\n  executing, but leaves the connection itself intact.\n\nThe ability to see which threads are available to be killed depends on\nthe PROCESS privilege:\n\no Without PROCESS, you can see only your own threads.\n\no With PROCESS, you can see all threads.\n\nThe ability to kill threads and statements depends on the\nCONNECTION_ADMIN privilege and the deprecated SUPER privilege:\n\no Without CONNECTION_ADMIN or SUPER, you can kill only your own threads\n  and statements.\n\no With CONNECTION_ADMIN or SUPER, you can kill all threads and\n  statements, except that to affect a thread or statement that is\n  executing with the SYSTEM_USER privilege, your own session must\n  additionally have the SYSTEM_USER privilege.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/kill.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/kill.html'),(690,'LOAD INDEX',3,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list)]\n    [{INDEX|KEY} (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE applies only to MyISAM tables, including\npartitioned MyISAM tables. In addition, indexes on partitioned tables\ncan be preloaded for one, several, or all partitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/load-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/load-index.html'),(691,'RESET',3,'Syntax:\nRESET reset_option [, reset_option] ...\n\nreset_option: {\n    MASTER\n  | REPLICA\n  | SLAVE\n}\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nFor information about the RESET PERSIST statement that removes\npersisted global system variables, see [HELP RESET PERSIST].\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe following list describes the permitted RESET statement reset_option\nvalues:\n\no RESET MASTER\n\n  Deletes all binary logs listed in the index file, resets the binary\n  log index file to be empty, and creates a new binary log file.\n\no RESET REPLICA\n\n  Makes the replica forget its replication position in the source\n  binary logs. Also resets the relay log by deleting any existing relay\n  log files and beginning a new one. Use RESET REPLICA in place of\n  RESET SLAVE from MySQL 8.0.22.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset.html'),(692,'RESET PERSIST',3,'Syntax:\nRESET PERSIST [[IF EXISTS] system_var_name]\n\nRESET PERSIST removes persisted global system variable settings from\nthe mysqld-auto.cnf option file in the data directory. Removing a\npersisted system variable causes the variable no longer to be\ninitialized from mysqld-auto.cnf at server startup. For more\ninformation about persisting system variables and the mysqld-auto.cnf\nfile, see\nhttps://dev.mysql.com/doc/refman/8.0/en/persisted-system-variables.html\n.\n\nThe privileges required for RESET PERSIST depend on the type of system\nvariable to be removed:\n\no For dynamic system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN privilege (or the deprecated SUPER privilege).\n\no For read-only system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN and PERSIST_RO_VARIABLES_ADMIN privileges.\n\nSee\nhttps://dev.mysql.com/doc/refman/8.0/en/system-variable-privileges.html\n.\n\nDepending on whether the variable name and IF EXISTS clauses are\npresent, the RESET PERSIST statement has these forms:\n\no To remove all persisted variables from mysqld-auto.cnf, use RESET\n  PERSIST without naming any system variable:\n\nRESET PERSIST;\n\n  You must have privileges for removing both dynamic and read-only\n  system variables if mysqld-auto.cnf contains both kinds of variables.\n\no To remove a specific persisted variable from mysqld-auto.cnf, name it\n  in the statement:\n\nRESET PERSIST system_var_name;\n\n  This includes plugin system variables, even if the plugin is not\n  currently installed. If the variable is not present in the file, an\n  error occurs.\n\no To remove a specific persisted variable from mysqld-auto.cnf, but\n  produce a warning rather than an error if the variable is not present\n  in the file, add an IF EXISTS clause to the previous syntax:\n\nRESET PERSIST IF EXISTS system_var_name;\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html'),(693,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/restart.html'),(694,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command or the mysql_shutdown()\n(https://dev.mysql.com/doc/c-api/8.0/en/mysql-shutdown.html) C API\nfunction. A successful SHUTDOWN sequence consists of checking the\nprivileges, validating the arguments, and sending an OK packet to the\nclient. Then the server is shut down.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/shutdown.html'),(695,'EXPLAIN',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(696,'DESCRIBE',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(697,'DESC',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(698,'HELP STATEMENT',51,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/help.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/help.html'),(699,'USE',51,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/use.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/use.html'),(700,'MERGE',52,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/8.0/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('hbtn_0e_0_usa','states','PRIMARY','2024-06-23 20:54:33','n_diff_pfx01',5,1,'id'),('hbtn_0e_0_usa','states','PRIMARY','2024-06-23 20:54:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_0_usa','states','PRIMARY','2024-06-23 20:54:33','size',1,NULL,'Number of pages in the index'),('hbtn_0e_14_usa','cities','PRIMARY','2024-06-27 17:20:12','n_diff_pfx01',15,1,'id'),('hbtn_0e_14_usa','cities','PRIMARY','2024-06-27 17:20:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_14_usa','cities','PRIMARY','2024-06-27 17:20:12','size',1,NULL,'Number of pages in the index'),('hbtn_0e_14_usa','cities','state_id','2024-06-27 17:20:12','n_diff_pfx01',5,1,'state_id'),('hbtn_0e_14_usa','cities','state_id','2024-06-27 17:20:12','n_diff_pfx02',15,1,'state_id,id'),('hbtn_0e_14_usa','cities','state_id','2024-06-27 17:20:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_14_usa','cities','state_id','2024-06-27 17:20:12','size',1,NULL,'Number of pages in the index'),('hbtn_0e_14_usa','states','PRIMARY','2024-06-27 17:20:22','n_diff_pfx01',5,1,'id'),('hbtn_0e_14_usa','states','PRIMARY','2024-06-27 17:20:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_14_usa','states','PRIMARY','2024-06-27 17:20:22','size',1,NULL,'Number of pages in the index'),('hbtn_0e_4_usa','cities','PRIMARY','2024-06-23 21:24:00','n_diff_pfx01',45,1,'id'),('hbtn_0e_4_usa','cities','PRIMARY','2024-06-23 21:24:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_4_usa','cities','PRIMARY','2024-06-23 21:24:00','size',1,NULL,'Number of pages in the index'),('hbtn_0e_4_usa','cities','state_id','2024-06-23 21:24:00','n_diff_pfx01',5,1,'state_id'),('hbtn_0e_4_usa','cities','state_id','2024-06-23 21:24:00','n_diff_pfx02',45,1,'state_id,id'),('hbtn_0e_4_usa','cities','state_id','2024-06-23 21:24:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_4_usa','cities','state_id','2024-06-23 21:24:00','size',1,NULL,'Number of pages in the index'),('hbtn_0e_4_usa','states','PRIMARY','2024-06-23 21:23:50','n_diff_pfx01',15,1,'id'),('hbtn_0e_4_usa','states','PRIMARY','2024-06-23 21:23:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_4_usa','states','PRIMARY','2024-06-23 21:23:50','size',1,NULL,'Number of pages in the index'),('hbtn_0e_6_usa','states','PRIMARY','2024-06-27 16:16:58','n_diff_pfx01',15,1,'id'),('hbtn_0e_6_usa','states','PRIMARY','2024-06-27 16:16:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbtn_0e_6_usa','states','PRIMARY','2024-06-27 16:16:58','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2022-03-30 01:59:54','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2022-03-30 01:59:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2022-03-30 01:59:54','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2022-03-30 01:59:55','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2022-03-30 01:59:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2022-03-30 01:59:55','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('hbtn_0e_0_usa','states','2024-06-23 20:54:33',5,1,0),('hbtn_0e_14_usa','cities','2024-06-27 17:20:12',15,1,1),('hbtn_0e_14_usa','states','2024-06-27 17:20:22',5,1,0),('hbtn_0e_4_usa','cities','2024-06-23 21:24:00',45,1,1),('hbtn_0e_4_usa','states','2024-06-23 21:23:50',15,1,0),('hbtn_0e_6_usa','states','2024-06-27 16:16:58',15,1,0),('mysql','component','2022-03-30 01:59:54',0,1,0),('sys','sys_config','2022-03-30 01:59:55',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('auth_socket','auth_socket.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','2022-03-30 01:59:54');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_configuration_version`
--

DROP TABLE IF EXISTS `replication_group_configuration_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_configuration_version` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The configuration name.',
  `version` bigint unsigned NOT NULL COMMENT 'The version of the configuration name.',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The group configuration version.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_configuration_version`
--

LOCK TABLES `replication_group_configuration_version` WRITE;
/*!40000 ALTER TABLE `replication_group_configuration_version` DISABLE KEYS */;
INSERT INTO `replication_group_configuration_version` VALUES ('replication_group_member_actions',1);
/*!40000 ALTER TABLE `replication_group_configuration_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_member_actions`
--

DROP TABLE IF EXISTS `replication_group_member_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_member_actions` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action name.',
  `event` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The event that will trigger the action.',
  `enabled` tinyint(1) NOT NULL COMMENT 'Whether the action is enabled.',
  `type` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action type.',
  `priority` tinyint unsigned NOT NULL COMMENT 'The order on which the action will be run, value between 1 and 100, lower values first.',
  `error_handling` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'On errors during the action will be handled: IGNORE, CRITICAL.',
  PRIMARY KEY (`name`,`event`),
  KEY `event` (`event`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The member actions configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_member_actions`
--

LOCK TABLES `replication_group_member_actions` WRITE;
/*!40000 ALTER TABLE `replication_group_member_actions` DISABLE KEYS */;
INSERT INTO `replication_group_member_actions` VALUES ('mysql_disable_super_read_only_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',1,'IGNORE'),('mysql_start_failover_channels_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',10,'CRITICAL');
/*!40000 ALTER TABLE `replication_group_member_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2022-03-30 01:59:54',NULL),('disk_temptable_row_cost',NULL,'2022-03-30 01:59:54',NULL),('key_compare_cost',NULL,'2022-03-30 01:59:54',NULL),('memory_temptable_create_cost',NULL,'2022-03-30 01:59:54',NULL),('memory_temptable_row_cost',NULL,'2022-03-30 01:59:54',NULL),('row_evaluate_cost',NULL,'2022-03-30 01:59:54',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the source.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between source and replica.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  `Gtid_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates if this channel only uses GTIDs and does not persist positions.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables having primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','2022-03-30 01:59:55','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2022-03-30 01:59:55','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','debian-sys-maint','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$&V%\"1/X*X^	KmM34tAnkR7O5W1qoH/CUobRj6yTJiTgyPPlEXnEjaoU33','N','2022-03-30 01:59:55',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','hbnb_test','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$(H7=U>}b\\YNp0~lV4fOZ6etyXPKSWTXU/elpTtwdgpUK0EjP1AfH25rn2','N','2024-06-25 21:36:30',NULL,'N','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2022-03-30 01:59:55',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2022-03-30 01:59:55',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2022-03-30 01:59:55',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'auth_socket','','N','2022-03-30 01:59:54',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `hbnb_test_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbnb_test_db`;

--
-- Current Database: `hbtn_0e_0_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_0_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_0_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_14_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_14_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_14_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_4_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_4_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_4_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City'),(16,1,'San Francisco'),(17,1,'San Jose'),(18,1,'Los Angeles'),(19,1,'Fremont'),(20,1,'Livermore'),(21,2,'Page'),(22,2,'Phoenix'),(23,3,'Dallas'),(24,3,'Houston'),(25,3,'Austin'),(26,4,'New York'),(27,5,'Las Vegas'),(28,5,'Reno'),(29,5,'Henderson'),(30,5,'Carson City'),(31,1,'San Francisco'),(32,1,'San Jose'),(33,1,'Los Angeles'),(34,1,'Fremont'),(35,1,'Livermore'),(36,2,'Page'),(37,2,'Phoenix'),(38,3,'Dallas'),(39,3,'Houston'),(40,3,'Austin'),(41,4,'New York'),(42,5,'Las Vegas'),(43,5,'Reno'),(44,5,'Henderson'),(45,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada'),(6,'California'),(7,'Arizona'),(8,'Texas'),(9,'New York'),(10,'Nevada'),(11,'California'),(12,'Arizona'),(13,'Texas'),(14,'New York'),(15,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_6_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_6_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_6_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada'),(6,'California'),(7,'Arizona'),(8,'Texas'),(9,'New York'),(10,'Nevada'),(11,'California'),(12,'Arizona'),(13,'Texas'),(14,'New York'),(15,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-24 11:27:57