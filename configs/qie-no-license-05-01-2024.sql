-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.22.212    Database: qie
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-1:10.3.39+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `REVINFO`
--

DROP TABLE IF EXISTS `REVINFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REVINFO` (
  `REV` int(11) NOT NULL AUTO_INCREMENT,
  `REVTSTMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`REV`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVINFO`
--

LOCK TABLES `REVINFO` WRITE;
/*!40000 ALTER TABLE `REVINFO` DISABLE KEYS */;
INSERT INTO `REVINFO` VALUES (1,1680103703916),(2,1680103703937),(3,1680103704683),(4,1680103769806),(5,1680103873514),(6,1680104506388),(7,1680111962637),(8,1680152604346),(9,1682434778313),(10,1682950220084),(11,1684219449211),(12,1684899869534),(13,1685980290205),(14,1685980464513),(15,1687199393584),(16,1687923213736),(17,1689049731232),(18,1689138157401),(19,1689218301527),(20,1692821890445),(21,1692847251404),(22,1692939925458),(23,1697745812525),(24,1697747679071),(25,1697771840637),(26,1698875263107),(27,1702527296473),(28,1703044221929),(29,1710541942096),(30,1710891830257),(31,1710891893192),(32,1710892003770),(33,1710892031442),(34,1710892033482),(35,1711163490942),(36,1711514532933),(37,1713392994982),(38,1713393149650),(39,1713394096847),(40,1713800960814),(41,1713801247435),(42,1713801253069),(43,1713801313031),(44,1713848017784),(45,1713936470374),(46,1714425063332);
/*!40000 ALTER TABLE `REVINFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_alert`
--

DROP TABLE IF EXISTS `admin_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_alert` (
  `admin_alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `alert_source` varchar(10) DEFAULT NULL,
  `alert_text` varchar(2048) DEFAULT NULL,
  `email_sent` bit(1) DEFAULT NULL,
  `expiration` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`admin_alert_id`),
  KEY `idx_admin_alert_source` (`alert_source`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_alert`
--

LOCK TABLES `admin_alert` WRITE;
/*!40000 ALTER TABLE `admin_alert` DISABLE KEYS */;
INSERT INTO `admin_alert` VALUES (13,'sys','2024-04-23 21:59:42.242000','sys','2024-04-23 21:59:42.242000',0,'abnormalSD','The QIE service detected an abnormal shutdown for instance: qie-57c7f485d9-2rt9d:8088<br/><br/>The shutdown process was never called. This can happen if there is a loss of power or the QIE service is forcefully terminated.  This can cause data corruption and/or loss.  If the problem persists, please call Qvera support.  For more information, see <a href=\"https://www.qvera.com/qie-kb-redirect.php?question=why-do-get-the-qie-service-detected-abnormal-shutdown-alert\" target=\"_blank\">this</a> KB article.<br /><br />Detected: Tue, Apr 23, 2024 at 9:59:42 PM<br />Expires: Thu, May 23, 2024 at 9:59:42 PM','','2024-05-23 21:59:42.241000'),(14,'sys','2024-04-29 21:10:01.255000','sys','2024-04-29 21:10:01.255000',0,'abnormalSD','The QIE service detected an abnormal shutdown for instance: qie-57c7f485d9-h4hwd:8088<br/><br/>The shutdown process was never called. This can happen if there is a loss of power or the QIE service is forcefully terminated.  This can cause data corruption and/or loss.  If the problem persists, please call Qvera support.  For more information, see <a href=\"https://www.qvera.com/qie-kb-redirect.php?question=why-do-get-the-qie-service-detected-abnormal-shutdown-alert\" target=\"_blank\">this</a> KB article.<br /><br />Detected: Mon, Apr 29, 2024 at 9:10:01 PM<br />Expires: Wed, May 29, 2024 at 9:10:01 PM','','2024-05-29 21:10:01.253000'),(15,'sys','2024-04-29 21:10:01.268000','sys','2024-04-29 21:10:01.268000',0,'abnormalSD','The QIE service detected an abnormal shutdown for instance: qie-57c7f485d9-q45q7:8088<br/><br/>The shutdown process was never called. This can happen if there is a loss of power or the QIE service is forcefully terminated.  This can cause data corruption and/or loss.  If the problem persists, please call Qvera support.  For more information, see <a href=\"https://www.qvera.com/qie-kb-redirect.php?question=why-do-get-the-qie-service-detected-abnormal-shutdown-alert\" target=\"_blank\">this</a> KB article.<br /><br />Detected: Mon, Apr 29, 2024 at 9:10:01 PM<br />Expires: Wed, May 29, 2024 at 9:10:01 PM','','2024-05-29 21:10:01.268000'),(16,'sys','2024-04-29 21:11:03.311000','sys','2024-04-29 21:11:03.311000',0,'licchlimch','Channel limits for one or more licenses have changed. Below is a summary. If you have any questions, please contact Qvera Support.<br /><br /><table style=\'border-collapse:collapse;margin-left:16px;font-family:inherit;font-size:inherit;border:solid 1px var(--qie-grey-txt)\'><tr><th style=\'font-weight:bold;padding:2px 4px;border:solid 1px var(--qie-grey-txt)\'>License ID</th><th style=\'font-weight:bold;padding:2px 4px;border:solid 1px var(--qie-grey-txt)\'>Old Channel Limit</th><th style=\'font-weight:bold;padding:2px 4px;border:solid 1px var(--qie-grey-txt)\'>New Channel Limit</th></tr><tr><td style=\'padding:2px 4px;border:solid 1px var(--qie-grey-txt)\'>arne_paulsen_ca_dev</td><td style=\'padding:2px 4px;text-align:right;border:solid 1px var(--qie-grey-txt)\'>20</td><td style=\'padding:2px 4px;text-align:right;border:solid 1px var(--qie-grey-txt)\' class=\'red-text\'>0</td></tr></table><br />Detected: Mon, Apr 29, 2024 at 9:11:03 PM<br />Expires: Wed, May 29, 2024 at 9:11:03 PM','','2024-05-29 21:11:03.310000');
/*!40000 ALTER TABLE `admin_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_save_cache`
--

DROP TABLE IF EXISTS `auto_save_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_save_cache` (
  `auto_save_cache_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `object_id` varchar(32) DEFAULT NULL,
  `serialized_object` longblob DEFAULT NULL,
  `user_id` varchar(25) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`auto_save_cache_id`),
  KEY `idx_class_user_version` (`class_name`,`user_id`,`version`),
  KEY `idx_modified_timestamp` (`modified_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_save_cache`
--

LOCK TABLES `auto_save_cache` WRITE;
/*!40000 ALTER TABLE `auto_save_cache` DISABLE KEYS */;
INSERT INTO `auto_save_cache` VALUES (8,'ClientSystemConfig','2024-04-29 22:02:23.028000','2024-04-29 22:02:23.028000','live','H-684VL����%�]7�t�x����$��O�}� +��i`��>�Us�\'�s�j`��6�&Ra��KX	�E�lW�@�_���|��P�\0�L�����L5ҫ<^���m9������Ҏđ�)�8BU/��N{SQh���Y8.�,c��B~��pW���˫^��\'}vB|���68%���`sF�4OV��5np�-L�c�\'q#hvN?�I[%[*	�O���*s��r��3�q�d�J�6�ɶ���p\Zg�����+�J�kS1zU�\\H_\'�z��N`ia }\r\n�)��P�N��ٲ���a�b�@���fR#�Y&a�a��&�ݱ����u2��q`Di\0VZ2N�\n\\��H$��&�j�b��ً����?��q��\r���|�h%E*N{�_��䜌���zG��ԛ��\0�\Z_K��ˎ�ڍ��n����)T\'�C�ŋ�ո�\\c�|�r���H��i:{z���Dpn�V\\?��rj�$�����k���O��vPl��\"��pvL��\"-��R��3���@V\rMg�$�1�\n(G�\"z�c�:l��zIo�Ϳ%}fut��p2��I!��T_��<�1�H�p	�r]�\0m�`2�go%������1f�ޣA-��f4<��6�`�9c��\\Z�`}�\'+���u���d�;[�C6��&�O`\'�\'\0uD��� ����49S�m׾�3s��`����-���ϐ��K\'�+��,��g)���|h�B�V�jL:W/��hV�U�>H*a�J~\'�\\�K��<��X,]�+��ǐ2\n�З�2g��+�>uAFx�Qt�6��u��<sp��!��w\0�[��%�畞>˫���FFx�Ÿ#��xR��T��g�vLT�M��Su�r3-����0�\0Lb~�+�Y@�����!��эz��(�n\Z�>3�oZ-0ƶ�5��$=�H��	��&�l���ޏn��lm��Ec9:T�ts�/\Z��VaKcIcuCל}��1/?2��X}s��]�	\r�F��+���C�K#v4�Eb	>�Z��o�����Ơ];{Q\"K?����օ8μ���4(\0�H�W�>�c³<������	[,\\�\")��Ҷ�����V����?�iĜ��/%��q�%w��kx�h����=����i&t�\\v��;C���nH����e���Y�M{�����BO� �Uζ�K[��{2��lm����J���s�Ȩ�J�4)ǦL�2�>�9DW�w�y�$����=BT:�r�~\\Ex����]�����;�*Κ�=1�T�1��ep:/=�)���\n�9��=ר��:O��r\r�wA}�]�I�nLɲ��|r�����c���Pl��$?v��í�;V@�R���9�J��BFTN,��׻l��)�\"�F�,��TM��#��r�rR�_�OxH���L��V�^T�?�cK��t��,�-3#b�s!^���7坞�dc��@�b���M�Q�1o|��v�L�[�V���$��6�n��Ε���\Z_���6y��i���ޔ���Е�m ��݅��Ā�7h2D���^���Z+I���-�@0�ɰa~�v.n�H�tAF�x9W7V\"T��4�a0�KK�#��/��bP9x. �t#L������(J[��~^�	TWEv߁��;�V ��^�B��5�Ia��ȻsI��I\0�ٯ�Y�����s/xMj���;��+�O��۝�2&|03ꃨ\"�M�w��o:^\Z�T�^�]h�b��?��%�l�T�','admin',30);
/*!40000 ALTER TABLE `auto_save_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blob_storage`
--

DROP TABLE IF EXISTS `blob_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blob_storage` (
  `blob_id` varchar(99) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `blob_data` longblob DEFAULT NULL,
  PRIMARY KEY (`blob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blob_storage`
--

LOCK TABLES `blob_storage` WRITE;
/*!40000 ALTER TABLE `blob_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `blob_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branding`
--

DROP TABLE IF EXISTS `branding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branding` (
  `branding_id` varchar(14) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `logo` longblob DEFAULT NULL,
  `css` longblob DEFAULT NULL,
  PRIMARY KEY (`branding_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branding`
--

LOCK TABLES `branding` WRITE;
/*!40000 ALTER TABLE `branding` DISABLE KEYS */;
INSERT INTO `branding` VALUES ('customBranding','admin','2023-03-29 17:45:57.698000','admin','2023-03-29 17:45:57.698000',0,'�d��b��d�A��pѨx�y��3$�o\n�Z�ǻ','�A�\r��͹���C娧�$$����kN\nM����p� \0S�v�ݣL���0-�t�T�l��M	�V5���j��2�\'xLָ��`�M�U�A9`�����z _�^����;�)S�\\�i�,��jh��ϙp(��D�M�����Rh�y�Ol	���p��c��\n��(�MRH+{��Ɇ��F4\"�h�ʌ9n ��V���w_�������I�\Z��0��>�Y_c�H=U�rY�Q[n���!t�8��J�R\Z�v:!���J�\"��l�.߷BI�MZ���d�5�f�C��o�b~��O��D���Ȥ����3fA|O');
/*!40000 ALTER TABLE `branding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `channel_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `ack_script` longblob DEFAULT NULL,
  `ack_script_encrypted` longblob DEFAULT NULL,
  `allow_multiple_connections` bit(1) DEFAULT NULL,
  `archive_custom_parameters` longblob DEFAULT NULL,
  `archive_customize` bit(1) DEFAULT NULL,
  `archive_password` tinyblob DEFAULT NULL,
  `archive_password_changed` bit(1) DEFAULT NULL,
  `archivePath` varchar(255) DEFAULT NULL,
  `archive_username` tinyblob DEFAULT NULL,
  `authentication_script` longblob DEFAULT NULL,
  `authentication_source` int(11) DEFAULT NULL,
  `auto_addendum` bit(1) DEFAULT NULL,
  `binary_bitmaps` bit(1) DEFAULT NULL,
  `block_footer` varchar(255) DEFAULT NULL,
  `block_header` varchar(255) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `component_char` varchar(1) DEFAULT NULL,
  `create_archive_subfolders` bit(1) DEFAULT NULL,
  `cron_string` varchar(1024) DEFAULT NULL,
  `custom_script_encrypted` longblob DEFAULT NULL,
  `db_use_parameterized_query` bit(1) DEFAULT NULL,
  `delimiter_method` int(11) DEFAULT NULL,
  `dicom_ae_title` varchar(16) DEFAULT NULL,
  `dicom_allowed_policy` int(11) DEFAULT NULL,
  `dicom_connect_timeout` int(11) DEFAULT NULL,
  `dicom_idle_timeout` int(11) DEFAULT NULL,
  `dicom_inbound_association_limit` int(11) DEFAULT NULL,
  `dicom_max_pdu_size` int(11) DEFAULT NULL,
  `dicom_on_request_script_encrypted` longblob DEFAULT NULL,
  `dicom_presentation_contexts_csv` longblob DEFAULT NULL,
  `dicom_use_tls` bit(1) DEFAULT NULL,
  `discard_bytes_log_level` varchar(255) DEFAULT NULL,
  `element_char` varchar(1) DEFAULT NULL,
  `enable_error_handler_script` bit(1) DEFAULT NULL,
  `enable_preprocess_script` bit(1) DEFAULT NULL,
  `message_encoding` varchar(255) DEFAULT NULL,
  `error_handler_script_encrypted` longblob DEFAULT NULL,
  `escape_char` varchar(1) DEFAULT NULL,
  `etx_byte` int(11) DEFAULT NULL,
  `execution` int(11) DEFAULT NULL,
  `extract_first_content_as_message` bit(1) DEFAULT NULL,
  `field_char` varchar(1) DEFAULT NULL,
  `field_config` longblob DEFAULT NULL,
  `file_delay` int(11) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `force_secondary_bitmap` bit(1) DEFAULT NULL,
  `ftp_binary` bit(1) DEFAULT NULL,
  `ftp_custom_parameters` longblob DEFAULT NULL,
  `ftp_customize` bit(1) DEFAULT NULL,
  `ftp_disconnect` bit(1) DEFAULT NULL,
  `ftp_encryption` int(11) DEFAULT NULL,
  `ftp_passive` bit(1) DEFAULT NULL,
  `ftp_protocol` int(11) DEFAULT NULL,
  `ftp_stepwise` bit(1) DEFAULT NULL,
  `group_by` int(11) DEFAULT NULL,
  `group_count_index` int(11) DEFAULT NULL,
  `header_row` bit(1) DEFAULT NULL,
  `host_name` tinyblob DEFAULT NULL,
  `ignore_empty` bit(1) DEFAULT NULL,
  `initialize_empty_message` bit(1) DEFAULT NULL,
  `iso_header_length` int(11) DEFAULT NULL,
  `length_bytes` int(11) DEFAULT NULL,
  `login_page` longblob DEFAULT NULL,
  `message_source` varchar(10) DEFAULT NULL,
  `message_source_left` int(11) DEFAULT NULL,
  `message_source_top` int(11) DEFAULT NULL,
  `message_type` varchar(10) DEFAULT NULL,
  `message_type_description` longblob DEFAULT NULL,
  `non_persistent_connections` bit(1) DEFAULT NULL,
  `packed` bit(1) DEFAULT NULL,
  `password` tinyblob DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `port2` int(11) DEFAULT NULL,
  `preprocess_all_messages` bit(1) DEFAULT NULL,
  `preprocess_script_encrypted` longblob DEFAULT NULL,
  `query_statement` longblob DEFAULT NULL,
  `query_statement_encrypted` longblob DEFAULT NULL,
  `quote_char` varchar(1) DEFAULT NULL,
  `quote_values` bit(1) DEFAULT NULL,
  `receive_from` tinyblob DEFAULT NULL,
  `repeat_char` varchar(1) DEFAULT NULL,
  `requires_user_authentication` bit(1) DEFAULT NULL,
  `response_by` int(11) DEFAULT NULL,
  `response_timeout` int(11) DEFAULT NULL,
  `response_timeout_script` longblob DEFAULT NULL,
  `response_timeout_script_encrypted` longblob DEFAULT NULL,
  `response_type` int(11) DEFAULT NULL,
  `scanInterval` int(11) DEFAULT NULL,
  `script2` longblob DEFAULT NULL,
  `secure_http` bit(1) DEFAULT NULL,
  `segment_delimiter` int(11) DEFAULT NULL,
  `separator_char` varchar(1) DEFAULT NULL,
  `separator_method` int(11) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `session_timeout` int(11) DEFAULT NULL,
  `single_byte` bit(1) DEFAULT NULL,
  `socket_type` int(11) DEFAULT NULL,
  `sub_component_char` varchar(1) DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_database` bit(1) DEFAULT NULL,
  `update_db_use_parameterized_query` bit(1) DEFAULT NULL,
  `update_statement` longblob DEFAULT NULL,
  `update_statement_encrypted` longblob DEFAULT NULL,
  `use_binary` bit(1) DEFAULT NULL,
  `use_client_auth` bit(1) DEFAULT NULL,
  `use_message_broker` bit(1) DEFAULT NULL,
  `use_mutex_in_ha` bit(1) DEFAULT NULL,
  `use_read_only_connection` bit(1) DEFAULT NULL,
  `username` tinyblob DEFAULT NULL,
  `alert_status_is_stopped` bit(1) DEFAULT NULL,
  `alert_interval` int(11) DEFAULT NULL,
  `alert_on_first_error` bit(1) DEFAULT NULL,
  `alert_recipients_email_addresses` varchar(512) DEFAULT NULL,
  `alert_recipients_type` int(11) DEFAULT NULL,
  `concurrent_processors` int(11) DEFAULT NULL,
  `days_to_retain_errors` int(11) DEFAULT NULL,
  `days_to_retain` int(11) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `errors_alert_interval` int(11) DEFAULT NULL,
  `errors_until_shutdown` int(11) DEFAULT NULL,
  `inactivity_alert_rules` longblob DEFAULT NULL,
  `inactivity_restart` bit(1) DEFAULT NULL,
  `inbound_critical` int(11) DEFAULT NULL,
  `inbound_warning` int(11) DEFAULT NULL,
  `keep_running` bit(1) DEFAULT NULL,
  `log_level` int(11) DEFAULT NULL,
  `message_column` varchar(1024) DEFAULT NULL,
  `message_errors_until_shutdown` int(11) DEFAULT NULL,
  `message_queue_column` varchar(1024) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `outbound_critical` int(11) DEFAULT NULL,
  `outbound_warning` int(11) DEFAULT NULL,
  `override_Errors_Alert_Interval` bit(1) DEFAULT NULL,
  `override_message_errors_until_shutdown` bit(1) DEFAULT NULL,
  `override_pause_after_error` bit(1) DEFAULT NULL,
  `override_receive_errors_until_shutdown` bit(1) DEFAULT NULL,
  `override_send_error_limit` bit(1) DEFAULT NULL,
  `override_send_errors_until_shutdown` bit(1) DEFAULT NULL,
  `pause_after_error` int(11) DEFAULT NULL,
  `pause_before_restart` int(11) DEFAULT NULL,
  `permanently_disabled` bit(1) DEFAULT NULL,
  `persist_message_cache` bit(1) DEFAULT NULL,
  `persistence_level` int(11) DEFAULT NULL,
  `purge_message_blobs` bit(1) DEFAULT NULL,
  `purge_message_queue_blobs` bit(1) DEFAULT NULL,
  `purge_message_response_sent` bit(1) DEFAULT NULL,
  `purge_message_responses_received` bit(1) DEFAULT NULL,
  `send_error_limit` int(11) DEFAULT NULL,
  `send_errors_until_shutdown` int(11) DEFAULT NULL,
  `sequential` bit(1) DEFAULT NULL,
  `start_priority` int(11) DEFAULT NULL,
  `require_vtd_to_start` bit(1) DEFAULT NULL,
  `wait_before_first_channel_status_alert` int(11) DEFAULT NULL,
  `save_notes` longblob DEFAULT NULL,
  `skip_compression` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `black_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `channel_queue_id` varchar(255) DEFAULT NULL,
  `channel_queue_scope` int(11) DEFAULT NULL,
  `dicom_storage_path` varchar(255) DEFAULT NULL,
  `enable_pixel_removal` bit(1) DEFAULT NULL,
  `enable_resume_download_option` bit(1) DEFAULT NULL,
  `group_by_node_path` varchar(255) DEFAULT NULL,
  `http_always_base64_encode_content` bit(1) DEFAULT NULL,
  `http_lowercase_headers` bit(1) DEFAULT NULL,
  `log_rejections` bit(1) DEFAULT NULL,
  `manage_pool` bit(1) DEFAULT NULL,
  `max_pool_size` int(11) DEFAULT NULL,
  `min_pool_size` int(11) DEFAULT NULL,
  `ndjson` bit(1) DEFAULT NULL,
  `stream_path` varchar(255) DEFAULT NULL,
  `use_forward_request_customizer` bit(1) DEFAULT NULL,
  `use_ip_filtering` bit(1) DEFAULT NULL,
  `white_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `version_info` longblob DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`channel_id`),
  UNIQUE KEY `UKmkyw1k5h9f5j1ceii9ff58c0x` (`zone_id`,`name`),
  KEY `idx_channel_db_connection_id` (`db_connection_id`),
  KEY `idx_channel_ssl_certificate_id` (`ssl_certificate_id`),
  KEY `idx_channel_reference_id` (`reference_id`),
  KEY `FKa6w5ni5lc9ervnvwf3tnx5k4o` (`package_id`),
  KEY `FK9lrsuik7yhjjaf2c4w48x1a9n` (`ssl_key_id`),
  KEY `FKer7ogv80npyxlsdjbhh1tr9re` (`variable_id`),
  CONSTRAINT `FK9lrsuik7yhjjaf2c4w48x1a9n` FOREIGN KEY (`ssl_key_id`) REFERENCES `ssl_key` (`ssl_key_id`),
  CONSTRAINT `FKa6w5ni5lc9ervnvwf3tnx5k4o` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `FKer7ogv80npyxlsdjbhh1tr9re` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`),
  CONSTRAINT `FKfcpcq4c5en2mq7145poj95u7r` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`),
  CONSTRAINT `FKh1knigmdj5mrpmc3s70g1xdwb` FOREIGN KEY (`db_connection_id`) REFERENCES `db_connection` (`db_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES ('8a0380938e682ec5018eee2e44110006','admin','2024-04-17 22:29:53.298000','admin','2024-04-17 22:29:53.298000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','2.5 Sample Channel 1',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','','\0','','\0',NULL,'4028cb0039ee5a2c0139ffd5d2fc009b','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e45430016','admin','2024-04-17 22:29:53.603000','admin','2024-04-17 22:29:53.603000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\qie_Cache.hb','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',2,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','2.6/2.7 Channel & Message Cache Variables',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b559ad351000e','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e45f2002b','admin','2024-04-17 22:29:53.779000','admin','2024-04-17 22:29:53.779000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7','Test DB Connection','\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','3.1 Sample DB Query',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014b37af80044','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e466d0033','admin','2024-04-17 22:29:53.901000','admin','2024-04-17 22:48:16.793000',2,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','3.3 Sample ADT',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002dd','','\0',NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e475b005e','admin','2024-04-17 22:29:54.139000','admin','2024-04-17 22:29:54.139000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','ISO-8859-1',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*maps*.qry','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'txt',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',NULL,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,NULL,-1,NULL,'4.2 Google Maps Example',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae180663a188bf1013a19a71a7a0001','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e47c6006d','admin','2024-04-17 22:29:54.246000','admin','2024-04-17 22:29:54.246000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\IN\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','4.3 Temperature Example',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'4028cb0039d6564f0139eab3a47e0087','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e48110078','admin','2024-04-17 22:29:54.321000','admin','2024-04-17 22:29:54.321000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','5.2 Variables Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d27283011f','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e487300a2','admin','2024-04-17 22:29:54.419000','admin','2024-04-17 22:29:54.419000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','5.3 StringUtils',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a3f4e9c6f7c014e9c87e8990000','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e48af00a9','admin','2024-04-17 22:29:54.479000','admin','2024-04-17 22:29:54.479000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',2,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',0,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','5.4 Sample RegEx',NULL,NULL,'','','','','','',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d78416018b','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e48ec00b0','admin','2024-04-17 22:29:54.540000','admin','2024-04-17 22:29:54.540000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','6.1 HPath Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1e2be85c000f','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e493300ba','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','6.2 Split Message Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1eb15710001c','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e498200c5','admin','2024-04-17 22:29:54.690000','admin','2024-04-17 22:29:54.690000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.xml','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'xml',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',NULL,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,NULL,-1,NULL,'7.1 XPath Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','','\0','','\0',NULL,'8ae180383a1d1e5f013a1edd6aae0028','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e49d200cf','admin','2024-04-17 22:29:54.770000','admin','2024-04-17 22:29:54.770000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/','\0','\0',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'json',NULL,'\0','\0',NULL,'\0',NULL,NULL,'','�+���)�*����Y�2 ��CA_e!3K���	�a��1F�*f;{W׃�Gj�hOmP-��@��������܆_\n)�Ct���~p\\�4&��	�y�j��������\0-��P	۵���7�!F�������md��H�Ԣ�\r����9\Z��x�s{�ig�`�ڲכI�c�����D��*��lh>���&���\rˎ1�ߍ��Bt�_�r�L����I���y�_ꦈ1qnV1![ō�v��~*!i���8��r�ڹ$�͸^j���l���jB<�i ���Lx��1�f\"H�p�*Ƶ,@���u�_�U_^/�e���S�G�@T{K��S��.��נ�k��(l���	/�Ya^',NULL,NULL,NULL,'',NULL,NULL,'\0',NULL,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,NULL,-1,NULL,'8.1 JSON Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','','\0','','\0',NULL,'4028a30f6bd7dee1016bd89d10bf0000','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e4a2a00d8','admin','2024-04-17 22:29:54.858000','admin','2024-04-17 22:29:54.858000',0,NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0',NULL,'\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,'|�ba����0�g�hIK$w��e��-����R�$�n-�#�W�6����a1h�t2�(�^X����EG��\"�6\Z`�;:\r���++[d/�\0`�y�ׯ(�O�$��&��S��','\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.l1e','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0',NULL,'\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',2,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,'Send Final Message for verification',NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','Level 1 Final Exam',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b5ba96ecf004c','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_audit`
--

DROP TABLE IF EXISTS `channel_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_audit` (
  `channel_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `ack_script` longblob DEFAULT NULL,
  `ack_script_encrypted` longblob DEFAULT NULL,
  `allow_multiple_connections` bit(1) DEFAULT NULL,
  `archive_custom_parameters` longblob DEFAULT NULL,
  `archive_customize` bit(1) DEFAULT NULL,
  `archive_password_changed` bit(1) DEFAULT NULL,
  `archivePath` varchar(255) DEFAULT NULL,
  `archive_username` tinyblob DEFAULT NULL,
  `authentication_script` longblob DEFAULT NULL,
  `authentication_source` int(11) DEFAULT NULL,
  `auto_addendum` bit(1) DEFAULT NULL,
  `binary_bitmaps` bit(1) DEFAULT NULL,
  `block_footer` varchar(255) DEFAULT NULL,
  `block_header` varchar(255) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `component_char` varchar(1) DEFAULT NULL,
  `create_archive_subfolders` bit(1) DEFAULT NULL,
  `cron_string` varchar(1024) DEFAULT NULL,
  `custom_script_encrypted` longblob DEFAULT NULL,
  `db_use_parameterized_query` bit(1) DEFAULT NULL,
  `delimiter_method` int(11) DEFAULT NULL,
  `dicom_ae_title` varchar(16) DEFAULT NULL,
  `dicom_allowed_policy` int(11) DEFAULT NULL,
  `dicom_connect_timeout` int(11) DEFAULT NULL,
  `dicom_idle_timeout` int(11) DEFAULT NULL,
  `dicom_inbound_association_limit` int(11) DEFAULT NULL,
  `dicom_max_pdu_size` int(11) DEFAULT NULL,
  `dicom_on_request_script_encrypted` longblob DEFAULT NULL,
  `dicom_presentation_contexts_csv` longblob DEFAULT NULL,
  `dicom_use_tls` bit(1) DEFAULT NULL,
  `discard_bytes_log_level` varchar(255) DEFAULT NULL,
  `element_char` varchar(1) DEFAULT NULL,
  `enable_error_handler_script` bit(1) DEFAULT NULL,
  `enable_preprocess_script` bit(1) DEFAULT NULL,
  `message_encoding` varchar(255) DEFAULT NULL,
  `error_handler_script_encrypted` longblob DEFAULT NULL,
  `escape_char` varchar(1) DEFAULT NULL,
  `etx_byte` int(11) DEFAULT NULL,
  `execution` int(11) DEFAULT NULL,
  `extract_first_content_as_message` bit(1) DEFAULT NULL,
  `field_char` varchar(1) DEFAULT NULL,
  `field_config` longblob DEFAULT NULL,
  `file_delay` int(11) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `force_secondary_bitmap` bit(1) DEFAULT NULL,
  `ftp_binary` bit(1) DEFAULT NULL,
  `ftp_custom_parameters` longblob DEFAULT NULL,
  `ftp_customize` bit(1) DEFAULT NULL,
  `ftp_disconnect` bit(1) DEFAULT NULL,
  `ftp_encryption` int(11) DEFAULT NULL,
  `ftp_passive` bit(1) DEFAULT NULL,
  `ftp_protocol` int(11) DEFAULT NULL,
  `ftp_stepwise` bit(1) DEFAULT NULL,
  `group_by` int(11) DEFAULT NULL,
  `group_count_index` int(11) DEFAULT NULL,
  `header_row` bit(1) DEFAULT NULL,
  `host_name` tinyblob DEFAULT NULL,
  `ignore_empty` bit(1) DEFAULT NULL,
  `initialize_empty_message` bit(1) DEFAULT NULL,
  `iso_header_length` int(11) DEFAULT NULL,
  `length_bytes` int(11) DEFAULT NULL,
  `login_page` longblob DEFAULT NULL,
  `message_source` varchar(10) DEFAULT NULL,
  `message_source_left` int(11) DEFAULT NULL,
  `message_source_top` int(11) DEFAULT NULL,
  `message_type` varchar(10) DEFAULT NULL,
  `message_type_description` longblob DEFAULT NULL,
  `non_persistent_connections` bit(1) DEFAULT NULL,
  `packed` bit(1) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `port2` int(11) DEFAULT NULL,
  `preprocess_all_messages` bit(1) DEFAULT NULL,
  `preprocess_script_encrypted` longblob DEFAULT NULL,
  `query_statement` longblob DEFAULT NULL,
  `query_statement_encrypted` longblob DEFAULT NULL,
  `quote_char` varchar(1) DEFAULT NULL,
  `quote_values` bit(1) DEFAULT NULL,
  `receive_from` tinyblob DEFAULT NULL,
  `repeat_char` varchar(1) DEFAULT NULL,
  `requires_user_authentication` bit(1) DEFAULT NULL,
  `response_by` int(11) DEFAULT NULL,
  `response_timeout` int(11) DEFAULT NULL,
  `response_timeout_script` longblob DEFAULT NULL,
  `response_timeout_script_encrypted` longblob DEFAULT NULL,
  `response_type` int(11) DEFAULT NULL,
  `scanInterval` int(11) DEFAULT NULL,
  `script2` longblob DEFAULT NULL,
  `secure_http` bit(1) DEFAULT NULL,
  `segment_delimiter` int(11) DEFAULT NULL,
  `separator_char` varchar(1) DEFAULT NULL,
  `separator_method` int(11) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `session_timeout` int(11) DEFAULT NULL,
  `single_byte` bit(1) DEFAULT NULL,
  `socket_type` int(11) DEFAULT NULL,
  `sub_component_char` varchar(1) DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_database` bit(1) DEFAULT NULL,
  `update_db_use_parameterized_query` bit(1) DEFAULT NULL,
  `update_statement` longblob DEFAULT NULL,
  `update_statement_encrypted` longblob DEFAULT NULL,
  `use_binary` bit(1) DEFAULT NULL,
  `use_client_auth` bit(1) DEFAULT NULL,
  `use_message_broker` bit(1) DEFAULT NULL,
  `use_mutex_in_ha` bit(1) DEFAULT NULL,
  `use_read_only_connection` bit(1) DEFAULT NULL,
  `username` tinyblob DEFAULT NULL,
  `alert_status_is_stopped` bit(1) DEFAULT NULL,
  `alert_interval` int(11) DEFAULT NULL,
  `alert_on_first_error` bit(1) DEFAULT NULL,
  `alert_recipients_email_addresses` varchar(512) DEFAULT NULL,
  `alert_recipients_type` int(11) DEFAULT NULL,
  `concurrent_processors` int(11) DEFAULT NULL,
  `days_to_retain_errors` int(11) DEFAULT NULL,
  `days_to_retain` int(11) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `errors_alert_interval` int(11) DEFAULT NULL,
  `errors_until_shutdown` int(11) DEFAULT NULL,
  `inactivity_alert_rules` longblob DEFAULT NULL,
  `inactivity_restart` bit(1) DEFAULT NULL,
  `inbound_critical` int(11) DEFAULT NULL,
  `inbound_warning` int(11) DEFAULT NULL,
  `keep_running` bit(1) DEFAULT NULL,
  `log_level` int(11) DEFAULT NULL,
  `message_column` varchar(1024) DEFAULT NULL,
  `message_errors_until_shutdown` int(11) DEFAULT NULL,
  `message_queue_column` varchar(1024) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `outbound_critical` int(11) DEFAULT NULL,
  `outbound_warning` int(11) DEFAULT NULL,
  `override_Errors_Alert_Interval` bit(1) DEFAULT NULL,
  `override_message_errors_until_shutdown` bit(1) DEFAULT NULL,
  `override_pause_after_error` bit(1) DEFAULT NULL,
  `override_receive_errors_until_shutdown` bit(1) DEFAULT NULL,
  `override_send_error_limit` bit(1) DEFAULT NULL,
  `override_send_errors_until_shutdown` bit(1) DEFAULT NULL,
  `pause_after_error` int(11) DEFAULT NULL,
  `pause_before_restart` int(11) DEFAULT NULL,
  `permanently_disabled` bit(1) DEFAULT NULL,
  `persist_message_cache` bit(1) DEFAULT NULL,
  `persistence_level` int(11) DEFAULT NULL,
  `purge_message_blobs` bit(1) DEFAULT NULL,
  `purge_message_queue_blobs` bit(1) DEFAULT NULL,
  `purge_message_response_sent` bit(1) DEFAULT NULL,
  `purge_message_responses_received` bit(1) DEFAULT NULL,
  `send_error_limit` int(11) DEFAULT NULL,
  `send_errors_until_shutdown` int(11) DEFAULT NULL,
  `sequential` bit(1) DEFAULT NULL,
  `start_priority` int(11) DEFAULT NULL,
  `require_vtd_to_start` bit(1) DEFAULT NULL,
  `wait_before_first_channel_status_alert` int(11) DEFAULT NULL,
  `save_notes` longblob DEFAULT NULL,
  `skip_compression` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `black_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `channel_queue_id` varchar(255) DEFAULT NULL,
  `channel_queue_scope` int(11) DEFAULT NULL,
  `dicom_storage_path` varchar(255) DEFAULT NULL,
  `enable_pixel_removal` bit(1) DEFAULT NULL,
  `enable_resume_download_option` bit(1) DEFAULT NULL,
  `group_by_node_path` varchar(255) DEFAULT NULL,
  `http_always_base64_encode_content` bit(1) DEFAULT NULL,
  `http_lowercase_headers` bit(1) DEFAULT NULL,
  `log_rejections` bit(1) DEFAULT NULL,
  `manage_pool` bit(1) DEFAULT NULL,
  `max_pool_size` int(11) DEFAULT NULL,
  `min_pool_size` int(11) DEFAULT NULL,
  `ndjson` bit(1) DEFAULT NULL,
  `stream_path` varchar(255) DEFAULT NULL,
  `use_forward_request_customizer` bit(1) DEFAULT NULL,
  `use_ip_filtering` bit(1) DEFAULT NULL,
  `white_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `version_info` longblob DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`channel_id`,`revision`),
  KEY `FK5kerkwsv7kiutwppngv6jopwi` (`revision`),
  CONSTRAINT `FK5kerkwsv7kiutwppngv6jopwi` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_audit`
--

LOCK TABLES `channel_audit` WRITE;
/*!40000 ALTER TABLE `channel_audit` DISABLE KEYS */;
INSERT INTO `channel_audit` VALUES ('8a0380938e682ec5018eee2e44110006',37,0,'admin','2024-04-17 22:29:53.298000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','2.5 Sample Channel 1',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','','\0','','\0',NULL,'4028cb0039ee5a2c0139ffd5d2fc009b','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e45430016',37,0,'admin','2024-04-17 22:29:53.603000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\qie_Cache.hb','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',2,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','2.6/2.7 Channel & Message Cache Variables',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b559ad351000e','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e45f2002b',37,0,'admin','2024-04-17 22:29:53.779000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7','Test DB Connection','\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','3.1 Sample DB Query',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014b37af80044','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e466d0033',37,0,'admin','2024-04-17 22:29:53.901000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','3.3 Sample ADT',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002dd','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e466d0033',39,1,'admin','2024-04-17 22:48:16.793000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','3.3 Sample ADT',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002dd','','\0',NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e475b005e',37,0,'admin','2024-04-17 22:29:54.139000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','ISO-8859-1',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*maps*.qry','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'txt',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',NULL,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,NULL,-1,NULL,'4.2 Google Maps Example',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae180663a188bf1013a19a71a7a0001','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e47c6006d',37,0,'admin','2024-04-17 22:29:54.246000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\IN\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','4.3 Temperature Example',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'4028cb0039d6564f0139eab3a47e0087','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e48110078',37,0,'admin','2024-04-17 22:29:54.321000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','5.2 Variables Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d27283011f','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e487300a2',37,0,'admin','2024-04-17 22:29:54.419000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','5.3 StringUtils',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a3f4e9c6f7c014e9c87e8990000','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e48af00a9',37,0,'admin','2024-04-17 22:29:54.479000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hd','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',2,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',0,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','5.4 Sample RegEx',NULL,NULL,'','','','','','',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d78416018b','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e48ec00b0',37,0,'admin','2024-04-17 22:29:54.540000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','6.1 HPath Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1e2be85c000f','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e493300ba',37,0,'admin','2024-04-17 22:29:54.611000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.hl7','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',1,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','6.2 Split Message Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1eb15710001c','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e498200c5',37,0,'admin','2024-04-17 22:29:54.690000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'C:\\HL7\\In\\*.xml','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'xml',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',NULL,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,NULL,-1,NULL,'7.1 XPath Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','','\0','','\0',NULL,'8ae180383a1d1e5f013a1edd6aae0028','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e49d200cf',37,0,'admin','2024-04-17 22:29:54.770000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,'\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/','\0','\0',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'json',NULL,'\0','\0','\0',NULL,NULL,'','�+���)�*����Y�2 ��CA_e!3K���	�a��1F�*f;{W׃�Gj�hOmP-��@��������܆_\n)�Ct���~p\\�4&��	�y�j��������\0-��P	۵���7�!F�������md��H�Ԣ�\r����9\Z��x�s{�ig�`�ڲכI�c�����D��*��lh>���&���\rˎ1�ߍ��Bt�_�r�L����I���y�_ꦈ1qnV1![ō�v��~*!i���8��r�ڹ$�͸^j���l���jB<�i ���Lx��1�f\"H�p�*Ƶ,@���u�_�U_^/�e���S�G�@T{K��S��.��נ�k��(l���	/�Ya^',NULL,NULL,NULL,'',NULL,NULL,'\0',NULL,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,NULL,NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,NULL,-1,NULL,'8.1 JSON Sample',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'\0',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','','\0','','\0',NULL,'4028a30f6bd7dee1016bd89d10bf0000','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e4a2a00d8',37,0,'admin','2024-04-17 22:29:54.858000',NULL,'�m>6xj��;Əzξe�<ޠ�ߒ��L�8�s�&�e�Ŧ&���.�f��\Z�91�B��v��i��3�׽ ���z�\\�Ҁ�1�@l,��U�F�mS��N%���i�Oׁ�㷙��\"�X& �\"�\0c^�	���R�7	Ƹ���A���U_xJ=@(aNH�zy\\��Y��O�:V����b�l','\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,'\0',NULL,'|�ba����0�g�hIK$w��e��-����R�$�n-�#�W�6����a1h�t2�(�^X����EG��\"�6\Z`�;:\r���++[d/�\0`�y�ׯ(�O�$��&��S��','\0',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'\0','WARN',NULL,'\0','\0','UTF-8',NULL,NULL,NULL,0,'\0',NULL,NULL,NULL,'/home/arne/java/HL7/In/*.l1e','\0','',NULL,'\0','\0',NULL,'\0',NULL,'\0',4,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'file',15,15,'hl7',NULL,'\0','\0','\0',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'',NULL,NULL,'\0',2,NULL,NULL,'��bnR�F��΅�2�>��Y>%�K\'�j,� Mi\n�g0�\r��>�����ɒ���^D�b�F��gH��4����̫bu��\n2,��L��',NULL,500,NULL,'\0',NULL,NULL,1,'Send Final Message for verification',NULL,'\0',NULL,NULL,NULL,1,NULL,'\0','\0',NULL,NULL,'\0','\0','','','',NULL,'\0',NULL,'\0',NULL,0,NULL,NULL,NULL,NULL,'',10,-1,'1~never~never~1,2,3,4,5~800~1700','\0',NULL,NULL,'\0',20000,'{PID}',-1,'{m:PID}','Level 1 Final Exam',NULL,NULL,'\0','\0','\0','\0','\0','\0',5000,60,'\0','\0',1,'\0','\0','\0','\0',-1,-1,'',50,'\0',5,NULL,'\0','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b5ba96ecf004c','','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','',NULL,'\0','\0','\0','\0',NULL,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `channel_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_cache`
--

DROP TABLE IF EXISTS `channel_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_cache` (
  `cache_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `cache_key` varchar(255) NOT NULL,
  `cache_type` int(11) DEFAULT NULL,
  `cache_value` longblob DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `channel_id` varchar(255) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`cache_id`),
  KEY `idx_channel_cache_channel_id` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_cache`
--

LOCK TABLES `channel_cache` WRITE;
/*!40000 ALTER TABLE `channel_cache` DISABLE KEYS */;
INSERT INTO `channel_cache` VALUES (1,'admin','2024-04-17 22:29:53.704000','admin','2024-04-17 22:29:53.704000',0,'facilityId',1,'�g�y_Ƀ�z��-���',NULL,'8a0380938e682ec5018eee2e45430016','','','');
/*!40000 ALTER TABLE `channel_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_cache_audit`
--

DROP TABLE IF EXISTS `channel_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_cache_audit` (
  `cache_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `cache_key` varchar(255) DEFAULT NULL,
  `cache_type` int(11) DEFAULT NULL,
  `cache_value` longblob DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`cache_id`,`revision`),
  KEY `FKtbk5kj5viow5n274u0swjheok` (`revision`),
  KEY `idx_channel_cache_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKtbk5kj5viow5n274u0swjheok` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_cache_audit`
--

LOCK TABLES `channel_cache_audit` WRITE;
/*!40000 ALTER TABLE `channel_cache_audit` DISABLE KEYS */;
INSERT INTO `channel_cache_audit` VALUES (1,37,0,'admin','2024-04-17 22:29:53.704000','facilityId',1,'�g�y_Ƀ�z��-���',NULL,'8a0380938e682ec5018eee2e45430016','','','');
/*!40000 ALTER TABLE `channel_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_channel_dicom_connection_audit`
--

DROP TABLE IF EXISTS `channel_channel_dicom_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_channel_dicom_connection_audit` (
  `revision` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `channel_dicom_connection_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`channel_id`,`channel_dicom_connection_id`),
  CONSTRAINT `FKrrd65xqcx2cityt0avby878jg` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_channel_dicom_connection_audit`
--

LOCK TABLES `channel_channel_dicom_connection_audit` WRITE;
/*!40000 ALTER TABLE `channel_channel_dicom_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_channel_dicom_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_channel_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `channel_channel_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_channel_ssl_certificate_audit` (
  `revision` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `channel_ssl_certificate_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`channel_id`,`channel_ssl_certificate_id`),
  CONSTRAINT `FKr1urbtvedkwhqq47ogk7vj9c2` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_channel_ssl_certificate_audit`
--

LOCK TABLES `channel_channel_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `channel_channel_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_channel_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_dicom_connection`
--

DROP TABLE IF EXISTS `channel_dicom_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_dicom_connection` (
  `channel_dicom_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`channel_dicom_connection_id`),
  UNIQUE KEY `UK18pctonwdcfsad4be1wksjgur` (`channel_id`,`dicom_connection_id`),
  KEY `channel_dicom_connection_channel_id` (`channel_id`),
  KEY `channel_dicom_connection_connection_id` (`dicom_connection_id`),
  CONSTRAINT `FKlq0irxmldjp3s5744e20tm98w` FOREIGN KEY (`dicom_connection_id`) REFERENCES `dicom_connection` (`dicom_connection_id`),
  CONSTRAINT `FKn4uvjficfbps71ni3qv4waegi` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_dicom_connection`
--

LOCK TABLES `channel_dicom_connection` WRITE;
/*!40000 ALTER TABLE `channel_dicom_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_dicom_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_dicom_connection_audit`
--

DROP TABLE IF EXISTS `channel_dicom_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_dicom_connection_audit` (
  `channel_dicom_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`channel_dicom_connection_id`,`revision`),
  KEY `FKbuc08xeu2uh2gr37w9i0uhbc5` (`revision`),
  CONSTRAINT `FKbuc08xeu2uh2gr37w9i0uhbc5` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_dicom_connection_audit`
--

LOCK TABLES `channel_dicom_connection_audit` WRITE;
/*!40000 ALTER TABLE `channel_dicom_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_dicom_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_error_management_form_configuration_audit`
--

DROP TABLE IF EXISTS `channel_error_management_form_configuration_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_error_management_form_configuration_audit` (
  `revision` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `error_management_form_configuration_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`channel_id`,`error_management_form_configuration_id`),
  CONSTRAINT `FKnmv54l9exrxas9c6dkyrncpdo` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_error_management_form_configuration_audit`
--

LOCK TABLES `channel_error_management_form_configuration_audit` WRITE;
/*!40000 ALTER TABLE `channel_error_management_form_configuration_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_error_management_form_configuration_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_condition`
--

DROP TABLE IF EXISTS `channel_node_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_condition` (
  `condition_node_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `input_node` bit(1) DEFAULT NULL,
  `offset_left` int(11) DEFAULT NULL,
  `offset_top` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`condition_node_id`),
  KEY `idx_channel_node_condition_channel_id` (`channel_id`),
  KEY `idx_channel_node_condition_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FKn1poir2wrivi8co6m1jwsp7v5` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKrytahx8fpnnawi265hgs5i760` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_condition`
--

LOCK TABLES `channel_node_condition` WRITE;
/*!40000 ALTER TABLE `channel_node_condition` DISABLE KEYS */;
INSERT INTO `channel_node_condition` VALUES ('8a0380938e682ec5018eee2e44230007','admin','2024-04-17 22:29:53.318000','admin','2024-04-17 22:29:53.318000',0,2,'',141,15,'','\0','','\0','4028cb0039ee5a2c0139ffd5d2fc009c','8a0380938e682ec5018eee2e44110006','8a0380938e682ec5018eee2e44240008'),('8a0380938e682ec5018eee2e466f0034','admin','2024-04-17 22:29:53.903000','admin','2024-04-17 22:48:16.545000',1,2,'',141,15,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002de','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e466f0035'),('8a0380938e682ec5018eee2e46700039','admin','2024-04-17 22:29:53.905000','admin','2024-04-17 22:48:16.545000',1,4,'\0',141,91,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002e3','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e4670003a'),('8a0380938e682ec5018eee2e48120079','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,4,'\0',141,91,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d272830120','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e4812007a'),('8a0380938e682ec5018eee2e4812007e','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d272840125','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e4812007f');
/*!40000 ALTER TABLE `channel_node_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_condition_audit`
--

DROP TABLE IF EXISTS `channel_node_condition_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_condition_audit` (
  `condition_node_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `input_node` bit(1) DEFAULT NULL,
  `offset_left` int(11) DEFAULT NULL,
  `offset_top` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`condition_node_id`,`revision`),
  KEY `FKbvaclk5g6kd2a1d9rihxc8yil` (`revision`),
  KEY `idx_channel_node_condition_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKbvaclk5g6kd2a1d9rihxc8yil` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_condition_audit`
--

LOCK TABLES `channel_node_condition_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_condition_audit` DISABLE KEYS */;
INSERT INTO `channel_node_condition_audit` VALUES ('8a0380938e682ec5018eee2e44230007',37,0,'admin','2024-04-17 22:29:53.318000',2,'',141,15,'','\0','','\0','4028cb0039ee5a2c0139ffd5d2fc009c','8a0380938e682ec5018eee2e44110006','8a0380938e682ec5018eee2e44240008'),('8a0380938e682ec5018eee2e466f0034',37,0,'admin','2024-04-17 22:29:53.903000',2,'',141,15,'',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002de','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e466f0035'),('8a0380938e682ec5018eee2e466f0034',39,1,'admin','2024-04-17 22:48:16.545000',2,'',141,15,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002de','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e466f0035'),('8a0380938e682ec5018eee2e46700039',37,0,'admin','2024-04-17 22:29:53.905000',4,'\0',141,91,'',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002e3','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e4670003a'),('8a0380938e682ec5018eee2e46700039',39,1,'admin','2024-04-17 22:48:16.545000',4,'\0',141,91,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68002e3','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e4670003a'),('8a0380938e682ec5018eee2e48120079',37,0,'admin','2024-04-17 22:29:54.322000',4,'\0',141,91,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d272830120','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e4812007a'),('8a0380938e682ec5018eee2e4812007e',37,0,'admin','2024-04-17 22:29:54.322000',2,'',141,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d272840125','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e4812007f');
/*!40000 ALTER TABLE `channel_node_condition_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_condition_fail`
--

DROP TABLE IF EXISTS `channel_node_condition_fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_condition_fail` (
  `condition_fail_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `condition_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`condition_fail_id`),
  KEY `idx_channel_node_condition_fail_condition_node_id` (`condition_node_id`),
  CONSTRAINT `FKmd2c8o84werxnfi7jvfo7i3se` FOREIGN KEY (`condition_node_id`) REFERENCES `channel_node_condition` (`condition_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_condition_fail`
--

LOCK TABLES `channel_node_condition_fail` WRITE;
/*!40000 ALTER TABLE `channel_node_condition_fail` DISABLE KEYS */;
INSERT INTO `channel_node_condition_fail` VALUES ('8a0380938e682ec5018eee2e4426000a','admin','2024-04-17 22:29:53.318000','admin','2024-04-17 22:29:53.318000',0,5,'','8a0380938e682ec5018eee2e44230007'),('8a0380938e682ec5018eee2e46700037','admin','2024-04-17 22:29:53.904000','admin','2024-04-17 22:48:16.548000',1,4,'\0','8a0380938e682ec5018eee2e466f0034'),('8a0380938e682ec5018eee2e4671003c','admin','2024-04-17 22:29:53.905000','admin','2024-04-17 22:48:16.548000',1,6,'\0','8a0380938e682ec5018eee2e46700039'),('8a0380938e682ec5018eee2e4812007c','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,6,'','8a0380938e682ec5018eee2e48120079'),('8a0380938e682ec5018eee2e48120081','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,4,'','8a0380938e682ec5018eee2e4812007e');
/*!40000 ALTER TABLE `channel_node_condition_fail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_condition_fail_audit`
--

DROP TABLE IF EXISTS `channel_node_condition_fail_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_condition_fail_audit` (
  `condition_fail_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `condition_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`condition_fail_id`,`revision`),
  KEY `FKqa7u44pnfm9jcjywpmxb35dbm` (`revision`),
  KEY `idx_channel_node_condition_fail_audit_condition_node_id` (`condition_node_id`,`revision`),
  CONSTRAINT `FKqa7u44pnfm9jcjywpmxb35dbm` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_condition_fail_audit`
--

LOCK TABLES `channel_node_condition_fail_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_condition_fail_audit` DISABLE KEYS */;
INSERT INTO `channel_node_condition_fail_audit` VALUES ('8a0380938e682ec5018eee2e4426000a',37,0,'admin','2024-04-17 22:29:53.318000',5,'','8a0380938e682ec5018eee2e44230007'),('8a0380938e682ec5018eee2e46700037',37,0,'admin','2024-04-17 22:29:53.904000',4,'','8a0380938e682ec5018eee2e466f0034'),('8a0380938e682ec5018eee2e46700037',39,1,'admin','2024-04-17 22:48:16.548000',4,'\0','8a0380938e682ec5018eee2e466f0034'),('8a0380938e682ec5018eee2e4671003c',37,0,'admin','2024-04-17 22:29:53.905000',6,'','8a0380938e682ec5018eee2e46700039'),('8a0380938e682ec5018eee2e4671003c',39,1,'admin','2024-04-17 22:48:16.548000',6,'\0','8a0380938e682ec5018eee2e46700039'),('8a0380938e682ec5018eee2e4812007c',37,0,'admin','2024-04-17 22:29:54.322000',6,'','8a0380938e682ec5018eee2e48120079'),('8a0380938e682ec5018eee2e48120081',37,0,'admin','2024-04-17 22:29:54.322000',4,'','8a0380938e682ec5018eee2e4812007e');
/*!40000 ALTER TABLE `channel_node_condition_fail_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_condition_pass`
--

DROP TABLE IF EXISTS `channel_node_condition_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_condition_pass` (
  `condition_pass_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `condition_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`condition_pass_id`),
  KEY `idx_channel_node_condition_pass_condition_node_id` (`condition_node_id`),
  CONSTRAINT `FK192285ukja441qh212ywwl2uo` FOREIGN KEY (`condition_node_id`) REFERENCES `channel_node_condition` (`condition_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_condition_pass`
--

LOCK TABLES `channel_node_condition_pass` WRITE;
/*!40000 ALTER TABLE `channel_node_condition_pass` DISABLE KEYS */;
INSERT INTO `channel_node_condition_pass` VALUES ('8a0380938e682ec5018eee2e4426000b','admin','2024-04-17 22:29:53.318000','admin','2024-04-17 22:29:53.318000',0,3,'','8a0380938e682ec5018eee2e44230007'),('8a0380938e682ec5018eee2e46700038','admin','2024-04-17 22:29:53.904000','admin','2024-04-17 22:48:16.548000',1,3,'\0','8a0380938e682ec5018eee2e466f0034'),('8a0380938e682ec5018eee2e4671003d','admin','2024-04-17 22:29:53.906000','admin','2024-04-17 22:48:16.548000',1,5,'\0','8a0380938e682ec5018eee2e46700039'),('8a0380938e682ec5018eee2e4812007d','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,5,'','8a0380938e682ec5018eee2e48120079'),('8a0380938e682ec5018eee2e48120082','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,3,'','8a0380938e682ec5018eee2e4812007e');
/*!40000 ALTER TABLE `channel_node_condition_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_condition_pass_audit`
--

DROP TABLE IF EXISTS `channel_node_condition_pass_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_condition_pass_audit` (
  `condition_pass_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `condition_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`condition_pass_id`,`revision`),
  KEY `FK7df2ks8fsr26134aweag52uba` (`revision`),
  KEY `idx_channel_node_condition_pass_audit_condition_node_id` (`condition_node_id`,`revision`),
  CONSTRAINT `FK7df2ks8fsr26134aweag52uba` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_condition_pass_audit`
--

LOCK TABLES `channel_node_condition_pass_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_condition_pass_audit` DISABLE KEYS */;
INSERT INTO `channel_node_condition_pass_audit` VALUES ('8a0380938e682ec5018eee2e4426000b',37,0,'admin','2024-04-17 22:29:53.318000',3,'','8a0380938e682ec5018eee2e44230007'),('8a0380938e682ec5018eee2e46700038',37,0,'admin','2024-04-17 22:29:53.904000',3,'','8a0380938e682ec5018eee2e466f0034'),('8a0380938e682ec5018eee2e46700038',39,1,'admin','2024-04-17 22:48:16.548000',3,'\0','8a0380938e682ec5018eee2e466f0034'),('8a0380938e682ec5018eee2e4671003d',37,0,'admin','2024-04-17 22:29:53.906000',5,'','8a0380938e682ec5018eee2e46700039'),('8a0380938e682ec5018eee2e4671003d',39,1,'admin','2024-04-17 22:48:16.548000',5,'\0','8a0380938e682ec5018eee2e46700039'),('8a0380938e682ec5018eee2e4812007d',37,0,'admin','2024-04-17 22:29:54.322000',5,'','8a0380938e682ec5018eee2e48120079'),('8a0380938e682ec5018eee2e48120082',37,0,'admin','2024-04-17 22:29:54.322000',3,'','8a0380938e682ec5018eee2e4812007e');
/*!40000 ALTER TABLE `channel_node_condition_pass_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_destination`
--

DROP TABLE IF EXISTS `channel_node_destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_destination` (
  `destination_node_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `input_node` bit(1) DEFAULT NULL,
  `offset_left` int(11) DEFAULT NULL,
  `offset_top` int(11) DEFAULT NULL,
  `ack_script` longblob DEFAULT NULL,
  `ack_script_encrypted` longblob DEFAULT NULL,
  `ack_timeout` int(11) DEFAULT NULL,
  `alert_on_first_error` bit(1) DEFAULT NULL,
  `append` bit(1) DEFAULT NULL,
  `block_footer` varchar(255) DEFAULT NULL,
  `block_header` varchar(255) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `connection_timeout` int(11) DEFAULT NULL,
  `content_blob` longblob DEFAULT NULL,
  `create_sub_folders` bit(1) DEFAULT NULL,
  `db_use_parameterized_query` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `destination_endpoint_id` varchar(255) DEFAULT NULL,
  `errors_alert_interval` int(11) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `ftp_binary` bit(1) DEFAULT NULL,
  `ftp_custom_parameters` longblob DEFAULT NULL,
  `ftp_customize` bit(1) DEFAULT NULL,
  `ftp_disconnect` bit(1) DEFAULT NULL,
  `ftp_encryption` int(11) DEFAULT NULL,
  `ftp_passive` bit(1) DEFAULT NULL,
  `ftp_protocol` int(11) DEFAULT NULL,
  `ftp_stepwise` bit(1) DEFAULT NULL,
  `host_name` tinyblob DEFAULT NULL,
  `message_destination` varchar(10) DEFAULT NULL,
  `number_of_threads` int(11) DEFAULT NULL,
  `override_Errors_Alert_Interval` bit(1) DEFAULT NULL,
  `override_pause_after_error` bit(1) DEFAULT NULL,
  `override_send_error_limit` bit(1) DEFAULT NULL,
  `override_send_errors_until_shutdown` bit(1) DEFAULT NULL,
  `overwrite` bit(1) DEFAULT NULL,
  `password` tinyblob DEFAULT NULL,
  `pause_after_error` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `request_timeout` int(11) DEFAULT NULL,
  `retry_limit` int(11) DEFAULT NULL,
  `send_delay` bigint(20) DEFAULT NULL,
  `send_error_limit` int(11) DEFAULT NULL,
  `send_errors_until_shutdown` int(11) DEFAULT NULL,
  `send_interval` int(11) DEFAULT NULL,
  `send_to` tinyblob DEFAULT NULL,
  `socket_type` int(11) DEFAULT NULL,
  `stop_on_ack_error` bit(1) DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `update_statement_big` longblob DEFAULT NULL,
  `update_statement_big_encrypted` longblob DEFAULT NULL,
  `use_ack` bit(1) DEFAULT NULL,
  `use_client_auth` bit(1) DEFAULT NULL,
  `use_mtom` bit(1) DEFAULT NULL,
  `use_mutex_in_ha` bit(1) DEFAULT NULL,
  `username` tinyblob DEFAULT NULL,
  `ws_binding_name` varchar(255) DEFAULT NULL,
  `ws_content_type` varchar(255) DEFAULT NULL,
  `ws_google_datastore` varchar(255) DEFAULT NULL,
  `ws_transaction_name` varchar(255) DEFAULT NULL,
  `ws_override_rest_endpoint_url` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  `ae_title` varchar(16) DEFAULT NULL,
  `black_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `channel_queue_id` varchar(255) DEFAULT NULL,
  `custom_description` varchar(255) DEFAULT NULL,
  `custom_script_encrypted` longblob DEFAULT NULL,
  `destination_notes` longblob DEFAULT NULL,
  `escapeFor` varchar(16) DEFAULT NULL,
  `log_rejections` bit(1) DEFAULT NULL,
  `use_ip_filtering` bit(1) DEFAULT NULL,
  `white_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`destination_node_id`),
  KEY `idx_channel_node_destination_channel_id` (`channel_id`),
  KEY `idx_channel_node_destination_db_connection_id` (`db_connection_id`),
  KEY `idx_channel_node_destination_ws_connection_id` (`ws_connection_id`),
  KEY `idx_destination_node_ssl_certificate_id` (`ssl_certificate_id`),
  KEY `FKesibj2har1megptsp9fo9ggey` (`dicom_connection_id`),
  KEY `FK3rvpiavxwqusbie8msid8lomf` (`ssl_key_id`),
  CONSTRAINT `FK3rvpiavxwqusbie8msid8lomf` FOREIGN KEY (`ssl_key_id`) REFERENCES `ssl_key` (`ssl_key_id`),
  CONSTRAINT `FKesibj2har1megptsp9fo9ggey` FOREIGN KEY (`dicom_connection_id`) REFERENCES `dicom_connection` (`dicom_connection_id`),
  CONSTRAINT `FKfc2x3u213djids93jttwr8s8m` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`),
  CONSTRAINT `FKn6oj086ln167wgqjbvgjs21k8` FOREIGN KEY (`db_connection_id`) REFERENCES `db_connection` (`db_connection_id`),
  CONSTRAINT `FKohfbend5b9e6p0kv9ldix9idm` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`),
  CONSTRAINT `FKr4te8a7mxy0d9f36cxrxtug15` FOREIGN KEY (`ws_connection_id`) REFERENCES `ws_connection` (`ws_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_destination`
--

LOCK TABLES `channel_node_destination` WRITE;
/*!40000 ALTER TABLE `channel_node_destination` DISABLE KEYS */;
INSERT INTO `channel_node_destination` VALUES ('8a0380938e682ec5018eee2e4427000c','admin','2024-04-17 22:29:53.319000','admin','2024-04-17 22:29:53.319000',0,4,'\0',393,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','4028cb0039ee5a2c0139ffd5d2fc00a7','','','8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4428000d','admin','2024-04-17 22:29:53.320000','admin','2024-04-17 22:29:53.320000',0,5,'\0',141,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8a8080834fe543f7014ff1e8a7da00dd','','','8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e45440017','admin','2024-04-17 22:29:53.604000','admin','2024-04-17 22:29:53.604000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,10,'C:\\HL7\\Out\\{mc:patientId}.txt','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,5000,NULL,NULL,5,NULL,-1,-1,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a4c4b363a16014b559ad351000f','','','8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e45f4002c','admin','2024-04-17 22:29:53.780000','admin','2024-04-17 22:29:53.780000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.hl7','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a6f5014101e015014b37af80045','','','8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4672003e','admin','2024-04-17 22:29:53.906000','admin','2024-04-17 22:48:16.548000',1,7,'\0',456,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102e8','\0','\0','8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e475c005f','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180663a188bf1013a19a71a7a0002','','','8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e47c6006e','admin','2024-04-17 22:29:54.246000','admin','2024-04-17 22:29:54.246000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','4028cb0039d6564f0139eab3a48e0088','','','8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e48120083','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,7,'\0',456,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a6f5014101e015014d27284012a','','','8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e487300a3','admin','2024-04-17 22:29:54.419000','admin','2024-04-17 22:29:54.419000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.hl7','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a3f4e9c6f7c014e9c87e89b0006','','','8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e48af00aa','admin','2024-04-17 22:29:54.479000','admin','2024-04-17 22:29:54.479000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a6f5014101e015014d78416018c','','','8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e48ec00b1','admin','2024-04-17 22:29:54.540000','admin','2024-04-17 22:29:54.540000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180383a1d1e5f013a1e2be85c0010','','','8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e493300bb','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180383a1d1e5f013a1eb15710001d','','','8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e498300c6','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180383a1d1e5f013a1edd6aae0029','','','8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e49d200d0','admin','2024-04-17 22:29:54.770000','admin','2024-04-17 22:29:54.770000',0,3,'\0',267,15,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'\0',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','4028a30f6bd7dee1016bd89d10bf0001','','','8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4a2b00d9','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,3,'\0',267,15,NULL,'���ď{�\n��0����~\Z�H�!t�ޝ��}�H��a�B7��\'K�O3K�jJɆV0vs���g��d|5l]��jq��	xJ��<oaR�L`�.�<]��\'�:,��c��ų}��7��ZP�����,9�ӟ~��|=�h-XW�\\�Z��̟����iZa\0M�{-�Ȃ\r՜����a$^��b`j�	nyԅ\'���Jk�?l��Й�zXԆ��H�ijw�5�	���Ϥ�T��u2�����\Z2Nr��U��?� �+����-=!��2��$O�u�53�iq]�j9���\n_4>���ob��Oe\n�o@��Ջ�A�\'�%�רMЪ�0��`C��*oh�',30000,'\0','\0','1C 0D','0B',NULL,NULL,NULL,'\0','\0',NULL,NULL,10,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0','Z��4��Z���c�^','llp_socket',NULL,'\0','\0','\0','\0','\0',NULL,5000,7484,NULL,5,NULL,-1,-1,NULL,NULL,3,'\0',NULL,1,NULL,NULL,'','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a4c4b363a16014b5ba96ecf004d','','','8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `channel_node_destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_destination_audit`
--

DROP TABLE IF EXISTS `channel_node_destination_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_destination_audit` (
  `destination_node_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `input_node` bit(1) DEFAULT NULL,
  `offset_left` int(11) DEFAULT NULL,
  `offset_top` int(11) DEFAULT NULL,
  `ack_script` longblob DEFAULT NULL,
  `ack_script_encrypted` longblob DEFAULT NULL,
  `ack_timeout` int(11) DEFAULT NULL,
  `alert_on_first_error` bit(1) DEFAULT NULL,
  `append` bit(1) DEFAULT NULL,
  `block_footer` varchar(255) DEFAULT NULL,
  `block_header` varchar(255) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `connection_timeout` int(11) DEFAULT NULL,
  `content_blob` longblob DEFAULT NULL,
  `create_sub_folders` bit(1) DEFAULT NULL,
  `db_use_parameterized_query` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `destination_endpoint_id` varchar(255) DEFAULT NULL,
  `errors_alert_interval` int(11) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `ftp_binary` bit(1) DEFAULT NULL,
  `ftp_custom_parameters` longblob DEFAULT NULL,
  `ftp_customize` bit(1) DEFAULT NULL,
  `ftp_disconnect` bit(1) DEFAULT NULL,
  `ftp_encryption` int(11) DEFAULT NULL,
  `ftp_passive` bit(1) DEFAULT NULL,
  `ftp_protocol` int(11) DEFAULT NULL,
  `ftp_stepwise` bit(1) DEFAULT NULL,
  `host_name` tinyblob DEFAULT NULL,
  `message_destination` varchar(10) DEFAULT NULL,
  `number_of_threads` int(11) DEFAULT NULL,
  `override_Errors_Alert_Interval` bit(1) DEFAULT NULL,
  `override_pause_after_error` bit(1) DEFAULT NULL,
  `override_send_error_limit` bit(1) DEFAULT NULL,
  `override_send_errors_until_shutdown` bit(1) DEFAULT NULL,
  `overwrite` bit(1) DEFAULT NULL,
  `pause_after_error` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `request_timeout` int(11) DEFAULT NULL,
  `retry_limit` int(11) DEFAULT NULL,
  `send_delay` bigint(20) DEFAULT NULL,
  `send_error_limit` int(11) DEFAULT NULL,
  `send_errors_until_shutdown` int(11) DEFAULT NULL,
  `send_interval` int(11) DEFAULT NULL,
  `send_to` tinyblob DEFAULT NULL,
  `socket_type` int(11) DEFAULT NULL,
  `stop_on_ack_error` bit(1) DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `update_statement_big` longblob DEFAULT NULL,
  `update_statement_big_encrypted` longblob DEFAULT NULL,
  `use_ack` bit(1) DEFAULT NULL,
  `use_client_auth` bit(1) DEFAULT NULL,
  `use_mtom` bit(1) DEFAULT NULL,
  `use_mutex_in_ha` bit(1) DEFAULT NULL,
  `username` tinyblob DEFAULT NULL,
  `ws_binding_name` varchar(255) DEFAULT NULL,
  `ws_content_type` varchar(255) DEFAULT NULL,
  `ws_google_datastore` varchar(255) DEFAULT NULL,
  `ws_transaction_name` varchar(255) DEFAULT NULL,
  `ws_override_rest_endpoint_url` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  `ae_title` varchar(16) DEFAULT NULL,
  `black_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `channel_queue_id` varchar(255) DEFAULT NULL,
  `custom_description` varchar(255) DEFAULT NULL,
  `custom_script_encrypted` longblob DEFAULT NULL,
  `destination_notes` longblob DEFAULT NULL,
  `escapeFor` varchar(16) DEFAULT NULL,
  `log_rejections` bit(1) DEFAULT NULL,
  `use_ip_filtering` bit(1) DEFAULT NULL,
  `white_list_ip_addresses` varchar(1024) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`destination_node_id`,`revision`),
  KEY `FKs7wbvjhlvf9h561c9yv794hu1` (`revision`),
  KEY `idx_channel_node_destination_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKs7wbvjhlvf9h561c9yv794hu1` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_destination_audit`
--

LOCK TABLES `channel_node_destination_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_destination_audit` DISABLE KEYS */;
INSERT INTO `channel_node_destination_audit` VALUES ('8a0380938e682ec5018eee2e4427000c',37,0,'admin','2024-04-17 22:29:53.319000',4,'\0',393,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','4028cb0039ee5a2c0139ffd5d2fc00a7','','','8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4428000d',37,0,'admin','2024-04-17 22:29:53.320000',5,'\0',141,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8a8080834fe543f7014ff1e8a7da00dd','','','8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e45440017',37,0,'admin','2024-04-17 22:29:53.604000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,10,'C:\\HL7\\Out\\{mc:patientId}.txt','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',5000,NULL,NULL,5,NULL,-1,-1,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a4c4b363a16014b559ad351000f','','','8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e45f4002c',37,0,'admin','2024-04-17 22:29:53.780000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.hl7','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a6f5014101e015014b37af80045','','','8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4672003e',37,0,'admin','2024-04-17 22:29:53.906000',7,'\0',456,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102e8','','','8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4672003e',39,1,'admin','2024-04-17 22:48:16.548000',7,'\0',456,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102e8','\0','\0','8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e475c005f',37,0,'admin','2024-04-17 22:29:54.140000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180663a188bf1013a19a71a7a0002','','','8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e47c6006e',37,0,'admin','2024-04-17 22:29:54.246000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','4028cb0039d6564f0139eab3a48e0088','','','8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e48120083',37,0,'admin','2024-04-17 22:29:54.323000',7,'\0',456,91,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a6f5014101e015014d27284012a','','','8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e487300a3',37,0,'admin','2024-04-17 22:29:54.419000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.hl7','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a3f4e9c6f7c014e9c87e89b0006','','','8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e48af00aa',37,0,'admin','2024-04-17 22:29:54.479000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,'C:\\HL7\\Out\\*.out','',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'file',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a6f5014101e015014d78416018c','','','8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e48ec00b1',37,0,'admin','2024-04-17 22:29:54.540000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180383a1d1e5f013a1e2be85c0010','','','8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e493300bb',37,0,'admin','2024-04-17 22:29:54.611000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180383a1d1e5f013a1eb15710001d','','','8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e498300c6',37,0,'admin','2024-04-17 22:29:54.691000',3,'\0',267,15,NULL,NULL,15000,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae180383a1d1e5f013a1edd6aae0029','','','8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e49d200d0',37,0,'admin','2024-04-17 22:29:54.770000',3,'\0',267,15,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,'\0',NULL,'\0','\0',NULL,'\0',NULL,'\0',NULL,'discard',NULL,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,1,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','4028a30f6bd7dee1016bd89d10bf0001','','','8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL),('8a0380938e682ec5018eee2e4a2b00d9',37,0,'admin','2024-04-17 22:29:54.859000',3,'\0',267,15,NULL,'���ď{�\n��0����~\Z�H�!t�ޝ��}�H��a�B7��\'K�O3K�jJɆV0vs���g��d|5l]��jq��	xJ��<oaR�L`�.�<]��\'�:,��c��ų}��7��ZP�����,9�ӟ~��|=�h-XW�\\�Z��̟����iZa\0M�{-�Ȃ\r՜����a$^��b`j�	nyԅ\'���Jk�?l��Й�zXԆ��H�ijw�5�	���Ϥ�T��u2�����\Z2Nr��U��?� �+����-=!��2��$O�u�53�iq]�j9���\n_4>���ob��Oe\n�o@��Ջ�A�\'�%�רMЪ�0��`C��*oh�',30000,'\0','\0','1C 0D','0B',NULL,NULL,NULL,'\0','\0',NULL,NULL,10,NULL,'',NULL,'\0','\0',NULL,'\0',NULL,'\0','Z��4��Z���c�^','llp_socket',NULL,'\0','\0','\0','\0','\0',5000,7484,NULL,5,NULL,-1,-1,NULL,NULL,3,'\0',NULL,1,NULL,NULL,'','\0','\0','\0',NULL,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,NULL,'\0','8ae18a4c4b363a16014b5ba96ecf004d','','','8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `channel_node_destination_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_mapping`
--

DROP TABLE IF EXISTS `channel_node_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_mapping` (
  `mapping_node_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `input_node` bit(1) DEFAULT NULL,
  `offset_left` int(11) DEFAULT NULL,
  `offset_top` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_node_id`),
  KEY `idx_channel_node_mapping_channel_id` (`channel_id`),
  KEY `idx_channel_node_mapping_mapping_id` (`mapping_id`),
  CONSTRAINT `FK7uk2dsskemvfopggxpltkbokg` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKf0joyckwetfwycfadr1qmr8l` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_mapping`
--

LOCK TABLES `channel_node_mapping` WRITE;
/*!40000 ALTER TABLE `channel_node_mapping` DISABLE KEYS */;
INSERT INTO `channel_node_mapping` VALUES ('8a0380938e682ec5018eee2e4428000e','admin','2024-04-17 22:29:53.323000','admin','2024-04-17 22:29:53.323000',0,3,'\0',267,15,'','\0','','\0','4028cb0039ee5a2c0139ffd5d2fc00a8','8a0380938e682ec5018eee2e44110006','8a0380938e682ec5018eee2e4428000f'),('8a0380938e682ec5018eee2e45450018','admin','2024-04-17 22:29:53.611000','admin','2024-04-17 22:29:53.611000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae18a4c4b363a16014b559ad3510010','8a0380938e682ec5018eee2e45430016','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e45f4002d','admin','2024-04-17 22:29:53.782000','admin','2024-04-17 22:29:53.782000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014b37af80046','8a0380938e682ec5018eee2e45f2002b','8a0380938e682ec5018eee2e45f5002e'),('8a0380938e682ec5018eee2e4672003f','admin','2024-04-17 22:29:53.908000','admin','2024-04-17 22:48:16.546000',1,3,'\0',267,15,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102e9','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46720040'),('8a0380938e682ec5018eee2e46740047','admin','2024-04-17 22:29:53.910000','admin','2024-04-17 22:48:16.546000',1,6,'\0',267,167,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f1','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46740048'),('8a0380938e682ec5018eee2e4677004f','admin','2024-04-17 22:29:53.915000','admin','2024-04-17 22:48:16.546000',1,5,'\0',267,91,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f9','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46770050'),('8a0380938e682ec5018eee2e475c0060','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae180663a188bf1013a19a71a7a0003','8a0380938e682ec5018eee2e475b005e','8a0380938e682ec5018eee2e475c0061'),('8a0380938e682ec5018eee2e47c7006f','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,2,'',141,15,'',NULL,NULL,NULL,'4028cb0039d6564f0139eab3a48e0089','8a0380938e682ec5018eee2e47c6006d','8a0380938e682ec5018eee2e47c70070'),('8a0380938e682ec5018eee2e48130084','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,5,'\0',267,91,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d27284012b','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e48130085'),('8a0380938e682ec5018eee2e48140090','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,6,'\0',267,167,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d27285013a','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e48140091'),('8a0380938e682ec5018eee2e48150098','admin','2024-04-17 22:29:54.326000','admin','2024-04-17 22:29:54.326000',0,3,'\0',267,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d272850142','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e48150099'),('8a0380938e682ec5018eee2e487400a4','admin','2024-04-17 22:29:54.420000','admin','2024-04-17 22:29:54.420000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae18a3f4e9c6f7c014e9c87e89b0007','8a0380938e682ec5018eee2e487300a2','8a0380938e682ec5018eee2e487400a5'),('8a0380938e682ec5018eee2e48af00ab','admin','2024-04-17 22:29:54.480000','admin','2024-04-17 22:29:54.480000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d78416018d','8a0380938e682ec5018eee2e48af00a9','8a0380938e682ec5018eee2e48af00ac'),('8a0380938e682ec5018eee2e48ed00b2','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae180383a1d1e5f013a1e2be85c0011','8a0380938e682ec5018eee2e48ec00b0','8a0380938e682ec5018eee2e48ed00b3'),('8a0380938e682ec5018eee2e493300bc','admin','2024-04-17 22:29:54.612000','admin','2024-04-17 22:29:54.612000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae180383a1d1e5f013a1eb15710001e','8a0380938e682ec5018eee2e493300ba','8a0380938e682ec5018eee2e493300bd'),('8a0380938e682ec5018eee2e498300c7','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,2,'',141,15,'','\0','','\0','8ae180383a1d1e5f013a1edd6aae002a','8a0380938e682ec5018eee2e498200c5','8a0380938e682ec5018eee2e498300c8'),('8a0380938e682ec5018eee2e49d200d1','admin','2024-04-17 22:29:54.771000','admin','2024-04-17 22:29:54.771000',0,2,'',141,15,'','\0','','\0','4028a30f6bd7dee1016bd89d10c00003','8a0380938e682ec5018eee2e49d200cf','8a0380938e682ec5018eee2e49d200d2'),('8a0380938e682ec5018eee2e4a2b00da','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,2,'',141,15,'',NULL,NULL,NULL,'8ae18a4c4b363a16014b5ba96ecf004e','8a0380938e682ec5018eee2e4a2a00d8','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `channel_node_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_mapping_audit`
--

DROP TABLE IF EXISTS `channel_node_mapping_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_mapping_audit` (
  `mapping_node_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `input_node` bit(1) DEFAULT NULL,
  `offset_left` int(11) DEFAULT NULL,
  `offset_top` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_node_id`,`revision`),
  KEY `FKmllc7wqup41q9t18iyrdv4c0g` (`revision`),
  KEY `idx_channel_node_mapping_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKmllc7wqup41q9t18iyrdv4c0g` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_mapping_audit`
--

LOCK TABLES `channel_node_mapping_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_mapping_audit` DISABLE KEYS */;
INSERT INTO `channel_node_mapping_audit` VALUES ('8a0380938e682ec5018eee2e4428000e',37,0,'admin','2024-04-17 22:29:53.323000',3,'\0',267,15,'','\0','','\0','4028cb0039ee5a2c0139ffd5d2fc00a8','8a0380938e682ec5018eee2e44110006','8a0380938e682ec5018eee2e4428000f'),('8a0380938e682ec5018eee2e45450018',37,0,'admin','2024-04-17 22:29:53.611000',2,'',141,15,'',NULL,NULL,NULL,'8ae18a4c4b363a16014b559ad3510010','8a0380938e682ec5018eee2e45430016','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e45f4002d',37,0,'admin','2024-04-17 22:29:53.782000',2,'',141,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014b37af80046','8a0380938e682ec5018eee2e45f2002b','8a0380938e682ec5018eee2e45f5002e'),('8a0380938e682ec5018eee2e4672003f',37,0,'admin','2024-04-17 22:29:53.908000',3,'\0',267,15,'',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102e9','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46720040'),('8a0380938e682ec5018eee2e4672003f',39,1,'admin','2024-04-17 22:48:16.546000',3,'\0',267,15,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102e9','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46720040'),('8a0380938e682ec5018eee2e46740047',37,0,'admin','2024-04-17 22:29:53.910000',6,'\0',267,167,'',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f1','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46740048'),('8a0380938e682ec5018eee2e46740047',39,1,'admin','2024-04-17 22:48:16.546000',6,'\0',267,167,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f1','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46740048'),('8a0380938e682ec5018eee2e4677004f',37,0,'admin','2024-04-17 22:29:53.915000',5,'\0',267,91,'',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f9','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46770050'),('8a0380938e682ec5018eee2e4677004f',39,1,'admin','2024-04-17 22:48:16.546000',5,'\0',267,91,'\0',NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f9','8a0380938e682ec5018eee2e466d0033','8a0380938e682ec5018eee2e46770050'),('8a0380938e682ec5018eee2e475c0060',37,0,'admin','2024-04-17 22:29:54.141000',2,'',141,15,'',NULL,NULL,NULL,'8ae180663a188bf1013a19a71a7a0003','8a0380938e682ec5018eee2e475b005e','8a0380938e682ec5018eee2e475c0061'),('8a0380938e682ec5018eee2e47c7006f',37,0,'admin','2024-04-17 22:29:54.247000',2,'',141,15,'',NULL,NULL,NULL,'4028cb0039d6564f0139eab3a48e0089','8a0380938e682ec5018eee2e47c6006d','8a0380938e682ec5018eee2e47c70070'),('8a0380938e682ec5018eee2e48130084',37,0,'admin','2024-04-17 22:29:54.324000',5,'\0',267,91,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d27284012b','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e48130085'),('8a0380938e682ec5018eee2e48140090',37,0,'admin','2024-04-17 22:29:54.325000',6,'\0',267,167,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d27285013a','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e48140091'),('8a0380938e682ec5018eee2e48150098',37,0,'admin','2024-04-17 22:29:54.326000',3,'\0',267,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d272850142','8a0380938e682ec5018eee2e48110078','8a0380938e682ec5018eee2e48150099'),('8a0380938e682ec5018eee2e487400a4',37,0,'admin','2024-04-17 22:29:54.420000',2,'',141,15,'',NULL,NULL,NULL,'8ae18a3f4e9c6f7c014e9c87e89b0007','8a0380938e682ec5018eee2e487300a2','8a0380938e682ec5018eee2e487400a5'),('8a0380938e682ec5018eee2e48af00ab',37,0,'admin','2024-04-17 22:29:54.480000',2,'',141,15,'',NULL,NULL,NULL,'8ae18a6f5014101e015014d78416018d','8a0380938e682ec5018eee2e48af00a9','8a0380938e682ec5018eee2e48af00ac'),('8a0380938e682ec5018eee2e48ed00b2',37,0,'admin','2024-04-17 22:29:54.541000',2,'',141,15,'',NULL,NULL,NULL,'8ae180383a1d1e5f013a1e2be85c0011','8a0380938e682ec5018eee2e48ec00b0','8a0380938e682ec5018eee2e48ed00b3'),('8a0380938e682ec5018eee2e493300bc',37,0,'admin','2024-04-17 22:29:54.612000',2,'',141,15,'',NULL,NULL,NULL,'8ae180383a1d1e5f013a1eb15710001e','8a0380938e682ec5018eee2e493300ba','8a0380938e682ec5018eee2e493300bd'),('8a0380938e682ec5018eee2e498300c7',37,0,'admin','2024-04-17 22:29:54.691000',2,'',141,15,'','\0','','\0','8ae180383a1d1e5f013a1edd6aae002a','8a0380938e682ec5018eee2e498200c5','8a0380938e682ec5018eee2e498300c8'),('8a0380938e682ec5018eee2e49d200d1',37,0,'admin','2024-04-17 22:29:54.771000',2,'',141,15,'','\0','','\0','4028a30f6bd7dee1016bd89d10c00003','8a0380938e682ec5018eee2e49d200cf','8a0380938e682ec5018eee2e49d200d2'),('8a0380938e682ec5018eee2e4a2b00da',37,0,'admin','2024-04-17 22:29:54.861000',2,'',141,15,'',NULL,NULL,NULL,'8ae18a4c4b363a16014b5ba96ecf004e','8a0380938e682ec5018eee2e4a2a00d8','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `channel_node_mapping_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_mapping_fail`
--

DROP TABLE IF EXISTS `channel_node_mapping_fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_mapping_fail` (
  `mapping_fail_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `mapping_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_fail_id`),
  KEY `idx_channel_node_mapping_fail_mapping_node_id` (`mapping_node_id`),
  CONSTRAINT `FKgvbm24ngosx8ntbmtpo0hno1d` FOREIGN KEY (`mapping_node_id`) REFERENCES `channel_node_mapping` (`mapping_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_mapping_fail`
--

LOCK TABLES `channel_node_mapping_fail` WRITE;
/*!40000 ALTER TABLE `channel_node_mapping_fail` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_node_mapping_fail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_mapping_fail_audit`
--

DROP TABLE IF EXISTS `channel_node_mapping_fail_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_mapping_fail_audit` (
  `mapping_fail_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `mapping_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_fail_id`,`revision`),
  KEY `FK28939nkd4maon7d0vlbjvqui4` (`revision`),
  KEY `idx_channel_node_mapping_fail_audit_mapping_node_id` (`mapping_node_id`,`revision`),
  CONSTRAINT `FK28939nkd4maon7d0vlbjvqui4` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_mapping_fail_audit`
--

LOCK TABLES `channel_node_mapping_fail_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_mapping_fail_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_node_mapping_fail_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_mapping_pass`
--

DROP TABLE IF EXISTS `channel_node_mapping_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_mapping_pass` (
  `mapping_pass_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `mapping_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_pass_id`),
  KEY `idx_channel_node_mapping_pass_mapping_node_id` (`mapping_node_id`),
  CONSTRAINT `FKscgbbl209dtrnjpphkh8bjac3` FOREIGN KEY (`mapping_node_id`) REFERENCES `channel_node_mapping` (`mapping_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_mapping_pass`
--

LOCK TABLES `channel_node_mapping_pass` WRITE;
/*!40000 ALTER TABLE `channel_node_mapping_pass` DISABLE KEYS */;
INSERT INTO `channel_node_mapping_pass` VALUES ('8a0380938e682ec5018eee2e442b0015','admin','2024-04-17 22:29:53.323000','admin','2024-04-17 22:29:53.323000',0,4,'','8a0380938e682ec5018eee2e4428000e'),('8a0380938e682ec5018eee2e454c002a','admin','2024-04-17 22:29:53.612000','admin','2024-04-17 22:29:53.612000',0,3,'','8a0380938e682ec5018eee2e45450018'),('8a0380938e682ec5018eee2e45f70032','admin','2024-04-17 22:29:53.783000','admin','2024-04-17 22:29:53.783000',0,3,'','8a0380938e682ec5018eee2e45f4002d'),('8a0380938e682ec5018eee2e46740046','admin','2024-04-17 22:29:53.908000','admin','2024-04-17 22:48:16.548000',1,7,'\0','8a0380938e682ec5018eee2e4672003f'),('8a0380938e682ec5018eee2e4677004e','admin','2024-04-17 22:29:53.911000','admin','2024-04-17 22:48:16.548000',1,7,'\0','8a0380938e682ec5018eee2e46740047'),('8a0380938e682ec5018eee2e467b005a','admin','2024-04-17 22:29:53.915000','admin','2024-04-17 22:48:16.548000',1,7,'\0','8a0380938e682ec5018eee2e4677004f'),('8a0380938e682ec5018eee2e475d006c','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,3,'','8a0380938e682ec5018eee2e475c0060'),('8a0380938e682ec5018eee2e47c80077','admin','2024-04-17 22:29:54.248000','admin','2024-04-17 22:29:54.248000',0,3,'','8a0380938e682ec5018eee2e47c7006f'),('8a0380938e682ec5018eee2e4814008f','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,7,'','8a0380938e682ec5018eee2e48130084'),('8a0380938e682ec5018eee2e48150097','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,7,'','8a0380938e682ec5018eee2e48140090'),('8a0380938e682ec5018eee2e481600a1','admin','2024-04-17 22:29:54.326000','admin','2024-04-17 22:29:54.326000',0,7,'','8a0380938e682ec5018eee2e48150098'),('8a0380938e682ec5018eee2e487400a8','admin','2024-04-17 22:29:54.420000','admin','2024-04-17 22:29:54.420000',0,3,'','8a0380938e682ec5018eee2e487400a4'),('8a0380938e682ec5018eee2e48b000af','admin','2024-04-17 22:29:54.480000','admin','2024-04-17 22:29:54.480000',0,3,'','8a0380938e682ec5018eee2e48af00ab'),('8a0380938e682ec5018eee2e48ed00b9','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,3,'','8a0380938e682ec5018eee2e48ed00b2'),('8a0380938e682ec5018eee2e493400c4','admin','2024-04-17 22:29:54.612000','admin','2024-04-17 22:29:54.612000',0,3,'','8a0380938e682ec5018eee2e493300bc'),('8a0380938e682ec5018eee2e498300ce','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,3,'','8a0380938e682ec5018eee2e498300c7'),('8a0380938e682ec5018eee2e49d300d7','admin','2024-04-17 22:29:54.771000','admin','2024-04-17 22:29:54.771000',0,3,'','8a0380938e682ec5018eee2e49d200d1'),('8a0380938e682ec5018eee2e4a2d00fb','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,3,'','8a0380938e682ec5018eee2e4a2b00da');
/*!40000 ALTER TABLE `channel_node_mapping_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_node_mapping_pass_audit`
--

DROP TABLE IF EXISTS `channel_node_mapping_pass_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_node_mapping_pass_audit` (
  `mapping_pass_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `mapping_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_pass_id`,`revision`),
  KEY `FKr83856iicn2gb3w4lfs534sh8` (`revision`),
  KEY `idx_channel_node_mapping_pass_audit_mapping_node_id` (`mapping_node_id`,`revision`),
  CONSTRAINT `FKr83856iicn2gb3w4lfs534sh8` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_node_mapping_pass_audit`
--

LOCK TABLES `channel_node_mapping_pass_audit` WRITE;
/*!40000 ALTER TABLE `channel_node_mapping_pass_audit` DISABLE KEYS */;
INSERT INTO `channel_node_mapping_pass_audit` VALUES ('8a0380938e682ec5018eee2e442b0015',37,0,'admin','2024-04-17 22:29:53.323000',4,'','8a0380938e682ec5018eee2e4428000e'),('8a0380938e682ec5018eee2e454c002a',37,0,'admin','2024-04-17 22:29:53.612000',3,'','8a0380938e682ec5018eee2e45450018'),('8a0380938e682ec5018eee2e45f70032',37,0,'admin','2024-04-17 22:29:53.783000',3,'','8a0380938e682ec5018eee2e45f4002d'),('8a0380938e682ec5018eee2e46740046',37,0,'admin','2024-04-17 22:29:53.908000',7,'','8a0380938e682ec5018eee2e4672003f'),('8a0380938e682ec5018eee2e46740046',39,1,'admin','2024-04-17 22:48:16.548000',7,'\0','8a0380938e682ec5018eee2e4672003f'),('8a0380938e682ec5018eee2e4677004e',37,0,'admin','2024-04-17 22:29:53.911000',7,'','8a0380938e682ec5018eee2e46740047'),('8a0380938e682ec5018eee2e4677004e',39,1,'admin','2024-04-17 22:48:16.548000',7,'\0','8a0380938e682ec5018eee2e46740047'),('8a0380938e682ec5018eee2e467b005a',37,0,'admin','2024-04-17 22:29:53.915000',7,'','8a0380938e682ec5018eee2e4677004f'),('8a0380938e682ec5018eee2e467b005a',39,1,'admin','2024-04-17 22:48:16.548000',7,'\0','8a0380938e682ec5018eee2e4677004f'),('8a0380938e682ec5018eee2e475d006c',37,0,'admin','2024-04-17 22:29:54.141000',3,'','8a0380938e682ec5018eee2e475c0060'),('8a0380938e682ec5018eee2e47c80077',37,0,'admin','2024-04-17 22:29:54.248000',3,'','8a0380938e682ec5018eee2e47c7006f'),('8a0380938e682ec5018eee2e4814008f',37,0,'admin','2024-04-17 22:29:54.324000',7,'','8a0380938e682ec5018eee2e48130084'),('8a0380938e682ec5018eee2e48150097',37,0,'admin','2024-04-17 22:29:54.325000',7,'','8a0380938e682ec5018eee2e48140090'),('8a0380938e682ec5018eee2e481600a1',37,0,'admin','2024-04-17 22:29:54.326000',7,'','8a0380938e682ec5018eee2e48150098'),('8a0380938e682ec5018eee2e487400a8',37,0,'admin','2024-04-17 22:29:54.420000',3,'','8a0380938e682ec5018eee2e487400a4'),('8a0380938e682ec5018eee2e48b000af',37,0,'admin','2024-04-17 22:29:54.480000',3,'','8a0380938e682ec5018eee2e48af00ab'),('8a0380938e682ec5018eee2e48ed00b9',37,0,'admin','2024-04-17 22:29:54.541000',3,'','8a0380938e682ec5018eee2e48ed00b2'),('8a0380938e682ec5018eee2e493400c4',37,0,'admin','2024-04-17 22:29:54.612000',3,'','8a0380938e682ec5018eee2e493300bc'),('8a0380938e682ec5018eee2e498300ce',37,0,'admin','2024-04-17 22:29:54.691000',3,'','8a0380938e682ec5018eee2e498300c7'),('8a0380938e682ec5018eee2e49d300d7',37,0,'admin','2024-04-17 22:29:54.771000',3,'','8a0380938e682ec5018eee2e49d200d1'),('8a0380938e682ec5018eee2e4a2d00fb',37,0,'admin','2024-04-17 22:29:54.861000',3,'','8a0380938e682ec5018eee2e4a2b00da');
/*!40000 ALTER TABLE `channel_node_mapping_pass_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_scheduled_script`
--

DROP TABLE IF EXISTS `channel_scheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_scheduled_script` (
  `channel_scheduled_script_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `cron_string` varchar(1024) DEFAULT NULL,
  `description` varchar(85) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `run_before_start` bit(1) DEFAULT NULL,
  `run_before_stop` bit(1) DEFAULT NULL,
  `run_on_connection` bit(1) DEFAULT NULL,
  `run_on_start` bit(1) DEFAULT NULL,
  `run_on_stop` bit(1) DEFAULT NULL,
  `run_while_paused` bit(1) DEFAULT NULL,
  `script` longblob DEFAULT NULL,
  `script_encrypted` longblob DEFAULT NULL,
  `scriptTimeout` int(11) DEFAULT NULL,
  `use_mutex_in_ha` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `run_in_test_window` bit(1) DEFAULT NULL,
  PRIMARY KEY (`channel_scheduled_script_id`),
  KEY `idx_channel_scheduled_script_channel_id_list_order` (`channel_id`,`list_order`),
  KEY `idx_channel_scheduled_script_channel_id` (`channel_id`),
  CONSTRAINT `FKs4dauordf7ba59ys2hgpscasu` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_scheduled_script`
--

LOCK TABLES `channel_scheduled_script` WRITE;
/*!40000 ALTER TABLE `channel_scheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_scheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_scheduled_script_audit`
--

DROP TABLE IF EXISTS `channel_scheduled_script_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_scheduled_script_audit` (
  `channel_scheduled_script_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `cron_string` varchar(1024) DEFAULT NULL,
  `description` varchar(85) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `run_before_start` bit(1) DEFAULT NULL,
  `run_before_stop` bit(1) DEFAULT NULL,
  `run_on_connection` bit(1) DEFAULT NULL,
  `run_on_start` bit(1) DEFAULT NULL,
  `run_on_stop` bit(1) DEFAULT NULL,
  `run_while_paused` bit(1) DEFAULT NULL,
  `script` longblob DEFAULT NULL,
  `script_encrypted` longblob DEFAULT NULL,
  `scriptTimeout` int(11) DEFAULT NULL,
  `use_mutex_in_ha` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `run_in_test_window` bit(1) DEFAULT NULL,
  PRIMARY KEY (`channel_scheduled_script_id`,`revision`),
  KEY `FKo00okfoa5pwvma7w9ramb5mh9` (`revision`),
  KEY `idx_channel_scheduled_script_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKo00okfoa5pwvma7w9ramb5mh9` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_scheduled_script_audit`
--

LOCK TABLES `channel_scheduled_script_audit` WRITE;
/*!40000 ALTER TABLE `channel_scheduled_script_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_scheduled_script_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_ssl_certificate`
--

DROP TABLE IF EXISTS `channel_ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_ssl_certificate` (
  `channel_ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`channel_ssl_certificate_id`),
  UNIQUE KEY `UKpjle4f2pct1tnbbxcwl7hw3ry` (`channel_id`,`ssl_certificate_id`),
  KEY `channel_ssl_certificate_channel_id` (`channel_id`),
  KEY `channel_ssl_certificate_certificate_id` (`ssl_certificate_id`),
  CONSTRAINT `FKglyjgpdhqaf6jcbbwlpiy0hmm` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`),
  CONSTRAINT `FKkvy9nth5a2nrxxcpa7vj629tt` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_ssl_certificate`
--

LOCK TABLES `channel_ssl_certificate` WRITE;
/*!40000 ALTER TABLE `channel_ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `channel_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_ssl_certificate_audit` (
  `channel_ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`channel_ssl_certificate_id`,`revision`),
  KEY `FKr8o2k9mu2h1oduegm0nuigp81` (`revision`),
  CONSTRAINT `FKr8o2k9mu2h1oduegm0nuigp81` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_ssl_certificate_audit`
--

LOCK TABLES `channel_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `channel_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_state`
--

DROP TABLE IF EXISTS `channel_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_state` (
  `channel_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `aggregated_completed_count` bigint(20) DEFAULT NULL,
  `aggregated_received_count` bigint(20) DEFAULT NULL,
  `error_count` bigint(20) DEFAULT NULL,
  `last_activity` bigint(20) DEFAULT NULL,
  `last_erred_message` bigint(20) DEFAULT NULL,
  `last_message_received` bigint(20) DEFAULT NULL,
  `muted_error_alerts_expiration` datetime(6) DEFAULT NULL,
  `revision_number` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `temporary_debug_mode_expiration` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_state`
--

LOCK TABLES `channel_state` WRITE;
/*!40000 ALTER TABLE `channel_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_reporting_history`
--

DROP TABLE IF EXISTS `cloud_reporting_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud_reporting_history` (
  `cloud_reporting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `report_successful` bit(1) DEFAULT NULL,
  `advanced_format_module` bit(1) DEFAULT NULL,
  `advanced_formats_report` longblob DEFAULT NULL,
  `advanced_formats_result` longblob DEFAULT NULL,
  `channel_count` int(11) DEFAULT NULL,
  `channel_count_report` longblob DEFAULT NULL,
  `channel_count_result` longblob DEFAULT NULL,
  `custom_scripting_report` longblob DEFAULT NULL,
  `custom_scripting_result` longblob DEFAULT NULL,
  `dicom_module` bit(1) DEFAULT NULL,
  `dicom_report` longblob DEFAULT NULL,
  `dicom_result` longblob DEFAULT NULL,
  `enterprise_license` bit(1) DEFAULT NULL,
  `ha_module` bit(1) DEFAULT NULL,
  `ha_report` longblob DEFAULT NULL,
  `ha_result` longblob DEFAULT NULL,
  `pro_module_report` longblob DEFAULT NULL,
  `pro_module_result` longblob DEFAULT NULL,
  `scripting_module` bit(1) DEFAULT NULL,
  PRIMARY KEY (`cloud_reporting_id`),
  KEY `idx_cloud_reporting_history_created_timestamp` (`created_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_reporting_history`
--

LOCK TABLES `cloud_reporting_history` WRITE;
/*!40000 ALTER TABLE `cloud_reporting_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_reporting_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_custom`
--

DROP TABLE IF EXISTS `condition_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_custom` (
  `custom_condition_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `invert_result` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `data_encrypted` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`custom_condition_id`),
  KEY `idx_condition_custom_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FK5q17ldpxsi9rdl2yycfex8j9n` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_custom`
--

LOCK TABLES `condition_custom` WRITE;
/*!40000 ALTER TABLE `condition_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_custom_audit`
--

DROP TABLE IF EXISTS `condition_custom_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_custom_audit` (
  `custom_condition_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `invert_result` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `data_encrypted` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`custom_condition_id`,`revision`),
  KEY `FKcedepq7ji91pwewk1slv2xxvi` (`revision`),
  KEY `idx_condition_custom_audit_condition_list_id` (`condition_list_id`,`revision`),
  CONSTRAINT `FKcedepq7ji91pwewk1slv2xxvi` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_custom_audit`
--

LOCK TABLES `condition_custom_audit` WRITE;
/*!40000 ALTER TABLE `condition_custom_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_custom_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_db`
--

DROP TABLE IF EXISTS `condition_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_db` (
  `db_condition_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `invert_result` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `case_sensitive` bit(1) DEFAULT NULL,
  `db_data_type` int(11) DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `data_encrypted` longblob DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`db_condition_id`),
  KEY `idx_condition_db_condition_list_id` (`condition_list_id`),
  KEY `idx_condition_db_db_connection_id` (`db_connection_id`),
  CONSTRAINT `FK3der6aq12kp9mbjuf270wvchy` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKh9qifve20839hwdf6wruhfsfa` FOREIGN KEY (`db_connection_id`) REFERENCES `db_connection` (`db_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_db`
--

LOCK TABLES `condition_db` WRITE;
/*!40000 ALTER TABLE `condition_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_db_audit`
--

DROP TABLE IF EXISTS `condition_db_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_db_audit` (
  `db_condition_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `invert_result` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `case_sensitive` bit(1) DEFAULT NULL,
  `db_data_type` int(11) DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `data_encrypted` longblob DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`db_condition_id`,`revision`),
  KEY `FK3remitlq244ckhxpevhebegg3` (`revision`),
  KEY `idx_condition_db_audit_condition_list_id` (`condition_list_id`,`revision`),
  CONSTRAINT `FK3remitlq244ckhxpevhebegg3` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_db_audit`
--

LOCK TABLES `condition_db_audit` WRITE;
/*!40000 ALTER TABLE `condition_db_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_db_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_list`
--

DROP TABLE IF EXISTS `condition_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_list` (
  `condition_list_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `execution_plan` varchar(255) DEFAULT NULL,
  `plan_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_list`
--

LOCK TABLES `condition_list` WRITE;
/*!40000 ALTER TABLE `condition_list` DISABLE KEYS */;
INSERT INTO `condition_list` VALUES ('8a0380938e682ec5018eee2e44240008','admin','2024-04-17 22:29:53.316000','admin','2024-04-17 22:29:53.316000',0,NULL,NULL,0,'','4028cb0039ee5a2c0139ffd5d2fc009d','',''),('8a0380938e682ec5018eee2e44290011','admin','2024-04-17 22:29:53.321000','admin','2024-04-17 22:29:53.321000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e442a0013','admin','2024-04-17 22:29:53.322000','admin','2024-04-17 22:29:53.322000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4546001b','admin','2024-04-17 22:29:53.606000','admin','2024-04-17 22:29:53.606000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4547001e','admin','2024-04-17 22:29:53.607000','admin','2024-04-17 22:29:53.607000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e45480022','admin','2024-04-17 22:29:53.608000','admin','2024-04-17 22:29:53.608000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e45490025','admin','2024-04-17 22:29:53.609000','admin','2024-04-17 22:29:53.609000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e454a0028','admin','2024-04-17 22:29:53.610000','admin','2024-04-17 22:29:53.610000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e45f50030','admin','2024-04-17 22:29:53.781000','admin','2024-04-17 22:29:53.781000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e466f0035','admin','2024-04-17 22:29:53.903000','admin','2024-04-17 22:48:16.545000',1,NULL,NULL,0,'\0','8a8080834fe543f7014ffbe8d68002df','','\0'),('8a0380938e682ec5018eee2e4670003a','admin','2024-04-17 22:29:53.904000','admin','2024-04-17 22:48:16.545000',1,NULL,NULL,0,'\0','8a8080834fe543f7014ffbe8d68002e4','','\0'),('8a0380938e682ec5018eee2e46730042','admin','2024-04-17 22:29:53.907000','admin','2024-04-17 22:48:16.546000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e46730044','admin','2024-04-17 22:29:53.907000','admin','2024-04-17 22:48:16.546000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e4675004a','admin','2024-04-17 22:29:53.909000','admin','2024-04-17 22:48:16.547000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e4675004c','admin','2024-04-17 22:29:53.909000','admin','2024-04-17 22:48:16.547000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e46780052','admin','2024-04-17 22:29:53.912000','admin','2024-04-17 22:48:16.547000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e46790055','admin','2024-04-17 22:29:53.913000','admin','2024-04-17 22:48:16.547000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e467a0058','admin','2024-04-17 22:29:53.914000','admin','2024-04-17 22:48:16.547000',1,NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e474d005c','admin','2024-04-17 22:29:54.125000','admin','2024-04-17 22:29:54.125000',0,'A08',NULL,0,'\0','ff808181763fc06501764403dbea0050','','\0'),('8a0380938e682ec5018eee2e475c0063','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e475c0065','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e475c0067','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e47c70072','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e47c70074','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e47c70076','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4812007a','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,NULL,NULL,0,'','8ae18a6f5014101e015014d272830121','',''),('8a0380938e682ec5018eee2e4812007f','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,NULL,NULL,0,'','8ae18a6f5014101e015014d272840126','',''),('8a0380938e682ec5018eee2e48130087','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4813008a','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4814008d','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48140093','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48140095','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4815009b','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4815009d','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4815009f','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e487400a7','admin','2024-04-17 22:29:54.420000','admin','2024-04-17 22:29:54.420000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48b000ae','admin','2024-04-17 22:29:54.480000','admin','2024-04-17 22:29:54.480000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48ed00b5','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48ed00b7','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e493300bf','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e493300c1','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e493400c3','admin','2024-04-17 22:29:54.612000','admin','2024-04-17 22:29:54.612000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e498300ca','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e498300cc','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e49d200d4','admin','2024-04-17 22:29:54.770000','admin','2024-04-17 22:29:54.770000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e49d200d6','admin','2024-04-17 22:29:54.770000','admin','2024-04-17 22:29:54.770000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2b00dd','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2b00df','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2b00e2','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00e5','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00e8','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00eb','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00ee','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00f1','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00f4','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2d00f7','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,NULL,NULL,0,'',NULL,'','\0');
/*!40000 ALTER TABLE `condition_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_list_audit`
--

DROP TABLE IF EXISTS `condition_list_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_list_audit` (
  `condition_list_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `execution_plan` varchar(255) DEFAULT NULL,
  `plan_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`condition_list_id`,`revision`),
  KEY `FKnefv89hdmrxmjjayltu7xc4u8` (`revision`),
  CONSTRAINT `FKnefv89hdmrxmjjayltu7xc4u8` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_list_audit`
--

LOCK TABLES `condition_list_audit` WRITE;
/*!40000 ALTER TABLE `condition_list_audit` DISABLE KEYS */;
INSERT INTO `condition_list_audit` VALUES ('8a0380938e682ec5018eee2e44240008',37,0,'admin','2024-04-17 22:29:53.316000',NULL,NULL,0,'','4028cb0039ee5a2c0139ffd5d2fc009d','',''),('8a0380938e682ec5018eee2e44290011',37,0,'admin','2024-04-17 22:29:53.321000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e442a0013',37,0,'admin','2024-04-17 22:29:53.322000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4546001b',37,0,'admin','2024-04-17 22:29:53.606000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4547001e',37,0,'admin','2024-04-17 22:29:53.607000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e45480022',37,0,'admin','2024-04-17 22:29:53.608000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e45490025',37,0,'admin','2024-04-17 22:29:53.609000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e454a0028',37,0,'admin','2024-04-17 22:29:53.610000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e45f50030',37,0,'admin','2024-04-17 22:29:53.781000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e466f0035',37,0,'admin','2024-04-17 22:29:53.903000',NULL,NULL,0,'','8a8080834fe543f7014ffbe8d68002df','',''),('8a0380938e682ec5018eee2e466f0035',39,1,'admin','2024-04-17 22:48:16.545000',NULL,NULL,0,'\0','8a8080834fe543f7014ffbe8d68002df','','\0'),('8a0380938e682ec5018eee2e4670003a',37,0,'admin','2024-04-17 22:29:53.904000',NULL,NULL,0,'','8a8080834fe543f7014ffbe8d68002e4','',''),('8a0380938e682ec5018eee2e4670003a',39,1,'admin','2024-04-17 22:48:16.545000',NULL,NULL,0,'\0','8a8080834fe543f7014ffbe8d68002e4','','\0'),('8a0380938e682ec5018eee2e46730042',37,0,'admin','2024-04-17 22:29:53.907000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e46730042',39,1,'admin','2024-04-17 22:48:16.546000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e46730044',37,0,'admin','2024-04-17 22:29:53.907000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e46730044',39,1,'admin','2024-04-17 22:48:16.546000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e4675004a',37,0,'admin','2024-04-17 22:29:53.909000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4675004a',39,1,'admin','2024-04-17 22:48:16.547000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e4675004c',37,0,'admin','2024-04-17 22:29:53.909000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4675004c',39,1,'admin','2024-04-17 22:48:16.547000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e46780052',37,0,'admin','2024-04-17 22:29:53.912000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e46780052',39,1,'admin','2024-04-17 22:48:16.547000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e46790055',37,0,'admin','2024-04-17 22:29:53.913000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e46790055',39,1,'admin','2024-04-17 22:48:16.547000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e467a0058',37,0,'admin','2024-04-17 22:29:53.914000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e467a0058',39,1,'admin','2024-04-17 22:48:16.547000',NULL,NULL,0,'\0',NULL,'','\0'),('8a0380938e682ec5018eee2e474d005c',37,0,'admin','2024-04-17 22:29:54.125000','A08',NULL,0,'\0','ff808181763fc06501764403dbea0050','','\0'),('8a0380938e682ec5018eee2e475c0063',37,0,'admin','2024-04-17 22:29:54.140000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e475c0065',37,0,'admin','2024-04-17 22:29:54.140000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e475c0067',37,0,'admin','2024-04-17 22:29:54.140000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e47c70072',37,0,'admin','2024-04-17 22:29:54.247000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e47c70074',37,0,'admin','2024-04-17 22:29:54.247000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e47c70076',37,0,'admin','2024-04-17 22:29:54.247000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4812007a',37,0,'admin','2024-04-17 22:29:54.322000',NULL,NULL,0,'','8ae18a6f5014101e015014d272830121','',''),('8a0380938e682ec5018eee2e4812007f',37,0,'admin','2024-04-17 22:29:54.322000',NULL,NULL,0,'','8ae18a6f5014101e015014d272840126','',''),('8a0380938e682ec5018eee2e48130087',37,0,'admin','2024-04-17 22:29:54.323000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4813008a',37,0,'admin','2024-04-17 22:29:54.323000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4814008d',37,0,'admin','2024-04-17 22:29:54.324000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48140093',37,0,'admin','2024-04-17 22:29:54.324000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48140095',37,0,'admin','2024-04-17 22:29:54.324000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4815009b',37,0,'admin','2024-04-17 22:29:54.325000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4815009d',37,0,'admin','2024-04-17 22:29:54.325000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4815009f',37,0,'admin','2024-04-17 22:29:54.325000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e487400a7',37,0,'admin','2024-04-17 22:29:54.420000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48b000ae',37,0,'admin','2024-04-17 22:29:54.480000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48ed00b5',37,0,'admin','2024-04-17 22:29:54.541000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e48ed00b7',37,0,'admin','2024-04-17 22:29:54.541000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e493300bf',37,0,'admin','2024-04-17 22:29:54.611000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e493300c1',37,0,'admin','2024-04-17 22:29:54.611000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e493400c3',37,0,'admin','2024-04-17 22:29:54.612000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e498300ca',37,0,'admin','2024-04-17 22:29:54.691000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e498300cc',37,0,'admin','2024-04-17 22:29:54.691000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e49d200d4',37,0,'admin','2024-04-17 22:29:54.770000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e49d200d6',37,0,'admin','2024-04-17 22:29:54.770000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2b00dd',37,0,'admin','2024-04-17 22:29:54.859000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2b00df',37,0,'admin','2024-04-17 22:29:54.859000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2b00e2',37,0,'admin','2024-04-17 22:29:54.859000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00e5',37,0,'admin','2024-04-17 22:29:54.860000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00e8',37,0,'admin','2024-04-17 22:29:54.860000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00eb',37,0,'admin','2024-04-17 22:29:54.860000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00ee',37,0,'admin','2024-04-17 22:29:54.860000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00f1',37,0,'admin','2024-04-17 22:29:54.860000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2c00f4',37,0,'admin','2024-04-17 22:29:54.861000',NULL,NULL,0,'',NULL,'','\0'),('8a0380938e682ec5018eee2e4a2d00f7',37,0,'admin','2024-04-17 22:29:54.861000',NULL,NULL,0,'',NULL,'','\0');
/*!40000 ALTER TABLE `condition_list_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_standard`
--

DROP TABLE IF EXISTS `condition_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_standard` (
  `standard_condition_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `invert_result` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `case_sensitive` bit(1) DEFAULT NULL,
  `src_data_type` int(11) DEFAULT NULL,
  `delimiter` varchar(45) DEFAULT NULL,
  `field_id` varchar(255) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`standard_condition_id`),
  KEY `idx_condition_standard_condition_list_id` (`condition_list_id`),
  KEY `idx_condition_standard_variable_id` (`variable_id`),
  KEY `idx_condition_standard_web_service_connection_id` (`ws_connection_id`),
  CONSTRAINT `FKkhfxc9oq7x7ny63ijaf74oevj` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKm2gmnftfhn3xvk9nvo5sn6nvr` FOREIGN KEY (`ws_connection_id`) REFERENCES `ws_connection` (`ws_connection_id`),
  CONSTRAINT `FKwq1xc4mtek0kolwcb948dkgv` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_standard`
--

LOCK TABLES `condition_standard` WRITE;
/*!40000 ALTER TABLE `condition_standard` DISABLE KEYS */;
INSERT INTO `condition_standard` VALUES ('8a0380938e682ec5018eee2e44240009','admin','2024-04-17 22:29:53.316000','admin','2024-04-17 22:29:53.316000',0,'',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','','4028cb0039ee5a2c0139ffd5d2fc009e','8a0380938e682ec5018eee2e44240008',NULL,NULL),('8a0380938e682ec5018eee2e466f0036','admin','2024-04-17 22:29:53.903000','admin','2024-04-17 22:48:16.546000',1,'',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','\0','8a8080834fe543f7014ffbe8d68002e0','8a0380938e682ec5018eee2e466f0035',NULL,NULL),('8a0380938e682ec5018eee2e4671003b','admin','2024-04-17 22:29:53.905000','admin','2024-04-17 22:48:16.546000',1,'\0',1,'\0',5,NULL,'PV1-36',0,0,1,3,'01','\0','8a8080834fe543f7014ffbe8d68002e5','8a0380938e682ec5018eee2e4670003a',NULL,NULL),('8a0380938e682ec5018eee2e474d005d','admin','2024-04-17 22:29:54.125000','admin','2024-04-17 22:29:54.125000',0,'\0',1,'\0',5,NULL,'MSH-9.1',0,0,1,3,'A08','\0','ff808181763fc06501764403dbea0051','8a0380938e682ec5018eee2e474d005c',NULL,NULL),('8a0380938e682ec5018eee2e4812007b','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,'\0',1,'\0',5,NULL,'PV1-36',0,0,1,3,'01','','8ae18a6f5014101e015014d272830122','8a0380938e682ec5018eee2e4812007a',NULL,NULL),('8a0380938e682ec5018eee2e48120080','admin','2024-04-17 22:29:54.322000','admin','2024-04-17 22:29:54.322000',0,'',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','','8ae18a6f5014101e015014d272840127','8a0380938e682ec5018eee2e4812007f',NULL,NULL);
/*!40000 ALTER TABLE `condition_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_standard_audit`
--

DROP TABLE IF EXISTS `condition_standard_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_standard_audit` (
  `standard_condition_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `invert_result` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `case_sensitive` bit(1) DEFAULT NULL,
  `src_data_type` int(11) DEFAULT NULL,
  `delimiter` varchar(45) DEFAULT NULL,
  `field_id` varchar(255) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`standard_condition_id`,`revision`),
  KEY `FKlrmslpa3rbmb4kvwa3xbn2g05` (`revision`),
  KEY `idx_condition_standard_audit_condition_list_id` (`condition_list_id`,`revision`),
  CONSTRAINT `FKlrmslpa3rbmb4kvwa3xbn2g05` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_standard_audit`
--

LOCK TABLES `condition_standard_audit` WRITE;
/*!40000 ALTER TABLE `condition_standard_audit` DISABLE KEYS */;
INSERT INTO `condition_standard_audit` VALUES ('8a0380938e682ec5018eee2e44240009',37,0,'admin','2024-04-17 22:29:53.316000','',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','','4028cb0039ee5a2c0139ffd5d2fc009e','8a0380938e682ec5018eee2e44240008',NULL,NULL),('8a0380938e682ec5018eee2e466f0036',37,0,'admin','2024-04-17 22:29:53.903000','',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','','8a8080834fe543f7014ffbe8d68002e0','8a0380938e682ec5018eee2e466f0035',NULL,NULL),('8a0380938e682ec5018eee2e466f0036',39,1,'admin','2024-04-17 22:48:16.546000','',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','\0','8a8080834fe543f7014ffbe8d68002e0','8a0380938e682ec5018eee2e466f0035',NULL,NULL),('8a0380938e682ec5018eee2e4671003b',37,0,'admin','2024-04-17 22:29:53.905000','\0',1,'\0',5,NULL,'PV1-36',0,0,1,3,'01','','8a8080834fe543f7014ffbe8d68002e5','8a0380938e682ec5018eee2e4670003a',NULL,NULL),('8a0380938e682ec5018eee2e4671003b',39,1,'admin','2024-04-17 22:48:16.546000','\0',1,'\0',5,NULL,'PV1-36',0,0,1,3,'01','\0','8a8080834fe543f7014ffbe8d68002e5','8a0380938e682ec5018eee2e4670003a',NULL,NULL),('8a0380938e682ec5018eee2e474d005d',37,0,'admin','2024-04-17 22:29:54.125000','\0',1,'\0',5,NULL,'MSH-9.1',0,0,1,3,'A08','\0','ff808181763fc06501764403dbea0051','8a0380938e682ec5018eee2e474d005c',NULL,NULL),('8a0380938e682ec5018eee2e4812007b',37,0,'admin','2024-04-17 22:29:54.322000','\0',1,'\0',5,NULL,'PV1-36',0,0,1,3,'01','','8ae18a6f5014101e015014d272830122','8a0380938e682ec5018eee2e4812007a',NULL,NULL),('8a0380938e682ec5018eee2e48120080',37,0,'admin','2024-04-17 22:29:54.322000','',1,'\0',5,NULL,'MSH-9.2',0,0,1,3,'A08','','8ae18a6f5014101e015014d272840127','8a0380938e682ec5018eee2e4812007f',NULL,NULL);
/*!40000 ALTER TABLE `condition_standard_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_request`
--

DROP TABLE IF EXISTS `csr_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_request` (
  `csr_request_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizational_unit` varchar(255) DEFAULT NULL,
  `signature_alg` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `subject_alternate_names` longblob DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`csr_request_id`),
  KEY `FKh5jhl8f1u4vpdaxoystog4cvw` (`ssl_key_id`),
  CONSTRAINT `FKh5jhl8f1u4vpdaxoystog4cvw` FOREIGN KEY (`ssl_key_id`) REFERENCES `ssl_key` (`ssl_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_request`
--

LOCK TABLES `csr_request` WRITE;
/*!40000 ALTER TABLE `csr_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `csr_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_message_count`
--

DROP TABLE IF EXISTS `daily_message_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_message_count` (
  `daily_message_count_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `erred_message_count` int(11) DEFAULT NULL,
  `instance_id` int(11) DEFAULT NULL,
  `received_message_count` int(11) DEFAULT NULL,
  `total_completed_count` int(11) DEFAULT NULL,
  `inbound_message_count` int(11) DEFAULT NULL,
  `inbound_spawned_message_count` int(11) DEFAULT NULL,
  `inbound_split_message_count` int(11) DEFAULT NULL,
  `messages_purged` bit(1) DEFAULT NULL,
  `reported` bit(1) DEFAULT NULL,
  `resubmitted_message_count` int(11) DEFAULT NULL,
  `resubmitted_spawned_message_count` int(11) DEFAULT NULL,
  `resubmitted_split_message_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`daily_message_count_id`),
  KEY `idx_daily_message_count_instance_id_reported` (`instance_id`,`reported`),
  KEY `idx_daily_message_count_instance_id_date` (`instance_id`,`date`),
  KEY `idx_daily_message_count_channel_id_date` (`channel_id`,`date`),
  KEY `idx_daily_message_count_reported_date` (`reported`,`date`),
  KEY `idx_daily_message_count_instance_id_purged` (`instance_id`,`messages_purged`),
  KEY `idx_daily_message_count_channel_id_instance_id_purged` (`channel_id`,`instance_id`,`messages_purged`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_message_count`
--

LOCK TABLES `daily_message_count` WRITE;
/*!40000 ALTER TABLE `daily_message_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_message_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_connection`
--

DROP TABLE IF EXISTS `db_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_connection` (
  `db_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `connection_pool_size` int(11) DEFAULT NULL,
  `connection_url` blob DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `driver` varchar(255) NOT NULL,
  `host` tinyblob DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `password` tinyblob DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `schema_name` tinyblob DEFAULT NULL,
  `user_name` tinyblob DEFAULT NULL,
  `validation_query` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`db_connection_id`),
  UNIQUE KEY `UKjqm6onv4ifggb8jfsspi7hprd` (`zone_id`,`name`),
  KEY `idx_db_connection_reference_id` (`reference_id`),
  KEY `FKdy7vwmk6017gr538uapniv39k` (`package_id`),
  CONSTRAINT `FKdy7vwmk6017gr538uapniv39k` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_connection`
--

LOCK TABLES `db_connection` WRITE;
/*!40000 ALTER TABLE `db_connection` DISABLE KEYS */;
INSERT INTO `db_connection` VALUES ('8a0380938e682ec5018eee2e43730001','admin','2024-04-17 22:29:53.139000','admin','2024-04-17 22:29:53.139000',0,NULL,NULL,'sample database','com.microsoft.sqlserver.jdbc.SQLServerDriver','Z��4��Z���c�^','CPS 12','x�u��g�+��.�ñ�c��*��a1�P\"�S�',7488,'���A9vF\0�Xu��','@��9\\0?� +{���','SELECT 1','8a0380938e682ec5018eee2e43340000',NULL,NULL,NULL,NULL,'\0','ff808181763fc065017643a2ec0a0017','','\0');
/*!40000 ALTER TABLE `db_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_connection_audit`
--

DROP TABLE IF EXISTS `db_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_connection_audit` (
  `db_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `connection_pool_size` int(11) DEFAULT NULL,
  `connection_url` blob DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `schema_name` tinyblob DEFAULT NULL,
  `user_name` tinyblob DEFAULT NULL,
  `validation_query` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`db_connection_id`,`revision`),
  KEY `FKqusk6gayncal7wgnw1vfsc5yt` (`revision`),
  CONSTRAINT `FKqusk6gayncal7wgnw1vfsc5yt` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_connection_audit`
--

LOCK TABLES `db_connection_audit` WRITE;
/*!40000 ALTER TABLE `db_connection_audit` DISABLE KEYS */;
INSERT INTO `db_connection_audit` VALUES ('8a0380938e682ec5018eee2e43730001',37,0,'admin','2024-04-17 22:29:53.139000',NULL,NULL,'sample database','com.microsoft.sqlserver.jdbc.SQLServerDriver','Z��4��Z���c�^','CPS 12',7488,'���A9vF\0�Xu��','@��9\\0?� +{���','SELECT 1','8a0380938e682ec5018eee2e43340000',NULL,NULL,NULL,NULL,'\0','ff808181763fc065017643a2ec0a0017','','\0');
/*!40000 ALTER TABLE `db_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_query_parameter`
--

DROP TABLE IF EXISTS `db_query_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_query_parameter` (
  `db_query_parameter_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `list_order` int(11) NOT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) NOT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `db_mapping_function_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`),
  KEY `idx_db_query_parameter_db_mapping_function_id` (`db_mapping_function_id`),
  CONSTRAINT `FKo3pgc95ubelddgosiyhudlqo0` FOREIGN KEY (`db_mapping_function_id`) REFERENCES `mapping_function_db` (`db_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_query_parameter`
--

LOCK TABLES `db_query_parameter` WRITE;
/*!40000 ALTER TABLE `db_query_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_query_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_query_parameter_audit`
--

DROP TABLE IF EXISTS `db_query_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_query_parameter_audit` (
  `db_query_parameter_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `db_mapping_function_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`,`revision`),
  KEY `FKqh7ut4v7lhf0441vd7ko9ybed` (`revision`),
  CONSTRAINT `FKqh7ut4v7lhf0441vd7ko9ybed` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_query_parameter_audit`
--

LOCK TABLES `db_query_parameter_audit` WRITE;
/*!40000 ALTER TABLE `db_query_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_query_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_db_query_parameter`
--

DROP TABLE IF EXISTS `destination_db_query_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_db_query_parameter` (
  `db_query_parameter_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `list_order` int(11) NOT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) NOT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`),
  KEY `idx_db_query_parameter_destination_node_id` (`destination_node_id`),
  CONSTRAINT `FKf9wb3uy4f5myiqucjjc7n1xnt` FOREIGN KEY (`destination_node_id`) REFERENCES `channel_node_destination` (`destination_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_db_query_parameter`
--

LOCK TABLES `destination_db_query_parameter` WRITE;
/*!40000 ALTER TABLE `destination_db_query_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_db_query_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_db_query_parameter_audit`
--

DROP TABLE IF EXISTS `destination_db_query_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_db_query_parameter_audit` (
  `db_query_parameter_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`,`revision`),
  KEY `FKkb5rkf146u7um09yhfg5tok80` (`revision`),
  CONSTRAINT `FKkb5rkf146u7um09yhfg5tok80` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_db_query_parameter_audit`
--

LOCK TABLES `destination_db_query_parameter_audit` WRITE;
/*!40000 ALTER TABLE `destination_db_query_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_db_query_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_node_completed_count`
--

DROP TABLE IF EXISTS `destination_node_completed_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_node_completed_count` (
  `destination_node_completed_count_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `destination_node_completed_count` int(11) DEFAULT NULL,
  `destination_node_id` varchar(255) DEFAULT NULL,
  `destination_node_index` int(11) DEFAULT NULL,
  `destination_node_title` varchar(255) DEFAULT NULL,
  `daily_message_count_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`destination_node_completed_count_id`),
  KEY `idx_destination_node_completed_count_daily_message_count_id` (`daily_message_count_id`),
  CONSTRAINT `FK3kjcqarf4vh00y97enpgdk835` FOREIGN KEY (`daily_message_count_id`) REFERENCES `daily_message_count` (`daily_message_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_node_completed_count`
--

LOCK TABLES `destination_node_completed_count` WRITE;
/*!40000 ALTER TABLE `destination_node_completed_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_node_completed_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_node_ssl_certificate`
--

DROP TABLE IF EXISTS `destination_node_ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_node_ssl_certificate` (
  `destination_node_ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`destination_node_ssl_certificate_id`),
  UNIQUE KEY `UKqx5bf8p5d4p58dy75ybejwkt1` (`destination_node_id`,`ssl_certificate_id`),
  KEY `destination_node_ssl_certificate_destination_id` (`destination_node_id`),
  KEY `destination_node_ssl_certificate_certificate_id` (`ssl_certificate_id`),
  CONSTRAINT `FK4brnobpuoena8smgv9v4apbkp` FOREIGN KEY (`destination_node_id`) REFERENCES `channel_node_destination` (`destination_node_id`),
  CONSTRAINT `FKcaux0hla3cdiq5oths3bt94ji` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_node_ssl_certificate`
--

LOCK TABLES `destination_node_ssl_certificate` WRITE;
/*!40000 ALTER TABLE `destination_node_ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_node_ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_node_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `destination_node_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_node_ssl_certificate_audit` (
  `destination_node_ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`destination_node_ssl_certificate_id`,`revision`),
  KEY `FKfwd5f62x0xb6dgtwbsxsmeb2w` (`revision`),
  KEY `idx_destination_node_ssl_certificate_audit_destination_node_id` (`destination_node_id`,`revision`),
  CONSTRAINT `FKfwd5f62x0xb6dgtwbsxsmeb2w` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_node_ssl_certificate_audit`
--

LOCK TABLES `destination_node_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `destination_node_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_node_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_ws_attachment`
--

DROP TABLE IF EXISTS `destination_ws_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_ws_attachment` (
  `ws_destination_attachment_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `content_id` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_destination_attachment_id`),
  KEY `idx_destination_ws_attachment_destination_node_id` (`destination_node_id`),
  CONSTRAINT `FKph420qr9k0fjwll7wvjyf6o0a` FOREIGN KEY (`destination_node_id`) REFERENCES `channel_node_destination` (`destination_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_ws_attachment`
--

LOCK TABLES `destination_ws_attachment` WRITE;
/*!40000 ALTER TABLE `destination_ws_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_ws_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_ws_attachment_audit`
--

DROP TABLE IF EXISTS `destination_ws_attachment_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_ws_attachment_audit` (
  `ws_destination_attachment_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `content_id` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_destination_attachment_id`,`revision`),
  KEY `FKc8686x7b490simkh3lvdjmnv6` (`revision`),
  KEY `idx_destination_ws_attachment_audit_destination_node_id` (`destination_node_id`,`revision`),
  CONSTRAINT `FKc8686x7b490simkh3lvdjmnv6` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_ws_attachment_audit`
--

LOCK TABLES `destination_ws_attachment_audit` WRITE;
/*!40000 ALTER TABLE `destination_ws_attachment_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_ws_attachment_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_ws_parameter`
--

DROP TABLE IF EXISTS `destination_ws_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_ws_parameter` (
  `ws_destination_parameter_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `custom_param` bit(1) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(8000) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_destination_parameter_id`),
  KEY `idx_destination_ws_parameter_destination_node_id` (`destination_node_id`),
  CONSTRAINT `FKkbea9henw0f1c7gcg8qgnrs1q` FOREIGN KEY (`destination_node_id`) REFERENCES `channel_node_destination` (`destination_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_ws_parameter`
--

LOCK TABLES `destination_ws_parameter` WRITE;
/*!40000 ALTER TABLE `destination_ws_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_ws_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination_ws_parameter_audit`
--

DROP TABLE IF EXISTS `destination_ws_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination_ws_parameter_audit` (
  `ws_destination_parameter_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `custom_param` bit(1) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(8000) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_destination_parameter_id`,`revision`),
  KEY `FKca1eht6xqcnwcmarg65lwyxil` (`revision`),
  KEY `idx_destination_ws_parameter_audit_destination_node_id` (`destination_node_id`,`revision`),
  CONSTRAINT `FKca1eht6xqcnwcmarg65lwyxil` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination_ws_parameter_audit`
--

LOCK TABLES `destination_ws_parameter_audit` WRITE;
/*!40000 ALTER TABLE `destination_ws_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination_ws_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicom_connection`
--

DROP TABLE IF EXISTS `dicom_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicom_connection` (
  `dicom_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `ae_title` varchar(16) DEFAULT NULL,
  `auto_add_presentation_contexts` bit(1) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `communication_timeout` int(11) DEFAULT NULL,
  `connect_timeout` int(11) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `max_pdu_size` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `presentation_contexts_csv` longblob DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `use_tls` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `idle_timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`dicom_connection_id`),
  UNIQUE KEY `UKa153bc4d2b3fhdsmy6ojhbdvt` (`zone_id`,`name`),
  KEY `idx_dicom_connection_reference_id` (`reference_id`),
  KEY `idx_dicom_connection_ssl_certificate_id` (`ssl_certificate_id`),
  KEY `FKhsdq8fm9be9so9cukg686l5q1` (`package_id`),
  CONSTRAINT `FK784r8xn55gllmfaygclq1jwio` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`),
  CONSTRAINT `FKhsdq8fm9be9so9cukg686l5q1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicom_connection`
--

LOCK TABLES `dicom_connection` WRITE;
/*!40000 ALTER TABLE `dicom_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `dicom_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicom_connection_audit`
--

DROP TABLE IF EXISTS `dicom_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicom_connection_audit` (
  `dicom_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `ae_title` varchar(16) DEFAULT NULL,
  `auto_add_presentation_contexts` bit(1) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `communication_timeout` int(11) DEFAULT NULL,
  `connect_timeout` int(11) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `max_pdu_size` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `presentation_contexts_csv` longblob DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `use_tls` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `idle_timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`dicom_connection_id`,`revision`),
  KEY `FKfk7gmc5qom9v8i3km4qkhs6ru` (`revision`),
  CONSTRAINT `FKfk7gmc5qom9v8i3km4qkhs6ru` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicom_connection_audit`
--

LOCK TABLES `dicom_connection_audit` WRITE;
/*!40000 ALTER TABLE `dicom_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dicom_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicom_connection_dicom_connection_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `dicom_connection_dicom_connection_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicom_connection_dicom_connection_ssl_certificate_audit` (
  `revision` int(11) NOT NULL,
  `dicom_connection_id` varchar(32) NOT NULL,
  `dicom_connection_ssl_certificate_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`dicom_connection_id`,`dicom_connection_ssl_certificate_id`),
  CONSTRAINT `FKf498cr9f65sbehrl169twwmdc` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicom_connection_dicom_connection_ssl_certificate_audit`
--

LOCK TABLES `dicom_connection_dicom_connection_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `dicom_connection_dicom_connection_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dicom_connection_dicom_connection_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicom_connection_ssl_certificate`
--

DROP TABLE IF EXISTS `dicom_connection_ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicom_connection_ssl_certificate` (
  `dicom_connection_ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`dicom_connection_ssl_certificate_id`),
  UNIQUE KEY `UKj0mslpkv9ln4sdkxw5q5vxbju` (`dicom_connection_id`,`ssl_certificate_id`),
  KEY `dicom_connection_ssl_certificate_connection_id` (`dicom_connection_id`),
  KEY `dicom_connection_ssl_certificate_certificate_id` (`ssl_certificate_id`),
  CONSTRAINT `FK4suqv4rm0dum71xnngcm3bax` FOREIGN KEY (`dicom_connection_id`) REFERENCES `dicom_connection` (`dicom_connection_id`),
  CONSTRAINT `FKs1qdiauyi9txasak2oanfmon4` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicom_connection_ssl_certificate`
--

LOCK TABLES `dicom_connection_ssl_certificate` WRITE;
/*!40000 ALTER TABLE `dicom_connection_ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `dicom_connection_ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicom_connection_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `dicom_connection_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicom_connection_ssl_certificate_audit` (
  `dicom_connection_ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`dicom_connection_ssl_certificate_id`,`revision`),
  KEY `FKouhu7jwgpblem05qt79i8a0rh` (`revision`),
  CONSTRAINT `FKouhu7jwgpblem05qt79i8a0rh` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicom_connection_ssl_certificate_audit`
--

LOCK TABLES `dicom_connection_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `dicom_connection_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dicom_connection_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicom_response`
--

DROP TABLE IF EXISTS `dicom_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicom_response` (
  `dicom_response_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `compressed_blobs` bit(1) DEFAULT NULL,
  `message_size` int(11) DEFAULT NULL,
  `response_blob` longblob DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`dicom_response_id`),
  KEY `idx_dicom_response_source_message_id` (`message_id`),
  CONSTRAINT `FK_DICOM_RESPONSE_SOURCE_ID` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicom_response`
--

LOCK TABLES `dicom_response` WRITE;
/*!40000 ALTER TABLE `dicom_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `dicom_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_management_form_configuration`
--

DROP TABLE IF EXISTS `error_management_form_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_management_form_configuration` (
  `error_management_form_configuration_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `auto_open` bit(1) DEFAULT NULL,
  `batch_link` bit(1) DEFAULT NULL,
  `email_addresses` longblob DEFAULT NULL,
  `individual_Link` bit(1) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `regex_match_expression` longblob NOT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `form_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`error_management_form_configuration_id`),
  KEY `idx_error_management_form_configuration_reference_id` (`reference_id`),
  KEY `FKhglktb1frtyyk3rrln2c868sg` (`channel_id`),
  KEY `FK9snijaycn4hu95a5r040gd5bk` (`form_id`),
  CONSTRAINT `FK9snijaycn4hu95a5r040gd5bk` FOREIGN KEY (`form_id`) REFERENCES `form` (`form_id`),
  CONSTRAINT `FKhglktb1frtyyk3rrln2c868sg` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_management_form_configuration`
--

LOCK TABLES `error_management_form_configuration` WRITE;
/*!40000 ALTER TABLE `error_management_form_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_management_form_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_management_form_configuration_audit`
--

DROP TABLE IF EXISTS `error_management_form_configuration_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_management_form_configuration_audit` (
  `error_management_form_configuration_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `auto_open` bit(1) DEFAULT NULL,
  `batch_link` bit(1) DEFAULT NULL,
  `email_addresses` longblob DEFAULT NULL,
  `individual_Link` bit(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `regex_match_expression` longblob DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `form_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`error_management_form_configuration_id`,`revision`),
  KEY `FKkbo4t9rql55jg4vbv68dyj43v` (`revision`),
  CONSTRAINT `FKkbo4t9rql55jg4vbv68dyj43v` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_management_form_configuration_audit`
--

LOCK TABLES `error_management_form_configuration_audit` WRITE;
/*!40000 ALTER TABLE `error_management_form_configuration_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_management_form_configuration_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exception_to_case_match_string`
--

DROP TABLE IF EXISTS `exception_to_case_match_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exception_to_case_match_string` (
  `exception_to_case_match_string_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `match_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`exception_to_case_match_string_id`),
  KEY `idx_match_string` (`match_string`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exception_to_case_match_string`
--

LOCK TABLES `exception_to_case_match_string` WRITE;
/*!40000 ALTER TABLE `exception_to_case_match_string` DISABLE KEYS */;
INSERT INTO `exception_to_case_match_string` VALUES (1,'sys','2023-03-29 15:29:28.583000','sys','2023-03-29 15:29:28.583000',0,'Communications link failure'),(2,'sys','2023-03-29 15:29:28.597000','sys','2023-03-29 15:29:28.597000',0,'Couldn\'t create backup directory structure'),(3,'sys','2023-03-29 15:29:28.610000','sys','2023-03-29 15:29:28.610000',0,'Database is not unicode safe'),(4,'sys','2023-03-29 15:29:28.620000','sys','2023-03-29 15:29:28.620000',0,'Duplicate entry'),(5,'sys','2023-03-29 15:29:28.636000','sys','2023-03-29 15:29:28.636000',0,'Endpoint threads for channelId'),(6,'sys','2023-03-29 15:29:28.644000','sys','2023-03-29 15:29:28.644000',0,'Error doing nightly system configuration backup: Unable to delete file'),(7,'sys','2023-03-29 15:29:28.651000','sys','2023-03-29 15:29:28.651000',0,'FTP Source is using an absolute path'),(8,'sys','2023-03-29 15:29:28.657000','sys','2023-03-29 15:29:28.657000',0,'File corrupted while reading record'),(9,'sys','2023-03-29 15:29:28.666000','sys','2023-03-29 15:29:28.666000',0,'HTTP invoker remote service at [http://qvera.com/qieAdmin/httpInvoker'),(10,'sys','2023-03-29 15:29:28.673000','sys','2023-03-29 15:29:28.673000',0,'Keystore was tampered with, or password was incorrect'),(11,'sys','2023-03-29 15:29:28.681000','sys','2023-03-29 15:29:28.681000',0,'KillThread'),(12,'sys','2023-03-29 15:29:28.687000','sys','2023-03-29 15:29:28.687000',0,'License key invalid or expired'),(13,'sys','2023-03-29 15:29:28.694000','sys','2023-03-29 15:29:28.694000',0,'Nightly check-in has failed for'),(14,'sys','2023-03-29 15:29:28.706000','sys','2023-03-29 15:29:28.706000',0,'Nightly system config backup failed'),(15,'sys','2023-03-29 15:29:28.714000','sys','2023-03-29 15:29:28.714000',0,'NoClassDefFoundError'),(16,'sys','2023-03-29 15:29:28.721000','sys','2023-03-29 15:29:28.721000',0,'OutOfMemoryError'),(17,'sys','2023-03-29 15:29:28.727000','sys','2023-03-29 15:29:28.727000',0,'Purge appears to have hung'),(18,'sys','2023-03-29 15:29:28.735000','sys','2023-03-29 15:29:28.735000',0,'Reason: The password of the account has expired.'),(19,'sys','2023-03-29 15:29:28.741000','sys','2023-03-29 15:29:28.741000',0,'SQLServerException: Software caused connection abort: recv failed'),(20,'sys','2023-03-29 15:29:28.748000','sys','2023-03-29 15:29:28.748000',0,'SQLServerException: The TCP/IP connection to the host'),(21,'sys','2023-03-29 15:29:28.763000','sys','2023-03-29 15:29:28.763000',0,'The WSReceiver was started'),(22,'sys','2023-03-29 15:29:28.770000','sys','2023-03-29 15:29:28.770000',0,'The table \'system_log\' is full'),(23,'sys','2023-03-29 15:29:28.776000','sys','2023-03-29 15:29:28.776000',0,'The table \'system_log_blob\' is full'),(24,'sys','2023-03-29 15:29:28.801000','sys','2023-03-29 15:29:28.801000',0,'The transaction log for database'),(25,'sys','2023-03-29 15:29:28.811000','sys','2023-03-29 15:29:28.811000',0,'There is insufficient system memory in resource pool'),(26,'sys','2023-03-29 15:29:28.818000','sys','2023-03-29 15:29:28.818000',0,'There is not enough space on the disk'),(27,'sys','2023-03-29 15:29:28.826000','sys','2023-03-29 15:29:28.826000',0,'This environment is running MyISAM engine tables'),(28,'sys','2023-03-29 15:29:28.833000','sys','2023-03-29 15:29:28.833000',0,'Timeout waiting for idle object'),(29,'sys','2023-03-29 15:29:28.840000','sys','2023-03-29 15:29:28.840000',0,'Unable to overwrite \'updates'),(30,'sys','2023-03-29 15:29:28.846000','sys','2023-03-29 15:29:28.846000',0,'Unable to perform nightly check in, will try again'),(31,'sys','2023-03-29 15:29:28.852000','sys','2023-03-29 15:29:28.852000',0,'Unable to write \'updates.txt\''),(32,'sys','2023-03-29 15:29:28.859000','sys','2023-03-29 15:29:28.859000',0,'Unknown License ID and/or Activation Code'),(33,'sys','2023-03-29 15:29:28.864000','sys','2023-03-29 15:29:28.864000',0,'at org.mozilla.javascript.IRFactory.transformInfix'),(34,'sys','2023-03-29 15:29:28.869000','sys','2023-03-29 15:29:28.869000',0,'com.microsoft.sqlserver.jdbc.SQLServerException: Read timed out'),(35,'sys','2023-03-29 15:29:28.874000','sys','2023-03-29 15:29:28.874000',0,'data leaf table'),(36,'sys','2023-03-29 15:29:28.881000','sys','2023-03-29 15:29:28.881000',0,'filegroup is full'),(37,'sys','2023-03-29 15:29:28.963000','sys','2023-03-29 15:29:28.963000',0,'innodb_log_file_size'),(38,'sys','2023-03-29 15:29:28.985000','sys','2023-03-29 15:29:28.985000',0,'is parsing a message using encoding'),(39,'sys','2023-03-29 15:29:29.000000','sys','2023-03-29 15:29:29.000000',0,'lib\\resources.jar'),(40,'sys','2023-03-29 15:29:29.070000','sys','2023-03-29 15:29:29.070000',0,'marked as crashed and should be repaired'),(41,'sys','2023-03-29 15:29:29.082000','sys','2023-03-29 15:29:29.082000',0,'max_allowed_packet'),(42,'sys','2023-03-29 15:29:29.089000','sys','2023-03-29 15:29:29.089000',0,'missing build dependencies'),(43,'sys','2023-03-29 15:29:29.095000','sys','2023-03-29 15:29:29.095000',0,'org.h2.jdbc.JdbcBatchUpdateException: IO Exception: \"java.io.IOException: Stream Closed\"'),(44,'sys','2023-03-29 15:29:29.102000','sys','2023-03-29 15:29:29.102000',0,'org.h2.jdbc.JdbcSQLException: IO Exception: \"java.io.IOException: Stream Closed\"'),(45,'sys','2023-03-29 15:29:29.119000','sys','2023-03-29 15:29:29.119000',0,'org.h2.jdbc.JdbcSQLException: Row not found when trying to delete'),(46,'sys','2023-03-29 15:29:29.163000','sys','2023-03-29 15:29:29.163000',0,'scope set to \'Channel\'');
/*!40000 ALTER TABLE `exception_to_case_match_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `find_process`
--

DROP TABLE IF EXISTS `find_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `find_process` (
  `find_process_id` varchar(36) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `cancellable_request_state` varchar(255) NOT NULL,
  `error_message` longblob DEFAULT NULL,
  `find_process_type` varchar(255) NOT NULL,
  `response` longblob DEFAULT NULL,
  PRIMARY KEY (`find_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `find_process`
--

LOCK TABLES `find_process` WRITE;
/*!40000 ALTER TABLE `find_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `find_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form` (
  `form_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `content` longblob DEFAULT NULL,
  `content_encrypted` longblob DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `error_management_form` bit(1) DEFAULT NULL,
  `form_timeout_sec` int(11) DEFAULT NULL,
  `load_script` longblob DEFAULT NULL,
  `load_script_encrypted` longblob DEFAULT NULL,
  `log_level` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `post_script` longblob DEFAULT NULL,
  `post_script_encrypted` longblob DEFAULT NULL,
  `require_secure_access` bit(1) DEFAULT NULL,
  `url_key` varchar(45) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`form_id`),
  UNIQUE KEY `UKi9h9r4xgc521fxotkavcwi0nx` (`zone_id`,`name`),
  UNIQUE KEY `UK8npa7xxkmm72qwcn0d9pujyqx` (`url_key`),
  KEY `idx_form_reference_id` (`reference_id`),
  KEY `FKc5r5668deaoa0x2bl9kmxervj` (`package_id`),
  CONSTRAINT `FKc5r5668deaoa0x2bl9kmxervj` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_audit`
--

DROP TABLE IF EXISTS `form_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_audit` (
  `form_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `content` longblob DEFAULT NULL,
  `content_encrypted` longblob DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `error_management_form` bit(1) DEFAULT NULL,
  `form_timeout_sec` int(11) DEFAULT NULL,
  `load_script` longblob DEFAULT NULL,
  `load_script_encrypted` longblob DEFAULT NULL,
  `log_level` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `post_script` longblob DEFAULT NULL,
  `post_script_encrypted` longblob DEFAULT NULL,
  `require_secure_access` bit(1) DEFAULT NULL,
  `url_key` varchar(45) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`form_id`,`revision`),
  KEY `FK1w4gtid0wr6t0mtqfmvyjibfm` (`revision`),
  CONSTRAINT `FK1w4gtid0wr6t0mtqfmvyjibfm` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_audit`
--

LOCK TABLES `form_audit` WRITE;
/*!40000 ALTER TABLE `form_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_attachment_ws`
--

DROP TABLE IF EXISTS `function_attachment_ws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_attachment_ws` (
  `ws_function_attachment_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `content_id` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `ws_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_function_attachment_id`),
  KEY `idx_function_attachment_ws_ws_mapping_function_id` (`ws_mapping_function_id`),
  CONSTRAINT `FKo4qjsk4eum8trcjlpgjsno0pk` FOREIGN KEY (`ws_mapping_function_id`) REFERENCES `mapping_function_ws` (`ws_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_attachment_ws`
--

LOCK TABLES `function_attachment_ws` WRITE;
/*!40000 ALTER TABLE `function_attachment_ws` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_attachment_ws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_attachment_ws_audit`
--

DROP TABLE IF EXISTS `function_attachment_ws_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_attachment_ws_audit` (
  `ws_function_attachment_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `content_id` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `ws_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_function_attachment_id`,`revision`),
  KEY `FKfxrl7cig8yyj83np4n731pnx` (`revision`),
  CONSTRAINT `FKfxrl7cig8yyj83np4n731pnx` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_attachment_ws_audit`
--

LOCK TABLES `function_attachment_ws_audit` WRITE;
/*!40000 ALTER TABLE `function_attachment_ws_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_attachment_ws_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_parameter_ws`
--

DROP TABLE IF EXISTS `function_parameter_ws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_parameter_ws` (
  `ws_function_parameter_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `custom_param` bit(1) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(8000) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `ws_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_function_parameter_id`),
  KEY `idx_function_parameter_ws_ws_mapping_function_id` (`ws_mapping_function_id`),
  CONSTRAINT `FK3cqv3ge0hgid03fav5f8q6ou8` FOREIGN KEY (`ws_mapping_function_id`) REFERENCES `mapping_function_ws` (`ws_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_parameter_ws`
--

LOCK TABLES `function_parameter_ws` WRITE;
/*!40000 ALTER TABLE `function_parameter_ws` DISABLE KEYS */;
INSERT INTO `function_parameter_ws` VALUES ('8a0380938e682ec5018eee2e475d0068','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,'',5,'address',4,'/','',NULL,'8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e475d0069','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,'',5,'key',3,'AIzaSyDOTZcsIyhhshuzUqBCOoQQ5dznYhTEE6s','',NULL,'8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e475d006a','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,'',5,'sensor',3,'false','',NULL,'8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e4a2d00f8','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,'',5,'h',3,'180','',NULL,'8a0380938e682ec5018eee2e4a2d00f6'),('8a0380938e682ec5018eee2e4a2d00f9','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,'',5,'w',3,'90','',NULL,'8a0380938e682ec5018eee2e4a2d00f6');
/*!40000 ALTER TABLE `function_parameter_ws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_parameter_ws_audit`
--

DROP TABLE IF EXISTS `function_parameter_ws_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_parameter_ws_audit` (
  `ws_function_parameter_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `custom_param` bit(1) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(8000) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `ws_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_function_parameter_id`,`revision`),
  KEY `FKdn0uj4w8i74rp78cra17bjdc3` (`revision`),
  CONSTRAINT `FKdn0uj4w8i74rp78cra17bjdc3` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_parameter_ws_audit`
--

LOCK TABLES `function_parameter_ws_audit` WRITE;
/*!40000 ALTER TABLE `function_parameter_ws_audit` DISABLE KEYS */;
INSERT INTO `function_parameter_ws_audit` VALUES ('8a0380938e682ec5018eee2e475d0068',37,0,'admin','2024-04-17 22:29:54.141000','',5,'address',4,'/','',NULL,'8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e475d0069',37,0,'admin','2024-04-17 22:29:54.141000','',5,'key',3,'AIzaSyDOTZcsIyhhshuzUqBCOoQQ5dznYhTEE6s','',NULL,'8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e475d006a',37,0,'admin','2024-04-17 22:29:54.141000','',5,'sensor',3,'false','',NULL,'8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e4a2d00f8',37,0,'admin','2024-04-17 22:29:54.861000','',5,'h',3,'180','',NULL,'8a0380938e682ec5018eee2e4a2d00f6'),('8a0380938e682ec5018eee2e4a2d00f9',37,0,'admin','2024-04-17 22:29:54.861000','',5,'w',3,'90','',NULL,'8a0380938e682ec5018eee2e4a2d00f6');
/*!40000 ALTER TABLE `function_parameter_ws_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_case`
--

DROP TABLE IF EXISTS `function_target_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_case` (
  `case_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `case_mapping_function_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`case_function_target_id`),
  KEY `idx_function_target_case_case_mapping_function_id` (`case_mapping_function_id`),
  CONSTRAINT `FKaqgkfnlpwcq9d6lcrssbxa2ef` FOREIGN KEY (`case_mapping_function_id`) REFERENCES `mapping_function_case` (`case_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_case`
--

LOCK TABLES `function_target_case` WRITE;
/*!40000 ALTER TABLE `function_target_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_case_audit`
--

DROP TABLE IF EXISTS `function_target_case_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_case_audit` (
  `case_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `case_mapping_function_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`case_function_target_id`,`revision`),
  KEY `FKoutrar1l0qmod6oxjd4iuvsh8` (`revision`),
  CONSTRAINT `FKoutrar1l0qmod6oxjd4iuvsh8` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_case_audit`
--

LOCK TABLES `function_target_case_audit` WRITE;
/*!40000 ALTER TABLE `function_target_case_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_case_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_date`
--

DROP TABLE IF EXISTS `function_target_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_date` (
  `date_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `date_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`date_function_target_id`),
  KEY `idx_function_target_date_date_mapping_function_id` (`date_mapping_function_id`),
  CONSTRAINT `FKqiqwdpgh82u5winp80lroif5a` FOREIGN KEY (`date_mapping_function_id`) REFERENCES `mapping_function_date` (`date_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_date`
--

LOCK TABLES `function_target_date` WRITE;
/*!40000 ALTER TABLE `function_target_date` DISABLE KEYS */;
INSERT INTO `function_target_date` VALUES ('8a0380938e682ec5018eee2e46780053','admin','2024-04-17 22:29:53.912000','admin','2024-04-17 22:48:16.547000',1,'EVN-2','','EVN-2',1,1,'\0','8a8080834fe543f7014ffbe8d68102fd','8a0380938e682ec5018eee2e46770051'),('8a0380938e682ec5018eee2e48130088','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,'EVN-2','','EVN-2',1,1,'','8ae18a6f5014101e015014d27284012f','8a0380938e682ec5018eee2e48130086'),('8a0380938e682ec5018eee2e4a2b00e0','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,'PID-7','','PID-7',1,1,'','ff808181763fc06501764d90b0300149','8a0380938e682ec5018eee2e4a2b00de');
/*!40000 ALTER TABLE `function_target_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_date_audit`
--

DROP TABLE IF EXISTS `function_target_date_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_date_audit` (
  `date_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `date_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`date_function_target_id`,`revision`),
  KEY `FKcclklh5155ylyb6x15824ovw` (`revision`),
  CONSTRAINT `FKcclklh5155ylyb6x15824ovw` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_date_audit`
--

LOCK TABLES `function_target_date_audit` WRITE;
/*!40000 ALTER TABLE `function_target_date_audit` DISABLE KEYS */;
INSERT INTO `function_target_date_audit` VALUES ('8a0380938e682ec5018eee2e46780053',37,0,'admin','2024-04-17 22:29:53.912000','EVN-2','','EVN-2',1,1,'','8a8080834fe543f7014ffbe8d68102fd','8a0380938e682ec5018eee2e46770051'),('8a0380938e682ec5018eee2e46780053',39,1,'admin','2024-04-17 22:48:16.547000','EVN-2','','EVN-2',1,1,'\0','8a8080834fe543f7014ffbe8d68102fd','8a0380938e682ec5018eee2e46770051'),('8a0380938e682ec5018eee2e48130088',37,0,'admin','2024-04-17 22:29:54.323000','EVN-2','','EVN-2',1,1,'','8ae18a6f5014101e015014d27284012f','8a0380938e682ec5018eee2e48130086'),('8a0380938e682ec5018eee2e4a2b00e0',37,0,'admin','2024-04-17 22:29:54.859000','PID-7','','PID-7',1,1,'','ff808181763fc06501764d90b0300149','8a0380938e682ec5018eee2e4a2b00de');
/*!40000 ALTER TABLE `function_target_date_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_db`
--

DROP TABLE IF EXISTS `function_target_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_db` (
  `db_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `db_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`db_function_target_id`),
  KEY `idx_function_target_db_db_mapping_function_id` (`db_mapping_function_id`),
  CONSTRAINT `FKqxq2coh52ghkuxpchtrvwuf5r` FOREIGN KEY (`db_mapping_function_id`) REFERENCES `mapping_function_db` (`db_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_db`
--

LOCK TABLES `function_target_db` WRITE;
/*!40000 ALTER TABLE `function_target_db` DISABLE KEYS */;
INSERT INTO `function_target_db` VALUES ('8a0380938e682ec5018eee2e4546001c','admin','2024-04-17 22:29:53.607000','admin','2024-04-17 22:29:53.607000',0,'dob','','PID-7',1,1,'','ff808181763fc065017643aa1613001a','8a0380938e682ec5018eee2e4546001a'),('8a0380938e682ec5018eee2e45f60031','admin','2024-04-17 22:29:53.782000','admin','2024-04-17 22:29:53.782000',0,'medrecno','','PID-4',1,1,'','ff808181763fc065017643b5df2b0025','8a0380938e682ec5018eee2e45f5002f');
/*!40000 ALTER TABLE `function_target_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_db_audit`
--

DROP TABLE IF EXISTS `function_target_db_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_db_audit` (
  `db_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `db_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`db_function_target_id`,`revision`),
  KEY `FKabvm4ciyrt49pt62fk5s9pbk3` (`revision`),
  CONSTRAINT `FKabvm4ciyrt49pt62fk5s9pbk3` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_db_audit`
--

LOCK TABLES `function_target_db_audit` WRITE;
/*!40000 ALTER TABLE `function_target_db_audit` DISABLE KEYS */;
INSERT INTO `function_target_db_audit` VALUES ('8a0380938e682ec5018eee2e4546001c',37,0,'admin','2024-04-17 22:29:53.607000','dob','','PID-7',1,1,'','ff808181763fc065017643aa1613001a','8a0380938e682ec5018eee2e4546001a'),('8a0380938e682ec5018eee2e45f60031',37,0,'admin','2024-04-17 22:29:53.782000','medrecno','','PID-4',1,1,'','ff808181763fc065017643b5df2b0025','8a0380938e682ec5018eee2e45f5002f');
/*!40000 ALTER TABLE `function_target_db_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_pf`
--

DROP TABLE IF EXISTS `function_target_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_pf` (
  `pf_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `pf_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pf_function_target_id`),
  KEY `idx_function_target_pf_pf_mapping_function_id` (`pf_mapping_function_id`),
  CONSTRAINT `FK6vcifv5qb0nf4kjh57vp8nmvw` FOREIGN KEY (`pf_mapping_function_id`) REFERENCES `mapping_function_pf` (`pf_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_pf`
--

LOCK TABLES `function_target_pf` WRITE;
/*!40000 ALTER TABLE `function_target_pf` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_pf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_pf_audit`
--

DROP TABLE IF EXISTS `function_target_pf_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_pf_audit` (
  `pf_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `pf_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pf_function_target_id`,`revision`),
  KEY `FK6hol3vdwoflovpcys4qps9laj` (`revision`),
  CONSTRAINT `FK6hol3vdwoflovpcys4qps9laj` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_pf_audit`
--

LOCK TABLES `function_target_pf_audit` WRITE;
/*!40000 ALTER TABLE `function_target_pf_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_pf_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_replace`
--

DROP TABLE IF EXISTS `function_target_replace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_replace` (
  `replace_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `replace_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`replace_function_target_id`),
  KEY `idx_function_target_replace_replace_mapping_function_id` (`replace_mapping_function_id`),
  CONSTRAINT `FKnhmugvw7iv3u7myd8upov8gru` FOREIGN KEY (`replace_mapping_function_id`) REFERENCES `mapping_function_replace` (`replace_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_replace`
--

LOCK TABLES `function_target_replace` WRITE;
/*!40000 ALTER TABLE `function_target_replace` DISABLE KEYS */;
INSERT INTO `function_target_replace` VALUES ('8a0380938e682ec5018eee2e46790056','admin','2024-04-17 22:29:53.913000','admin','2024-04-17 22:48:16.547000',1,'IN1-3','','IN1-3',1,1,'\0','8a8080834fe543f7014ffbe8d6810300','8a0380938e682ec5018eee2e46780054'),('8a0380938e682ec5018eee2e4813008b','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,'IN1-3','','IN1-3',1,1,'','8ae18a6f5014101e015014d272840132','8a0380938e682ec5018eee2e48130089');
/*!40000 ALTER TABLE `function_target_replace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_replace_audit`
--

DROP TABLE IF EXISTS `function_target_replace_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_replace_audit` (
  `replace_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `replace_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`replace_function_target_id`,`revision`),
  KEY `FKanoc8sdvm7p5jd9wpmll9d042` (`revision`),
  CONSTRAINT `FKanoc8sdvm7p5jd9wpmll9d042` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_replace_audit`
--

LOCK TABLES `function_target_replace_audit` WRITE;
/*!40000 ALTER TABLE `function_target_replace_audit` DISABLE KEYS */;
INSERT INTO `function_target_replace_audit` VALUES ('8a0380938e682ec5018eee2e46790056',37,0,'admin','2024-04-17 22:29:53.913000','IN1-3','','IN1-3',1,1,'','8a8080834fe543f7014ffbe8d6810300','8a0380938e682ec5018eee2e46780054'),('8a0380938e682ec5018eee2e46790056',39,1,'admin','2024-04-17 22:48:16.547000','IN1-3','','IN1-3',1,1,'\0','8a8080834fe543f7014ffbe8d6810300','8a0380938e682ec5018eee2e46780054'),('8a0380938e682ec5018eee2e4813008b',37,0,'admin','2024-04-17 22:29:54.323000','IN1-3','','IN1-3',1,1,'','8ae18a6f5014101e015014d272840132','8a0380938e682ec5018eee2e48130089');
/*!40000 ALTER TABLE `function_target_replace_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_standard`
--

DROP TABLE IF EXISTS `function_target_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_standard` (
  `standard_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `source_path` varchar(255) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `standard_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`standard_function_target_id`),
  KEY `idx_function_target_standard_standard_mapping_function_id` (`standard_mapping_function_id`),
  CONSTRAINT `FK86q9vpgb0i2jlr87y8ag6p2qj` FOREIGN KEY (`standard_mapping_function_id`) REFERENCES `mapping_function_standard` (`standard_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_standard`
--

LOCK TABLES `function_target_standard` WRITE;
/*!40000 ALTER TABLE `function_target_standard` DISABLE KEYS */;
INSERT INTO `function_target_standard` VALUES ('8a0380938e682ec5018eee2e442a0014','admin','2024-04-17 22:29:53.322000','admin','2024-04-17 22:29:53.322000',0,'\'A01\'','','MSH-9.2',1,1,'A01',3,'','4028cb0039ee5a2c0139ffd7bd6700c0','8a0380938e682ec5018eee2e442a0012'),('8a0380938e682ec5018eee2e4548001f','admin','2024-04-17 22:29:53.608000','admin','2024-04-17 22:29:53.608000',0,'PID-4','','patientId',2,2,'PID-4',4,'','8ae18a4c4b363a16014b5641253a0024','8a0380938e682ec5018eee2e4547001d'),('8a0380938e682ec5018eee2e45480020','admin','2024-04-17 22:29:53.608000','admin','2024-04-17 22:29:53.608000',0,'PID-4','','PID-2',1,1,'PID-4',4,'','8ae18a4c4b363a16014b5641253b0025','8a0380938e682ec5018eee2e4547001d'),('8a0380938e682ec5018eee2e45490023','admin','2024-04-17 22:29:53.609000','admin','2024-04-17 22:29:53.609000',0,'facilityId','','MSH-4.2',1,1,'facilityId',7,'','8ae18a4c4b363a16014b5641253a0023','8a0380938e682ec5018eee2e45480021'),('8a0380938e682ec5018eee2e454a0026','admin','2024-04-17 22:29:53.610000','admin','2024-04-17 22:29:53.610000',0,'facilityId','','PV1-3',1,1,'facilityId',7,'','ff808181763fc0650176437bc6480011','8a0380938e682ec5018eee2e45490024'),('8a0380938e682ec5018eee2e46740045','admin','2024-04-17 22:29:53.908000','admin','2024-04-17 22:48:16.546000',1,'\'A01\'','','MSH-9.2',1,1,'A01',3,'\0','8a8080834fe543f7014ffbe8d68102ef','8a0380938e682ec5018eee2e46730043'),('8a0380938e682ec5018eee2e4676004d','admin','2024-04-17 22:29:53.910000','admin','2024-04-17 22:48:16.547000',1,'PID-3','','PID-4',1,1,'PID-3',4,'\0','8a8080834fe543f7014ffbe8d68102f7','8a0380938e682ec5018eee2e4675004b'),('8a0380938e682ec5018eee2e467a0059','admin','2024-04-17 22:29:53.914000','admin','2024-04-17 22:48:16.547000',1,'\'A03\'','','MSH-9.2',1,1,'A03',3,'\0','8a8080834fe543f7014ffbe8d6810303','8a0380938e682ec5018eee2e467a0057'),('8a0380938e682ec5018eee2e4814008e','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,'\'A03\'','','MSH-9.2',1,1,'A03',3,'','8ae18a6f5014101e015014d272840135','8a0380938e682ec5018eee2e4814008c'),('8a0380938e682ec5018eee2e48150096','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,'PID-3','','PID-4',1,1,'PID-3',4,'','8ae18a6f5014101e015014d272850140','8a0380938e682ec5018eee2e48140094'),('8a0380938e682ec5018eee2e481600a0','admin','2024-04-17 22:29:54.326000','admin','2024-04-17 22:29:54.326000',0,'\'A01\'','','MSH-9.2',1,1,'A01',3,'','8ae18a6f5014101e015014d272850148','8a0380938e682ec5018eee2e4815009e'),('8a0380938e682ec5018eee2e48ed00b8','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,'/','','/',1,1,'/',4,'','402848813dd304a4013dd313e30a0009','8a0380938e682ec5018eee2e48ed00b6'),('8a0380938e682ec5018eee2e498300cd','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,'/bookstore/book[contains(title/@lang,\\\'ren\\\')]/price','','/',1,1,'/bookstore/book[contains(title/@lang,\\\'ren\\\')]/price',4,'','8ae180383a1d1e5f013a1ee2a33b0032','8a0380938e682ec5018eee2e498300cb'),('8a0380938e682ec5018eee2e4a2b00e3','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,'PV1-7','','OBR-16',1,1,'PV1-7',4,'','ff808181763fc06501764b69c744013b','8a0380938e682ec5018eee2e4a2b00e1'),('8a0380938e682ec5018eee2e4a2c00e6','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,'\'Arne Paulsen\'','','PID-5',1,1,'Arne Paulsen',3,'','ff808181763fc06501764ed6d27b0156','8a0380938e682ec5018eee2e4a2c00e4'),('8a0380938e682ec5018eee2e4a2c00e9','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,'\'633 Sitka Dr.\'','','PID-11.1',1,1,'633 Sitka Dr.',3,'','ff808181763fc06501764ed6d27b0159','8a0380938e682ec5018eee2e4a2c00e7'),('8a0380938e682ec5018eee2e4a2c00ec','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,'\'Walnut Creek\'','','PID-11.3',1,1,'Walnut Creek',3,'','ff808181763fc06501764ed6d27b015c','8a0380938e682ec5018eee2e4a2c00ea'),('8a0380938e682ec5018eee2e4a2c00ef','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,'\'CA\'','','PID-11.4',1,1,'CA',3,'','ff808181763fc06501764ed6d27b015f','8a0380938e682ec5018eee2e4a2c00ed'),('8a0380938e682ec5018eee2e4a2c00f2','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.860000',0,'\'94598\'','','PID-11.5',1,1,'94598',3,'','ff808181763fc06501764ed802100162','8a0380938e682ec5018eee2e4a2c00f0');
/*!40000 ALTER TABLE `function_target_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_standard_audit`
--

DROP TABLE IF EXISTS `function_target_standard_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_standard_audit` (
  `standard_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `source_path` varchar(255) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `standard_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`standard_function_target_id`,`revision`),
  KEY `FK3cm0fhe84yabdtuyocnuhc43c` (`revision`),
  CONSTRAINT `FK3cm0fhe84yabdtuyocnuhc43c` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_standard_audit`
--

LOCK TABLES `function_target_standard_audit` WRITE;
/*!40000 ALTER TABLE `function_target_standard_audit` DISABLE KEYS */;
INSERT INTO `function_target_standard_audit` VALUES ('8a0380938e682ec5018eee2e442a0014',37,0,'admin','2024-04-17 22:29:53.322000','\'A01\'','','MSH-9.2',1,1,'A01',3,'','4028cb0039ee5a2c0139ffd7bd6700c0','8a0380938e682ec5018eee2e442a0012'),('8a0380938e682ec5018eee2e4548001f',37,0,'admin','2024-04-17 22:29:53.608000','PID-4','','patientId',2,2,'PID-4',4,'','8ae18a4c4b363a16014b5641253a0024','8a0380938e682ec5018eee2e4547001d'),('8a0380938e682ec5018eee2e45480020',37,0,'admin','2024-04-17 22:29:53.608000','PID-4','','PID-2',1,1,'PID-4',4,'','8ae18a4c4b363a16014b5641253b0025','8a0380938e682ec5018eee2e4547001d'),('8a0380938e682ec5018eee2e45490023',37,0,'admin','2024-04-17 22:29:53.609000','facilityId','','MSH-4.2',1,1,'facilityId',7,'','8ae18a4c4b363a16014b5641253a0023','8a0380938e682ec5018eee2e45480021'),('8a0380938e682ec5018eee2e454a0026',37,0,'admin','2024-04-17 22:29:53.610000','facilityId','','PV1-3',1,1,'facilityId',7,'','ff808181763fc0650176437bc6480011','8a0380938e682ec5018eee2e45490024'),('8a0380938e682ec5018eee2e46740045',37,0,'admin','2024-04-17 22:29:53.908000','\'A01\'','','MSH-9.2',1,1,'A01',3,'','8a8080834fe543f7014ffbe8d68102ef','8a0380938e682ec5018eee2e46730043'),('8a0380938e682ec5018eee2e46740045',39,1,'admin','2024-04-17 22:48:16.546000','\'A01\'','','MSH-9.2',1,1,'A01',3,'\0','8a8080834fe543f7014ffbe8d68102ef','8a0380938e682ec5018eee2e46730043'),('8a0380938e682ec5018eee2e4676004d',37,0,'admin','2024-04-17 22:29:53.910000','PID-3','','PID-4',1,1,'PID-3',4,'','8a8080834fe543f7014ffbe8d68102f7','8a0380938e682ec5018eee2e4675004b'),('8a0380938e682ec5018eee2e4676004d',39,1,'admin','2024-04-17 22:48:16.547000','PID-3','','PID-4',1,1,'PID-3',4,'\0','8a8080834fe543f7014ffbe8d68102f7','8a0380938e682ec5018eee2e4675004b'),('8a0380938e682ec5018eee2e467a0059',37,0,'admin','2024-04-17 22:29:53.914000','\'A03\'','','MSH-9.2',1,1,'A03',3,'','8a8080834fe543f7014ffbe8d6810303','8a0380938e682ec5018eee2e467a0057'),('8a0380938e682ec5018eee2e467a0059',39,1,'admin','2024-04-17 22:48:16.547000','\'A03\'','','MSH-9.2',1,1,'A03',3,'\0','8a8080834fe543f7014ffbe8d6810303','8a0380938e682ec5018eee2e467a0057'),('8a0380938e682ec5018eee2e4814008e',37,0,'admin','2024-04-17 22:29:54.324000','\'A03\'','','MSH-9.2',1,1,'A03',3,'','8ae18a6f5014101e015014d272840135','8a0380938e682ec5018eee2e4814008c'),('8a0380938e682ec5018eee2e48150096',37,0,'admin','2024-04-17 22:29:54.325000','PID-3','','PID-4',1,1,'PID-3',4,'','8ae18a6f5014101e015014d272850140','8a0380938e682ec5018eee2e48140094'),('8a0380938e682ec5018eee2e481600a0',37,0,'admin','2024-04-17 22:29:54.326000','\'A01\'','','MSH-9.2',1,1,'A01',3,'','8ae18a6f5014101e015014d272850148','8a0380938e682ec5018eee2e4815009e'),('8a0380938e682ec5018eee2e48ed00b8',37,0,'admin','2024-04-17 22:29:54.541000','/','','/',1,1,'/',4,'','402848813dd304a4013dd313e30a0009','8a0380938e682ec5018eee2e48ed00b6'),('8a0380938e682ec5018eee2e498300cd',37,0,'admin','2024-04-17 22:29:54.691000','/bookstore/book[contains(title/@lang,\\\'ren\\\')]/price','','/',1,1,'/bookstore/book[contains(title/@lang,\\\'ren\\\')]/price',4,'','8ae180383a1d1e5f013a1ee2a33b0032','8a0380938e682ec5018eee2e498300cb'),('8a0380938e682ec5018eee2e4a2b00e3',37,0,'admin','2024-04-17 22:29:54.859000','PV1-7','','OBR-16',1,1,'PV1-7',4,'','ff808181763fc06501764b69c744013b','8a0380938e682ec5018eee2e4a2b00e1'),('8a0380938e682ec5018eee2e4a2c00e6',37,0,'admin','2024-04-17 22:29:54.860000','\'Arne Paulsen\'','','PID-5',1,1,'Arne Paulsen',3,'','ff808181763fc06501764ed6d27b0156','8a0380938e682ec5018eee2e4a2c00e4'),('8a0380938e682ec5018eee2e4a2c00e9',37,0,'admin','2024-04-17 22:29:54.860000','\'633 Sitka Dr.\'','','PID-11.1',1,1,'633 Sitka Dr.',3,'','ff808181763fc06501764ed6d27b0159','8a0380938e682ec5018eee2e4a2c00e7'),('8a0380938e682ec5018eee2e4a2c00ec',37,0,'admin','2024-04-17 22:29:54.860000','\'Walnut Creek\'','','PID-11.3',1,1,'Walnut Creek',3,'','ff808181763fc06501764ed6d27b015c','8a0380938e682ec5018eee2e4a2c00ea'),('8a0380938e682ec5018eee2e4a2c00ef',37,0,'admin','2024-04-17 22:29:54.860000','\'CA\'','','PID-11.4',1,1,'CA',3,'','ff808181763fc06501764ed6d27b015f','8a0380938e682ec5018eee2e4a2c00ed'),('8a0380938e682ec5018eee2e4a2c00f2',37,0,'admin','2024-04-17 22:29:54.860000','\'94598\'','','PID-11.5',1,1,'94598',3,'','ff808181763fc06501764ed802100162','8a0380938e682ec5018eee2e4a2c00f0');
/*!40000 ALTER TABLE `function_target_standard_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_sub_string`
--

DROP TABLE IF EXISTS `function_target_sub_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_sub_string` (
  `sub_string_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `sub_string_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sub_string_function_target_id`),
  KEY `idx_function_target_sub_string_sub_string_mapping_function_id` (`sub_string_mapping_function_id`),
  CONSTRAINT `FKdippna5criajnyhpddfwtme8i` FOREIGN KEY (`sub_string_mapping_function_id`) REFERENCES `mapping_function_sub_string` (`sub_string_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_sub_string`
--

LOCK TABLES `function_target_sub_string` WRITE;
/*!40000 ALTER TABLE `function_target_sub_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_sub_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_sub_string_audit`
--

DROP TABLE IF EXISTS `function_target_sub_string_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_sub_string_audit` (
  `sub_string_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `sub_string_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sub_string_function_target_id`,`revision`),
  KEY `FK1i42jnqcj8wmpt43hpjjeakw7` (`revision`),
  CONSTRAINT `FK1i42jnqcj8wmpt43hpjjeakw7` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_sub_string_audit`
--

LOCK TABLES `function_target_sub_string_audit` WRITE;
/*!40000 ALTER TABLE `function_target_sub_string_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_sub_string_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_table`
--

DROP TABLE IF EXISTS `function_target_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_table` (
  `table_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `table_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`table_function_target_id`),
  KEY `idx_function_target_table_table_mapping_function_id` (`table_mapping_function_id`),
  CONSTRAINT `FKpqc2hhhdhjfmss63s6nr3tf5d` FOREIGN KEY (`table_mapping_function_id`) REFERENCES `mapping_function_table` (`table_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_table`
--

LOCK TABLES `function_target_table` WRITE;
/*!40000 ALTER TABLE `function_target_table` DISABLE KEYS */;
INSERT INTO `function_target_table` VALUES ('8a0380938e682ec5018eee2e454b0029','admin','2024-04-17 22:29:53.611000','admin','2024-04-17 22:29:53.611000',0,'PV1-7.1','','PV1-7.1',1,1,'','ff808181763fc06501764396f8ee0015','8a0380938e682ec5018eee2e454a0027'),('8a0380938e682ec5018eee2e4a2d00f5','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,'PID-8','','PID-8',1,1,'','ff808181763fc06501764d874b190146','8a0380938e682ec5018eee2e4a2c00f3');
/*!40000 ALTER TABLE `function_target_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_table_audit`
--

DROP TABLE IF EXISTS `function_target_table_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_table_audit` (
  `table_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `table_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`table_function_target_id`,`revision`),
  KEY `FKw6g856qod5s2iqg9yrcuuy98` (`revision`),
  CONSTRAINT `FKw6g856qod5s2iqg9yrcuuy98` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_table_audit`
--

LOCK TABLES `function_target_table_audit` WRITE;
/*!40000 ALTER TABLE `function_target_table_audit` DISABLE KEYS */;
INSERT INTO `function_target_table_audit` VALUES ('8a0380938e682ec5018eee2e454b0029',37,0,'admin','2024-04-17 22:29:53.611000','PV1-7.1','','PV1-7.1',1,1,'','ff808181763fc06501764396f8ee0015','8a0380938e682ec5018eee2e454a0027'),('8a0380938e682ec5018eee2e4a2d00f5',37,0,'admin','2024-04-17 22:29:54.861000','PID-8','','PID-8',1,1,'','ff808181763fc06501764d874b190146','8a0380938e682ec5018eee2e4a2c00f3');
/*!40000 ALTER TABLE `function_target_table_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_template`
--

DROP TABLE IF EXISTS `function_target_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_template` (
  `template_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `template_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`template_function_target_id`),
  KEY `idx_function_target_template_template_mapping_function_id` (`template_mapping_function_id`),
  CONSTRAINT `FK3ovpjeud32t2io5ge4mhpiw9y` FOREIGN KEY (`template_mapping_function_id`) REFERENCES `mapping_function_template` (`template_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_template`
--

LOCK TABLES `function_target_template` WRITE;
/*!40000 ALTER TABLE `function_target_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_template_audit`
--

DROP TABLE IF EXISTS `function_target_template_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_template_audit` (
  `template_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `template_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`template_function_target_id`,`revision`),
  KEY `FKaj2nx02r4xa8t9x778kimtty` (`revision`),
  CONSTRAINT `FKaj2nx02r4xa8t9x778kimtty` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_template_audit`
--

LOCK TABLES `function_target_template_audit` WRITE;
/*!40000 ALTER TABLE `function_target_template_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_target_template_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_ws`
--

DROP TABLE IF EXISTS `function_target_ws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_ws` (
  `ws_function_target_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `ws_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_function_target_id`),
  KEY `idx_function_target_ws_ws_mapping_function_id` (`ws_mapping_function_id`),
  CONSTRAINT `FK6y5fgt915sor0osbj1mbim37w` FOREIGN KEY (`ws_mapping_function_id`) REFERENCES `mapping_function_ws` (`ws_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_ws`
--

LOCK TABLES `function_target_ws` WRITE;
/*!40000 ALTER TABLE `function_target_ws` DISABLE KEYS */;
INSERT INTO `function_target_ws` VALUES ('8a0380938e682ec5018eee2e475d006b','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,NULL,'','/',1,1,'','ff808181763fc06501764898e29300ab','8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e4a2d00fa','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,NULL,'','bmi',1,2,'','ff808181763fc06501764eaa28580153','8a0380938e682ec5018eee2e4a2d00f6');
/*!40000 ALTER TABLE `function_target_ws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_target_ws_audit`
--

DROP TABLE IF EXISTS `function_target_ws_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_target_ws_audit` (
  `ws_function_target_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `create_if_needed` bit(1) DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `ws_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_function_target_id`,`revision`),
  KEY `FKgis9242gde7ka7v6d366x18sq` (`revision`),
  CONSTRAINT `FKgis9242gde7ka7v6d366x18sq` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_target_ws_audit`
--

LOCK TABLES `function_target_ws_audit` WRITE;
/*!40000 ALTER TABLE `function_target_ws_audit` DISABLE KEYS */;
INSERT INTO `function_target_ws_audit` VALUES ('8a0380938e682ec5018eee2e475d006b',37,0,'admin','2024-04-17 22:29:54.141000',NULL,'','/',1,1,'','ff808181763fc06501764898e29300ab','8a0380938e682ec5018eee2e475c0066'),('8a0380938e682ec5018eee2e4a2d00fa',37,0,'admin','2024-04-17 22:29:54.861000',NULL,'','bmi',1,2,'','ff808181763fc06501764eaa28580153','8a0380938e682ec5018eee2e4a2d00f6');
/*!40000 ALTER TABLE `function_target_ws_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_listener_session`
--

DROP TABLE IF EXISTS `http_listener_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `http_listener_session` (
  `http_listener_session_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `authenticated_user_id` varchar(255) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `last_request` datetime(6) NOT NULL,
  `original_request_as_xml` longblob DEFAULT NULL,
  `user_authenticated` bit(1) DEFAULT NULL,
  PRIMARY KEY (`http_listener_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_listener_session`
--

LOCK TABLES `http_listener_session` WRITE;
/*!40000 ALTER TABLE `http_listener_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `http_listener_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jettysessions`
--

DROP TABLE IF EXISTS `jettysessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jettysessions` (
  `sessionId` varchar(120) NOT NULL,
  `contextPath` varchar(60) NOT NULL,
  `virtualHost` varchar(60) NOT NULL,
  `lastNode` varchar(60) DEFAULT NULL,
  `accessTime` bigint(20) DEFAULT NULL,
  `lastAccessTime` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `cookieTime` bigint(20) DEFAULT NULL,
  `lastSavedTime` bigint(20) DEFAULT NULL,
  `expiryTime` bigint(20) DEFAULT NULL,
  `maxInterval` bigint(20) DEFAULT NULL,
  `map` longblob DEFAULT NULL,
  PRIMARY KEY (`sessionId`,`contextPath`,`virtualHost`),
  KEY `idx_jettysessions_expiry` (`expiryTime`),
  KEY `idx_jettysessions_session` (`sessionId`,`contextPath`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jettysessions`
--

LOCK TABLES `jettysessions` WRITE;
/*!40000 ALTER TABLE `jettysessions` DISABLE KEYS */;
INSERT INTO `jettysessions` VALUES ('node0121ot7bph7tsocsh1kdl4emwt15','','0.0.0.0','node0',1714595735843,1714595731841,1714595437795,0,1714595735859,1714596035859,300000,'��\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number������\0\0xp\0\0\0w\0loggedIn\0t\0truew\0session_locked\0sr\0java.lang.Boolean� r�՜��\0Z\0valuexp\0w\0userSessionInfo\0sr\0#com.qvera.qie.utils.UserSessionInfo^xƊ\'�;\0L\0hostNamet\0Ljava/lang/String;xpt\0192.168.22.1w\Z\0SPRING_SECURITY_CONTEXT\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0D\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0D\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0D\0L\0roleq\0~\0xpt\0PERMISSION_APPsq\0~\0t\0PERMISSION_ADMINxq\0~\0sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0D\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0\n10.131.0.2t\0!node01o6bfuw3z9ju21u5hz8gw0dqqt14psr\0-com.qvera.qie.dao.security.UserDetailsAdapter�������\0L\0usert\0/Lcom/qvera/qie/persistable/security/ServerUser;xpsr\0-com.qvera.qie.persistable.security.ServerUser/m��U���\0Z\0forceModificationForAuditZ\0loginPasswordChangedZ\0updatedViaImportL\0emailVerificationExpiredAftert\0Ljava/time/Instant;L\0emailVerificationPasscodeq\0~\0L\0\rloginPasswordq\0~\0L\0mutedAdminAlertst\0Ljava/util/Set;L\0oldPasswordsq\0~\0&L\0permissionsq\0~\0&L\0securedDataq\0~\0L\0singleUsePasswordq\0~\0L\0\ZsingleUsePasswordTimestampt\0Ljava/sql/Timestamp;L\0twoFactorAuthenticationCodeq\0~\0L\0#twoFactorAuthenticationExpiredAfterq\0~\0%L\0userSettingsq\0~\0L\0zonePermissionsq\0~\0&xr\0+com.qvera.qie.web.persistable.security.User�C-_�Ƈ�\0Z\0\remailVerifiedZ\0lockedDueToInvalidLoginAttemptsZ\0managementApiUserZ\0tempPasswordZ\0use2FaL\0daysPasswordValidt\0Ljava/lang/Integer;L\0descriptionq\0~\0L\0emailq\0~\0L\0fullNameq\0~\0L\0invalidLoginAttemptsq\0~\0)L\0lastLoginTimestampq\0~\0\'L\0lockTimeoutq\0~\0)L\0\rlogoutTimeoutq\0~\0)L\0managementApiTokenq\0~\0L\0minPasswordStrengthq\0~\0L\0newPasswordq\0~\0L\0passwordChangedDatet\0#Lcom/qvera/qie/web/persistable/Day;L\0phoneq\0~\0L\0useridq\0~\0xr\05com.qvera.qie.web.persistable.AbstractBasePersistable�f�)eIk�\0Z\0isNewI\0versionL\0createdByUseridq\0~\0L\0createdTimestampq\0~\0\'L\0modifiedByUseridq\0~\0L\0modifiedTimestampq\0~\0\'xp\0\0\0\0t\0syssr\0java.sql.Timestamp&��S�e\0I\0nanosxr\0java.util.Datehj�KYt\0\0xpw\0\0�-��x!���t\0adminsq\0~\0.w\0\0��.B�x	=�\0\0\0\0\0sq\0~\0\0\0\0\0\0ppt\0System Administratorsq\0~\0\0\0\0\0sq\0~\0.w\0\0�,fpx9)-�pppt\0Mediumpsr\0!com.qvera.qie.web.persistable.DayYEq\0`w�\n\0L\0dayq\0~\0)L\0monthq\0~\0)L\0yearq\0~\0)xpsq\0~\0\0\0\0\0sq\0~\0\0\0\0\0sq\0~\0\0\0\0�pt\0admin\0ppt\0 05b76249e94dc130350eff002c251c1asr\0/org.hibernate.collection.internal.PersistentSet�G�y�ɑ}\0L\0setq\0~\0&xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW�]��sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Axp\0����\0\0\0\0q\0~\0=q\0~\0,t\0>com.qvera.qie.persistable.security.ServerUser.mutedAdminAlertspppsq\0~\0?\0����\0\0\0\0q\0~\0=q\0~\0,t\0:com.qvera.qie.persistable.security.ServerUser.oldPasswordspppsq\0~\0?\0����\0\0\0q\0~\0=q\0~\0,t\09com.qvera.qie.persistable.security.ServerUser.permissionspsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0sr\03com.qvera.qie.persistable.security.ServerPermissionǮP��o��\0\0xr\01com.qvera.qie.web.persistable.security.Permission��X��,\0L\0descriptionq\0~\0L\0permissionIdq\0~\0)L\0permissionNameq\0~\0xq\0~\0+\0\0\0\0\0t\0syssq\0~\0.w\0\0�-��x7���t\0syssq\0~\0.w\0\0�-��x7���t\0*Edit system configuration and manage userssq\0~\0\0\0\0\0q\0~\0q\0~\0Lsq\0~\0J\0\0\0\0\0t\0syssq\0~\0.w\0\0�-��x6=�t\0syssq\0~\0.w\0\0�-��x6=�t\0Access Applicationq\0~\05q\0~\0\Zq\0~\0Sxsr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0Lq\0~\0Sxpppppta{\"qieEditorFontSize\":\"10pt\",\"testPanelPlaySpeed\":\"1\",\"testPanelShowTree\":\"false\",\"allowLoadThemeFromCookies\":\"false\",\"enableLiveAutoComplete\":\"true\",\"popupMaximized\":\"true\",\"qieEditorLineHeight\":\"1.2\",\"testPanelStepMappings\":\"true\",\"navPanelExpanded\":\"true\",\"isTextEditorNodeTreeVisible\":\"true\",\"qieEditorFont\":\"Courier New\",\"enableAutoComplete\":\"true\"}sq\0~\0?\0����\0\0\0q\0~\0=q\0~\0,t\0=com.qvera.qie.persistable.security.ServerUser.zonePermissionspsq\0~\0H?@\0\0\0\0\0w\0\0\0\0\0\0sr\07com.qvera.qie.persistable.security.ServerZonePermission�s�ʀ`,\0Z\0forceModificationForAuditL\0securedDataq\0~\0xr\05com.qvera.qie.web.persistable.security.ZonePermission_�kCx�}\0Z\0alertZ\0editZ\0errorZ\0manageZ\0viewL\0useridq\0~\0L\0zoneIdq\0~\0L\0zonePermissionIdq\0~\0)xq\0~\0+\0\0\0\0\0t\0adminsq\0~\0.w\0\0��.B�xsY@t\0adminsq\0~\0.w\0\0��.B�xsY@\0t\0admint\0 8a0380938e682ec5018eee2e43340000sq\0~\0\0\0\0\0\0pq\0~\0asq\0~\0_\0\0\0\0\0t\0adminsq\0~\0.w\0\0��.B�xT��t\0adminsq\0~\0.w\0\0��.B�xT��\0t\0admint\0 8a0380ca872dfb8c01872dfc08310001q\0~\0;\0pq\0~\0isq\0~\0_\0\0\0\0\0t\0adminsq\0~\0.w\0\0��.B�x\'\0t\0adminsq\0~\0.w\0\0��.B�x\'\0\0\0t\0admint\0 8a0380ca872dfb8c01872dfc081f0000sq\0~\0\0\0\0\0\0pq\0~\0pxsq\0~\0Yw\0\0\0?@\0\0\0\0\0q\0~\0iq\0~\0pq\0~\0ax');
/*!40000 ALTER TABLE `jettysessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_api`
--

DROP TABLE IF EXISTS `management_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_api` (
  `profile_id` varchar(5) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `enable_management_api` bit(1) DEFAULT NULL,
  `management_port` int(11) DEFAULT NULL,
  `use_client_auth` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `manage_users` bit(1) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `idx_management_api_ssl_certificate_id` (`ssl_certificate_id`),
  KEY `idx_management_api_reference_id` (`reference_id`),
  CONSTRAINT `FKrr2x4th7u7ylik1eri3neare2` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_api`
--

LOCK TABLES `management_api` WRITE;
/*!40000 ALTER TABLE `management_api` DISABLE KEYS */;
INSERT INTO `management_api` VALUES ('live','admin','2024-04-17 22:29:54.956000','admin','2024-04-17 22:29:54.956000',0,'\0',NULL,'\0',NULL,'',NULL,'\0');
/*!40000 ALTER TABLE `management_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_api_audit`
--

DROP TABLE IF EXISTS `management_api_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_api_audit` (
  `profile_id` varchar(5) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `enable_management_api` bit(1) DEFAULT NULL,
  `management_port` int(11) DEFAULT NULL,
  `use_client_auth` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `manage_users` bit(1) DEFAULT NULL,
  PRIMARY KEY (`profile_id`,`revision`),
  KEY `FKqpxhrhy6ikd228fso1oucqo8s` (`revision`),
  CONSTRAINT `FKqpxhrhy6ikd228fso1oucqo8s` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_api_audit`
--

LOCK TABLES `management_api_audit` WRITE;
/*!40000 ALTER TABLE `management_api_audit` DISABLE KEYS */;
INSERT INTO `management_api_audit` VALUES ('live',37,0,'admin','2024-04-17 22:29:54.956000','\0',NULL,'\0',NULL,'',NULL,'\0');
/*!40000 ALTER TABLE `management_api_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_api_management_api_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `management_api_management_api_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_api_management_api_ssl_certificate_audit` (
  `revision` int(11) NOT NULL,
  `profile_id` varchar(5) NOT NULL,
  `management_api_ssl_certificate_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`profile_id`,`management_api_ssl_certificate_id`),
  CONSTRAINT `FKkd70jjibwbg8rbas36cg054s6` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_api_management_api_ssl_certificate_audit`
--

LOCK TABLES `management_api_management_api_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `management_api_management_api_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_api_management_api_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_api_ssl_certificate`
--

DROP TABLE IF EXISTS `management_api_ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_api_ssl_certificate` (
  `management_api_ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `profile_id` varchar(5) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`management_api_ssl_certificate_id`),
  UNIQUE KEY `UKbp3t6xf0eigwt2hh6n7e2svvq` (`profile_id`,`ssl_certificate_id`),
  KEY `management_api_ssl_certificate_connection_id` (`profile_id`),
  KEY `management_api_ssl_certificate_certificate_id` (`ssl_certificate_id`),
  CONSTRAINT `FKq6t9nivs4aq0t3detgwo27c7j` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`),
  CONSTRAINT `FKsge43txqpqg9ru25eyvxcney0` FOREIGN KEY (`profile_id`) REFERENCES `management_api` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_api_ssl_certificate`
--

LOCK TABLES `management_api_ssl_certificate` WRITE;
/*!40000 ALTER TABLE `management_api_ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_api_ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_api_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `management_api_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_api_ssl_certificate_audit` (
  `management_api_ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `profile_id` varchar(5) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`management_api_ssl_certificate_id`,`revision`),
  KEY `FKt4gwwjsqo9beapgdhr17caqgy` (`revision`),
  CONSTRAINT `FKt4gwwjsqo9beapgdhr17caqgy` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_api_ssl_certificate_audit`
--

LOCK TABLES `management_api_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `management_api_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_api_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping`
--

DROP TABLE IF EXISTS `mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping` (
  `mapping_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `published_mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_id`),
  KEY `idx_mapping_reference_id` (`reference_id`),
  KEY `idx_mapping_published_mapping_id` (`published_mapping_id`),
  KEY `FKds2gnk92q5dywc0but3bp6pbv` (`package_id`),
  CONSTRAINT `FKds2gnk92q5dywc0but3bp6pbv` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `FKn84wtx0yopf50rw7res0uspxd` FOREIGN KEY (`published_mapping_id`) REFERENCES `mapping` (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping`
--

LOCK TABLES `mapping` WRITE;
/*!40000 ALTER TABLE `mapping` DISABLE KEYS */;
INSERT INTO `mapping` VALUES ('8a0380938e682ec5018eee2e4428000f','admin','2024-04-17 22:29:53.320000','admin','2024-04-17 22:29:53.320000',0,'Create A01 and send before A04',NULL,NULL,'',NULL,NULL,NULL,NULL,'4028cb0039ee5a2c0139ffd5d2fc00a9','','',NULL),('8a0380938e682ec5018eee2e45450019','admin','2024-04-17 22:29:53.605000','admin','2024-04-17 22:29:53.605000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b559ad3510011','','',NULL),('8a0380938e682ec5018eee2e45f5002e','admin','2024-04-17 22:29:53.781000','admin','2024-04-17 22:29:53.781000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014b37af80047','','',NULL),('8a0380938e682ec5018eee2e46720040','admin','2024-04-17 22:29:53.906000','admin','2024-04-17 22:48:16.546000',1,'Create A01 and send before A04',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102ea','','\0',NULL),('8a0380938e682ec5018eee2e46740048','admin','2024-04-17 22:29:53.908000','admin','2024-04-17 22:48:16.546000',1,'A08',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f2','','\0',NULL),('8a0380938e682ec5018eee2e46770050','admin','2024-04-17 22:29:53.911000','admin','2024-04-17 22:48:16.546000',1,'Create A03',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102fa','','\0',NULL),('8a0380938e682ec5018eee2e475c0061','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180663a188bf1013a19a71a7a0004','','',NULL),('8a0380938e682ec5018eee2e47c70070','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'4028cb0039d6564f0139eab3a48e008a','','',NULL),('8a0380938e682ec5018eee2e48130085','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,'Create A03',NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d27284012c','','',NULL),('8a0380938e682ec5018eee2e48140091','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,'A08',NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d27285013b','','',NULL),('8a0380938e682ec5018eee2e48150099','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,'Create A01 and send before A04',NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d272850143','','',NULL),('8a0380938e682ec5018eee2e487400a5','admin','2024-04-17 22:29:54.420000','admin','2024-04-17 22:29:54.420000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a3f4e9c6f7c014e9c87e89b0008','','',NULL),('8a0380938e682ec5018eee2e48af00ac','admin','2024-04-17 22:29:54.479000','admin','2024-04-17 22:29:54.479000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d78416018e','','',NULL),('8a0380938e682ec5018eee2e48ed00b3','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1e2be85c0012','','',NULL),('8a0380938e682ec5018eee2e493300bd','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1eb15710001f','','',NULL),('8a0380938e682ec5018eee2e498300c8','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1edd6aae002b','','',NULL),('8a0380938e682ec5018eee2e49d200d2','admin','2024-04-17 22:29:54.770000','admin','2024-04-17 22:29:54.770000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'4028a30f6bd7dee1016bd89d10bf0002','','',NULL),('8a0380938e682ec5018eee2e4a2b00db','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b5ba96ecf004f','','',NULL);
/*!40000 ALTER TABLE `mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_audit`
--

DROP TABLE IF EXISTS `mapping_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_audit` (
  `mapping_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `published_mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_id`,`revision`),
  KEY `FKc3gdt2cl1ppl6ee816vg9y4wf` (`revision`),
  CONSTRAINT `FKc3gdt2cl1ppl6ee816vg9y4wf` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_audit`
--

LOCK TABLES `mapping_audit` WRITE;
/*!40000 ALTER TABLE `mapping_audit` DISABLE KEYS */;
INSERT INTO `mapping_audit` VALUES ('8a0380938e682ec5018eee2e4428000f',37,0,'admin','2024-04-17 22:29:53.320000','Create A01 and send before A04',NULL,NULL,'',NULL,NULL,NULL,NULL,'4028cb0039ee5a2c0139ffd5d2fc00a9','','',NULL),('8a0380938e682ec5018eee2e45450019',37,0,'admin','2024-04-17 22:29:53.605000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b559ad3510011','','',NULL),('8a0380938e682ec5018eee2e45f5002e',37,0,'admin','2024-04-17 22:29:53.781000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014b37af80047','','',NULL),('8a0380938e682ec5018eee2e46720040',37,0,'admin','2024-04-17 22:29:53.906000','Create A01 and send before A04',NULL,NULL,'',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102ea','','',NULL),('8a0380938e682ec5018eee2e46720040',39,1,'admin','2024-04-17 22:48:16.546000','Create A01 and send before A04',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102ea','','\0',NULL),('8a0380938e682ec5018eee2e46740048',37,0,'admin','2024-04-17 22:29:53.908000','A08',NULL,NULL,'',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f2','','',NULL),('8a0380938e682ec5018eee2e46740048',39,1,'admin','2024-04-17 22:48:16.546000','A08',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102f2','','\0',NULL),('8a0380938e682ec5018eee2e46770050',37,0,'admin','2024-04-17 22:29:53.911000','Create A03',NULL,NULL,'',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102fa','','',NULL),('8a0380938e682ec5018eee2e46770050',39,1,'admin','2024-04-17 22:48:16.546000','Create A03',NULL,NULL,'\0',NULL,NULL,NULL,NULL,'8a8080834fe543f7014ffbe8d68102fa','','\0',NULL),('8a0380938e682ec5018eee2e475c0061',37,0,'admin','2024-04-17 22:29:54.140000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180663a188bf1013a19a71a7a0004','','',NULL),('8a0380938e682ec5018eee2e47c70070',37,0,'admin','2024-04-17 22:29:54.247000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'4028cb0039d6564f0139eab3a48e008a','','',NULL),('8a0380938e682ec5018eee2e48130085',37,0,'admin','2024-04-17 22:29:54.323000','Create A03',NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d27284012c','','',NULL),('8a0380938e682ec5018eee2e48140091',37,0,'admin','2024-04-17 22:29:54.324000','A08',NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d27285013b','','',NULL),('8a0380938e682ec5018eee2e48150099',37,0,'admin','2024-04-17 22:29:54.325000','Create A01 and send before A04',NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d272850143','','',NULL),('8a0380938e682ec5018eee2e487400a5',37,0,'admin','2024-04-17 22:29:54.420000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a3f4e9c6f7c014e9c87e89b0008','','',NULL),('8a0380938e682ec5018eee2e48af00ac',37,0,'admin','2024-04-17 22:29:54.479000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a6f5014101e015014d78416018e','','',NULL),('8a0380938e682ec5018eee2e48ed00b3',37,0,'admin','2024-04-17 22:29:54.541000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1e2be85c0012','','',NULL),('8a0380938e682ec5018eee2e493300bd',37,0,'admin','2024-04-17 22:29:54.611000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1eb15710001f','','',NULL),('8a0380938e682ec5018eee2e498300c8',37,0,'admin','2024-04-17 22:29:54.691000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae180383a1d1e5f013a1edd6aae002b','','',NULL),('8a0380938e682ec5018eee2e49d200d2',37,0,'admin','2024-04-17 22:29:54.770000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'4028a30f6bd7dee1016bd89d10bf0002','','',NULL),('8a0380938e682ec5018eee2e4a2b00db',37,0,'admin','2024-04-17 22:29:54.859000',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'8ae18a4c4b363a16014b5ba96ecf004f','','',NULL);
/*!40000 ALTER TABLE `mapping_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_case`
--

DROP TABLE IF EXISTS `mapping_function_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_case` (
  `case_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `new_case` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`case_mapping_function_id`),
  KEY `idx_mapping_function_case_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_case_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FK40qx1g9hs05q42nfhbk9jtf75` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKf0yrafar0hcik2k8u1c2a4mfb` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_case`
--

LOCK TABLES `mapping_function_case` WRITE;
/*!40000 ALTER TABLE `mapping_function_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_case_audit`
--

DROP TABLE IF EXISTS `mapping_function_case_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_case_audit` (
  `case_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `new_case` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`case_mapping_function_id`,`revision`),
  KEY `FK8unk9h529s9uxd0krnhmsivbc` (`revision`),
  CONSTRAINT `FK8unk9h529s9uxd0krnhmsivbc` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_case_audit`
--

LOCK TABLES `mapping_function_case_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_case_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_case_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_case_function_target_case_audit`
--

DROP TABLE IF EXISTS `mapping_function_case_function_target_case_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_case_function_target_case_audit` (
  `revision` int(11) NOT NULL,
  `case_mapping_function_id` varchar(32) NOT NULL,
  `case_function_target_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`case_mapping_function_id`,`case_function_target_id`),
  CONSTRAINT `FKlldspb9uodhph45o3sgmso1sq` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_case_function_target_case_audit`
--

LOCK TABLES `mapping_function_case_function_target_case_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_case_function_target_case_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_case_function_target_case_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_custom`
--

DROP TABLE IF EXISTS `mapping_function_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_custom` (
  `custom_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `data_encrypted` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`custom_mapping_function_id`),
  KEY `idx_custom_mapping_function_reference_id` (`reference_id`),
  KEY `idx_mapping_function_custom_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_custom_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FKcty1gx8p7xcn25kgfgd2sr9gt` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKpvwju2k563nqf3lnnoepkanwy` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_custom`
--

LOCK TABLES `mapping_function_custom` WRITE;
/*!40000 ALTER TABLE `mapping_function_custom` DISABLE KEYS */;
INSERT INTO `mapping_function_custom` VALUES ('8a0380938e682ec5018eee2e44290010','admin','2024-04-17 22:29:53.321000','admin','2024-04-17 22:29:53.321000',0,'\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','','4028cb0039ee5a2c013a09fd81d800cc','8a0380938e682ec5018eee2e44290011','8a0380938e682ec5018eee2e4428000f'),('8a0380938e682ec5018eee2e46730041','admin','2024-04-17 22:29:53.907000','admin','2024-04-17 22:48:16.546000',1,'\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','\0','8a8080834fe543f7014ffbe8d68102eb','8a0380938e682ec5018eee2e46730042','8a0380938e682ec5018eee2e46720040'),('8a0380938e682ec5018eee2e46750049','admin','2024-04-17 22:29:53.909000','admin','2024-04-17 22:48:16.547000',1,'\0','Set \'null\' = source node \'PV1-8\'',NULL,2,NULL,NULL,NULL,NULL,'��|3�\\�\Zn�\'�,�ԉ�l;���	�<#_�X���\Z$G=��Au��f����;H�̰3<~I��k@�������Çš\n1�������s���g���JH;�`y�Æ�hj:�J�Ѹ,\\K��n~Y騄���=�^<��Lb�-��T�k��*OER�@|VD� P���\r@���,�F�զ�@:�Xy�8�������V�r-8�3a;�`��F�j����d��\n���s�s�9#�Ɩ���\\�4@����(�	�wMb�s�','\0','8a8080834fe543f7014ffbe8d68102f3','8a0380938e682ec5018eee2e4675004a','8a0380938e682ec5018eee2e46740048'),('8a0380938e682ec5018eee2e475c0062','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,'\0','Format XML response',NULL,3,NULL,NULL,NULL,NULL,'��bnR�F��΅�2�>���<�b�3E�]̺����LTr\"�Z� ��','','8ae180663a188bf1013a19a92685000d','8a0380938e682ec5018eee2e475c0063','8a0380938e682ec5018eee2e475c0061'),('8a0380938e682ec5018eee2e47c70071','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,'\0','Set OBX-5 = Result from Temp Converter web service call',NULL,3,NULL,NULL,NULL,NULL,'4� �h�su%�y\r.��=�.w�}މ7p�Y�\"�h5������Bmf���Y��f#,��+$?u	�á�S���*z����	{�ԣe$��3��\0r]�\\�]���<ʌ?����|��$�J��U]Y@T��>\'_6�ɪ̽�*����Q��G*�u3�����U��f�وk�7�c����%��r��3fZ���s�y�s�\0����4�-��\Z:��\'�җ�I��\ZdH%^D� ^R<�YVY�li2\nn��','','4028cb0039d6564f0139eabf9a230092','8a0380938e682ec5018eee2e47c70072','8a0380938e682ec5018eee2e47c70070'),('8a0380938e682ec5018eee2e47c70073','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,'\0','Display the response from the Temperature Converter web service call',NULL,2,NULL,NULL,NULL,NULL,'��bnR�F��΅�2�>sQ�NY��\"��ጯ��xhl�Gܪ��h�1� �*:F7�>Mf���p2Ot�g��	-\n	���_\\7/�+C�L�s��iN;','','8ae180383a1d1e5f013a1d34c415000b','8a0380938e682ec5018eee2e47c70074','8a0380938e682ec5018eee2e47c70070'),('8a0380938e682ec5018eee2e47c70075','admin','2024-04-17 22:29:54.247000','admin','2024-04-17 22:29:54.247000',0,'\0','Placeholder for call to Temperature Converter web service',NULL,1,NULL,NULL,NULL,NULL,'�G�\\-�e(�=�����\\���D��������:\Z`׈�Wo+�A�(q=��S�#���*H��`&.�ۊW?Z�j�3Fa�A�R�?��Q>}��5\r\06��%B����`b1z��v��%KXtm�au�(�ٱ�Z���o\"7-M/.^\"�\r�nd���/1i�X�a��0��a���s���+������C�Oa�܂l','','8ae180383a1d1e5f013a1d358c42000e','8a0380938e682ec5018eee2e47c70076','8a0380938e682ec5018eee2e47c70070'),('8a0380938e682ec5018eee2e48140092','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.324000',0,'\0','Set \'null\' = source node \'PV1-8\'',NULL,2,NULL,NULL,NULL,NULL,'��|3�\\�\Zn�\'�,�ԉ�l;���	�<#_�X���\Z$G=��Au��f����;H�̰3<~I��k@�������Çš\n1�������s���g���JH;�`y�Æ�hj:�J�Ѹ,\\K��n~Y騄���=�^<��Lb�-��T�k��*OER�@|VD� P���\r@���,�F�զ�@:�Xy�8�������V�r-8�3a;�`��F�j����d��\n���s�s�9#�Ɩ���\\�4@����(�	�wMb�s�','','8ae18a6f5014101e015014d27285013c','8a0380938e682ec5018eee2e48140093','8a0380938e682ec5018eee2e48140091'),('8a0380938e682ec5018eee2e4815009a','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,'\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','','8ae18a6f5014101e015014d272850144','8a0380938e682ec5018eee2e4815009b','8a0380938e682ec5018eee2e48150099'),('8a0380938e682ec5018eee2e4815009c','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.325000',0,'\0','Set MSH-4 to MSH-4.2 value',NULL,3,NULL,NULL,NULL,NULL,'f~�(���^4U-�XF~d9zP��G�KD\04��F<r�=��\"*^K����I��=ú��.�΂~=�*&AӁq��w֡�?�iV����5��xzd�:�v','','ff808181763fc065017648d24fac00ec','8a0380938e682ec5018eee2e4815009d','8a0380938e682ec5018eee2e48150099'),('8a0380938e682ec5018eee2e487400a6','admin','2024-04-17 22:29:54.420000','admin','2024-04-17 22:29:54.420000',0,'\0','Change MSH-3 from \'LinkLogic-TEST\' to \'Qvera\'',NULL,1,NULL,NULL,NULL,NULL,'�7��z�<{a�H��OB����Ō@�j����%�ޞu\'Cձ;��iNC\\���)-���ꍓ�b��b\"A�]��;3R	w�B��{f�-`����x�\r;��hȻ59PX�\n��[o8~�~��>�|�wP�]��y\\gҸ2ޫ|�','','8ae18a3f4e9c6f7c014e9c87e89b0009','8a0380938e682ec5018eee2e487400a7','8a0380938e682ec5018eee2e487400a5'),('8a0380938e682ec5018eee2e48b000ad','admin','2024-04-17 22:29:54.480000','admin','2024-04-17 22:29:54.480000',0,'\0','Place Holder',NULL,1,NULL,NULL,NULL,NULL,'��5�=e4͙P�Mr\ZzB��?�����MX�g�A̋�3~��bKS�t�l����S�����t�ί�d$i��sH�D%e�[�(�Dp��{��_���� �)�B\n�ӑ�y)+�eF89[�ɨP�\0wv�`��Y��}����2�V>p��b�\\���Q�H\"�F˚��H�	_�ê���VO����3�BJl��9c�S\0�J�W#z�o����}�E���@s��F�ō5D����L�\"L��Nm���]��7�\n�˟�����X{SL�K[����zc�������\r�jQF�^��p��-�[��\0�<.���}�$�D-S[韤���_t/ɿ4�t�܍i���ڃ�,z��<�E�q�\0���y�mm�\'pJ�I��	Gͺ`���B�a_���vU\\3���{��nlEN!�J��TA�����\\g_D��x�A���\"(�����Q�<l4��I�G�?u��@����P�f��z/\r�!��\'ݓ��y�q��>��o�Ȇc�t�\"�D7P������e��tD��E�)����nڋ�:,�k�x�OV��e�XVf�����x�M���|���','','8ae18a6f5014101e015014d78416018f','8a0380938e682ec5018eee2e48b000ae','8a0380938e682ec5018eee2e48af00ac'),('8a0380938e682ec5018eee2e493300be','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,'\0','Add header segments back into output message',NULL,2,NULL,NULL,NULL,NULL,'䲻��G������Gk�8�|��M��b��7�u~�R�QT��5�5	xY�4���嫨��p�מ��Y+�َ&�H�Y/N����d�@= s_��lRpW�e�C\"��qrM�u�ݨz�[�A�_f0�4x,1�������B	�\n,QT��*c����k7\Zb����icdG�A����V�^P�>?>�Fi�Ţt������Dko-O��{%��X*�_6*�ۅ��P&��`\rG��7L�','','8ae180383a1d1e5f013a1eb6a38d0025','8a0380938e682ec5018eee2e493300bf','8a0380938e682ec5018eee2e493300bd'),('8a0380938e682ec5018eee2e493300c0','admin','2024-04-17 22:29:54.611000','admin','2024-04-17 22:29:54.611000',0,'\0','Build multiple output messages based on ORC groups',NULL,3,NULL,NULL,NULL,NULL,'�n2�ʦ��OyM)3\\�\Zoo���҈����/F���$<9�z?���ok����6��ǹ�.N��:�`W���,˾�.9Г������Z�Uĺ�e�����V$\Z �w�^|*L���}��wL�r����|���\n��u�5��@3{/��7���zl�:��/��B�t@�!V�3�����@��{��b:\0�܎%�*-1�T]g�{S�P?5yo��K��!��!P���B��8��I��oi/*�K%\r��������[�+O)��&?�A\Z�VjӡM�y��]��7]	y#U�Q�?��\"\"�F2�1jUpZ�3��N͑S ��.\0���<����`2��M��I��\r5/���>�����;�H�G\"�P^�52So}��@�g##�\"��K�|\n䗥�Fn�l��y�i��lo���N&\r�[��ER���#1��Y� 򡸱�0��;v,n�{������z�Y���l������a^)�}T�i��J�bC.5��#Ǎ]��ſ�>ۓI�i��~','','8ae180383a1d1e5f013a1ec0ce310027','8a0380938e682ec5018eee2e493300c1','8a0380938e682ec5018eee2e493300bd'),('8a0380938e682ec5018eee2e49d200d3','admin','2024-04-17 22:29:54.770000','admin','2024-04-17 22:29:54.770000',0,'\0','Add Order Status',NULL,1,NULL,NULL,NULL,NULL,'�[��	߾?Ǯ��&�^3��P��Sڐ�F��b�.%&��H�7�XNqQ���_i�N���PG�y�s����:! �71��fY�c�>�Y��}8�>zx$t�Zr���B¾�v�~�JH2�Y��K�\'\\�`%+����\\Y.�Əֿ�N�?VUKu��\ZK�9ъ�Ȕw����*��J�g*�@���','','4028a3396bdc8b1d016bdde1187f000c','8a0380938e682ec5018eee2e49d200d4','8a0380938e682ec5018eee2e49d200d2'),('8a0380938e682ec5018eee2e49d200d5','admin','2024-04-17 22:29:54.771000','admin','2024-04-17 22:29:54.771000',0,'\0','Set Status',NULL,2,NULL,NULL,NULL,NULL,'˼�Q�qɧ3늱�Ǫ�kA ݺ���	+2����o���2V��B4k;�u���Gh�W�*2�,r��:ё��;�#�����l���u�\'��6�`*a�*�6nG�\n�R�YΈHPIKs�/j����G�����<lB]S<��7�\\)��{S��)����:�;���$�[v�$�k@k�\n�0h��c@��T�}�v���㿹7-','','4028a3396bdc8b1d016be2dc15400016','8a0380938e682ec5018eee2e49d200d6','8a0380938e682ec5018eee2e49d200d2'),('8a0380938e682ec5018eee2e4a2b00dc','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,'\0','Add BMI OBX to message',NULL,5,NULL,NULL,NULL,NULL,'��d���������]i�\"�S�t�$�t:x7{ܻ�6]%@�2���l8yvw��nX\"VuJ@8E}�P.��T�[��Zh�fk�Kg�*Z�6Ҥ�\Z���D�Sr��OL.�8�1��,�YP�Yp׊���E=&��B:{��W��xo0�.j!o \Zx���|���\0F���!�o���]\"��*��,{�E��p)�bϏ�i�Gb1ݟ=`��7J\\�o%�	Zc큛�}�\ZnkM�\Z�a��Uqn������0�q�����i�5��+WT8L�1�}���7��!}�?�������]�eh�?�<0����!�W6�Vc���Y6�1W�ݯ|�+��b��٣����(�������Q[6\0��d�|\n!��\'������g\'p�N�,D��M��^h���Ġ+\Z�F���@ª�_v�\\�\n��������gٶz3\r���غ��p5�}B^*�j�������[ף','','8ae18a6d4d34ebbe014d359a5d8f0039','8a0380938e682ec5018eee2e4a2b00dd','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `mapping_function_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_custom_audit`
--

DROP TABLE IF EXISTS `mapping_function_custom_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_custom_audit` (
  `custom_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `data_encrypted` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`custom_mapping_function_id`,`revision`),
  KEY `FK6q3108hiv91pf1pdstgl8fe1q` (`revision`),
  CONSTRAINT `FK6q3108hiv91pf1pdstgl8fe1q` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_custom_audit`
--

LOCK TABLES `mapping_function_custom_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_custom_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_custom_audit` VALUES ('8a0380938e682ec5018eee2e44290010',37,0,'admin','2024-04-17 22:29:53.321000','\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','','4028cb0039ee5a2c013a09fd81d800cc','8a0380938e682ec5018eee2e44290011'),('8a0380938e682ec5018eee2e46730041',37,0,'admin','2024-04-17 22:29:53.907000','\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','','8a8080834fe543f7014ffbe8d68102eb','8a0380938e682ec5018eee2e46730042'),('8a0380938e682ec5018eee2e46730041',39,1,'admin','2024-04-17 22:48:16.546000','\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','\0','8a8080834fe543f7014ffbe8d68102eb','8a0380938e682ec5018eee2e46730042'),('8a0380938e682ec5018eee2e46750049',37,0,'admin','2024-04-17 22:29:53.909000','\0','Set \'null\' = source node \'PV1-8\'',NULL,2,NULL,NULL,NULL,NULL,'��|3�\\�\Zn�\'�,�ԉ�l;���	�<#_�X���\Z$G=��Au��f����;H�̰3<~I��k@�������Çš\n1�������s���g���JH;�`y�Æ�hj:�J�Ѹ,\\K��n~Y騄���=�^<��Lb�-��T�k��*OER�@|VD� P���\r@���,�F�զ�@:�Xy�8�������V�r-8�3a;�`��F�j����d��\n���s�s�9#�Ɩ���\\�4@����(�	�wMb�s�','','8a8080834fe543f7014ffbe8d68102f3','8a0380938e682ec5018eee2e4675004a'),('8a0380938e682ec5018eee2e46750049',39,1,'admin','2024-04-17 22:48:16.547000','\0','Set \'null\' = source node \'PV1-8\'',NULL,2,NULL,NULL,NULL,NULL,'��|3�\\�\Zn�\'�,�ԉ�l;���	�<#_�X���\Z$G=��Au��f����;H�̰3<~I��k@�������Çš\n1�������s���g���JH;�`y�Æ�hj:�J�Ѹ,\\K��n~Y騄���=�^<��Lb�-��T�k��*OER�@|VD� P���\r@���,�F�զ�@:�Xy�8�������V�r-8�3a;�`��F�j����d��\n���s�s�9#�Ɩ���\\�4@����(�	�wMb�s�','\0','8a8080834fe543f7014ffbe8d68102f3','8a0380938e682ec5018eee2e4675004a'),('8a0380938e682ec5018eee2e475c0062',37,0,'admin','2024-04-17 22:29:54.140000','\0','Format XML response',NULL,3,NULL,NULL,NULL,NULL,'��bnR�F��΅�2�>���<�b�3E�]̺����LTr\"�Z� ��','','8ae180663a188bf1013a19a92685000d','8a0380938e682ec5018eee2e475c0063'),('8a0380938e682ec5018eee2e47c70071',37,0,'admin','2024-04-17 22:29:54.247000','\0','Set OBX-5 = Result from Temp Converter web service call',NULL,3,NULL,NULL,NULL,NULL,'4� �h�su%�y\r.��=�.w�}މ7p�Y�\"�h5������Bmf���Y��f#,��+$?u	�á�S���*z����	{�ԣe$��3��\0r]�\\�]���<ʌ?����|��$�J��U]Y@T��>\'_6�ɪ̽�*����Q��G*�u3�����U��f�وk�7�c����%��r��3fZ���s�y�s�\0����4�-��\Z:��\'�җ�I��\ZdH%^D� ^R<�YVY�li2\nn��','','4028cb0039d6564f0139eabf9a230092','8a0380938e682ec5018eee2e47c70072'),('8a0380938e682ec5018eee2e47c70073',37,0,'admin','2024-04-17 22:29:54.247000','\0','Display the response from the Temperature Converter web service call',NULL,2,NULL,NULL,NULL,NULL,'��bnR�F��΅�2�>sQ�NY��\"��ጯ��xhl�Gܪ��h�1� �*:F7�>Mf���p2Ot�g��	-\n	���_\\7/�+C�L�s��iN;','','8ae180383a1d1e5f013a1d34c415000b','8a0380938e682ec5018eee2e47c70074'),('8a0380938e682ec5018eee2e47c70075',37,0,'admin','2024-04-17 22:29:54.247000','\0','Placeholder for call to Temperature Converter web service',NULL,1,NULL,NULL,NULL,NULL,'�G�\\-�e(�=�����\\���D��������:\Z`׈�Wo+�A�(q=��S�#���*H��`&.�ۊW?Z�j�3Fa�A�R�?��Q>}��5\r\06��%B����`b1z��v��%KXtm�au�(�ٱ�Z���o\"7-M/.^\"�\r�nd���/1i�X�a��0��a���s���+������C�Oa�܂l','','8ae180383a1d1e5f013a1d358c42000e','8a0380938e682ec5018eee2e47c70076'),('8a0380938e682ec5018eee2e48140092',37,0,'admin','2024-04-17 22:29:54.324000','\0','Set \'null\' = source node \'PV1-8\'',NULL,2,NULL,NULL,NULL,NULL,'��|3�\\�\Zn�\'�,�ԉ�l;���	�<#_�X���\Z$G=��Au��f����;H�̰3<~I��k@�������Çš\n1�������s���g���JH;�`y�Æ�hj:�J�Ѹ,\\K��n~Y騄���=�^<��Lb�-��T�k��*OER�@|VD� P���\r@���,�F�զ�@:�Xy�8�������V�r-8�3a;�`��F�j����d��\n���s�s�9#�Ɩ���\\�4@����(�	�wMb�s�','','8ae18a6f5014101e015014d27285013c','8a0380938e682ec5018eee2e48140093'),('8a0380938e682ec5018eee2e4815009a',37,0,'admin','2024-04-17 22:29:54.325000','\0','Set \'null\' = source node \'null\'',NULL,2,NULL,NULL,NULL,NULL,'�M	��M��cnz��{���O�o)H��k�Ж���_��GSiF�zf�� �{�3��[WfQ8M:�޿0��\Z��R�\r���=�XV=','','8ae18a6f5014101e015014d272850144','8a0380938e682ec5018eee2e4815009b'),('8a0380938e682ec5018eee2e4815009c',37,0,'admin','2024-04-17 22:29:54.325000','\0','Set MSH-4 to MSH-4.2 value',NULL,3,NULL,NULL,NULL,NULL,'f~�(���^4U-�XF~d9zP��G�KD\04��F<r�=��\"*^K����I��=ú��.�΂~=�*&AӁq��w֡�?�iV����5��xzd�:�v','','ff808181763fc065017648d24fac00ec','8a0380938e682ec5018eee2e4815009d'),('8a0380938e682ec5018eee2e487400a6',37,0,'admin','2024-04-17 22:29:54.420000','\0','Change MSH-3 from \'LinkLogic-TEST\' to \'Qvera\'',NULL,1,NULL,NULL,NULL,NULL,'�7��z�<{a�H��OB����Ō@�j����%�ޞu\'Cձ;��iNC\\���)-���ꍓ�b��b\"A�]��;3R	w�B��{f�-`����x�\r;��hȻ59PX�\n��[o8~�~��>�|�wP�]��y\\gҸ2ޫ|�','','8ae18a3f4e9c6f7c014e9c87e89b0009','8a0380938e682ec5018eee2e487400a7'),('8a0380938e682ec5018eee2e48b000ad',37,0,'admin','2024-04-17 22:29:54.480000','\0','Place Holder',NULL,1,NULL,NULL,NULL,NULL,'��5�=e4͙P�Mr\ZzB��?�����MX�g�A̋�3~��bKS�t�l����S�����t�ί�d$i��sH�D%e�[�(�Dp��{��_���� �)�B\n�ӑ�y)+�eF89[�ɨP�\0wv�`��Y��}����2�V>p��b�\\���Q�H\"�F˚��H�	_�ê���VO����3�BJl��9c�S\0�J�W#z�o����}�E���@s��F�ō5D����L�\"L��Nm���]��7�\n�˟�����X{SL�K[����zc�������\r�jQF�^��p��-�[��\0�<.���}�$�D-S[韤���_t/ɿ4�t�܍i���ڃ�,z��<�E�q�\0���y�mm�\'pJ�I��	Gͺ`���B�a_���vU\\3���{��nlEN!�J��TA�����\\g_D��x�A���\"(�����Q�<l4��I�G�?u��@����P�f��z/\r�!��\'ݓ��y�q��>��o�Ȇc�t�\"�D7P������e��tD��E�)����nڋ�:,�k�x�OV��e�XVf�����x�M���|���','','8ae18a6f5014101e015014d78416018f','8a0380938e682ec5018eee2e48b000ae'),('8a0380938e682ec5018eee2e493300be',37,0,'admin','2024-04-17 22:29:54.611000','\0','Add header segments back into output message',NULL,2,NULL,NULL,NULL,NULL,'䲻��G������Gk�8�|��M��b��7�u~�R�QT��5�5	xY�4���嫨��p�מ��Y+�َ&�H�Y/N����d�@= s_��lRpW�e�C\"��qrM�u�ݨz�[�A�_f0�4x,1�������B	�\n,QT��*c����k7\Zb����icdG�A����V�^P�>?>�Fi�Ţt������Dko-O��{%��X*�_6*�ۅ��P&��`\rG��7L�','','8ae180383a1d1e5f013a1eb6a38d0025','8a0380938e682ec5018eee2e493300bf'),('8a0380938e682ec5018eee2e493300c0',37,0,'admin','2024-04-17 22:29:54.611000','\0','Build multiple output messages based on ORC groups',NULL,3,NULL,NULL,NULL,NULL,'�n2�ʦ��OyM)3\\�\Zoo���҈����/F���$<9�z?���ok����6��ǹ�.N��:�`W���,˾�.9Г������Z�Uĺ�e�����V$\Z �w�^|*L���}��wL�r����|���\n��u�5��@3{/��7���zl�:��/��B�t@�!V�3�����@��{��b:\0�܎%�*-1�T]g�{S�P?5yo��K��!��!P���B��8��I��oi/*�K%\r��������[�+O)��&?�A\Z�VjӡM�y��]��7]	y#U�Q�?��\"\"�F2�1jUpZ�3��N͑S ��.\0���<����`2��M��I��\r5/���>�����;�H�G\"�P^�52So}��@�g##�\"��K�|\n䗥�Fn�l��y�i��lo���N&\r�[��ER���#1��Y� 򡸱�0��;v,n�{������z�Y���l������a^)�}T�i��J�bC.5��#Ǎ]��ſ�>ۓI�i��~','','8ae180383a1d1e5f013a1ec0ce310027','8a0380938e682ec5018eee2e493300c1'),('8a0380938e682ec5018eee2e49d200d3',37,0,'admin','2024-04-17 22:29:54.770000','\0','Add Order Status',NULL,1,NULL,NULL,NULL,NULL,'�[��	߾?Ǯ��&�^3��P��Sڐ�F��b�.%&��H�7�XNqQ���_i�N���PG�y�s����:! �71��fY�c�>�Y��}8�>zx$t�Zr���B¾�v�~�JH2�Y��K�\'\\�`%+����\\Y.�Əֿ�N�?VUKu��\ZK�9ъ�Ȕw����*��J�g*�@���','','4028a3396bdc8b1d016bdde1187f000c','8a0380938e682ec5018eee2e49d200d4'),('8a0380938e682ec5018eee2e49d200d5',37,0,'admin','2024-04-17 22:29:54.771000','\0','Set Status',NULL,2,NULL,NULL,NULL,NULL,'˼�Q�qɧ3늱�Ǫ�kA ݺ���	+2����o���2V��B4k;�u���Gh�W�*2�,r��:ё��;�#�����l���u�\'��6�`*a�*�6nG�\n�R�YΈHPIKs�/j����G�����<lB]S<��7�\\)��{S��)����:�;���$�[v�$�k@k�\n�0h��c@��T�}�v���㿹7-','','4028a3396bdc8b1d016be2dc15400016','8a0380938e682ec5018eee2e49d200d6'),('8a0380938e682ec5018eee2e4a2b00dc',37,0,'admin','2024-04-17 22:29:54.859000','\0','Add BMI OBX to message',NULL,5,NULL,NULL,NULL,NULL,'��d���������]i�\"�S�t�$�t:x7{ܻ�6]%@�2���l8yvw��nX\"VuJ@8E}�P.��T�[��Zh�fk�Kg�*Z�6Ҥ�\Z���D�Sr��OL.�8�1��,�YP�Yp׊���E=&��B:{��W��xo0�.j!o \Zx���|���\0F���!�o���]\"��*��,{�E��p)�bϏ�i�Gb1ݟ=`��7J\\�o%�	Zc큛�}�\ZnkM�\Z�a��Uqn������0�q�����i�5��+WT8L�1�}���7��!}�?�������]�eh�?�<0����!�W6�Vc���Y6�1W�ݯ|�+��b��٣����(�������Q[6\0��d�|\n!��\'������g\'p�N�,D��M��^h���Ġ+\Z�F���@ª�_v�\\�\n��������gٶz3\r���غ��p5�}B^*�j�������[ף','','8ae18a6d4d34ebbe014d359a5d8f0039','8a0380938e682ec5018eee2e4a2b00dd');
/*!40000 ALTER TABLE `mapping_function_custom_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_date`
--

DROP TABLE IF EXISTS `mapping_function_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_date` (
  `date_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `century_window` int(11) DEFAULT NULL,
  `date_format` varchar(100) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`date_mapping_function_id`),
  KEY `idx_mapping_function_date_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_date_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FKasv5nhtbgbrw2mdn74s8rcth7` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKfl7r01bka06rfl8jm031suxo8` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_date`
--

LOCK TABLES `mapping_function_date` WRITE;
/*!40000 ALTER TABLE `mapping_function_date` DISABLE KEYS */;
INSERT INTO `mapping_function_date` VALUES ('8a0380938e682ec5018eee2e46770051','admin','2024-04-17 22:29:53.912000','admin','2024-04-17 22:48:16.546000',1,'\0',NULL,NULL,2,4,'EVN-2',NULL,1,'yyyy-MM-dd','\0','8a8080834fe543f7014ffbe8d68102fb','8a0380938e682ec5018eee2e46780052','8a0380938e682ec5018eee2e46770050'),('8a0380938e682ec5018eee2e48130086','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,'\0',NULL,NULL,2,4,'EVN-2',NULL,1,'yyyy-MM-dd','','8ae18a6f5014101e015014d27284012d','8a0380938e682ec5018eee2e48130087','8a0380938e682ec5018eee2e48130085'),('8a0380938e682ec5018eee2e4a2b00de','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.859000',0,'\0',NULL,NULL,2,4,'PID-7',NULL,50,'yyyyMMdd','','ff808181763fc06501764d90b0300147','8a0380938e682ec5018eee2e4a2b00df','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `mapping_function_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_date_audit`
--

DROP TABLE IF EXISTS `mapping_function_date_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_date_audit` (
  `date_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `century_window` int(11) DEFAULT NULL,
  `date_format` varchar(100) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`date_mapping_function_id`,`revision`),
  KEY `FKja8bi2e931386nchdycj7s431` (`revision`),
  CONSTRAINT `FKja8bi2e931386nchdycj7s431` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_date_audit`
--

LOCK TABLES `mapping_function_date_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_date_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_date_audit` VALUES ('8a0380938e682ec5018eee2e46770051',37,0,'admin','2024-04-17 22:29:53.912000','\0',NULL,NULL,2,4,'EVN-2',NULL,1,'yyyy-MM-dd','','8a8080834fe543f7014ffbe8d68102fb','8a0380938e682ec5018eee2e46780052'),('8a0380938e682ec5018eee2e46770051',39,1,'admin','2024-04-17 22:48:16.546000','\0',NULL,NULL,2,4,'EVN-2',NULL,1,'yyyy-MM-dd','\0','8a8080834fe543f7014ffbe8d68102fb','8a0380938e682ec5018eee2e46780052'),('8a0380938e682ec5018eee2e48130086',37,0,'admin','2024-04-17 22:29:54.323000','\0',NULL,NULL,2,4,'EVN-2',NULL,1,'yyyy-MM-dd','','8ae18a6f5014101e015014d27284012d','8a0380938e682ec5018eee2e48130087'),('8a0380938e682ec5018eee2e4a2b00de',37,0,'admin','2024-04-17 22:29:54.859000','\0',NULL,NULL,2,4,'PID-7',NULL,50,'yyyyMMdd','','ff808181763fc06501764d90b0300147','8a0380938e682ec5018eee2e4a2b00df');
/*!40000 ALTER TABLE `mapping_function_date_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_db`
--

DROP TABLE IF EXISTS `mapping_function_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_db` (
  `db_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `db_quote_values` bit(1) DEFAULT NULL,
  `db_use_parameterized_query` bit(1) DEFAULT NULL,
  `db_use_read_only_connection` bit(1) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`db_mapping_function_id`),
  KEY `idx_mapping_function_db_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_db_condition_list_id` (`condition_list_id`),
  KEY `idx_mapping_function_db_db_connection_id` (`db_connection_id`),
  CONSTRAINT `FK8xc4g2u63qe64u08lwh62n92t` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKcouxlhda096d8o614kll4fip5` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKsmisrb1qj0qg73e3du18g6my4` FOREIGN KEY (`db_connection_id`) REFERENCES `db_connection` (`db_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_db`
--

LOCK TABLES `mapping_function_db` WRITE;
/*!40000 ALTER TABLE `mapping_function_db` DISABLE KEYS */;
INSERT INTO `mapping_function_db` VALUES ('8a0380938e682ec5018eee2e4546001a','admin','2024-04-17 22:29:53.606000','admin','2024-04-17 22:29:53.606000',0,'\0','Patient Profiles',NULL,5,4,NULL,NULL,'\0','\0','\0','select * from patientprofile','','ff808181763fc065017643aa16130018','8a0380938e682ec5018eee2e4546001b','8a0380938e682ec5018eee2e43730001','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e45f5002f','admin','2024-04-17 22:29:53.782000','admin','2024-04-17 22:29:53.782000',0,'\0','Lookup PID7',NULL,1,4,NULL,NULL,'\0','\0','\0','select medrecno from person where patientid = \'{PID-3}\'','','ff808181763fc065017643b5df2b0023','8a0380938e682ec5018eee2e45f50030','8a0380938e682ec5018eee2e43730001','8a0380938e682ec5018eee2e45f5002e');
/*!40000 ALTER TABLE `mapping_function_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_db_audit`
--

DROP TABLE IF EXISTS `mapping_function_db_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_db_audit` (
  `db_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `db_quote_values` bit(1) DEFAULT NULL,
  `db_use_parameterized_query` bit(1) DEFAULT NULL,
  `db_use_read_only_connection` bit(1) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`db_mapping_function_id`,`revision`),
  KEY `FKao031xc6nt0mp3y8rvnn67gci` (`revision`),
  CONSTRAINT `FKao031xc6nt0mp3y8rvnn67gci` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_db_audit`
--

LOCK TABLES `mapping_function_db_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_db_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_db_audit` VALUES ('8a0380938e682ec5018eee2e4546001a',37,0,'admin','2024-04-17 22:29:53.606000','\0','Patient Profiles',NULL,5,4,NULL,NULL,'\0','\0','\0','select * from patientprofile','','ff808181763fc065017643aa16130018','8a0380938e682ec5018eee2e4546001b','8a0380938e682ec5018eee2e43730001'),('8a0380938e682ec5018eee2e45f5002f',37,0,'admin','2024-04-17 22:29:53.782000','\0','Lookup PID7',NULL,1,4,NULL,NULL,'\0','\0','\0','select medrecno from person where patientid = \'{PID-3}\'','','ff808181763fc065017643b5df2b0023','8a0380938e682ec5018eee2e45f50030','8a0380938e682ec5018eee2e43730001');
/*!40000 ALTER TABLE `mapping_function_db_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_new_model`
--

DROP TABLE IF EXISTS `mapping_function_new_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_new_model` (
  `new_model_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `comp_delimiter` varchar(1) DEFAULT NULL,
  `csv_header_row` bit(1) DEFAULT NULL,
  `encoding` varchar(255) DEFAULT NULL,
  `escape_char` varchar(1) DEFAULT NULL,
  `field_delimiter` varchar(1) DEFAULT NULL,
  `hl7_del_method` int(11) DEFAULT NULL,
  `hl7_segment_delimiter` int(11) DEFAULT NULL,
  `new_format` int(11) DEFAULT NULL,
  `quote_char` varchar(1) DEFAULT NULL,
  `quote_values` bit(1) DEFAULT NULL,
  `record_length` int(11) DEFAULT NULL,
  `repeat_char` varchar(1) DEFAULT NULL,
  `segment_delimiter` varchar(1) DEFAULT NULL,
  `sub_comp_char` varchar(1) DEFAULT NULL,
  `xml_template` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`new_model_mapping_function_id`),
  KEY `idx_mapping_function_new_model_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_new_model_condition_list_id` (`condition_list_id`),
  KEY `FK8aot9swbdnjmf2we879rjgtxv` (`variable_id`),
  CONSTRAINT `FK6j030ppoqij6jdl53weqntv8t` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FK8aot9swbdnjmf2we879rjgtxv` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`),
  CONSTRAINT `FKp386xumc1yo8o6grdjgs88des` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_new_model`
--

LOCK TABLES `mapping_function_new_model` WRITE;
/*!40000 ALTER TABLE `mapping_function_new_model` DISABLE KEYS */;
INSERT INTO `mapping_function_new_model` VALUES ('8a0380938e682ec5018eee2e475c0064','admin','2024-04-17 22:29:54.140000','admin','2024-04-17 22:29:54.140000',0,'\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,4,NULL,'',1,NULL,NULL,NULL,'<ResultSet/>','','8ae180663a188bf1013a19a71a7a0005','8a0380938e682ec5018eee2e475c0065','8a0380938e682ec5018eee2e475c0061',NULL),('8a0380938e682ec5018eee2e48ed00b4','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.541000',0,'\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,6,NULL,'',1,NULL,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1e2be85c0013','8a0380938e682ec5018eee2e48ed00b5','8a0380938e682ec5018eee2e48ed00b3',NULL),('8a0380938e682ec5018eee2e493300c2','admin','2024-04-17 22:29:54.612000','admin','2024-04-17 22:29:54.612000',0,'\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,2,NULL,3,NULL,'',1,NULL,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1eb6a38d0026','8a0380938e682ec5018eee2e493400c3','8a0380938e682ec5018eee2e493300bd',NULL),('8a0380938e682ec5018eee2e498300c9','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.691000',0,'\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,6,NULL,'',1,NULL,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1edd6aae002c','8a0380938e682ec5018eee2e498300ca','8a0380938e682ec5018eee2e498300c8',NULL);
/*!40000 ALTER TABLE `mapping_function_new_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_new_model_audit`
--

DROP TABLE IF EXISTS `mapping_function_new_model_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_new_model_audit` (
  `new_model_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `comp_delimiter` varchar(1) DEFAULT NULL,
  `csv_header_row` bit(1) DEFAULT NULL,
  `encoding` varchar(255) DEFAULT NULL,
  `escape_char` varchar(1) DEFAULT NULL,
  `field_delimiter` varchar(1) DEFAULT NULL,
  `hl7_del_method` int(11) DEFAULT NULL,
  `hl7_segment_delimiter` int(11) DEFAULT NULL,
  `new_format` int(11) DEFAULT NULL,
  `quote_char` varchar(1) DEFAULT NULL,
  `quote_values` bit(1) DEFAULT NULL,
  `record_length` int(11) DEFAULT NULL,
  `repeat_char` varchar(1) DEFAULT NULL,
  `segment_delimiter` varchar(1) DEFAULT NULL,
  `sub_comp_char` varchar(1) DEFAULT NULL,
  `xml_template` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`new_model_mapping_function_id`,`revision`),
  KEY `FK3npfpvvkiyjdn02jx5gvijbrc` (`revision`),
  CONSTRAINT `FK3npfpvvkiyjdn02jx5gvijbrc` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_new_model_audit`
--

LOCK TABLES `mapping_function_new_model_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_new_model_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_new_model_audit` VALUES ('8a0380938e682ec5018eee2e475c0064',37,0,'admin','2024-04-17 22:29:54.140000','\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,4,NULL,'',1,NULL,NULL,NULL,'<ResultSet/>','','8ae180663a188bf1013a19a71a7a0005','8a0380938e682ec5018eee2e475c0065',NULL),('8a0380938e682ec5018eee2e48ed00b4',37,0,'admin','2024-04-17 22:29:54.541000','\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,6,NULL,'',1,NULL,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1e2be85c0013','8a0380938e682ec5018eee2e48ed00b5',NULL),('8a0380938e682ec5018eee2e493300c2',37,0,'admin','2024-04-17 22:29:54.612000','\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,2,NULL,3,NULL,'',1,NULL,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1eb6a38d0026','8a0380938e682ec5018eee2e493400c3',NULL),('8a0380938e682ec5018eee2e498300c9',37,0,'admin','2024-04-17 22:29:54.691000','\0',NULL,NULL,1,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,6,NULL,'',1,NULL,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1edd6aae002c','8a0380938e682ec5018eee2e498300ca',NULL);
/*!40000 ALTER TABLE `mapping_function_new_model_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_pf`
--

DROP TABLE IF EXISTS `mapping_function_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_pf` (
  `pf_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `published_function_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pf_mapping_function_id`),
  KEY `idx_mapping_function_pf_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_pf_published_function_id` (`published_function_id`),
  KEY `FKfa13ry8fp2alptdoh7lg6dd1o` (`condition_list_id`),
  CONSTRAINT `FK5awuw2j1q8mew3ehwgelm8s0t` FOREIGN KEY (`published_function_id`) REFERENCES `published_function` (`published_function_id`),
  CONSTRAINT `FKfa13ry8fp2alptdoh7lg6dd1o` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKscdf6siiq1bhsnrf0n7glcefj` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_pf`
--

LOCK TABLES `mapping_function_pf` WRITE;
/*!40000 ALTER TABLE `mapping_function_pf` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_pf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_pf_audit`
--

DROP TABLE IF EXISTS `mapping_function_pf_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_pf_audit` (
  `pf_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `published_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pf_mapping_function_id`,`revision`),
  KEY `FKe883u5ty7yebypjdmhawb0y32` (`revision`),
  CONSTRAINT `FKe883u5ty7yebypjdmhawb0y32` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_pf_audit`
--

LOCK TABLES `mapping_function_pf_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_pf_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_pf_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_replace`
--

DROP TABLE IF EXISTS `mapping_function_replace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_replace` (
  `replace_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `find_string` varchar(100) DEFAULT NULL,
  `replace_string` varchar(100) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`replace_mapping_function_id`),
  KEY `idx_mapping_function_replace_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_replace_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FK39fh1iiudhm7crmiluc7cnx3e` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKqfjpuys3u1vk7h4uvd8d07ck0` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_replace`
--

LOCK TABLES `mapping_function_replace` WRITE;
/*!40000 ALTER TABLE `mapping_function_replace` DISABLE KEYS */;
INSERT INTO `mapping_function_replace` VALUES ('8a0380938e682ec5018eee2e46780054','admin','2024-04-17 22:29:53.913000','admin','2024-04-17 22:48:16.547000',1,'\0',NULL,NULL,3,4,'IN1-3',NULL,'Best Health Insurance Company','Centricity','\0','8a8080834fe543f7014ffbe8d68102fe','8a0380938e682ec5018eee2e46790055','8a0380938e682ec5018eee2e46770050'),('8a0380938e682ec5018eee2e48130089','admin','2024-04-17 22:29:54.323000','admin','2024-04-17 22:29:54.323000',0,'\0',NULL,NULL,3,4,'IN1-3',NULL,'Best Health Insurance Company','Centricity','','8ae18a6f5014101e015014d272840130','8a0380938e682ec5018eee2e4813008a','8a0380938e682ec5018eee2e48130085');
/*!40000 ALTER TABLE `mapping_function_replace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_replace_audit`
--

DROP TABLE IF EXISTS `mapping_function_replace_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_replace_audit` (
  `replace_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `find_string` varchar(100) DEFAULT NULL,
  `replace_string` varchar(100) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`replace_mapping_function_id`,`revision`),
  KEY `FKebte0w8rnw8xurhhothk6rfp3` (`revision`),
  CONSTRAINT `FKebte0w8rnw8xurhhothk6rfp3` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_replace_audit`
--

LOCK TABLES `mapping_function_replace_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_replace_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_replace_audit` VALUES ('8a0380938e682ec5018eee2e46780054',37,0,'admin','2024-04-17 22:29:53.913000','\0',NULL,NULL,3,4,'IN1-3',NULL,'Best Health Insurance Company','Centricity','','8a8080834fe543f7014ffbe8d68102fe','8a0380938e682ec5018eee2e46790055'),('8a0380938e682ec5018eee2e46780054',39,1,'admin','2024-04-17 22:48:16.547000','\0',NULL,NULL,3,4,'IN1-3',NULL,'Best Health Insurance Company','Centricity','\0','8a8080834fe543f7014ffbe8d68102fe','8a0380938e682ec5018eee2e46790055'),('8a0380938e682ec5018eee2e48130089',37,0,'admin','2024-04-17 22:29:54.323000','\0',NULL,NULL,3,4,'IN1-3',NULL,'Best Health Insurance Company','Centricity','','8ae18a6f5014101e015014d272840130','8a0380938e682ec5018eee2e4813008a');
/*!40000 ALTER TABLE `mapping_function_replace_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_standard`
--

DROP TABLE IF EXISTS `mapping_function_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_standard` (
  `standard_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`standard_mapping_function_id`),
  KEY `idx_mapping_function_standard_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_standard_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FK6s2kmm0cuee499mewvf88g5ac` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FK9ygk8t581ovyi5dffdgaj92f8` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_standard`
--

LOCK TABLES `mapping_function_standard` WRITE;
/*!40000 ALTER TABLE `mapping_function_standard` DISABLE KEYS */;
INSERT INTO `mapping_function_standard` VALUES ('8a0380938e682ec5018eee2e442a0012','admin','2024-04-17 22:29:53.322000','admin','2024-04-17 22:29:53.331000',1,'\0',NULL,NULL,1,NULL,NULL,NULL,'','4028cb0039ee5a2c0139ffd5d2fc00aa','8a0380938e682ec5018eee2e442a0013','8a0380938e682ec5018eee2e4428000f'),('8a0380938e682ec5018eee2e4547001d','admin','2024-04-17 22:29:53.607000','admin','2024-04-17 22:29:53.617000',1,'\0','Set the Message Cache patientId variable for use in PID-4',NULL,3,NULL,NULL,NULL,'','8ae18a4c4b363a16014b559ad3510012','8a0380938e682ec5018eee2e4547001e','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e45480021','admin','2024-04-17 22:29:53.609000','admin','2024-04-17 22:29:53.617000',1,'\0','Retrieve the facility id Channel Cache for use in MSH-4.2',NULL,1,NULL,NULL,NULL,'','8ae18a4c4b363a16014b55b6adcd0019','8a0380938e682ec5018eee2e45480022','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e45490024','admin','2024-04-17 22:29:53.610000','admin','2024-04-17 22:29:53.617000',1,'\0',NULL,NULL,2,NULL,NULL,NULL,'','ff808181763fc0650176437bc648000f','8a0380938e682ec5018eee2e45490025','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e46730043','admin','2024-04-17 22:29:53.907000','admin','2024-04-17 22:48:16.546000',2,'\0',NULL,NULL,1,NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102ed','8a0380938e682ec5018eee2e46730044','8a0380938e682ec5018eee2e46720040'),('8a0380938e682ec5018eee2e4675004b','admin','2024-04-17 22:29:53.910000','admin','2024-04-17 22:48:16.547000',2,'\0',NULL,NULL,1,NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102f5','8a0380938e682ec5018eee2e4675004c','8a0380938e682ec5018eee2e46740048'),('8a0380938e682ec5018eee2e467a0057','admin','2024-04-17 22:29:53.914000','admin','2024-04-17 22:48:16.547000',2,'\0',NULL,NULL,1,NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d6810301','8a0380938e682ec5018eee2e467a0058','8a0380938e682ec5018eee2e46770050'),('8a0380938e682ec5018eee2e4814008c','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.332000',1,'\0',NULL,NULL,1,NULL,NULL,NULL,'','8ae18a6f5014101e015014d272840133','8a0380938e682ec5018eee2e4814008d','8a0380938e682ec5018eee2e48130085'),('8a0380938e682ec5018eee2e48140094','admin','2024-04-17 22:29:54.324000','admin','2024-04-17 22:29:54.332000',1,'\0',NULL,NULL,1,NULL,NULL,NULL,'','8ae18a6f5014101e015014d27285013e','8a0380938e682ec5018eee2e48140095','8a0380938e682ec5018eee2e48140091'),('8a0380938e682ec5018eee2e4815009e','admin','2024-04-17 22:29:54.325000','admin','2024-04-17 22:29:54.332000',1,'\0',NULL,NULL,1,NULL,NULL,NULL,'','8ae18a6f5014101e015014d272850146','8a0380938e682ec5018eee2e4815009f','8a0380938e682ec5018eee2e48150099'),('8a0380938e682ec5018eee2e48ed00b6','admin','2024-04-17 22:29:54.541000','admin','2024-04-17 22:29:54.546000',1,'\0','HPath Test Mapping',NULL,2,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1e2be85c0014','8a0380938e682ec5018eee2e48ed00b7','8a0380938e682ec5018eee2e48ed00b3'),('8a0380938e682ec5018eee2e498300cb','admin','2024-04-17 22:29:54.691000','admin','2024-04-17 22:29:54.698000',1,'\0','XPath Test Mapping',NULL,2,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1edd6aae002d','8a0380938e682ec5018eee2e498300cc','8a0380938e682ec5018eee2e498300c8'),('8a0380938e682ec5018eee2e4a2b00e1','admin','2024-04-17 22:29:54.859000','admin','2024-04-17 22:29:54.868000',1,'\0',NULL,NULL,1,NULL,NULL,NULL,'','ff808181763fc06501764b69c7440139','8a0380938e682ec5018eee2e4a2b00e2','8a0380938e682ec5018eee2e4a2b00db'),('8a0380938e682ec5018eee2e4a2c00e4','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.868000',1,'\0',NULL,NULL,6,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b0154','8a0380938e682ec5018eee2e4a2c00e5','8a0380938e682ec5018eee2e4a2b00db'),('8a0380938e682ec5018eee2e4a2c00e7','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.868000',1,'\0',NULL,NULL,7,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b0157','8a0380938e682ec5018eee2e4a2c00e8','8a0380938e682ec5018eee2e4a2b00db'),('8a0380938e682ec5018eee2e4a2c00ea','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.868000',1,'\0',NULL,NULL,8,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b015a','8a0380938e682ec5018eee2e4a2c00eb','8a0380938e682ec5018eee2e4a2b00db'),('8a0380938e682ec5018eee2e4a2c00ed','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.868000',1,'\0',NULL,NULL,9,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b015d','8a0380938e682ec5018eee2e4a2c00ee','8a0380938e682ec5018eee2e4a2b00db'),('8a0380938e682ec5018eee2e4a2c00f0','admin','2024-04-17 22:29:54.860000','admin','2024-04-17 22:29:54.868000',1,'\0',NULL,NULL,10,NULL,NULL,NULL,'','ff808181763fc06501764ed802100160','8a0380938e682ec5018eee2e4a2c00f1','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `mapping_function_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_standard_audit`
--

DROP TABLE IF EXISTS `mapping_function_standard_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_standard_audit` (
  `standard_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`standard_mapping_function_id`,`revision`),
  KEY `FKosmp35ntsqq4rs8fbu7wtxxmk` (`revision`),
  CONSTRAINT `FKosmp35ntsqq4rs8fbu7wtxxmk` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_standard_audit`
--

LOCK TABLES `mapping_function_standard_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_standard_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_standard_audit` VALUES ('8a0380938e682ec5018eee2e442a0012',37,0,'admin','2024-04-17 22:29:53.331000','\0',NULL,NULL,1,NULL,NULL,NULL,'','4028cb0039ee5a2c0139ffd5d2fc00aa','8a0380938e682ec5018eee2e442a0013'),('8a0380938e682ec5018eee2e4547001d',37,0,'admin','2024-04-17 22:29:53.617000','\0','Set the Message Cache patientId variable for use in PID-4',NULL,3,NULL,NULL,NULL,'','8ae18a4c4b363a16014b559ad3510012','8a0380938e682ec5018eee2e4547001e'),('8a0380938e682ec5018eee2e45480021',37,0,'admin','2024-04-17 22:29:53.617000','\0','Retrieve the facility id Channel Cache for use in MSH-4.2',NULL,1,NULL,NULL,NULL,'','8ae18a4c4b363a16014b55b6adcd0019','8a0380938e682ec5018eee2e45480022'),('8a0380938e682ec5018eee2e45490024',37,0,'admin','2024-04-17 22:29:53.617000','\0',NULL,NULL,2,NULL,NULL,NULL,'','ff808181763fc0650176437bc648000f','8a0380938e682ec5018eee2e45490025'),('8a0380938e682ec5018eee2e46730043',37,0,'admin','2024-04-17 22:29:53.924000','\0',NULL,NULL,1,NULL,NULL,NULL,'','8a8080834fe543f7014ffbe8d68102ed','8a0380938e682ec5018eee2e46730044'),('8a0380938e682ec5018eee2e46730043',39,1,'admin','2024-04-17 22:48:16.546000','\0',NULL,NULL,1,NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102ed','8a0380938e682ec5018eee2e46730044'),('8a0380938e682ec5018eee2e4675004b',37,0,'admin','2024-04-17 22:29:53.925000','\0',NULL,NULL,1,NULL,NULL,NULL,'','8a8080834fe543f7014ffbe8d68102f5','8a0380938e682ec5018eee2e4675004c'),('8a0380938e682ec5018eee2e4675004b',39,1,'admin','2024-04-17 22:48:16.547000','\0',NULL,NULL,1,NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d68102f5','8a0380938e682ec5018eee2e4675004c'),('8a0380938e682ec5018eee2e467a0057',37,0,'admin','2024-04-17 22:29:53.925000','\0',NULL,NULL,1,NULL,NULL,NULL,'','8a8080834fe543f7014ffbe8d6810301','8a0380938e682ec5018eee2e467a0058'),('8a0380938e682ec5018eee2e467a0057',39,1,'admin','2024-04-17 22:48:16.547000','\0',NULL,NULL,1,NULL,NULL,NULL,'\0','8a8080834fe543f7014ffbe8d6810301','8a0380938e682ec5018eee2e467a0058'),('8a0380938e682ec5018eee2e4814008c',37,0,'admin','2024-04-17 22:29:54.332000','\0',NULL,NULL,1,NULL,NULL,NULL,'','8ae18a6f5014101e015014d272840133','8a0380938e682ec5018eee2e4814008d'),('8a0380938e682ec5018eee2e48140094',37,0,'admin','2024-04-17 22:29:54.332000','\0',NULL,NULL,1,NULL,NULL,NULL,'','8ae18a6f5014101e015014d27285013e','8a0380938e682ec5018eee2e48140095'),('8a0380938e682ec5018eee2e4815009e',37,0,'admin','2024-04-17 22:29:54.332000','\0',NULL,NULL,1,NULL,NULL,NULL,'','8ae18a6f5014101e015014d272850146','8a0380938e682ec5018eee2e4815009f'),('8a0380938e682ec5018eee2e48ed00b6',37,0,'admin','2024-04-17 22:29:54.546000','\0','HPath Test Mapping',NULL,2,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1e2be85c0014','8a0380938e682ec5018eee2e48ed00b7'),('8a0380938e682ec5018eee2e498300cb',37,0,'admin','2024-04-17 22:29:54.698000','\0','XPath Test Mapping',NULL,2,NULL,NULL,NULL,'','8ae180383a1d1e5f013a1edd6aae002d','8a0380938e682ec5018eee2e498300cc'),('8a0380938e682ec5018eee2e4a2b00e1',37,0,'admin','2024-04-17 22:29:54.868000','\0',NULL,NULL,1,NULL,NULL,NULL,'','ff808181763fc06501764b69c7440139','8a0380938e682ec5018eee2e4a2b00e2'),('8a0380938e682ec5018eee2e4a2c00e4',37,0,'admin','2024-04-17 22:29:54.868000','\0',NULL,NULL,6,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b0154','8a0380938e682ec5018eee2e4a2c00e5'),('8a0380938e682ec5018eee2e4a2c00e7',37,0,'admin','2024-04-17 22:29:54.868000','\0',NULL,NULL,7,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b0157','8a0380938e682ec5018eee2e4a2c00e8'),('8a0380938e682ec5018eee2e4a2c00ea',37,0,'admin','2024-04-17 22:29:54.868000','\0',NULL,NULL,8,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b015a','8a0380938e682ec5018eee2e4a2c00eb'),('8a0380938e682ec5018eee2e4a2c00ed',37,0,'admin','2024-04-17 22:29:54.868000','\0',NULL,NULL,9,NULL,NULL,NULL,'','ff808181763fc06501764ed6d27b015d','8a0380938e682ec5018eee2e4a2c00ee'),('8a0380938e682ec5018eee2e4a2c00f0',37,0,'admin','2024-04-17 22:29:54.868000','\0',NULL,NULL,10,NULL,NULL,NULL,'','ff808181763fc06501764ed802100160','8a0380938e682ec5018eee2e4a2c00f1');
/*!40000 ALTER TABLE `mapping_function_standard_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_sub_string`
--

DROP TABLE IF EXISTS `mapping_function_sub_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_sub_string` (
  `sub_string_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `begin_index` int(11) DEFAULT NULL,
  `end_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  `end_index2` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_string_mapping_function_id`),
  KEY `idx_mapping_function_sub_string_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_sub_string_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FK394disi20lhbxa6cg7akmbhfu` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKlmt8f4hglr3p03ufq9bnoutap` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_sub_string`
--

LOCK TABLES `mapping_function_sub_string` WRITE;
/*!40000 ALTER TABLE `mapping_function_sub_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_sub_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_sub_string_audit`
--

DROP TABLE IF EXISTS `mapping_function_sub_string_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_sub_string_audit` (
  `sub_string_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `begin_index` int(11) DEFAULT NULL,
  `end_index` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `end_index2` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_string_mapping_function_id`,`revision`),
  KEY `FKjjmum56chyic15pet8vchdjnq` (`revision`),
  CONSTRAINT `FKjjmum56chyic15pet8vchdjnq` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_sub_string_audit`
--

LOCK TABLES `mapping_function_sub_string_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_sub_string_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_sub_string_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_table`
--

DROP TABLE IF EXISTS `mapping_function_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_table` (
  `table_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `default_value` varchar(100) DEFAULT NULL,
  `not_found_action` int(11) DEFAULT NULL,
  `source_column` varchar(45) DEFAULT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `target_column` varchar(45) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`table_mapping_function_id`),
  KEY `idx_mapping_function_table_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_table_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FKf1fdewi1dw10me9vg8rxbv09q` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKllpmn0d1xpn6ulwr1a1ebnoav` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_table`
--

LOCK TABLES `mapping_function_table` WRITE;
/*!40000 ALTER TABLE `mapping_function_table` DISABLE KEYS */;
INSERT INTO `mapping_function_table` VALUES ('8a0380938e682ec5018eee2e454a0027','admin','2024-04-17 22:29:53.610000','admin','2024-04-17 22:29:53.610000',0,'\0',NULL,NULL,4,4,'PV1-7.1',NULL,NULL,2,'PVID','Providers','NPI','','ff808181763fc06501764396f8ed0013','8a0380938e682ec5018eee2e454a0028','8a0380938e682ec5018eee2e45450019'),('8a0380938e682ec5018eee2e4a2c00f3','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,'\0',NULL,NULL,3,4,'PID-8',NULL,'Unknown',2,'Code','Sex XRef','Desc','','ff808181763fc06501764d874b190144','8a0380938e682ec5018eee2e4a2c00f4','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `mapping_function_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_table_audit`
--

DROP TABLE IF EXISTS `mapping_function_table_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_table_audit` (
  `table_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `default_value` varchar(100) DEFAULT NULL,
  `not_found_action` int(11) DEFAULT NULL,
  `source_column` varchar(45) DEFAULT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `target_column` varchar(45) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`table_mapping_function_id`,`revision`),
  KEY `FKf1l56gq7f7snjogc5dl4s5f6m` (`revision`),
  CONSTRAINT `FKf1l56gq7f7snjogc5dl4s5f6m` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_table_audit`
--

LOCK TABLES `mapping_function_table_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_table_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_table_audit` VALUES ('8a0380938e682ec5018eee2e454a0027',37,0,'admin','2024-04-17 22:29:53.610000','\0',NULL,NULL,4,4,'PV1-7.1',NULL,NULL,2,'PVID','Providers','NPI','','ff808181763fc06501764396f8ed0013','8a0380938e682ec5018eee2e454a0028'),('8a0380938e682ec5018eee2e4a2c00f3',37,0,'admin','2024-04-17 22:29:54.861000','\0',NULL,NULL,3,4,'PID-8',NULL,'Unknown',2,'Code','Sex XRef','Desc','','ff808181763fc06501764d874b190144','8a0380938e682ec5018eee2e4a2c00f4');
/*!40000 ALTER TABLE `mapping_function_table_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_template`
--

DROP TABLE IF EXISTS `mapping_function_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_template` (
  `template_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `escape_for` varchar(16) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`template_mapping_function_id`),
  KEY `idx_mapping_function_template_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_template_condition_list_id` (`condition_list_id`),
  CONSTRAINT `FKdb7owuq80uije91gc2q49cqkf` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKeufay0tup9kk9eco74f81cbc4` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_template`
--

LOCK TABLES `mapping_function_template` WRITE;
/*!40000 ALTER TABLE `mapping_function_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_template_audit`
--

DROP TABLE IF EXISTS `mapping_function_template_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_template_audit` (
  `template_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `escape_for` varchar(16) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`template_mapping_function_id`,`revision`),
  KEY `FKo9591rq22mx620i2rprpbdre` (`revision`),
  CONSTRAINT `FKo9591rq22mx620i2rprpbdre` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_template_audit`
--

LOCK TABLES `mapping_function_template_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_template_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_function_template_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_ws`
--

DROP TABLE IF EXISTS `mapping_function_ws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_ws` (
  `ws_mapping_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `ws_binding_name` varchar(255) DEFAULT NULL,
  `content_blob` longblob DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `ws_google_datastore` varchar(255) DEFAULT NULL,
  `ws_transaction_name` varchar(255) DEFAULT NULL,
  `request_timeout` int(11) DEFAULT NULL,
  `use_mtom` bit(1) DEFAULT NULL,
  `ws_override_rest_endpoint_url` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_mapping_function_id`),
  KEY `idx_mapping_function_ws_mapping_id` (`mapping_id`),
  KEY `idx_mapping_function_ws_condition_list_id` (`condition_list_id`),
  KEY `idx_mapping_function_ws_ws_connection_id` (`ws_connection_id`),
  CONSTRAINT `FK7sw7qrrmevhv13eblsv2lsk4q` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`),
  CONSTRAINT `FKgmyv8003y5pn8hev9qgmwdsd2` FOREIGN KEY (`ws_connection_id`) REFERENCES `ws_connection` (`ws_connection_id`),
  CONSTRAINT `FKp6nsmk6k46u42dqfd39rwwbyo` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_ws`
--

LOCK TABLES `mapping_function_ws` WRITE;
/*!40000 ALTER TABLE `mapping_function_ws` DISABLE KEYS */;
INSERT INTO `mapping_function_ws` VALUES ('8a0380938e682ec5018eee2e475c0066','admin','2024-04-17 22:29:54.141000','admin','2024-04-17 22:29:54.141000',0,'\0','MAPS',NULL,2,4,NULL,NULL,'https://maps.googleapis.com:443/maps/api/google/xml','�>]��yn3p)���','application/xml',NULL,'GET',60000,'\0','','','ff808181763fc06501764898e29300a6','8a0380938e682ec5018eee2e475c0067','8a0380938e682ec5018eee2e437f0002','8a0380938e682ec5018eee2e475c0061'),('8a0380938e682ec5018eee2e4a2d00f6','admin','2024-04-17 22:29:54.861000','admin','2024-04-17 22:29:54.861000',0,'\0',NULL,NULL,4,4,NULL,NULL,'BmiServiceSoap','��\Z�ږVFb�:7�{Ί�Y��:�<?,�Z@XB�P�:I�S�Y%cv�f6�o� �-���s�ĵ^����P��_�k�?5��mQ��\'��,|�on���F�����h�s�P�@����������J���=�9�-G�<��;0,��t!�쿢��iZ^�6ip���Dm�ͅ��I�����/�ܺ~D\n����4t�;JQ�������H���N�cV����p\r�u�VJ9�v$����z��F瀃SXג�/?w&\'��:F�S�	���\"����P�Gw���?��/�N�m\"j��Bq�����)cxÛ�e���a��t\'�hQ�9y���Բʘ;�P�Xə������fdf\"]djܢ��6e4T�/E��q��a��f�8�i�N��ђE)ss�5�h�y���w���T��p��ns�Ҧ;Q=�H�7��9\\��Cs��\n�Ӿ�2�D2T<�9�6��z�\n{S+l�g�Fל�!DA�F瀃SXג�/?w&PG\0� ��������SzU���mg���@�����:��.ŝ��~-���\ZLJ�P�B�2��y���o<�T@��_>�,u��px�~��-��m�DLKՆ4����3\n;�j�C��Qhv�)_�l�GB��`��O��sHa ?l\n�����Dw<�#\rև9k\0������������Y�ߗ��n�R���sH�A�C�C���H��Q�İ�#�?�k��L+���|$7Iq$�p�������u�;�x��SD:gr<��u���pV�������',NULL,NULL,'getBmiValue',600,'\0','','','ff808181763fc06501764e696b95014e','8a0380938e682ec5018eee2e4a2d00f7','8a0380938e682ec5018eee2e43940003','8a0380938e682ec5018eee2e4a2b00db');
/*!40000 ALTER TABLE `mapping_function_ws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_function_ws_audit`
--

DROP TABLE IF EXISTS `mapping_function_ws_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_function_ws_audit` (
  `ws_mapping_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `conditionally_executed` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `source_value` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `ws_binding_name` varchar(255) DEFAULT NULL,
  `content_blob` longblob DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `ws_google_datastore` varchar(255) DEFAULT NULL,
  `ws_transaction_name` varchar(255) DEFAULT NULL,
  `request_timeout` int(11) DEFAULT NULL,
  `use_mtom` bit(1) DEFAULT NULL,
  `ws_override_rest_endpoint_url` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_mapping_function_id`,`revision`),
  KEY `FKpnvjudwog6yyviqewjvh587i` (`revision`),
  CONSTRAINT `FKpnvjudwog6yyviqewjvh587i` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_function_ws_audit`
--

LOCK TABLES `mapping_function_ws_audit` WRITE;
/*!40000 ALTER TABLE `mapping_function_ws_audit` DISABLE KEYS */;
INSERT INTO `mapping_function_ws_audit` VALUES ('8a0380938e682ec5018eee2e475c0066',37,0,'admin','2024-04-17 22:29:54.141000','\0','MAPS',NULL,2,4,NULL,NULL,'https://maps.googleapis.com:443/maps/api/google/xml','�>]��yn3p)���','application/xml',NULL,'GET',60000,'\0','','','ff808181763fc06501764898e29300a6','8a0380938e682ec5018eee2e475c0067','8a0380938e682ec5018eee2e437f0002'),('8a0380938e682ec5018eee2e4a2d00f6',37,0,'admin','2024-04-17 22:29:54.861000','\0',NULL,NULL,4,4,NULL,NULL,'BmiServiceSoap','��\Z�ږVFb�:7�{Ί�Y��:�<?,�Z@XB�P�:I�S�Y%cv�f6�o� �-���s�ĵ^����P��_�k�?5��mQ��\'��,|�on���F�����h�s�P�@����������J���=�9�-G�<��;0,��t!�쿢��iZ^�6ip���Dm�ͅ��I�����/�ܺ~D\n����4t�;JQ�������H���N�cV����p\r�u�VJ9�v$����z��F瀃SXג�/?w&\'��:F�S�	���\"����P�Gw���?��/�N�m\"j��Bq�����)cxÛ�e���a��t\'�hQ�9y���Բʘ;�P�Xə������fdf\"]djܢ��6e4T�/E��q��a��f�8�i�N��ђE)ss�5�h�y���w���T��p��ns�Ҧ;Q=�H�7��9\\��Cs��\n�Ӿ�2�D2T<�9�6��z�\n{S+l�g�Fל�!DA�F瀃SXג�/?w&PG\0� ��������SzU���mg���@�����:��.ŝ��~-���\ZLJ�P�B�2��y���o<�T@��_>�,u��px�~��-��m�DLKՆ4����3\n;�j�C��Qhv�)_�l�GB��`��O��sHa ?l\n�����Dw<�#\rև9k\0������������Y�ߗ��n�R���sH�A�C�C���H��Q�İ�#�?�k��L+���|$7Iq$�p�������u�;�x��SD:gr<��u���pV�������',NULL,NULL,'getBmiValue',600,'\0','','','ff808181763fc06501764e696b95014e','8a0380938e682ec5018eee2e4a2d00f7','8a0380938e682ec5018eee2e43940003');
/*!40000 ALTER TABLE `mapping_function_ws_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_case_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_case_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_case_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `case_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`case_mapping_function_id`),
  KEY `idx_mapping_mapping_function_case_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FK3i87oxjso69qa51j3n55yfski` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_case_audit`
--

LOCK TABLES `mapping_mapping_function_case_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_case_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_mapping_function_case_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_custom_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_custom_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_custom_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `custom_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`custom_mapping_function_id`),
  KEY `idx_mapping_mapping_function_custom_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKjrg2ueduru028gvavs6enippu` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_custom_audit`
--

LOCK TABLES `mapping_mapping_function_custom_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_custom_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_custom_audit` VALUES (37,'8a0380938e682ec5018eee2e4428000f','8a0380938e682ec5018eee2e44290010',0),(37,'8a0380938e682ec5018eee2e46720040','8a0380938e682ec5018eee2e46730041',0),(37,'8a0380938e682ec5018eee2e46740048','8a0380938e682ec5018eee2e46750049',0),(37,'8a0380938e682ec5018eee2e475c0061','8a0380938e682ec5018eee2e475c0062',0),(37,'8a0380938e682ec5018eee2e47c70070','8a0380938e682ec5018eee2e47c70071',0),(37,'8a0380938e682ec5018eee2e47c70070','8a0380938e682ec5018eee2e47c70073',0),(37,'8a0380938e682ec5018eee2e47c70070','8a0380938e682ec5018eee2e47c70075',0),(37,'8a0380938e682ec5018eee2e48140091','8a0380938e682ec5018eee2e48140092',0),(37,'8a0380938e682ec5018eee2e48150099','8a0380938e682ec5018eee2e4815009a',0),(37,'8a0380938e682ec5018eee2e48150099','8a0380938e682ec5018eee2e4815009c',0),(37,'8a0380938e682ec5018eee2e487400a5','8a0380938e682ec5018eee2e487400a6',0),(37,'8a0380938e682ec5018eee2e48af00ac','8a0380938e682ec5018eee2e48b000ad',0),(37,'8a0380938e682ec5018eee2e493300bd','8a0380938e682ec5018eee2e493300be',0),(37,'8a0380938e682ec5018eee2e493300bd','8a0380938e682ec5018eee2e493300c0',0),(37,'8a0380938e682ec5018eee2e49d200d2','8a0380938e682ec5018eee2e49d200d3',0),(37,'8a0380938e682ec5018eee2e49d200d2','8a0380938e682ec5018eee2e49d200d5',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2b00dc',0);
/*!40000 ALTER TABLE `mapping_mapping_function_custom_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_date_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_date_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_date_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `date_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`date_mapping_function_id`),
  KEY `idx_mapping_mapping_function_date_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKs183loc5el56098st7p3j2t63` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_date_audit`
--

LOCK TABLES `mapping_mapping_function_date_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_date_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_date_audit` VALUES (37,'8a0380938e682ec5018eee2e46770050','8a0380938e682ec5018eee2e46770051',0),(37,'8a0380938e682ec5018eee2e48130085','8a0380938e682ec5018eee2e48130086',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2b00de',0);
/*!40000 ALTER TABLE `mapping_mapping_function_date_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_db_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_db_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_db_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `db_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`db_mapping_function_id`),
  KEY `idx_mapping_mapping_function_db_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKc5xis2958dtkxs73r1q552j6j` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_db_audit`
--

LOCK TABLES `mapping_mapping_function_db_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_db_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_db_audit` VALUES (37,'8a0380938e682ec5018eee2e45450019','8a0380938e682ec5018eee2e4546001a',0),(37,'8a0380938e682ec5018eee2e45f5002e','8a0380938e682ec5018eee2e45f5002f',0);
/*!40000 ALTER TABLE `mapping_mapping_function_db_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_new_model_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_new_model_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_new_model_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `new_model_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`new_model_mapping_function_id`),
  KEY `idx_mapping_mapping_function_new_model_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKq3j7i14rxq9wubn9qfjkvm9jf` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_new_model_audit`
--

LOCK TABLES `mapping_mapping_function_new_model_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_new_model_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_new_model_audit` VALUES (37,'8a0380938e682ec5018eee2e475c0061','8a0380938e682ec5018eee2e475c0064',0),(37,'8a0380938e682ec5018eee2e48ed00b3','8a0380938e682ec5018eee2e48ed00b4',0),(37,'8a0380938e682ec5018eee2e493300bd','8a0380938e682ec5018eee2e493300c2',0),(37,'8a0380938e682ec5018eee2e498300c8','8a0380938e682ec5018eee2e498300c9',0);
/*!40000 ALTER TABLE `mapping_mapping_function_new_model_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_pf_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_pf_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_pf_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `pf_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`pf_mapping_function_id`),
  KEY `idx_mapping_mapping_function_pf_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKmf0br0wfi3y7y9ckri98igu5y` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_pf_audit`
--

LOCK TABLES `mapping_mapping_function_pf_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_pf_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_mapping_function_pf_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_replace_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_replace_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_replace_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `replace_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`replace_mapping_function_id`),
  KEY `idx_mapping_mapping_function_replace_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FK859ag5g4wvmjajyb4vem235jo` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_replace_audit`
--

LOCK TABLES `mapping_mapping_function_replace_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_replace_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_replace_audit` VALUES (37,'8a0380938e682ec5018eee2e46770050','8a0380938e682ec5018eee2e46780054',0),(37,'8a0380938e682ec5018eee2e48130085','8a0380938e682ec5018eee2e48130089',0);
/*!40000 ALTER TABLE `mapping_mapping_function_replace_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_standard_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_standard_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_standard_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `standard_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`standard_mapping_function_id`),
  KEY `idx_mapping_mapping_function_standard_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKf41g5a0ofii275xdmqvi46lrg` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_standard_audit`
--

LOCK TABLES `mapping_mapping_function_standard_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_standard_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_standard_audit` VALUES (37,'8a0380938e682ec5018eee2e4428000f','8a0380938e682ec5018eee2e442a0012',0),(37,'8a0380938e682ec5018eee2e45450019','8a0380938e682ec5018eee2e4547001d',0),(37,'8a0380938e682ec5018eee2e45450019','8a0380938e682ec5018eee2e45480021',0),(37,'8a0380938e682ec5018eee2e45450019','8a0380938e682ec5018eee2e45490024',0),(37,'8a0380938e682ec5018eee2e46720040','8a0380938e682ec5018eee2e46730043',0),(37,'8a0380938e682ec5018eee2e46740048','8a0380938e682ec5018eee2e4675004b',0),(37,'8a0380938e682ec5018eee2e46770050','8a0380938e682ec5018eee2e467a0057',0),(37,'8a0380938e682ec5018eee2e48130085','8a0380938e682ec5018eee2e4814008c',0),(37,'8a0380938e682ec5018eee2e48140091','8a0380938e682ec5018eee2e48140094',0),(37,'8a0380938e682ec5018eee2e48150099','8a0380938e682ec5018eee2e4815009e',0),(37,'8a0380938e682ec5018eee2e48ed00b3','8a0380938e682ec5018eee2e48ed00b6',0),(37,'8a0380938e682ec5018eee2e498300c8','8a0380938e682ec5018eee2e498300cb',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2b00e1',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2c00e4',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2c00e7',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2c00ea',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2c00ed',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2c00f0',0);
/*!40000 ALTER TABLE `mapping_mapping_function_standard_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_sub_string_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_sub_string_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_sub_string_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `sub_string_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`sub_string_mapping_function_id`),
  KEY `idx_mapping_mapping_function_sub_string_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKqgqj7i1mg0iqpxle4hw1ehj0e` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_sub_string_audit`
--

LOCK TABLES `mapping_mapping_function_sub_string_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_sub_string_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_mapping_function_sub_string_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_table_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_table_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_table_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `table_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`table_mapping_function_id`),
  KEY `idx_mapping_mapping_function_table_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FK9v7jtq678i6gle76m9e5k12lx` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_table_audit`
--

LOCK TABLES `mapping_mapping_function_table_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_table_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_table_audit` VALUES (37,'8a0380938e682ec5018eee2e45450019','8a0380938e682ec5018eee2e454a0027',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2c00f3',0);
/*!40000 ALTER TABLE `mapping_mapping_function_table_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_template_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_template_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_template_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `template_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`template_mapping_function_id`),
  KEY `idx_mapping_mapping_function_template_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FK2t1jxf3aj2ahc1y2qxyh4847k` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_template_audit`
--

LOCK TABLES `mapping_mapping_function_template_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_template_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapping_mapping_function_template_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_mapping_function_ws_audit`
--

DROP TABLE IF EXISTS `mapping_mapping_function_ws_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping_mapping_function_ws_audit` (
  `revision` int(11) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `ws_mapping_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`mapping_id`,`ws_mapping_function_id`),
  KEY `idx_mapping_mapping_function_ws_audit_mapping_id` (`mapping_id`,`revision`),
  CONSTRAINT `FKdfg9ibqd6ldp9y6ijfeaw79ax` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_mapping_function_ws_audit`
--

LOCK TABLES `mapping_mapping_function_ws_audit` WRITE;
/*!40000 ALTER TABLE `mapping_mapping_function_ws_audit` DISABLE KEYS */;
INSERT INTO `mapping_mapping_function_ws_audit` VALUES (37,'8a0380938e682ec5018eee2e475c0061','8a0380938e682ec5018eee2e475c0066',0),(37,'8a0380938e682ec5018eee2e4a2b00db','8a0380938e682ec5018eee2e4a2d00f6',0);
/*!40000 ALTER TABLE `mapping_mapping_function_ws_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_app_startup_state`
--

DROP TABLE IF EXISTS `mem_app_startup_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_app_startup_state` (
  `id` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_app_startup_state`
--

LOCK TABLES `mem_app_startup_state` WRITE;
/*!40000 ALTER TABLE `mem_app_startup_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_app_startup_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_channel_queue_count`
--

DROP TABLE IF EXISTS `mem_channel_queue_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_channel_queue_count` (
  `qie_instance_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `queue_id` varchar(32) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`qie_instance_id`,`channel_id`,`queue_id`),
  KEY `idx_mem_channel_queue_count_channel_id_queue_id` (`channel_id`,`queue_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_channel_queue_count`
--

LOCK TABLES `mem_channel_queue_count` WRITE;
/*!40000 ALTER TABLE `mem_channel_queue_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_channel_queue_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_channel_receiver_mutex`
--

DROP TABLE IF EXISTS `mem_channel_receiver_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_channel_receiver_mutex` (
  `channel_id` varchar(32) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  `instance_priority` int(11) NOT NULL,
  `takeover_requested_by_id` int(11) DEFAULT NULL,
  `takeover_ack` int(11) DEFAULT NULL,
  PRIMARY KEY (`channel_id`),
  KEY `idx_mem_channel_receiver_mutex_qie_instance_id` (`qie_instance_id`),
  KEY `idx_mem_channel_receiver_mutex_takeover_requested_by_id` (`takeover_requested_by_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_channel_receiver_mutex`
--

LOCK TABLES `mem_channel_receiver_mutex` WRITE;
/*!40000 ALTER TABLE `mem_channel_receiver_mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_channel_receiver_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_channel_scheduled_script_mutex`
--

DROP TABLE IF EXISTS `mem_channel_scheduled_script_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_channel_scheduled_script_mutex` (
  `channel_id` varchar(32) NOT NULL,
  `schedule_script_id` varchar(32) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  `instance_priority` int(11) NOT NULL,
  `takeover_requested_by_id` int(11) DEFAULT NULL,
  `takeover_ack` int(11) DEFAULT NULL,
  PRIMARY KEY (`schedule_script_id`),
  KEY `idx_mem_channel_scheduled_script_mutex_qie_instance_id` (`qie_instance_id`),
  KEY `idx_mem_channel_scheduled_script_mutex_takeover_requested_by_id` (`takeover_requested_by_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_channel_scheduled_script_mutex`
--

LOCK TABLES `mem_channel_scheduled_script_mutex` WRITE;
/*!40000 ALTER TABLE `mem_channel_scheduled_script_mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_channel_scheduled_script_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_channel_sender_mutex`
--

DROP TABLE IF EXISTS `mem_channel_sender_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_channel_sender_mutex` (
  `channel_id` varchar(32) NOT NULL,
  `destination_node_id` varchar(32) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  `instance_priority` int(11) NOT NULL,
  `takeover_requested_by_id` int(11) DEFAULT NULL,
  `takeover_ack` int(11) DEFAULT NULL,
  PRIMARY KEY (`destination_node_id`),
  KEY `idx_mem_channel_sender_mutex_qie_instance_id` (`qie_instance_id`),
  KEY `idx_mem_channel_sender_mutex_takeover_requested_by_id` (`takeover_requested_by_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_channel_sender_mutex`
--

LOCK TABLES `mem_channel_sender_mutex` WRITE;
/*!40000 ALTER TABLE `mem_channel_sender_mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_channel_sender_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_channel_status`
--

DROP TABLE IF EXISTS `mem_channel_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_channel_status` (
  `qie_instance_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `receiver_running` int(11) DEFAULT NULL,
  `sender_running` int(11) DEFAULT NULL,
  `processor_running` int(11) DEFAULT NULL,
  PRIMARY KEY (`qie_instance_id`,`channel_id`),
  KEY `idx_mem_channel_status_channel_id` (`channel_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_channel_status`
--

LOCK TABLES `mem_channel_status` WRITE;
/*!40000 ALTER TABLE `mem_channel_status` DISABLE KEYS */;
INSERT INTO `mem_channel_status` VALUES (95,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mem_channel_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_home_uuid`
--

DROP TABLE IF EXISTS `mem_home_uuid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_home_uuid` (
  `id` int(11) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_home_uuid`
--

LOCK TABLES `mem_home_uuid` WRITE;
/*!40000 ALTER TABLE `mem_home_uuid` DISABLE KEYS */;
INSERT INTO `mem_home_uuid` VALUES (1,'4448ac19-331d-4756-9a0f-e8b3dbabd898');
/*!40000 ALTER TABLE `mem_home_uuid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_load_messages_from_database_mutex`
--

DROP TABLE IF EXISTS `mem_load_messages_from_database_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_load_messages_from_database_mutex` (
  `mutex_key` varchar(64) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `created_timestamp` datetime NOT NULL,
  PRIMARY KEY (`mutex_key`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_load_messages_from_database_mutex`
--

LOCK TABLES `mem_load_messages_from_database_mutex` WRITE;
/*!40000 ALTER TABLE `mem_load_messages_from_database_mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_load_messages_from_database_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_message_state_inbound`
--

DROP TABLE IF EXISTS `mem_message_state_inbound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_message_state_inbound` (
  `source_id` bigint(20) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`),
  KEY `idx_mem_message_state_inbound_channel_id_qie_instance_id` (`channel_id`,`qie_instance_id`),
  KEY `idx_mem_message_state_inbound_qie_instance_id` (`qie_instance_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_message_state_inbound`
--

LOCK TABLES `mem_message_state_inbound` WRITE;
/*!40000 ALTER TABLE `mem_message_state_inbound` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_message_state_inbound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_message_state_outbound`
--

DROP TABLE IF EXISTS `mem_message_state_outbound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_message_state_outbound` (
  `message_id` bigint(20) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `idx_mem_message_state_outbound_qie_instance_id` (`qie_instance_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_message_state_outbound`
--

LOCK TABLES `mem_message_state_outbound` WRITE;
/*!40000 ALTER TABLE `mem_message_state_outbound` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_message_state_outbound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_message_state_processing`
--

DROP TABLE IF EXISTS `mem_message_state_processing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_message_state_processing` (
  `message_id` bigint(20) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `idx_mem_message_state_processing_qie_instance_id` (`qie_instance_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_message_state_processing`
--

LOCK TABLES `mem_message_state_processing` WRITE;
/*!40000 ALTER TABLE `mem_message_state_processing` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_message_state_processing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_misc_job_mutex`
--

DROP TABLE IF EXISTS `mem_misc_job_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_misc_job_mutex` (
  `mutex_key` varchar(64) NOT NULL,
  `qie_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`mutex_key`),
  KEY `idx_mem_misc_job_mutex_qie_instance_id` (`qie_instance_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_misc_job_mutex`
--

LOCK TABLES `mem_misc_job_mutex` WRITE;
/*!40000 ALTER TABLE `mem_misc_job_mutex` DISABLE KEYS */;
INSERT INTO `mem_misc_job_mutex` VALUES ('UPDATE_EXTERNAL_VARIABLE',96),('ABNORMAL_SHUTDOWN_ALERT',95),('DEGRADED_HA_ENVIRONMENT_ALERT',95),('SOURCE_FILTER_INDEXER',95),('MESSAGE_FILTER_INDEXER',96),('RESTART_ERRED_CHANNELS',95),('NIGHTLY_CHECKIN',95),('LICENSE_ENGINE_CHECKIN',96),('NIGHTLY_BACKUP',95),('SEND_DAILY_COUNT_ALERTS',96),('ENFORCE_MESSAGE_RETENTION_POLICY',95),('SEND_DAILY_ALERTS',95),('CONSECUTIVE_FAILED_CHECK_INS',96);
/*!40000 ALTER TABLE `mem_misc_job_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_outbound_message_queue`
--

DROP TABLE IF EXISTS `mem_outbound_message_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_outbound_message_queue` (
  `channel_id` varchar(32) NOT NULL,
  `destination_node_id` varchar(32) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `session_id` int(11) NOT NULL,
  `source_instance_id` int(11) NOT NULL,
  `add_time` bigint(20) NOT NULL,
  PRIMARY KEY (`message_id`,`session_id`),
  KEY `idx_mem_outbound_message_queue_channel_id_dest_node` (`channel_id`,`destination_node_id`,`message_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_outbound_message_queue`
--

LOCK TABLES `mem_outbound_message_queue` WRITE;
/*!40000 ALTER TABLE `mem_outbound_message_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_outbound_message_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_response_queue`
--

DROP TABLE IF EXISTS `mem_response_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_response_queue` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_id` bigint(20) NOT NULL,
  `parent_source_id` bigint(20) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `session_id` int(11) NOT NULL,
  `instance_id` int(11) NOT NULL,
  `add_time` bigint(20) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `idx_mem_response_queue_instance_id` (`instance_id`,`record_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_response_queue`
--

LOCK TABLES `mem_response_queue` WRITE;
/*!40000 ALTER TABLE `mem_response_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_response_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `compressed_blobs` bit(1) DEFAULT NULL,
  `message_blob` longblob DEFAULT NULL,
  `message_size` int(11) DEFAULT NULL,
  `response_blob` longblob DEFAULT NULL,
  `response_size` int(11) DEFAULT NULL,
  `is_inbound` bit(1) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `is_outbound` bit(1) DEFAULT NULL,
  `parent_message_id` bigint(20) DEFAULT NULL,
  `sort_order` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `idx_message_channel_id_message_id` (`channel_id`,`message_id`,`created_timestamp`,`is_inbound`),
  KEY `idx_message_channel_id` (`channel_id`,`is_inbound`,`created_timestamp`),
  KEY `idx_message_channel_id_created_timestamp` (`channel_id`,`created_timestamp`),
  KEY `idx_message_parent_message_id` (`parent_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_filter`
--

DROP TABLE IF EXISTS `message_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_filter` (
  `message_filter_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `max_message_id_indexed` bigint(20) DEFAULT NULL,
  `min_message_id_indexed` bigint(20) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`message_filter_id`),
  KEY `idx_message_filter_condition_list_id` (`condition_list_id`),
  KEY `idx_message_filter_channel_id` (`channel_id`),
  CONSTRAINT `FKbgtbxq4gerqgo52fkf5o5pu5n` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_filter`
--

LOCK TABLES `message_filter` WRITE;
/*!40000 ALTER TABLE `message_filter` DISABLE KEYS */;
INSERT INTO `message_filter` VALUES ('8a0380938e682ec5018eee2e474d005b','admin','2024-04-17 22:29:54.125000','admin','2024-04-17 22:29:54.125000',0,'8a0380938e682ec5018eee2e466d0033',NULL,-1,'ff808181763fc06501764403dbea004f','8a0380938e682ec5018eee2e474d005c');
/*!40000 ALTER TABLE `message_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_filter_result`
--

DROP TABLE IF EXISTS `message_filter_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_filter_result` (
  `message_filter_result_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_match` bit(1) DEFAULT NULL,
  `sort_order` bigint(20) DEFAULT NULL,
  `message_filter_id` varchar(32) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  PRIMARY KEY (`message_filter_result_id`),
  UNIQUE KEY `UKguusctvtxv67209cahlvvkdph` (`message_filter_id`,`message_id`),
  KEY `idx_message_filter_result_message_id` (`message_id`),
  KEY `idx_message_filter_result_is_match_message_filter_result_id` (`message_filter_id`,`is_match`,`message_filter_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_filter_result`
--

LOCK TABLES `message_filter_result` WRITE;
/*!40000 ALTER TABLE `message_filter_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_filter_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_queue`
--

DROP TABLE IF EXISTS `message_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_queue` (
  `message_queue_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `compressed_blobs` bit(1) DEFAULT NULL,
  `message_blob` longblob DEFAULT NULL,
  `message_size` int(11) DEFAULT NULL,
  `response_blob` longblob DEFAULT NULL,
  `response_size` int(11) DEFAULT NULL,
  `error_message` longblob DEFAULT NULL,
  `error_timestamp` datetime(6) DEFAULT NULL,
  `message_path` varchar(255) DEFAULT NULL,
  `message_type` varchar(10) DEFAULT NULL,
  `current_queue` varchar(1) DEFAULT NULL,
  `component_char` varchar(1) DEFAULT NULL,
  `condition_node_id` varchar(32) DEFAULT NULL,
  `delimiter_method` int(11) DEFAULT NULL,
  `destination_node_id` varchar(32) DEFAULT NULL,
  `element_char` varchar(1) DEFAULT NULL,
  `message_encoding` varchar(255) DEFAULT NULL,
  `escape_char` varchar(1) DEFAULT NULL,
  `field_char` varchar(1) DEFAULT NULL,
  `group_by` int(11) DEFAULT NULL,
  `group_count_index` int(11) DEFAULT NULL,
  `header_row` bit(1) DEFAULT NULL,
  `mapping_node_id` varchar(32) DEFAULT NULL,
  `message_type_description` longblob DEFAULT NULL,
  `query_statement` longblob DEFAULT NULL,
  `quote_char` varchar(1) DEFAULT NULL,
  `quote_values` bit(1) DEFAULT NULL,
  `record_length` int(11) DEFAULT NULL,
  `repeat_char` varchar(1) DEFAULT NULL,
  `segment_delimiter` int(11) DEFAULT NULL,
  `separator_char` varchar(1) DEFAULT NULL,
  `separator_method` int(11) DEFAULT NULL,
  `sort_order` bigint(20) DEFAULT NULL,
  `spawned_queue` varchar(1) DEFAULT NULL,
  `sub_component_char` varchar(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_database` bit(1) DEFAULT NULL,
  `update_statement` longblob DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`message_queue_id`),
  KEY `idx_message_queue_message_id` (`message_id`,`spawned_queue`),
  KEY `idx_message_queue_channel_id_queue_modified` (`channel_id`,`current_queue`,`created_timestamp`),
  KEY `idx_message_queue_channel_id_current_queue_message_queue_id` (`channel_id`,`current_queue`,`message_queue_id`),
  CONSTRAINT `FKg8ygb8kqf5vdihn11qsm8br67` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_queue`
--

LOCK TABLES `message_queue` WRITE;
/*!40000 ALTER TABLE `message_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_queue_cache`
--

DROP TABLE IF EXISTS `message_queue_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_queue_cache` (
  `cache_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `cache_key` varchar(255) NOT NULL,
  `cache_value` longblob DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `message_queue_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cache_id`),
  KEY `idx_message_queue_cache_message_queue_id` (`message_queue_id`),
  KEY `idx_cache_channel_id_cache_key` (`channel_id`,`cache_key`,`created_timestamp`),
  CONSTRAINT `FK2tbdqrmi108h4h6jnv36ohdi9` FOREIGN KEY (`message_queue_id`) REFERENCES `message_queue` (`message_queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_queue_cache`
--

LOCK TABLES `message_queue_cache` WRITE;
/*!40000 ALTER TABLE `message_queue_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_queue_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_queue_filter`
--

DROP TABLE IF EXISTS `message_queue_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_queue_filter` (
  `message_queue_filter_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `max_message_id_indexed` bigint(20) DEFAULT NULL,
  `min_message_id_indexed` bigint(20) DEFAULT NULL,
  `queue` varchar(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `condition_list_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`message_queue_filter_id`),
  KEY `idx_message_queue_filter_condition_list_id` (`condition_list_id`),
  KEY `idx_message_queue_filter_channel_id` (`channel_id`),
  CONSTRAINT `FKa7dexg50xoyw2cgxgtp3pprc1` FOREIGN KEY (`condition_list_id`) REFERENCES `condition_list` (`condition_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_queue_filter`
--

LOCK TABLES `message_queue_filter` WRITE;
/*!40000 ALTER TABLE `message_queue_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_queue_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_queue_filter_result`
--

DROP TABLE IF EXISTS `message_queue_filter_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_queue_filter_result` (
  `message_queue_filter_result_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_match` bit(1) DEFAULT NULL,
  `message_queue_filter_id` varchar(32) NOT NULL,
  `message_queue_id` bigint(20) NOT NULL,
  `sort_order` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) NOT NULL,
  PRIMARY KEY (`message_queue_filter_result_id`),
  UNIQUE KEY `UKbxcw8regffealdcmjwk1fnv1p` (`message_queue_filter_id`,`message_queue_id`),
  KEY `idx_message_queue_filter_result_message_id` (`message_queue_id`),
  KEY `idx_message_queue_filter_result_is_match_message_filter_result` (`message_queue_filter_id`,`is_match`,`message_queue_filter_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_queue_filter_result`
--

LOCK TABLES `message_queue_filter_result` WRITE;
/*!40000 ALTER TABLE `message_queue_filter_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_queue_filter_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muted_user_admin_alert`
--

DROP TABLE IF EXISTS `muted_user_admin_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muted_user_admin_alert` (
  `muted_user_admin_alert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `alert_text` varchar(2048) DEFAULT NULL,
  `muted` bit(1) DEFAULT NULL,
  `userid` varchar(25) NOT NULL,
  PRIMARY KEY (`muted_user_admin_alert_id`),
  KEY `idx_secure_user_muted_user_admin_alert_id` (`userid`),
  CONSTRAINT `FK3knws05fv3lek2mttag0sp41u` FOREIGN KEY (`userid`) REFERENCES `secure_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muted_user_admin_alert`
--

LOCK TABLES `muted_user_admin_alert` WRITE;
/*!40000 ALTER TABLE `muted_user_admin_alert` DISABLE KEYS */;
INSERT INTO `muted_user_admin_alert` VALUES (1,'admin','2024-04-17 22:17:00.798000','admin','2024-04-17 22:17:00.798000',0,'It appears that MySQL or MariaDB is not configured properly.<br/>Please ensure that the max allowed packet size is at least 64M<br/>(max_allowed_packet=64M) in the \'my.ini\' config file under [mysqld].','','admin'),(2,'admin','2024-04-17 22:17:02.139000','admin','2024-04-17 22:17:02.139000',0,'QIE has downloaded an update.<br />Build #16409 was replaced by a newer version on 2024-03-26.<br />Please go to System Configuration to install build #16423.','','admin');
/*!40000 ALTER TABLE `muted_user_admin_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_state`
--

DROP TABLE IF EXISTS `node_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_state` (
  `node_state_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `node_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`node_state_id`),
  UNIQUE KEY `UK4oxh7c9beo89j042815d6bmxi` (`channel_id`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_state`
--

LOCK TABLES `node_state` WRITE;
/*!40000 ALTER TABLE `node_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `package_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `author_license` varchar(255) DEFAULT NULL,
  `author_license_changed` bit(1) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `password_protected` bit(1) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `password_hash` varchar(351) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`package_id`),
  UNIQUE KEY `UKps8fnw3co0n2fmlnxjbmt1s5y` (`zone_id`,`name`),
  UNIQUE KEY `UK2d3sp15pl0yifdxn1if6gdg48` (`zone_id`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_audit`
--

DROP TABLE IF EXISTS `package_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_audit` (
  `package_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `author_license` varchar(255) DEFAULT NULL,
  `author_license_changed` bit(1) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `password_protected` bit(1) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `password_hash` varchar(351) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`package_id`,`revision`),
  KEY `FKh82vrtvbbj1sd9cax7di7qi4m` (`revision`),
  CONSTRAINT `FKh82vrtvbbj1sd9cax7di7qi4m` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_audit`
--

LOCK TABLES `package_audit` WRITE;
/*!40000 ALTER TABLE `package_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_channel_audit`
--

DROP TABLE IF EXISTS `package_channel_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_channel_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`channel_id`),
  CONSTRAINT `FK57xfn9wvp6kaawh1jiykn1qef` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_channel_audit`
--

LOCK TABLES `package_channel_audit` WRITE;
/*!40000 ALTER TABLE `package_channel_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_channel_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_db_connection_audit`
--

DROP TABLE IF EXISTS `package_db_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_db_connection_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `db_connection_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`db_connection_id`),
  CONSTRAINT `FK79rfqv05u0yx4tced95tqdku1` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_db_connection_audit`
--

LOCK TABLES `package_db_connection_audit` WRITE;
/*!40000 ALTER TABLE `package_db_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_db_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_dicom_connection_audit`
--

DROP TABLE IF EXISTS `package_dicom_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_dicom_connection_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `dicom_connection_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`dicom_connection_id`),
  CONSTRAINT `FKqbu56w2oetcx5ktodqv3i79bk` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_dicom_connection_audit`
--

LOCK TABLES `package_dicom_connection_audit` WRITE;
/*!40000 ALTER TABLE `package_dicom_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_dicom_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_document`
--

DROP TABLE IF EXISTS `package_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_document` (
  `package_document_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `document_blob` longblob DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`package_document_id`),
  UNIQUE KEY `UKkibr3oynyxtqrpmh6672hvk7` (`package_id`,`name`),
  CONSTRAINT `FK3009l41adioto9pgmih7u296c` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_document`
--

LOCK TABLES `package_document` WRITE;
/*!40000 ALTER TABLE `package_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_document_audit`
--

DROP TABLE IF EXISTS `package_document_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_document_audit` (
  `package_document_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `document_blob` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`package_document_id`,`revision`),
  KEY `FK4dstwv9aa7ukc7d38p3yxbgrn` (`revision`),
  CONSTRAINT `FK4dstwv9aa7ukc7d38p3yxbgrn` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_document_audit`
--

LOCK TABLES `package_document_audit` WRITE;
/*!40000 ALTER TABLE `package_document_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_document_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_form_audit`
--

DROP TABLE IF EXISTS `package_form_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_form_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `form_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`form_id`),
  CONSTRAINT `FKngl9u3gnkk9q7khsa6hp9yr5g` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_form_audit`
--

LOCK TABLES `package_form_audit` WRITE;
/*!40000 ALTER TABLE `package_form_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_form_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_mapping_audit`
--

DROP TABLE IF EXISTS `package_mapping_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_mapping_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `mapping_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`mapping_id`),
  CONSTRAINT `FKk56n1gsanaccf19obgqyd2vub` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_mapping_audit`
--

LOCK TABLES `package_mapping_audit` WRITE;
/*!40000 ALTER TABLE `package_mapping_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_mapping_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_package_document_audit`
--

DROP TABLE IF EXISTS `package_package_document_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_package_document_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `package_document_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`package_document_id`),
  CONSTRAINT `FKixlf5a049mjki7seqax9aqitp` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_package_document_audit`
--

LOCK TABLES `package_package_document_audit` WRITE;
/*!40000 ALTER TABLE `package_package_document_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_package_document_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_publication_audit`
--

DROP TABLE IF EXISTS `package_publication_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_publication_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `publication_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`publication_id`),
  CONSTRAINT `FKhx40624d221g5t6of8e86cppy` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_publication_audit`
--

LOCK TABLES `package_publication_audit` WRITE;
/*!40000 ALTER TABLE `package_publication_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_publication_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_published_function_audit`
--

DROP TABLE IF EXISTS `package_published_function_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_published_function_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `published_function_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`published_function_id`),
  CONSTRAINT `FK88g7aheeu33e38no5vwvc2edv` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_published_function_audit`
--

LOCK TABLES `package_published_function_audit` WRITE;
/*!40000 ALTER TABLE `package_published_function_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_published_function_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `package_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_ssl_certificate_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `ssl_certificate_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`ssl_certificate_id`),
  CONSTRAINT `FKaqkrt8u6rqtym0gut6bqq8ydw` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_ssl_certificate_audit`
--

LOCK TABLES `package_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `package_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_ssl_key_audit`
--

DROP TABLE IF EXISTS `package_ssl_key_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_ssl_key_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `ssl_key_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`ssl_key_id`),
  CONSTRAINT `FK4pyskjc2w0bfcbo2vyv6foh5j` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_ssl_key_audit`
--

LOCK TABLES `package_ssl_key_audit` WRITE;
/*!40000 ALTER TABLE `package_ssl_key_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_ssl_key_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_variable_audit`
--

DROP TABLE IF EXISTS `package_variable_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_variable_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `variable_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`variable_id`),
  CONSTRAINT `FK3gkk7kav08wrrwjhu6m9ucbnf` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_variable_audit`
--

LOCK TABLES `package_variable_audit` WRITE;
/*!40000 ALTER TABLE `package_variable_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_variable_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_ws_connection_audit`
--

DROP TABLE IF EXISTS `package_ws_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_ws_connection_audit` (
  `revision` int(11) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `ws_connection_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`package_id`,`ws_connection_id`),
  CONSTRAINT `FKoilwq1esd9mswl35gv4e2d0ih` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_ws_connection_audit`
--

LOCK TABLES `package_ws_connection_audit` WRITE;
/*!40000 ALTER TABLE `package_ws_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_ws_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_parameter`
--

DROP TABLE IF EXISTS `pf_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_parameter` (
  `published_function_parameter_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `param_order` int(11) DEFAULT NULL,
  `source` int(11) NOT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `pf_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`published_function_parameter_id`),
  KEY `idx_pf_parameter_pf_mapping_function_id` (`pf_mapping_function_id`),
  CONSTRAINT `FKhyao1wft5q90fu5um72mbb9o6` FOREIGN KEY (`pf_mapping_function_id`) REFERENCES `mapping_function_pf` (`pf_mapping_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_parameter`
--

LOCK TABLES `pf_parameter` WRITE;
/*!40000 ALTER TABLE `pf_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_parameter_audit`
--

DROP TABLE IF EXISTS `pf_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_parameter_audit` (
  `published_function_parameter_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `param_order` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `pf_mapping_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`published_function_parameter_id`,`revision`),
  KEY `FKbh18l5unytcm4hqf1ha3phpik` (`revision`),
  CONSTRAINT `FKbh18l5unytcm4hqf1ha3phpik` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_parameter_audit`
--

LOCK TABLES `pf_parameter_audit` WRITE;
/*!40000 ALTER TABLE `pf_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_status`
--

DROP TABLE IF EXISTS `process_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_status` (
  `process_id` varchar(99) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `completed_count` int(11) DEFAULT NULL,
  `error_message` longblob DEFAULT NULL,
  `estimated_time_remaining` bigint(20) DEFAULT NULL,
  `import_license_import_failure_reason` longblob DEFAULT NULL,
  `import_license_successfully_imported` bit(1) DEFAULT NULL,
  `import_logout_required` bit(1) DEFAULT NULL,
  `import_objects_to_be_deleted_message` longblob DEFAULT NULL,
  `process_asked_to_stop` bit(1) DEFAULT NULL,
  `process_completed` bit(1) DEFAULT NULL,
  `process_data_blob` longblob DEFAULT NULL,
  `process_stopped` bit(1) DEFAULT NULL,
  `records_per_second` int(11) DEFAULT NULL,
  `import_reload_startup_info_required` bit(1) DEFAULT NULL,
  `remaining_count` int(11) DEFAULT NULL,
  `start_time` bigint(20) DEFAULT NULL,
  `total_count` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `import_license_group_import_failure_reason` longblob DEFAULT NULL,
  `import_license_group_successfully_imported` bit(1) DEFAULT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_status`
--

LOCK TABLES `process_status` WRITE;
/*!40000 ALTER TABLE `process_status` DISABLE KEYS */;
INSERT INTO `process_status` VALUES ('IMPORT_CONFIG','admin','2024-04-17 22:29:52.855000','admin','2024-04-17 22:29:55.924000',4,15,NULL,0,NULL,'','',NULL,'\0','',NULL,'',NULL,'',0,1713392992856,14,1713392995923,NULL,'');
/*!40000 ALTER TABLE `process_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication` (
  `publication_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `alternate_zone_name` varchar(45) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `name_of_zone_when_published` varchar(45) DEFAULT NULL,
  `use_alternate_zone_name_when_publishing` bit(1) DEFAULT NULL,
  `alternate_zone_reference_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_id`),
  UNIQUE KEY `UKk9qeg3drun6ctlyo2omt01tu6` (`package_id`,`name`),
  CONSTRAINT `FKqq48kt2w9m45lucft1ywtd4qu` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication`
--

LOCK TABLES `publication` WRITE;
/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_audit`
--

DROP TABLE IF EXISTS `publication_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_audit` (
  `publication_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `alternate_zone_name` varchar(45) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `name_of_zone_when_published` varchar(45) DEFAULT NULL,
  `use_alternate_zone_name_when_publishing` bit(1) DEFAULT NULL,
  `alternate_zone_reference_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_id`,`revision`),
  KEY `FK46vny4t4qjjvdsg84skovyacl` (`revision`),
  CONSTRAINT `FK46vny4t4qjjvdsg84skovyacl` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_audit`
--

LOCK TABLES `publication_audit` WRITE;
/*!40000 ALTER TABLE `publication_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_channel`
--

DROP TABLE IF EXISTS `publication_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_channel` (
  `publication_channel_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_channel_id`),
  KEY `idx_publication_channel_publication_id` (`publication_id`),
  KEY `idx_publication_channel_channel_id` (`channel_id`),
  CONSTRAINT `FK6kl9630ittx6ptv4pgrb7jkhc` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`),
  CONSTRAINT `FKtaq0j4hwf3vnj185dx4ewqr0a` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_channel`
--

LOCK TABLES `publication_channel` WRITE;
/*!40000 ALTER TABLE `publication_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_channel_audit`
--

DROP TABLE IF EXISTS `publication_channel_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_channel_audit` (
  `publication_channel_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_channel_id`,`revision`),
  KEY `FKdnen59x92r5s36l0vgpxi8iim` (`revision`),
  CONSTRAINT `FKdnen59x92r5s36l0vgpxi8iim` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_channel_audit`
--

LOCK TABLES `publication_channel_audit` WRITE;
/*!40000 ALTER TABLE `publication_channel_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_channel_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_db_connection`
--

DROP TABLE IF EXISTS `publication_db_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_db_connection` (
  `publication_db_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_db_connection_id`),
  KEY `idx_publication_db_connection_publication_id` (`publication_id`),
  KEY `idx_publication_db_connection_db_connection_id` (`db_connection_id`),
  CONSTRAINT `FK8ic90nltwwr1cojxw6mghqvg` FOREIGN KEY (`db_connection_id`) REFERENCES `db_connection` (`db_connection_id`),
  CONSTRAINT `FKhryb9y6n172rlko1bgn7kt0sr` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_db_connection`
--

LOCK TABLES `publication_db_connection` WRITE;
/*!40000 ALTER TABLE `publication_db_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_db_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_db_connection_audit`
--

DROP TABLE IF EXISTS `publication_db_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_db_connection_audit` (
  `publication_db_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `db_connection_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_db_connection_id`,`revision`),
  KEY `FK4h3fqlc680di8xl37xr6a7ms4` (`revision`),
  CONSTRAINT `FK4h3fqlc680di8xl37xr6a7ms4` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_db_connection_audit`
--

LOCK TABLES `publication_db_connection_audit` WRITE;
/*!40000 ALTER TABLE `publication_db_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_db_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_dicom_connection`
--

DROP TABLE IF EXISTS `publication_dicom_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_dicom_connection` (
  `publication_dicom_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_dicom_connection_id`),
  KEY `idx_publication_dicom_connection_publication_id` (`publication_id`),
  KEY `idx_publication_dicom_connection_dicom_connection_id` (`dicom_connection_id`),
  CONSTRAINT `FKgm7rd8eynwwnf8gu2jfxglnfx` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`),
  CONSTRAINT `FKtg9modec6yrpot0aj0u4lsjxr` FOREIGN KEY (`dicom_connection_id`) REFERENCES `dicom_connection` (`dicom_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_dicom_connection`
--

LOCK TABLES `publication_dicom_connection` WRITE;
/*!40000 ALTER TABLE `publication_dicom_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_dicom_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_dicom_connection_audit`
--

DROP TABLE IF EXISTS `publication_dicom_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_dicom_connection_audit` (
  `publication_dicom_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `dicom_connection_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_dicom_connection_id`,`revision`),
  KEY `FK5lvsg209mbnmvil0pl5bow16o` (`revision`),
  CONSTRAINT `FK5lvsg209mbnmvil0pl5bow16o` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_dicom_connection_audit`
--

LOCK TABLES `publication_dicom_connection_audit` WRITE;
/*!40000 ALTER TABLE `publication_dicom_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_dicom_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_document`
--

DROP TABLE IF EXISTS `publication_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_document` (
  `publication_document_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `package_document_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_document_id`),
  KEY `idx_publication_document_publication_id` (`publication_id`),
  KEY `idx_publication_document_document_id` (`package_document_id`),
  CONSTRAINT `FKfadpjeawlh78ybjkvfo5npfow` FOREIGN KEY (`package_document_id`) REFERENCES `package_document` (`package_document_id`),
  CONSTRAINT `FKonyf5osw7t5dvxgcftveabi6u` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_document`
--

LOCK TABLES `publication_document` WRITE;
/*!40000 ALTER TABLE `publication_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_document_audit`
--

DROP TABLE IF EXISTS `publication_document_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_document_audit` (
  `publication_document_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `package_document_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_document_id`,`revision`),
  KEY `FKemnx4l75rjqpgd3ic103vu0o9` (`revision`),
  CONSTRAINT `FKemnx4l75rjqpgd3ic103vu0o9` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_document_audit`
--

LOCK TABLES `publication_document_audit` WRITE;
/*!40000 ALTER TABLE `publication_document_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_document_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_form`
--

DROP TABLE IF EXISTS `publication_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_form` (
  `publication_form_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `form_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_form_id`),
  KEY `idx_publication_form_publication_id` (`publication_id`),
  KEY `idx_publication_form_form_id` (`form_id`),
  CONSTRAINT `FK37gi1ivmjxyb2uid7x2qns5a9` FOREIGN KEY (`form_id`) REFERENCES `form` (`form_id`),
  CONSTRAINT `FKo5jkgca4sjup8x0qgojnbfubf` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_form`
--

LOCK TABLES `publication_form` WRITE;
/*!40000 ALTER TABLE `publication_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_form_audit`
--

DROP TABLE IF EXISTS `publication_form_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_form_audit` (
  `publication_form_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `form_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_form_id`,`revision`),
  KEY `FK2iux3ffasb6x19fshlj9ed5xo` (`revision`),
  CONSTRAINT `FK2iux3ffasb6x19fshlj9ed5xo` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_form_audit`
--

LOCK TABLES `publication_form_audit` WRITE;
/*!40000 ALTER TABLE `publication_form_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_form_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_mapping`
--

DROP TABLE IF EXISTS `publication_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_mapping` (
  `mapping_publication_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_publication_id`),
  KEY `idx_publication_mapping_publication_id` (`publication_id`),
  KEY `idx_publication_mapping_mapping_id` (`mapping_id`),
  CONSTRAINT `FK56s6mch9hbvey8s09dfpkqo39` FOREIGN KEY (`mapping_id`) REFERENCES `mapping` (`mapping_id`),
  CONSTRAINT `FKp7x7yonm7e638sgjbs82x763g` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_mapping`
--

LOCK TABLES `publication_mapping` WRITE;
/*!40000 ALTER TABLE `publication_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_mapping_audit`
--

DROP TABLE IF EXISTS `publication_mapping_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_mapping_audit` (
  `mapping_publication_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `mapping_id` varchar(32) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`mapping_publication_id`,`revision`),
  KEY `FKeo75t6nh2ffa12yohhvrb5qvr` (`revision`),
  CONSTRAINT `FKeo75t6nh2ffa12yohhvrb5qvr` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_mapping_audit`
--

LOCK TABLES `publication_mapping_audit` WRITE;
/*!40000 ALTER TABLE `publication_mapping_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_mapping_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_published_function`
--

DROP TABLE IF EXISTS `publication_published_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_published_function` (
  `publication_published_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `published_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_published_function_id`),
  KEY `idx_publication_function_publication_id` (`publication_id`),
  KEY `idx_publication_function_published_function_id` (`published_function_id`),
  CONSTRAINT `FK5i76yjcrmdsys9lkbg8a0aiew` FOREIGN KEY (`published_function_id`) REFERENCES `published_function` (`published_function_id`),
  CONSTRAINT `FKcdo61s1qawm68j2nc82ldun88` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_published_function`
--

LOCK TABLES `publication_published_function` WRITE;
/*!40000 ALTER TABLE `publication_published_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_published_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_published_function_audit`
--

DROP TABLE IF EXISTS `publication_published_function_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_published_function_audit` (
  `publication_published_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `published_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_published_function_id`,`revision`),
  KEY `FKciku0smkuqxryn2a09j1sywvx` (`revision`),
  CONSTRAINT `FKciku0smkuqxryn2a09j1sywvx` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_published_function_audit`
--

LOCK TABLES `publication_published_function_audit` WRITE;
/*!40000 ALTER TABLE `publication_published_function_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_published_function_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_ssl_certificate`
--

DROP TABLE IF EXISTS `publication_ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_ssl_certificate` (
  `publication_ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_ssl_certificate_id`),
  KEY `idx_publication_ssl_certificate_publication_id` (`publication_id`),
  KEY `idx_publication_ssl_certificate_ssl_certificate_id` (`ssl_certificate_id`),
  CONSTRAINT `FK1l9w9cq9rlcuha0dw4bdkqxim` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`),
  CONSTRAINT `FKibqoo1w2eic57isjqlgo69qi8` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_ssl_certificate`
--

LOCK TABLES `publication_ssl_certificate` WRITE;
/*!40000 ALTER TABLE `publication_ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `publication_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_ssl_certificate_audit` (
  `publication_ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_ssl_certificate_id`,`revision`),
  KEY `FKso1pewsylfcfu5o70rty5qx01` (`revision`),
  CONSTRAINT `FKso1pewsylfcfu5o70rty5qx01` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_ssl_certificate_audit`
--

LOCK TABLES `publication_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `publication_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_ssl_key`
--

DROP TABLE IF EXISTS `publication_ssl_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_ssl_key` (
  `publication_ssl_key_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_ssl_key_id`),
  KEY `idx_publication_ssl_key_publication_id` (`publication_id`),
  KEY `idx_publication_ssl_key_ssl_key_id` (`ssl_key_id`),
  CONSTRAINT `FK92oatqv33hgasp720qv4h3ma` FOREIGN KEY (`ssl_key_id`) REFERENCES `ssl_key` (`ssl_key_id`),
  CONSTRAINT `FKac39iwm05fbnv1sifrpefpm91` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_ssl_key`
--

LOCK TABLES `publication_ssl_key` WRITE;
/*!40000 ALTER TABLE `publication_ssl_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_ssl_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_ssl_key_audit`
--

DROP TABLE IF EXISTS `publication_ssl_key_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_ssl_key_audit` (
  `publication_ssl_key_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `ssl_key_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_ssl_key_id`,`revision`),
  KEY `FKkh5qglst8t1xg5kinpyqbfhaa` (`revision`),
  CONSTRAINT `FKkh5qglst8t1xg5kinpyqbfhaa` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_ssl_key_audit`
--

LOCK TABLES `publication_ssl_key_audit` WRITE;
/*!40000 ALTER TABLE `publication_ssl_key_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_ssl_key_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_variable`
--

DROP TABLE IF EXISTS `publication_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_variable` (
  `publication_variable_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_variable_id`),
  KEY `idx_publication_variable_publication_id` (`publication_id`),
  KEY `idx_publication_variable_variable_id` (`variable_id`),
  CONSTRAINT `FK431wod8p9a4e2f2mcgso3hs1a` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`),
  CONSTRAINT `FK9rbt20vrrphdx19pempurvuoj` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_variable`
--

LOCK TABLES `publication_variable` WRITE;
/*!40000 ALTER TABLE `publication_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_variable_audit`
--

DROP TABLE IF EXISTS `publication_variable_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_variable_audit` (
  `publication_variable_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_variable_id`,`revision`),
  KEY `FKf23mhthxny2o9yt143utlmctx` (`revision`),
  CONSTRAINT `FKf23mhthxny2o9yt143utlmctx` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_variable_audit`
--

LOCK TABLES `publication_variable_audit` WRITE;
/*!40000 ALTER TABLE `publication_variable_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_variable_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_ws_connection`
--

DROP TABLE IF EXISTS `publication_ws_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_ws_connection` (
  `publication_ws_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_ws_connection_id`),
  KEY `idx_publication_ws_connection_publication_id` (`publication_id`),
  KEY `idx_publication_ws_connection_ws_connection_id` (`ws_connection_id`),
  CONSTRAINT `FKpbofua4l46dwx74ljerxcv7ke` FOREIGN KEY (`ws_connection_id`) REFERENCES `ws_connection` (`ws_connection_id`),
  CONSTRAINT `FKtr277diqwp75ax0r07hi6lgsl` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_ws_connection`
--

LOCK TABLES `publication_ws_connection` WRITE;
/*!40000 ALTER TABLE `publication_ws_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_ws_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_ws_connection_audit`
--

DROP TABLE IF EXISTS `publication_ws_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_ws_connection_audit` (
  `publication_ws_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `publication_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`publication_ws_connection_id`,`revision`),
  KEY `FK8lyoowriyo0f8phs6mjae8v0r` (`revision`),
  CONSTRAINT `FK8lyoowriyo0f8phs6mjae8v0r` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_ws_connection_audit`
--

LOCK TABLES `publication_ws_connection_audit` WRITE;
/*!40000 ALTER TABLE `publication_ws_connection_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_ws_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_function`
--

DROP TABLE IF EXISTS `published_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `published_function` (
  `published_function_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `script` longblob DEFAULT NULL,
  `script_encrypted` longblob DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`published_function_id`),
  KEY `idx_published_function_reference_id` (`reference_id`),
  KEY `FKrhws5pmd27248q8e17bjtwf8y` (`package_id`),
  CONSTRAINT `FKrhws5pmd27248q8e17bjtwf8y` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_function`
--

LOCK TABLES `published_function` WRITE;
/*!40000 ALTER TABLE `published_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `published_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_function_audit`
--

DROP TABLE IF EXISTS `published_function_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `published_function_audit` (
  `published_function_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `script` longblob DEFAULT NULL,
  `script_encrypted` longblob DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`published_function_id`,`revision`),
  KEY `FKtp7jf6rwfa7obtg5weicli4uc` (`revision`),
  CONSTRAINT `FKtp7jf6rwfa7obtg5weicli4uc` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_function_audit`
--

LOCK TABLES `published_function_audit` WRITE;
/*!40000 ALTER TABLE `published_function_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `published_function_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_function_parameter`
--

DROP TABLE IF EXISTS `published_function_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `published_function_parameter` (
  `published_function_parameter_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `param_order` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `published_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`published_function_parameter_id`),
  KEY `idx_published_function_parameter_published_function_id` (`published_function_id`),
  CONSTRAINT `FKmt2krfvfbf3f1t6ffwp1fwaxj` FOREIGN KEY (`published_function_id`) REFERENCES `published_function` (`published_function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_function_parameter`
--

LOCK TABLES `published_function_parameter` WRITE;
/*!40000 ALTER TABLE `published_function_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `published_function_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_function_parameter_audit`
--

DROP TABLE IF EXISTS `published_function_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `published_function_parameter_audit` (
  `published_function_parameter_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `param_order` int(11) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `published_function_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`published_function_parameter_id`,`revision`),
  KEY `FKqplt8yh6jt0cqut9vq9qosun0` (`revision`),
  CONSTRAINT `FKqplt8yh6jt0cqut9vq9qosun0` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_function_parameter_audit`
--

LOCK TABLES `published_function_parameter_audit` WRITE;
/*!40000 ALTER TABLE `published_function_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `published_function_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_function_published_function_parameter_audit`
--

DROP TABLE IF EXISTS `published_function_published_function_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `published_function_published_function_parameter_audit` (
  `revision` int(11) NOT NULL,
  `published_function_id` varchar(32) NOT NULL,
  `published_function_parameter_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`published_function_id`,`published_function_parameter_id`),
  CONSTRAINT `FKsrwpf59fks7uy4fsxueq4a8g7` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_function_published_function_parameter_audit`
--

LOCK TABLES `published_function_published_function_parameter_audit` WRITE;
/*!40000 ALTER TABLE `published_function_published_function_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `published_function_published_function_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purge_history`
--

DROP TABLE IF EXISTS `purge_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_history` (
  `purge_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `blocked` bit(1) DEFAULT NULL,
  `days_to_retain_errors` int(11) DEFAULT NULL,
  `days_to_retain_messages` int(11) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `error_message` longblob DEFAULT NULL,
  `include_syslog` bit(1) DEFAULT NULL,
  `logs_purged` bigint(20) DEFAULT NULL,
  `message_per_second` int(11) DEFAULT NULL,
  `percent_completed` float DEFAULT NULL,
  `processed` bigint(20) DEFAULT NULL,
  `purge_all_messages` bit(1) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `started_by` varchar(255) DEFAULT NULL,
  `started_timestamp` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `stopped_by` varchar(255) DEFAULT NULL,
  `stopped_timestamp` datetime(6) DEFAULT NULL,
  `total_processed` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`purge_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_history`
--

LOCK TABLES `purge_history` WRITE;
/*!40000 ALTER TABLE `purge_history` DISABLE KEYS */;
INSERT INTO `purge_history` VALUES (1,'sys','2023-03-30 01:05:01.054000','sys','2023-03-30 01:05:01.054000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-03-30 01:05:00.024000','COMPLETED',NULL,'2023-03-30 01:05:00.049000',0),(2,'sys','2023-03-31 01:05:00.265000','sys','2023-03-31 01:05:00.265000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-03-31 01:05:00.015000','COMPLETED',NULL,'2023-03-31 01:05:00.031000',0),(3,'sys','2023-04-01 01:05:00.056000','sys','2023-04-01 01:05:00.056000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-01 01:05:00.012000','COMPLETED',NULL,'2023-04-01 01:05:00.038000',0),(4,'sys','2023-04-02 01:05:00.063000','sys','2023-04-02 01:05:00.063000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-02 01:05:00.019000','COMPLETED',NULL,'2023-04-02 01:05:00.040000',0),(5,'sys','2023-04-03 01:05:01.085000','sys','2023-04-03 01:05:01.085000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-03 01:05:00.032000','COMPLETED',NULL,'2023-04-03 01:05:00.082000',0),(6,'sys','2023-04-04 01:05:00.056000','sys','2023-04-04 01:05:00.056000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-04 01:05:00.022000','COMPLETED',NULL,'2023-04-04 01:05:00.041000',0),(7,'sys','2023-04-05 01:05:01.060000','sys','2023-04-05 01:05:01.060000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-05 01:05:00.027000','COMPLETED',NULL,'2023-04-05 01:05:00.050000',0),(8,'sys','2023-04-06 01:05:01.053000','sys','2023-04-06 01:05:01.053000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-06 01:05:00.010000','COMPLETED',NULL,'2023-04-06 01:05:00.027000',0),(9,'sys','2023-04-07 01:05:00.062000','sys','2023-04-07 01:05:00.062000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-07 01:05:00.010000','COMPLETED',NULL,'2023-04-07 01:05:00.026000',0),(10,'sys','2023-04-08 01:05:01.087000','sys','2023-04-08 01:05:01.087000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-08 01:05:00.034000','COMPLETED',NULL,'2023-04-08 01:05:00.048000',0),(11,'sys','2023-04-09 01:05:01.083000','sys','2023-04-09 01:05:01.083000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-09 01:05:00.020000','COMPLETED',NULL,'2023-04-09 01:05:00.050000',0),(12,'sys','2023-04-10 01:05:00.229000','sys','2023-04-10 01:05:00.229000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-10 01:05:00.021000','COMPLETED',NULL,'2023-04-10 01:05:00.030000',0),(13,'sys','2023-04-11 01:05:01.057000','sys','2023-04-11 01:05:01.057000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-11 01:05:00.007000','COMPLETED',NULL,'2023-04-11 01:05:00.019000',0),(14,'sys','2023-04-12 01:05:01.155000','sys','2023-04-12 01:05:01.155000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-12 01:05:00.050000','COMPLETED',NULL,'2023-04-12 01:05:00.102000',0),(15,'sys','2023-04-26 01:05:01.044000','sys','2023-04-26 01:05:01.044000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-04-26 01:05:00.016000','COMPLETED',NULL,'2023-04-26 01:05:00.059000',0),(16,'sys','2023-05-16 01:05:01.237000','sys','2023-05-16 01:05:01.237000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-16 01:05:00.040000','COMPLETED',NULL,'2023-05-16 01:05:00.223000',0),(17,'sys','2023-05-17 01:05:01.088000','sys','2023-05-17 01:05:01.088000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-17 01:05:00.014000','COMPLETED',NULL,'2023-05-17 01:05:00.048000',0),(18,'sys','2023-05-18 01:05:01.069000','sys','2023-05-18 01:05:01.069000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-18 01:05:00.022000','COMPLETED',NULL,'2023-05-18 01:05:00.043000',0),(19,'sys','2023-05-19 01:05:01.095000','sys','2023-05-19 01:05:01.095000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-19 01:05:00.032000','COMPLETED',NULL,'2023-05-19 01:05:00.079000',0),(20,'sys','2023-05-20 01:05:01.277000','sys','2023-05-20 01:05:01.277000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-20 01:05:00.240000','COMPLETED',NULL,'2023-05-20 01:05:00.283000',0),(21,'sys','2023-05-21 01:05:01.297000','sys','2023-05-21 01:05:01.297000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-21 01:05:00.216000','COMPLETED',NULL,'2023-05-21 01:05:00.256000',0),(22,'sys','2023-05-22 01:05:01.063000','sys','2023-05-22 01:05:01.063000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-22 01:05:00.009000','COMPLETED',NULL,'2023-05-22 01:05:00.055000',0),(23,'sys','2023-05-23 01:05:00.151000','sys','2023-05-23 01:05:00.151000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-23 01:05:00.031000','COMPLETED',NULL,'2023-05-23 01:05:00.088000',0),(24,'sys','2023-05-24 01:05:01.106000','sys','2023-05-24 01:05:01.106000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-24 01:05:00.037000','COMPLETED',NULL,'2023-05-24 01:05:00.095000',0),(25,'sys','2023-05-25 01:05:01.132000','sys','2023-05-25 01:05:01.132000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-25 01:05:00.019000','COMPLETED',NULL,'2023-05-25 01:05:00.038000',0),(26,'sys','2023-05-26 01:05:01.108000','sys','2023-05-26 01:05:01.108000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-26 01:05:00.025000','COMPLETED',NULL,'2023-05-26 01:05:00.068000',0),(27,'sys','2023-05-27 01:05:00.351000','sys','2023-05-27 01:05:00.351000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-27 01:05:00.021000','COMPLETED',NULL,'2023-05-27 01:05:00.032000',0),(28,'sys','2023-05-28 01:05:01.051000','sys','2023-05-28 01:05:01.051000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-28 01:05:00.011000','COMPLETED',NULL,'2023-05-28 01:05:00.024000',0),(29,'sys','2023-05-29 01:05:01.038000','sys','2023-05-29 01:05:01.038000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-29 01:05:00.012000','COMPLETED',NULL,'2023-05-29 01:05:00.030000',0),(30,'sys','2023-05-30 01:05:01.054000','sys','2023-05-30 01:05:01.054000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-30 01:05:00.008000','COMPLETED',NULL,'2023-05-30 01:05:00.026000',0),(31,'sys','2023-05-31 01:05:01.119000','sys','2023-05-31 01:05:01.119000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-05-31 01:05:00.069000','COMPLETED',NULL,'2023-05-31 01:05:00.129000',0),(32,'sys','2023-06-01 01:05:01.051000','sys','2023-06-01 01:05:01.051000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-01 01:05:00.013000','COMPLETED',NULL,'2023-06-01 01:05:00.036000',0),(33,'sys','2023-06-02 01:05:01.052000','sys','2023-06-02 01:05:01.052000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-02 01:05:00.015000','COMPLETED',NULL,'2023-06-02 01:05:00.113000',0),(34,'sys','2023-06-20 01:05:01.080000','sys','2023-06-20 01:05:01.080000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-20 01:05:00.014000','COMPLETED',NULL,'2023-06-20 01:05:00.080000',0),(35,'sys','2023-06-21 01:05:01.079000','sys','2023-06-21 01:05:01.079000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-21 01:05:00.016000','COMPLETED',NULL,'2023-06-21 01:05:00.064000',0),(36,'sys','2023-06-22 01:05:01.104000','sys','2023-06-22 01:05:01.104000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-22 01:05:00.047000','COMPLETED',NULL,'2023-06-22 01:05:00.086000',0),(37,'sys','2023-06-23 01:05:01.089000','sys','2023-06-23 01:05:01.089000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-23 01:05:00.007000','COMPLETED',NULL,'2023-06-23 01:05:00.017000',0),(38,'sys','2023-06-24 01:05:01.039000','sys','2023-06-24 01:05:01.039000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-24 01:05:00.008000','COMPLETED',NULL,'2023-06-24 01:05:00.022000',0),(39,'sys','2023-06-25 01:05:01.049000','sys','2023-06-25 01:05:01.049000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-25 01:05:00.006000','COMPLETED',NULL,'2023-06-25 01:05:00.016000',0),(40,'sys','2023-06-26 01:05:01.039000','sys','2023-06-26 01:05:01.039000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-26 01:05:00.006000','COMPLETED',NULL,'2023-06-26 01:05:00.023000',0),(41,'sys','2023-06-27 01:05:01.053000','sys','2023-06-27 01:05:01.053000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-27 01:05:00.010000','COMPLETED',NULL,'2023-06-27 01:05:00.028000',0),(42,'sys','2023-06-28 01:05:01.041000','sys','2023-06-28 01:05:01.041000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-28 01:05:00.008000','COMPLETED',NULL,'2023-06-28 01:05:00.023000',0),(43,'sys','2023-06-29 01:05:01.105000','sys','2023-06-29 01:05:01.105000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-29 01:05:00.017000','COMPLETED',NULL,'2023-06-29 01:05:00.080000',0),(44,'sys','2023-06-30 01:05:01.099000','sys','2023-06-30 01:05:01.099000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-06-30 01:05:00.024000','COMPLETED',NULL,'2023-06-30 01:05:00.061000',0),(45,'sys','2023-07-01 01:05:01.088000','sys','2023-07-01 01:05:01.088000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-01 01:05:00.023000','COMPLETED',NULL,'2023-07-01 01:05:00.055000',0),(46,'sys','2023-07-02 01:05:01.090000','sys','2023-07-02 01:05:01.090000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-02 01:05:00.022000','COMPLETED',NULL,'2023-07-02 01:05:00.072000',0),(47,'sys','2023-07-03 01:05:01.047000','sys','2023-07-03 01:05:01.047000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-03 01:05:00.007000','COMPLETED',NULL,'2023-07-03 01:05:00.021000',0),(48,'sys','2023-07-04 01:05:00.040000','sys','2023-07-04 01:05:00.040000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-04 01:05:00.008000','COMPLETED',NULL,'2023-07-04 01:05:00.023000',0),(49,'sys','2023-07-05 01:05:01.142000','sys','2023-07-05 01:05:01.142000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-05 01:05:00.113000','COMPLETED',NULL,'2023-07-05 01:05:00.140000',0),(50,'sys','2023-07-06 01:05:01.065000','sys','2023-07-06 01:05:01.065000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-06 01:05:00.023000','COMPLETED',NULL,'2023-07-06 01:05:00.064000',0),(51,'sys','2023-07-07 01:05:01.036000','sys','2023-07-07 01:05:01.036000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-07 01:05:00.010000','COMPLETED',NULL,'2023-07-07 01:05:00.033000',0),(52,'sys','2023-07-08 01:05:01.039000','sys','2023-07-08 01:05:01.039000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-08 01:05:00.014000','COMPLETED',NULL,'2023-07-08 01:05:00.040000',0),(53,'sys','2023-07-09 01:05:01.048000','sys','2023-07-09 01:05:01.048000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-09 01:05:00.008000','COMPLETED',NULL,'2023-07-09 01:05:00.029000',0),(54,'sys','2023-07-10 01:05:01.035000','sys','2023-07-10 01:05:01.035000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-10 01:05:00.007000','COMPLETED',NULL,'2023-07-10 01:05:00.027000',0),(55,'sys','2023-07-11 01:05:01.050000','sys','2023-07-11 01:05:01.050000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-11 01:05:00.014000','COMPLETED',NULL,'2023-07-11 01:05:00.036000',0),(56,'sys','2023-07-12 01:05:01.048000','sys','2023-07-12 01:05:01.048000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-12 01:05:00.007000','COMPLETED',NULL,'2023-07-12 01:05:00.026000',0),(57,'sys','2023-07-13 01:05:00.050000','sys','2023-07-13 01:05:00.050000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-13 01:05:00.014000','COMPLETED',NULL,'2023-07-13 01:05:00.039000',0),(58,'sys','2023-07-14 01:05:01.067000','sys','2023-07-14 01:05:01.067000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-07-14 01:05:00.030000','COMPLETED',NULL,'2023-07-14 01:05:00.060000',0),(59,'sys','2023-08-24 01:05:01.186000','sys','2023-08-24 01:05:01.186000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-24 01:05:00.058000','COMPLETED',NULL,'2023-08-24 01:05:00.239000',0),(60,'sys','2023-08-25 01:05:01.060000','sys','2023-08-25 01:05:01.060000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-25 01:05:00.013000','COMPLETED',NULL,'2023-08-25 01:05:00.031000',0),(61,'sys','2023-08-26 01:05:01.073000','sys','2023-08-26 01:05:01.073000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-26 01:05:00.027000','COMPLETED',NULL,'2023-08-26 01:05:00.065000',0),(62,'sys','2023-08-27 01:05:00.037000','sys','2023-08-27 01:05:00.037000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-27 01:05:00.008000','COMPLETED',NULL,'2023-08-27 01:05:00.023000',0),(63,'sys','2023-08-28 01:05:00.074000','sys','2023-08-28 01:05:00.074000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-28 01:05:00.036000','COMPLETED',NULL,'2023-08-28 01:05:00.049000',0),(64,'sys','2023-08-29 01:05:01.109000','sys','2023-08-29 01:05:01.109000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-29 01:05:00.030000','COMPLETED',NULL,'2023-08-29 01:05:00.051000',0),(65,'sys','2023-08-30 01:05:00.255000','sys','2023-08-30 01:05:00.255000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-08-30 01:05:00.011000','COMPLETED',NULL,'2023-08-30 01:05:00.028000',0),(66,'sys','2023-10-20 01:05:01.271000','sys','2023-10-20 01:05:01.271000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-20 01:05:00.205000','COMPLETED',NULL,'2023-10-20 01:05:00.254000',0),(67,'sys','2023-10-21 01:05:00.062000','sys','2023-10-21 01:05:00.062000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-21 01:05:00.027000','COMPLETED',NULL,'2023-10-21 01:05:00.039000',0),(68,'sys','2023-10-22 01:05:01.122000','sys','2023-10-22 01:05:01.122000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-22 01:05:00.044000','COMPLETED',NULL,'2023-10-22 01:05:00.069000',0),(69,'sys','2023-10-23 01:05:01.065000','sys','2023-10-23 01:05:01.065000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-23 01:05:00.030000','COMPLETED',NULL,'2023-10-23 01:05:00.063000',0),(70,'sys','2023-10-24 01:05:00.269000','sys','2023-10-24 01:05:00.269000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-24 01:05:00.020000','COMPLETED',NULL,'2023-10-24 01:05:00.030000',0),(71,'sys','2023-10-25 01:05:01.064000','sys','2023-10-25 01:05:01.064000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-25 01:05:00.023000','COMPLETED',NULL,'2023-10-25 01:05:00.042000',0),(72,'sys','2023-10-26 01:05:01.108000','sys','2023-10-26 01:05:01.108000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-26 01:05:00.067000','COMPLETED',NULL,'2023-10-26 01:05:00.096000',0),(73,'sys','2023-10-27 01:05:01.096000','sys','2023-10-27 01:05:01.096000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-10-27 01:05:00.026000','COMPLETED',NULL,'2023-10-27 01:05:00.079000',0),(74,'sys','2023-11-02 01:05:01.232000','sys','2023-11-02 01:05:01.232000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-02 01:05:00.103000','COMPLETED',NULL,'2023-11-02 01:05:00.309000',0),(75,'sys','2023-11-03 01:05:00.077000','sys','2023-11-03 01:05:00.077000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-03 01:05:00.023000','COMPLETED',NULL,'2023-11-03 01:05:00.049000',0),(76,'sys','2023-11-04 01:05:01.290000','sys','2023-11-04 01:05:01.290000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-04 01:05:00.025000','COMPLETED',NULL,'2023-11-04 01:05:00.101000',0),(77,'sys','2023-11-05 01:05:01.049000','sys','2023-11-05 01:05:01.049000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-05 01:05:00.008000','COMPLETED',NULL,'2023-11-05 01:05:00.047000',0),(78,'sys','2023-11-06 01:05:01.452000','sys','2023-11-06 01:05:01.452000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-06 01:05:00.239000','COMPLETED',NULL,'2023-11-06 01:05:00.533000',0),(79,'sys','2023-11-07 01:05:01.065000','sys','2023-11-07 01:05:01.065000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-07 01:05:00.017000','COMPLETED',NULL,'2023-11-07 01:05:00.047000',0),(80,'sys','2023-11-08 01:05:01.056000','sys','2023-11-08 01:05:01.056000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-08 01:05:00.020000','COMPLETED',NULL,'2023-11-08 01:05:00.078000',0),(81,'sys','2023-11-09 01:05:01.232000','sys','2023-11-09 01:05:01.232000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-09 01:05:00.027000','COMPLETED',NULL,'2023-11-09 01:05:00.365000',0),(82,'sys','2023-11-10 01:05:01.062000','sys','2023-11-10 01:05:01.062000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-10 01:05:00.018000','COMPLETED',NULL,'2023-11-10 01:05:00.064000',0),(83,'sys','2023-11-11 01:05:01.071000','sys','2023-11-11 01:05:01.071000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-11 01:05:00.009000','COMPLETED',NULL,'2023-11-11 01:05:00.059000',0),(84,'sys','2023-11-12 01:05:00.055000','sys','2023-11-12 01:05:00.055000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-12 01:05:00.009000','COMPLETED',NULL,'2023-11-12 01:05:00.024000',0),(85,'sys','2023-11-13 01:05:00.076000','sys','2023-11-13 01:05:00.076000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-13 01:05:00.032000','COMPLETED',NULL,'2023-11-13 01:05:00.047000',0),(86,'sys','2023-11-14 01:05:00.569000','sys','2023-11-14 01:05:00.569000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-14 01:05:00.322000','COMPLETED',NULL,'2023-11-14 01:05:00.332000',0),(87,'sys','2023-11-15 01:05:00.084000','sys','2023-11-15 01:05:00.084000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-15 01:05:00.010000','COMPLETED',NULL,'2023-11-15 01:05:00.036000',0),(88,'sys','2023-11-16 01:05:01.097000','sys','2023-11-16 01:05:01.097000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-16 01:05:00.052000','COMPLETED',NULL,'2023-11-16 01:05:00.070000',0),(89,'sys','2023-11-17 01:05:01.053000','sys','2023-11-17 01:05:01.053000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-17 01:05:00.020000','COMPLETED',NULL,'2023-11-17 01:05:00.055000',0),(90,'sys','2023-11-18 01:05:01.060000','sys','2023-11-18 01:05:01.060000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-18 01:05:00.015000','COMPLETED',NULL,'2023-11-18 01:05:00.068000',0),(91,'sys','2023-11-19 01:05:01.049000','sys','2023-11-19 01:05:01.049000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-19 01:05:00.019000','COMPLETED',NULL,'2023-11-19 01:05:00.068000',0),(92,'sys','2023-11-20 01:05:01.092000','sys','2023-11-20 01:05:01.092000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-20 01:05:00.024000','COMPLETED',NULL,'2023-11-20 01:05:00.074000',0),(93,'sys','2023-11-21 01:05:00.068000','sys','2023-11-21 01:05:00.068000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-21 01:05:00.010000','COMPLETED',NULL,'2023-11-21 01:05:00.047000',0),(94,'sys','2023-11-22 01:05:01.071000','sys','2023-11-22 01:05:01.071000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-22 01:05:00.016000','COMPLETED',NULL,'2023-11-22 01:05:00.040000',0),(95,'sys','2023-11-23 01:05:01.059000','sys','2023-11-23 01:05:01.059000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-23 01:05:00.024000','COMPLETED',NULL,'2023-11-23 01:05:00.067000',0),(96,'sys','2023-11-24 01:05:01.095000','sys','2023-11-24 01:05:01.095000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-24 01:05:00.038000','COMPLETED',NULL,'2023-11-24 01:05:00.116000',0),(97,'sys','2023-11-25 01:05:01.058000','sys','2023-11-25 01:05:01.058000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-25 01:05:00.017000','COMPLETED',NULL,'2023-11-25 01:05:00.038000',0),(98,'sys','2023-11-26 01:05:01.092000','sys','2023-11-26 01:05:01.092000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-26 01:05:00.015000','COMPLETED',NULL,'2023-11-26 01:05:00.080000',0),(99,'sys','2023-11-27 01:05:01.134000','sys','2023-11-27 01:05:01.134000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-27 01:05:00.014000','COMPLETED',NULL,'2023-11-27 01:05:00.047000',0),(100,'sys','2023-11-28 01:05:01.073000','sys','2023-11-28 01:05:01.073000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-28 01:05:00.019000','COMPLETED',NULL,'2023-11-28 01:05:00.080000',0),(101,'sys','2023-11-29 01:05:01.100000','sys','2023-11-29 01:05:01.100000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-29 01:05:00.041000','COMPLETED',NULL,'2023-11-29 01:05:00.118000',0),(102,'sys','2023-11-30 01:05:01.104000','sys','2023-11-30 01:05:01.104000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-11-30 01:05:00.039000','COMPLETED',NULL,'2023-11-30 01:05:00.146000',0),(103,'sys','2023-12-01 01:05:01.069000','sys','2023-12-01 01:05:01.069000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-01 01:05:00.022000','COMPLETED',NULL,'2023-12-01 01:05:00.071000',0),(104,'sys','2023-12-02 01:05:01.120000','sys','2023-12-02 01:05:01.120000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-02 01:05:00.029000','COMPLETED',NULL,'2023-12-02 01:05:00.126000',0),(105,'sys','2023-12-03 01:05:01.108000','sys','2023-12-03 01:05:01.108000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-03 01:05:00.037000','COMPLETED',NULL,'2023-12-03 01:05:00.118000',0),(106,'sys','2023-12-04 01:05:01.076000','sys','2023-12-04 01:05:01.076000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-04 01:05:00.024000','COMPLETED',NULL,'2023-12-04 01:05:00.055000',0),(107,'sys','2023-12-05 01:05:01.059000','sys','2023-12-05 01:05:01.059000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-05 01:05:00.016000','COMPLETED',NULL,'2023-12-05 01:05:00.068000',0),(108,'sys','2023-12-06 01:05:01.039000','sys','2023-12-06 01:05:01.039000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-06 01:05:00.009000','COMPLETED',NULL,'2023-12-06 01:05:00.041000',0),(109,'sys','2023-12-07 01:05:01.075000','sys','2023-12-07 01:05:01.075000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-07 01:05:00.024000','COMPLETED',NULL,'2023-12-07 01:05:00.065000',0),(110,'sys','2023-12-08 01:05:01.672000','sys','2023-12-08 01:05:01.672000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-08 01:05:00.314000','COMPLETED',NULL,'2023-12-08 01:05:00.667000',0),(111,'sys','2023-12-09 01:05:01.249000','sys','2023-12-09 01:05:01.249000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-09 01:05:00.008000','COMPLETED',NULL,'2023-12-09 01:05:00.039000',0),(112,'sys','2023-12-10 01:05:01.065000','sys','2023-12-10 01:05:01.065000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-10 01:05:00.015000','COMPLETED',NULL,'2023-12-10 01:05:00.049000',0),(113,'sys','2023-12-11 01:05:01.052000','sys','2023-12-11 01:05:01.052000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-11 01:05:00.020000','COMPLETED',NULL,'2023-12-11 01:05:00.044000',0),(114,'sys','2023-12-12 01:05:01.060000','sys','2023-12-12 01:05:01.060000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-12 01:05:00.029000','COMPLETED',NULL,'2023-12-12 01:05:00.062000',0),(115,'sys','2023-12-13 01:05:01.061000','sys','2023-12-13 01:05:01.061000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-13 01:05:00.025000','COMPLETED',NULL,'2023-12-13 01:05:00.061000',0),(116,'sys','2023-12-14 01:05:01.056000','sys','2023-12-14 01:05:01.056000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-14 01:05:00.017000','COMPLETED',NULL,'2023-12-14 01:05:00.045000',0),(117,'sys','2023-12-15 01:05:01.055000','sys','2023-12-15 01:05:01.055000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-15 01:05:00.010000','COMPLETED',NULL,'2023-12-15 01:05:00.042000',0),(118,'sys','2023-12-16 01:05:01.055000','sys','2023-12-16 01:05:01.055000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-16 01:05:00.013000','COMPLETED',NULL,'2023-12-16 01:05:00.058000',0),(119,'sys','2023-12-17 01:05:01.075000','sys','2023-12-17 01:05:01.075000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-17 01:05:00.033000','COMPLETED',NULL,'2023-12-17 01:05:00.088000',0),(120,'sys','2023-12-18 01:05:01.149000','sys','2023-12-18 01:05:01.149000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-18 01:05:00.038000','COMPLETED',NULL,'2023-12-18 01:05:00.111000',0),(121,'sys','2023-12-19 01:05:01.584000','sys','2023-12-19 01:05:01.584000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-19 01:05:00.104000','COMPLETED',NULL,'2023-12-19 01:05:00.413000',0),(122,'sys','2023-12-20 01:05:01.264000','sys','2023-12-20 01:05:01.264000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-20 01:05:00.012000','COMPLETED',NULL,'2023-12-20 01:05:00.049000',0),(123,'sys','2023-12-21 01:05:01.040000','sys','2023-12-21 01:05:01.040000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-21 01:05:00.008000','COMPLETED',NULL,'2023-12-21 01:05:00.038000',0),(124,'sys','2023-12-22 01:05:01.048000','sys','2023-12-22 01:05:01.048000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-22 01:05:00.016000','COMPLETED',NULL,'2023-12-22 01:05:00.040000',0),(125,'sys','2023-12-23 01:05:01.212000','sys','2023-12-23 01:05:01.212000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-23 01:05:00.056000','COMPLETED',NULL,'2023-12-23 01:05:00.178000',0),(126,'sys','2023-12-24 01:05:01.103000','sys','2023-12-24 01:05:01.103000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-24 01:05:00.048000','COMPLETED',NULL,'2023-12-24 01:05:00.110000',0),(127,'sys','2023-12-25 01:05:01.032000','sys','2023-12-25 01:05:01.032000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-25 01:05:00.007000','COMPLETED',NULL,'2023-12-25 01:05:00.029000',0),(128,'sys','2023-12-26 01:05:01.044000','sys','2023-12-26 01:05:01.044000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-26 01:05:00.019000','COMPLETED',NULL,'2023-12-26 01:05:00.057000',0),(129,'sys','2023-12-27 01:05:01.072000','sys','2023-12-27 01:05:01.072000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2023-12-27 01:05:00.022000','COMPLETED',NULL,'2023-12-27 01:05:00.063000',0),(130,'sys','2024-03-16 01:05:01.099000','sys','2024-03-16 01:05:01.099000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-16 01:05:00.039000','COMPLETED',NULL,'2024-03-16 01:05:00.119000',0),(131,'sys','2024-03-17 01:05:00.241000','sys','2024-03-17 01:05:00.241000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-17 01:05:00.018000','COMPLETED',NULL,'2024-03-17 01:05:00.035000',0),(132,'sys','2024-03-18 01:05:00.248000','sys','2024-03-18 01:05:00.248000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-18 01:05:00.010000','COMPLETED',NULL,'2024-03-18 01:05:00.021000',0),(133,'sys','2024-03-19 01:05:01.042000','sys','2024-03-19 01:05:01.042000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-19 01:05:00.013000','COMPLETED',NULL,'2024-03-19 01:05:00.028000',0),(134,'sys','2024-03-20 01:05:01.075000','sys','2024-03-20 01:05:01.075000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-20 01:05:00.034000','COMPLETED',NULL,'2024-03-20 01:05:00.072000',0),(135,'sys','2024-03-21 01:05:01.128000','sys','2024-03-21 01:05:01.128000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-21 01:05:00.062000','COMPLETED',NULL,'2024-03-21 01:05:00.108000',0),(136,'sys','2024-03-22 01:05:00.107000','sys','2024-03-22 01:05:00.107000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-22 01:05:00.027000','COMPLETED',NULL,'2024-03-22 01:05:00.056000',0),(137,'sys','2024-03-23 01:05:00.080000','sys','2024-03-23 01:05:00.080000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-23 01:05:00.016000','COMPLETED',NULL,'2024-03-23 01:05:00.052000',0),(138,'sys','2024-03-24 01:05:01.055000','sys','2024-03-24 01:05:01.055000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-24 01:05:00.016000','COMPLETED',NULL,'2024-03-24 01:05:00.042000',0),(139,'sys','2024-03-25 01:05:01.079000','sys','2024-03-25 01:05:01.079000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-25 01:05:00.028000','COMPLETED',NULL,'2024-03-25 01:05:00.070000',0),(140,'sys','2024-03-26 01:05:01.318000','sys','2024-03-26 01:05:01.318000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-26 01:05:00.278000','COMPLETED',NULL,'2024-03-26 01:05:00.301000',0),(141,'sys','2024-03-27 01:05:01.245000','sys','2024-03-27 01:05:01.245000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-27 01:05:00.075000','COMPLETED',NULL,'2024-03-27 01:05:00.146000',0),(142,'sys','2024-03-28 01:05:01.447000','sys','2024-03-28 01:05:01.447000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-28 01:05:00.368000','COMPLETED',NULL,'2024-03-28 01:05:00.454000',0),(143,'sys','2024-03-29 01:05:01.175000','sys','2024-03-29 01:05:01.175000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-29 01:05:00.047000','COMPLETED',NULL,'2024-03-29 01:05:00.173000',0),(144,'sys','2024-03-30 01:05:01.088000','sys','2024-03-30 01:05:01.088000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-30 01:05:00.029000','COMPLETED',NULL,'2024-03-30 01:05:00.065000',0),(145,'sys','2024-03-31 01:05:01.688000','sys','2024-03-31 01:05:01.688000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-03-31 01:05:00.276000','COMPLETED',NULL,'2024-03-31 01:05:00.730000',0),(146,'sys','2024-04-01 01:05:01.101000','sys','2024-04-01 01:05:01.101000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-01 01:05:00.023000','COMPLETED',NULL,'2024-04-01 01:05:00.066000',0),(147,'sys','2024-04-02 01:05:01.077000','sys','2024-04-02 01:05:01.077000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-02 01:05:00.011000','COMPLETED',NULL,'2024-04-02 01:05:00.093000',0),(148,'sys','2024-04-03 01:05:01.052000','sys','2024-04-03 01:05:01.052000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-03 01:05:00.009000','COMPLETED',NULL,'2024-04-03 01:05:00.071000',0),(149,'sys','2024-04-04 01:05:01.122000','sys','2024-04-04 01:05:01.122000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-04 01:05:00.032000','COMPLETED',NULL,'2024-04-04 01:05:00.184000',0),(150,'sys','2024-04-05 01:05:01.056000','sys','2024-04-05 01:05:01.056000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-05 01:05:00.012000','COMPLETED',NULL,'2024-04-05 01:05:00.064000',0),(151,'sys','2024-04-06 01:05:01.073000','sys','2024-04-06 01:05:01.073000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-06 01:05:00.042000','COMPLETED',NULL,'2024-04-06 01:05:00.085000',0),(152,'sys','2024-04-07 01:05:01.078000','sys','2024-04-07 01:05:01.078000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-07 01:05:00.028000','COMPLETED',NULL,'2024-04-07 01:05:00.097000',0),(153,'sys','2024-04-08 01:05:01.309000','sys','2024-04-08 01:05:01.309000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-08 01:05:00.054000','COMPLETED',NULL,'2024-04-08 01:05:00.978000',0),(154,'sys','2024-04-09 01:05:01.060000','sys','2024-04-09 01:05:01.060000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-09 01:05:00.011000','COMPLETED',NULL,'2024-04-09 01:05:00.071000',0),(155,'sys','2024-04-10 01:05:01.090000','sys','2024-04-10 01:05:01.090000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-10 01:05:00.033000','COMPLETED',NULL,'2024-04-10 01:05:00.103000',0),(156,'sys','2024-04-11 01:05:01.096000','sys','2024-04-11 01:05:01.096000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-11 01:05:00.038000','COMPLETED',NULL,'2024-04-11 01:05:00.099000',0),(157,'sys','2024-04-12 01:05:01.046000','sys','2024-04-12 01:05:01.046000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-12 01:05:00.015000','COMPLETED',NULL,'2024-04-12 01:05:00.049000',0),(158,'sys','2024-04-13 01:05:01.058000','sys','2024-04-13 01:05:01.058000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-13 01:05:00.017000','COMPLETED',NULL,'2024-04-13 01:05:00.059000',0),(159,'sys','2024-04-14 01:05:01.113000','sys','2024-04-14 01:05:01.113000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-14 01:05:00.045000','COMPLETED',NULL,'2024-04-14 01:05:00.142000',0),(160,'sys','2024-04-15 01:05:01.086000','sys','2024-04-15 01:05:01.086000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-15 01:05:00.044000','COMPLETED',NULL,'2024-04-15 01:05:00.093000',0),(161,'sys','2024-04-16 01:05:01.126000','sys','2024-04-16 01:05:01.126000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-16 01:05:00.060000','COMPLETED',NULL,'2024-04-16 01:05:00.212000',0),(162,'sys','2024-04-17 01:05:01.168000','sys','2024-04-17 01:05:01.168000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-17 01:05:00.048000','COMPLETED',NULL,'2024-04-17 01:05:00.158000',0),(163,'sys','2024-04-18 01:05:01.647000','sys','2024-04-18 01:05:01.647000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-18 01:05:00.392000','COMPLETED',NULL,'2024-04-18 01:05:01.291000',0),(164,'sys','2024-04-19 01:05:01.074000','sys','2024-04-19 01:05:01.074000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-19 01:05:00.011000','COMPLETED',NULL,'2024-04-19 01:05:00.376000',0),(165,'sys','2024-04-20 01:05:01.122000','sys','2024-04-20 01:05:01.122000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-20 01:05:00.026000','COMPLETED',NULL,'2024-04-20 01:05:00.995000',0),(166,'sys','2024-04-21 01:05:02.146000','sys','2024-04-21 01:05:02.146000',0,'\0',NULL,NULL,'00:00:01','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-21 01:05:00.025000','COMPLETED',NULL,'2024-04-21 01:05:01.143000',0),(167,'sys','2024-04-22 01:05:01.064000','sys','2024-04-22 01:05:01.064000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-22 01:05:00.017000','COMPLETED',NULL,'2024-04-22 01:05:00.516000',0),(168,'sys','2024-04-23 01:05:01.273000','sys','2024-04-23 01:05:01.273000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-23 01:05:00.066000','COMPLETED',NULL,'2024-04-23 01:05:00.992000',0),(169,'sys','2024-04-24 01:05:01.199000','sys','2024-04-24 01:05:01.199000',0,'\0',NULL,NULL,'00:00:01','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-24 01:05:00.062000','COMPLETED',NULL,'2024-04-24 01:05:01.097000',0),(170,'sys','2024-04-30 01:05:01.052000','sys','2024-04-30 01:05:01.052000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-04-30 01:05:00.018000','COMPLETED',NULL,'2024-04-30 01:05:00.539000',0),(171,'sys','2024-05-01 01:05:01.213000','sys','2024-05-01 01:05:01.213000',0,'\0',NULL,NULL,'00:00:00','','',0,0,0,0,'\0','SYSTEM','sys','2024-05-01 01:05:00.061000','COMPLETED',NULL,'2024-05-01 01:05:00.710000',0);
/*!40000 ALTER TABLE `purge_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qie_instance_history`
--

DROP TABLE IF EXISTS `qie_instance_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qie_instance_history` (
  `instance_id` int(11) NOT NULL AUTO_INCREMENT,
  `abnormal_shutdown_alerted` bit(1) DEFAULT NULL,
  `completion_queue_size` int(11) DEFAULT NULL,
  `completion_thread_count` int(11) DEFAULT NULL,
  `completion_throughput` int(11) DEFAULT NULL,
  `connection_dialect` varchar(255) DEFAULT NULL,
  `connection_driver` varchar(255) DEFAULT NULL,
  `connection_driver_version` varchar(255) DEFAULT NULL,
  `connection_url` varchar(1024) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `downloaded_qie_build_number` int(11) DEFAULT NULL,
  `downloaded_qie_build_version` varchar(255) DEFAULT NULL,
  `external_libraries` longblob DEFAULT NULL,
  `inbound_queue_size` int(11) DEFAULT NULL,
  `initializing` bit(1) DEFAULT NULL,
  `instance_recovered` bit(1) DEFAULT NULL,
  `instance_shutdown` bit(1) DEFAULT NULL,
  `java_home` varchar(255) DEFAULT NULL,
  `java_vendor` varchar(255) DEFAULT NULL,
  `java_version` varchar(255) DEFAULT NULL,
  `jre_start_time` varchar(255) DEFAULT NULL,
  `last_heartbeat` datetime(6) DEFAULT NULL,
  `logger_queue_size` int(11) DEFAULT NULL,
  `logger_thread_count` int(11) DEFAULT NULL,
  `logger_throughput` int(11) DEFAULT NULL,
  `memory_info` longblob DEFAULT NULL,
  `plugins_downloaded` longblob DEFAULT NULL,
  `processor_thread_count` int(11) DEFAULT NULL,
  `processor_throughput` int(11) DEFAULT NULL,
  `qie_home` varchar(255) DEFAULT NULL,
  `server_name_with_port` varchar(255) DEFAULT NULL,
  `stopped` bit(1) DEFAULT NULL,
  `vtd_downloaded` bit(1) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`instance_id`),
  KEY `idx_qie_instance_history_stopped` (`stopped`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qie_instance_history`
--

LOCK TABLES `qie_instance_history` WRITE;
/*!40000 ALTER TABLE `qie_instance_history` DISABLE KEYS */;
INSERT INTO `qie_instance_history` VALUES (1,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-03-29 15:28:24.947000',16371,'5.23.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-03-29 15:27:44 GMT (40.703 seconds ago)','2023-04-12 03:37:09.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>59375616</committed><peak>58859200</peak><max>251658240</max><used>58859200</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>109182976</committed><peak>106188680</peak><max>-1</max><used>106188680</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12713984</committed><peak>12088872</peak><max>1073741824</max><used>12088872</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>53477376</committed><peak>976224256</peak><max>1072693248</max><used>20147648</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>35117208</peak><max>524288</max><used>213008</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>330825728</committed><peak>102657296</peak><max>2147483648</max><used>102657296</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(2,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-04-25 14:58:35.356000',16371,'5.23.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-04-25 14:58:00 GMT (35.115 seconds ago)','2023-04-26 04:21:06.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>51249152</committed><peak>50487616</peak><max>251658240</max><used>50296256</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>105984000</committed><peak>103361312</peak><max>-1</max><used>103361312</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12451840</committed><peak>11910872</peak><max>1073741824</max><used>11910872</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>922746880</committed><peak>961019904</peak><max>1019740160</max><used>70536520</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>1572864</committed><peak>42707832</peak><max>1572864</max><used>1229304</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>341311488</committed><peak>83258880</peak><max>2147483648</max><used>83258880</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(3,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-05-01 14:09:16.526000',0,'','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-05-01 14:08:56 GMT (20.388 seconds ago)','2023-05-01 14:13:53.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>40763392</committed><peak>40447296</peak><max>251658240</max><used>40439360</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102182912</committed><peak>99590432</peak><max>-1</max><used>99590432</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12189696</committed><peak>11648576</peak><max>1073741824</max><used>11648576</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>914358272</committed><peak>754450432</peak><max>1013448704</max><used>180635824</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>15728640</committed><peak>34590168</peak><max>15728640</max><used>0</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>346030080</committed><peak>117716224</peak><max>2147483648</max><used>84085320</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(4,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-05-16 00:05:59.935000',16384,'23.2.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-05-16 00:05:23 GMT (36.669 seconds ago)','2023-06-02 14:01:57.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>51773440</committed><peak>51342208</peak><max>251658240</max><used>51331456</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>105644032</committed><peak>102158064</peak><max>-1</max><used>102158064</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12320768</committed><peak>11693568</peak><max>1073741824</max><used>11693568</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>56098816</committed><peak>1026555904</peak><max>1072693248</max><used>31141824</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>24553136</peak><max>524288</max><used>213008</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>337641472</committed><peak>111876808</peak><max>2147483648</max><used>86429992</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(5,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-06-05 15:50:28.245000',0,'','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-06-05 15:50:07 GMT (20.399 seconds ago)','2023-06-05 15:54:20.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>35848192</committed><peak>35626432</peak><max>251658240</max><used>35626432</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>99221504</committed><peak>96749496</peak><max>-1</max><used>96749496</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11927552</committed><peak>11370640</peak><max>1073741824</max><used>11370640</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>866648064</committed><peak>665845760</peak><max>1020788736</max><used>252277760</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>19398656</committed><peak>25817992</peak><max>19398656</max><used>18960160</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>223870976</committed><peak>102179048</peak><max>2147483648</max><used>102179048</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(6,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-06-19 18:28:50.803000',16388,'23.2.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-06-19 18:28:25 GMT (25.341 seconds ago)','2023-07-14 15:15:38.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>53084160</committed><peak>52675648</peak><max>251658240</max><used>52653952</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103546880</committed><peak>100950096</peak><max>-1</max><used>100950096</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12058624</committed><peak>11503304</peak><max>1073741824</max><used>11503304</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>418906112</committed><peak>998768640</peak><max>1072168960</max><used>243774928</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>25164616</peak><max>524288</max><used>393248</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>276824064</committed><peak>117876080</peak><max>2147483648</max><used>80650872</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(7,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-08-23 20:17:08.296000',16393,'23.2.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-08-23 20:16:39 GMT (28.736 seconds ago)','2023-08-30 20:46:02.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>49872896</committed><peak>49479616</peak><max>251658240</max><used>49429120</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103940096</committed><peak>100975056</peak><max>-1</max><used>100975056</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12189696</committed><peak>11557080</peak><max>1073741824</max><used>11557080</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>50855936</committed><peak>1018691584</peak><max>1072693248</max><used>12625096</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>25702224</peak><max>524288</max><used>196608</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>288882688</committed><peak>105200120</peak><max>2147483648</max><used>76267528</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(8,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-09-04 00:25:52.083000',0,'','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-09-04 00:25:20 GMT (31.989 seconds ago)','2023-09-04 00:38:27.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>37617664</committed><peak>37372032</peak><max>251658240</max><used>37361216</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>96600064</committed><peak>94392456</peak><max>-1</max><used>94392456</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11403264</committed><peak>11014776</peak><max>1073741824</max><used>11014776</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>848822272</committed><peak>848822272</peak><max>1007681536</max><used>297432656</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>26738688</committed><peak>26728264</peak><max>26738688</max><used>26728264</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>189267968</committed><peak>88792152</peak><max>2147483648</max><used>88792152</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(9,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-10-19 20:02:30.082000',16394,'23.2.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-10-19 20:02:02 GMT (27.562 seconds ago)','2023-10-27 18:48:58.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>59768832</committed><peak>59255552</peak><max>251658240</max><used>59000576</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>110309376</committed><peak>107416976</peak><max>-1</max><used>107416976</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12845056</committed><peak>12278248</peak><max>1073741824</max><used>12278248</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>52953088</committed><peak>1006632960</peak><max>1072693248</max><used>13050000</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>23564760</peak><max>524288</max><used>229376</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>328728576</committed><peak>116175688</peak><max>2147483648</max><used>99805960</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(10,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-11-01 21:46:40.151000',16406,'23.4.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-11-01 21:46:13 GMT (27.044 seconds ago)','2023-12-27 16:14:17.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>62586880</committed><peak>62006976</peak><max>251658240</max><used>61736704</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>115290112</committed><peak>109841024</peak><max>-1</max><used>109841024</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>13631488</committed><peak>12569464</peak><max>1073741824</max><used>12569464</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>58720256</committed><peak>884998144</peak><max>1072693248</max><used>41304528</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>41504536</peak><max>524288</max><used>262176</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>356515840</committed><peak>112191624</peak><max>2147483648</max><used>112191624</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(11,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-12-27 16:24:34.989000',0,'','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-12-27 16:24:07 GMT (28.027 seconds ago)','2023-12-27 16:25:26.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>34799616</committed><peak>34477248</peak><max>251658240</max><used>34118848</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>98041856</committed><peak>95867408</peak><max>-1</max><used>95867408</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11334792</peak><max>1073741824</max><used>11334792</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>994050048</committed><peak>875560960</peak><max>998768640</max><used>556072616</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>35127296</committed><peak>32577416</peak><max>35127296</max><used>32577416</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>163577856</committed><peak>80147000</peak><max>2147483648</max><used>80147000</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(12,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2023-12-27 16:28:06.609000',0,'','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','\0','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2023-12-27 16:27:39 GMT (28.008 seconds ago)','2023-12-27 16:28:41.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>32768000</committed><peak>32467776</peak><max>251658240</max><used>32100544</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>97124352</committed><peak>94855360</peak><max>-1</max><used>94855360</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11225256</peak><max>1073741824</max><used>11225256</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>716177408</committed><peak>545259520</peak><max>977272832</max><used>514539384</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>42467328</committed><peak>42456144</peak><max>42467328</max><used>42456144</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>253755392</committed><peak>79308720</peak><max>2147483648</max><used>79308720</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(13,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.1','jdbc:mariadb://192.168.22.212:30924/qie','2024-03-15 22:31:19.418000',16409,'23.4.1','�_U�d�ȵ!2f\Z)o���B>���Ϊ�m.��8�s�4K6�?��~ֆ���{q��=o$��5d�{�.\0�0%�Z[qa��6������Ln��zF\r�P�GɠAPZ��H�n5QM����S|��V{�g���ɔ\\7��=E&�_8~��lX��}0{����2���k���&}�b_��*���PI\n_ڜ��&?z\'SW��Ǖ��(V7��8��O���,?A�U��Nk:���L�)� d�����',0,'\0','','','/usr/lib/jvm/java-8-amazon-corretto/jre','Amazon.com Inc.','1.8.0_332 (64-bit)','2024-03-15 22:30:54 GMT (25.466 seconds ago)','2024-03-19 23:39:14.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>Code Cache</name><committed>56950784</committed><peak>56390144</peak><max>251658240</max><used>56377152</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>107479040</committed><peak>104635904</peak><max>-1</max><used>104635904</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12582912</committed><peak>11955880</peak><max>1073741824</max><used>11955880</used></memUsageDataList><memUsageDataList><name>PS Eden Space</name><committed>53477376</committed><peak>1009254400</peak><max>1072693248</max><used>7977560</used></memUsageDataList><memUsageDataList><name>PS Survivor Space</name><committed>524288</committed><peak>23038600</peak><max>524288</max><used>245776</used></memUsageDataList><memUsageDataList><name>PS Old Gen</name><committed>332922880</committed><peak>109080056</peak><max>2147483648</max><used>92768808</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-6597fc57df-k8qqr:8088','','',NULL),(14,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-03-19 23:43:49.165000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-03-19 23:43:24 GMT (25s4ms ago)','2024-03-22 22:00:59.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1546496</peak><max>5836800</max><used>1480192</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>113704960</committed><peak>113102152</peak><max>-1</max><used>113102152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>36569088</committed><peak>36528640</peak><max>122908672</max><used>33695232</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12713984</committed><peak>12379728</peak><max>1073741824</max><used>12379728</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>218103808</committed><peak>209715200</peak><max>-1</max><used>102760448</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>118070784</peak><max>3221225472</max><used>110137856</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>26171304</peak><max>-1</max><used>334120</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>18481152</committed><peak>18441984</peak><max>122912768</max><used>18441984</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-48tqk:8088','','\0','10.131.0.16'),(15,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-03-22 22:01:34.607000',16423,'24.1.1','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-03-22 22:01:11 GMT (23s311ms ago)','2024-04-22 15:49:19.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1564672</peak><max>5836800</max><used>1498240</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>124977152</committed><peak>123475648</peak><max>-1</max><used>123475648</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>42008576</committed><peak>41741824</peak><max>122908672</max><used>40933120</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>14286848</committed><peak>13458216</peak><max>1073741824</max><used>13458216</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>167772160</committed><peak>180355072</peak><max>-1</max><used>33554432</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>142606336</committed><peak>113209856</peak><max>3221225472</max><used>113209856</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>19724584</peak><max>-1</max><used>339288</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>27983872</committed><peak>27972736</peak><max>122912768</max><used>27972736</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-7625n:8088','','\0','10.131.0.19'),(16,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-03-22 22:01:47.686000',16423,'24.1.1','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-03-22 22:01:25 GMT (22s72ms ago)','2024-04-22 15:53:14.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1543680</peak><max>5836800</max><used>1475712</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>111935488</committed><peak>111239824</peak><max>-1</max><used>111239824</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>33882112</committed><peak>33713536</peak><max>122908672</max><used>33713536</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12451840</committed><peak>12083528</peak><max>1073741824</max><used>12083528</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>199229440</committed><peak>197132288</peak><max>-1</max><used>88080384</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>121634816</committed><peak>96593408</peak><max>3221225472</max><used>92536320</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>25165824</peak><max>-1</max><used>332496</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>19857408</committed><peak>19828992</peak><max>122912768</max><used>19828992</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-gdljm:8088','','\0','10.128.2.200'),(17,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 15:50:05.248000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 15:49:19 GMT (46s40ms ago)','2024-04-22 15:54:11.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1499392</peak><max>5836800</max><used>1458176</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102498304</committed><peak>101919160</peak><max>-1</max><used>101919160</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25231360</committed><peak>25188992</peak><max>122908672</max><used>25188992</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11437728</peak><max>1073741824</max><used>11437728</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>197132288</committed><peak>192937984</peak><max>-1</max><used>96468992</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>150994944</committed><peak>90992640</peak><max>3221225472</max><used>90992640</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>16777216</committed><peak>23068672</peak><max>-1</max><used>16777216</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9306112</committed><peak>9253760</peak><max>122912768</max><used>9253760</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-rftps:8088','','\0','10.128.3.180'),(18,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 15:55:10.198000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 15:54:21 GMT (48s975ms ago)','2024-04-22 18:24:55.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1529216</peak><max>5836800</max><used>1465472</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104333312</committed><peak>103767912</peak><max>-1</max><used>103686032</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28770304</committed><peak>28718720</peak><max>122908672</max><used>27085440</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11521432</peak><max>1073741824</max><used>11488144</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>236978176</committed><peak>251658240</peak><max>-1</max><used>142606336</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>104857600</committed><peak>102864384</peak><max>3221225472</max><used>96018432</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>22776512</peak><max>-1</max><used>332496</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>12779520</committed><peak>12729472</peak><max>122912768</max><used>12723584</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-mmczq:8088','','\0','10.131.0.11'),(19,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 15:55:26.723000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 15:54:22 GMT (1m4s ago)','2024-04-22 18:24:56.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1527808</peak><max>5836800</max><used>1461248</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103677952</committed><peak>103162544</peak><max>-1</max><used>103162544</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28442624</committed><peak>28398976</peak><max>122908672</max><used>26037376</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11464152</peak><max>1073741824</max><used>11464152</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>218103808</committed><peak>205520896</peak><max>-1</max><used>192937984</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>140509184</committed><peak>101275648</peak><max>3221225472</max><used>101275648</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>24033440</peak><max>-1</max><used>801880</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>12320768</committed><peak>12295552</peak><max>122912768</max><used>12295552</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-zxhns:8088','','\0','10.131.0.15'),(20,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 18:25:41.213000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 18:24:49 GMT (52s32ms ago)','2024-04-22 18:30:52.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1506304</peak><max>5836800</max><used>1459200</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102891520</committed><peak>102378008</peak><max>-1</max><used>102378008</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24772608</committed><peak>24745728</peak><max>122908672</max><used>24745728</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11479304</peak><max>1073741824</max><used>11479304</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>213909504</committed><peak>199229440</peak><max>-1</max><used>58720256</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>161480704</committed><peak>101242880</peak><max>3221225472</max><used>101242880</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>21958160</peak><max>-1</max><used>11393544</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10092544</committed><peak>10089856</peak><max>122912768</max><used>10087296</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-5tq5w:8088','','\0','10.128.2.33'),(21,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 18:25:53.221000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 18:24:49 GMT (1m4s ago)','2024-04-22 18:30:50.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1518976</peak><max>5836800</max><used>1461248</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102301696</committed><peak>101816384</peak><max>-1</max><used>101816384</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23330816</committed><peak>23009152</peak><max>122908672</max><used>23009152</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11440976</peak><max>1073741824</max><used>11440976</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>205520896</committed><peak>211812352</peak><max>-1</max><used>127926272</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>167772160</committed><peak>95658496</peak><max>3221225472</max><used>95658496</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>8388608</committed><peak>29360128</peak><max>-1</max><used>8388608</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9240576</committed><peak>9229184</peak><max>122912768</max><used>8760192</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-7tfvk:8088','','\0','10.128.2.38'),(22,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 18:31:36.261000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 18:30:39 GMT (56s540ms ago)','2024-04-22 19:25:49.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1560576</peak><max>5836800</max><used>1454976</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104005632</committed><peak>103442176</peak><max>-1</max><used>103442176</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29556736</committed><peak>29545984</peak><max>122908672</max><used>29545984</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11495216</peak><max>1073741824</max><used>11495216</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>192937984</committed><peak>199229440</peak><max>-1</max><used>109051904</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>104064512</peak><max>3221225472</max><used>104064512</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>22729960</peak><max>-1</max><used>1597120</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11730944</committed><peak>11688320</peak><max>122912768</max><used>11688320</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-xzz6t:8088','','\0','10.131.0.12'),(23,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 18:31:48.157000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 18:30:40 GMT (1m7s ago)','2024-04-22 19:25:48.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1518336</peak><max>5836800</max><used>1460608</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103481344</committed><peak>102953608</peak><max>-1</max><used>102953608</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>26804224</committed><peak>26754048</peak><max>122908672</max><used>26754048</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11462728</peak><max>1073741824</max><used>11462728</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>331350016</committed><peak>318767104</peak><max>-1</max><used>136314880</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>209715200</committed><peak>82705920</peak><max>3221225472</max><used>82705920</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>20971520</committed><peak>40894464</peak><max>-1</max><used>20971520</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11206656</committed><peak>11159552</peak><max>122912768</max><used>11159552</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-75gpj:8088','','\0','10.131.0.18'),(24,'\0',0,0,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 19:26:34.906000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 19:25:46 GMT (48s731ms ago)','2024-04-22 19:29:59.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1541632</peak><max>5836800</max><used>1453696</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102563840</committed><peak>102009120</peak><max>-1</max><used>102009120</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24248320</committed><peak>24222848</peak><max>122908672</max><used>24222848</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11476856</peak><max>1073741824</max><used>11476856</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>295698432</committed><peak>287309824</peak><max>-1</max><used>132120576</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>182452224</committed><peak>93229568</peak><max>3221225472</max><used>93229568</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>25661456</peak><max>-1</max><used>11493848</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10223616</committed><peak>10161920</peak><max>122912768</max><used>9844096</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-dfjjl:8088','','\0','10.128.2.19'),(25,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 19:26:40.328000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 19:25:46 GMT (53s812ms ago)','2024-04-22 19:30:03.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1507840</peak><max>5836800</max><used>1457536</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102236160</committed><peak>101694712</peak><max>-1</max><used>101694712</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24838144</committed><peak>24804352</peak><max>122908672</max><used>24804352</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11454696</peak><max>1073741824</max><used>11454696</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>10485760</committed><peak>222298112</peak><max>-1</max><used>0</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>385875968</committed><peak>98772480</peak><max>3221225472</max><used>98772480</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>27144000</peak><max>-1</max><used>10485760</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9830400</committed><peak>9791360</peak><max>122912768</max><used>9791360</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-cl2kv:8088','','\0','10.128.2.24'),(26,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 19:30:43.565000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 19:29:48 GMT (55s131ms ago)','2024-04-22 20:11:17.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1513856</peak><max>5836800</max><used>1456384</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104136704</committed><peak>103597512</peak><max>-1</max><used>103597512</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>30408704</committed><peak>30365056</peak><max>122908672</max><used>30365056</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11507928</peak><max>1073741824</max><used>11507928</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>232783872</committed><peak>276824064</peak><max>-1</max><used>190840832</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>157286400</committed><peak>104772608</peak><max>3221225472</max><used>104772608</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>32505856</peak><max>-1</max><used>858496</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11796480</committed><peak>11751424</peak><max>122912768</max><used>11751424</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-bvs6f:8088','','\0','10.131.0.15'),(27,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 19:30:56.112000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 19:29:45 GMT (1m10s ago)','2024-04-22 20:11:21.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1532544</peak><max>5836800</max><used>1459328</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103481344</committed><peak>102990304</peak><max>-1</max><used>102990304</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27525120</committed><peak>27453312</peak><max>122908672</max><used>27453312</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11462072</peak><max>1073741824</max><used>11462072</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>216006656</committed><peak>216006656</peak><max>-1</max><used>56623104</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>96787456</peak><max>3221225472</max><used>96787456</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>29360128</peak><max>-1</max><used>10102688</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11075584</committed><peak>11037824</peak><max>122912768</max><used>11037824</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-vzhfj:8088','','\0','10.131.0.14'),(28,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 20:12:02.701000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 20:11:12 GMT (50s326ms ago)','2024-04-22 20:14:22.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1512832</peak><max>5836800</max><used>1457152</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102301696</committed><peak>101690400</peak><max>-1</max><used>101690400</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23986176</committed><peak>23970304</peak><max>122908672</max><used>23970304</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11447528</peak><max>1073741824</max><used>11447528</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>339738624</committed><peak>343932928</peak><max>-1</max><used>81788928</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>216006656</committed><peak>76293120</peak><max>3221225472</max><used>76293120</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>27262976</committed><peak>27166368</peak><max>-1</max><used>27166368</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9961472</committed><peak>9914112</peak><max>122912768</max><used>9666944</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-vdvsx:8088','','\0','10.128.2.29'),(29,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 20:12:04.712000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 20:11:11 GMT (53s88ms ago)','2024-04-22 20:14:22.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1538304</peak><max>5836800</max><used>1459456</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>101974016</committed><peak>101408040</peak><max>-1</max><used>101408040</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23396352</committed><peak>23331072</peak><max>122908672</max><used>23331072</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11437192</peak><max>1073741824</max><used>11437192</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>278921216</committed><peak>268435456</peak><max>-1</max><used>71303168</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>171966464</committed><peak>92817920</peak><max>3221225472</max><used>92817920</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>29106864</peak><max>-1</max><used>11534336</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9371648</committed><peak>9319296</peak><max>122912768</max><used>9319296</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-m6ncz:8088','','\0','10.128.2.25'),(30,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 20:16:54.210000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 20:16:00 GMT (54s441ms ago)','2024-04-22 21:06:03.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1537920</peak><max>5836800</max><used>1459200</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104333312</committed><peak>103743728</peak><max>-1</max><used>103743728</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>30015488</committed><peak>29954944</peak><max>122908672</max><used>29954944</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11508072</peak><max>1073741824</max><used>11508072</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>390070272</committed><peak>381681664</peak><max>-1</max><used>190840832</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>236978176</committed><peak>91711488</peak><max>3221225472</max><used>91711488</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>16777216</committed><peak>31457280</peak><max>-1</max><used>16777216</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>12058624</committed><peak>12048256</peak><max>122912768</max><used>12048256</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-zs8s4:8088','','\0','10.131.0.15'),(31,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 20:17:03.310000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 20:16:00 GMT (1m3s ago)','2024-04-22 21:06:02.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1511808</peak><max>5836800</max><used>1456256</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103546880</committed><peak>103059120</peak><max>-1</max><used>103059120</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27197440</committed><peak>27177856</peak><max>122908672</max><used>27177856</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11471872</peak><max>1073741824</max><used>11471872</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>218103808</committed><peak>218103808</peak><max>-1</max><used>121634816</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>95628288</peak><max>3221225472</max><used>95628288</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>28807024</peak><max>-1</max><used>9999512</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11141120</committed><peak>11093504</peak><max>122912768</max><used>11093504</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-kvbsb:8088','','\0','10.131.0.17'),(32,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 21:06:31.388000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 21:05:53 GMT (38s191ms ago)','2024-04-22 21:10:11.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1505024</peak><max>5836800</max><used>1457664</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102629376</committed><peak>102119992</peak><max>-1</max><used>102119992</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23330816</committed><peak>23266944</peak><max>122908672</max><used>23266944</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11477400</peak><max>1073741824</max><used>11477400</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>283115520</committed><peak>274726912</peak><max>-1</max><used>117440512</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>178257920</committed><peak>88020984</peak><max>3221225472</max><used>88020984</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>18874368</committed><peak>17875008</peak><max>-1</max><used>17875008</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10420224</committed><peak>10355840</peak><max>122912768</max><used>9989888</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-cvbhg:8088','','\0','10.128.2.24'),(33,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 21:06:43.356000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 21:05:53 GMT (50s36ms ago)','2024-04-22 21:10:04.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1539456</peak><max>5836800</max><used>1459712</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102170624</committed><peak>101612152</peak><max>-1</max><used>101612152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23724032</committed><peak>23677056</peak><max>122908672</max><used>23677056</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11444712</peak><max>1073741824</max><used>11444712</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>171966464</committed><peak>184549376</peak><max>-1</max><used>119537664</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>157286400</committed><peak>98013184</peak><max>3221225472</max><used>98013184</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>25165824</peak><max>-1</max><used>9437184</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9764864</committed><peak>9709824</peak><max>122912768</max><used>9709824</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-9x8ql:8088','','\0','10.128.2.25'),(34,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 21:11:02.044000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 21:10:00 GMT (1m2s ago)','2024-04-22 22:09:47.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1544832</peak><max>5836800</max><used>1471616</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>110297088</committed><peak>109621952</peak><max>-1</max><used>109621952</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>32374784</committed><peak>32363776</peak><max>122908672</max><used>31388160</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12517376</committed><peak>12162288</peak><max>1073741824</max><used>12162288</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>211812352</committed><peak>213909504</peak><max>-1</max><used>123731968</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>150994944</committed><peak>105731072</peak><max>3221225472</max><used>105731072</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>4194304</committed><peak>23732320</peak><max>-1</max><used>2634776</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>13959168</committed><peak>13913344</peak><max>122912768</max><used>13862656</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-4m522:8088','','\0','10.131.0.20'),(35,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 21:11:18.600000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 21:10:00 GMT (1m18s ago)','2024-04-22 22:10:00.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1523712</peak><max>5836800</max><used>1462784</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104267776</committed><peak>103713568</peak><max>-1</max><used>103632968</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28966912</committed><peak>28937728</peak><max>122908672</max><used>26589312</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11488296</peak><max>1073741824</max><used>11472632</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>260046848</committed><peak>272629760</peak><max>-1</max><used>18874368</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>159383552</committed><peak>100463104</peak><max>3221225472</max><used>100463104</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>14680064</committed><peak>18874368</peak><max>-1</max><used>14443176</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11272192</committed><peak>11246080</peak><max>122912768</max><used>11001344</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-lq74x:8088','','\0','10.131.0.19'),(36,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 22:10:49.603000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 22:09:56 GMT (53s715ms ago)','2024-04-22 22:15:48.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1500544</peak><max>5836800</max><used>1456896</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102760448</committed><peak>102241576</peak><max>-1</max><used>102241576</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25034752</committed><peak>25020672</peak><max>122908672</max><used>25020672</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11485568</peak><max>1073741824</max><used>11485568</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>293601280</committed><peak>289406976</peak><max>-1</max><used>104857600</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>184549376</committed><peak>85278208</peak><max>3221225472</max><used>85278208</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>23068672</committed><peak>37206032</peak><max>-1</max><used>23068672</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10420224</committed><peak>10402816</peak><max>122912768</max><used>10402816</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-7g9bl:8088','','\0','10.128.2.19'),(37,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 22:11:00.383000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 22:09:56 GMT (1m3s ago)','2024-04-22 22:15:50.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1507456</peak><max>5836800</max><used>1458688</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102432768</committed><peak>101914704</peak><max>-1</max><used>101914704</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25690112</committed><peak>25682176</peak><max>122908672</max><used>25682176</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11446296</peak><max>1073741824</max><used>11446296</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>239075328</committed><peak>232783872</peak><max>-1</max><used>73400320</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>150994944</committed><peak>85901312</peak><max>3221225472</max><used>85901312</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>18874368</committed><peak>29285744</peak><max>-1</max><used>18874368</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10289152</committed><peak>10239104</peak><max>122912768</max><used>10138368</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-6mhbb:8088','','\0','10.128.2.25'),(38,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 22:16:30.228000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 22:15:40 GMT (50s30ms ago)','2024-04-22 23:00:32.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1510656</peak><max>5836800</max><used>1454976</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104267776</committed><peak>103689808</peak><max>-1</max><used>103689808</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29884416</committed><peak>29848704</peak><max>122908672</max><used>27813376</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11505504</peak><max>1073741824</max><used>11505504</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>234881024</committed><peak>293601280</peak><max>-1</max><used>8388608</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>93311488</peak><max>3221225472</max><used>93311488</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>31320736</peak><max>-1</max><used>12582912</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11468800</committed><peak>11419648</peak><max>122912768</max><used>11419648</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-qd2cc:8088','','\0','10.131.0.15'),(39,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 22:16:43.666000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 22:15:40 GMT (1m3s ago)','2024-04-22 23:00:37.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1570560</peak><max>5836800</max><used>1470464</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>110493696</committed><peak>109944696</peak><max>-1</max><used>109944696</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>35389440</committed><peak>35360256</peak><max>122908672</max><used>32696448</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12386304</committed><peak>12103936</peak><max>1073741824</max><used>12103936</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>201326592</committed><peak>207618048</peak><max>-1</max><used>148897792</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>103333376</peak><max>3221225472</max><used>103333376</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>24697648</peak><max>-1</max><used>10485760</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>14024704</committed><peak>13966592</peak><max>122912768</max><used>13953664</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-2j6b2:8088','','\0','10.131.0.17'),(40,'\0',0,0,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 23:01:12.159000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 23:00:29 GMT (42s299ms ago)','2024-04-22 23:05:08.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1532544</peak><max>5836800</max><used>1468672</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104529920</committed><peak>103958240</peak><max>-1</max><used>103958240</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25165824</committed><peak>25163776</peak><max>122908672</max><used>25163776</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11993088</committed><peak>11660216</peak><max>1073741824</max><used>11660216</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>213909504</committed><peak>207618048</peak><max>-1</max><used>73400320</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>169869312</committed><peak>107717632</peak><max>3221225472</max><used>107717632</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>25165824</peak><max>-1</max><used>2097152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9633792</committed><peak>9610112</peak><max>122912768</max><used>9610112</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-zjzlw:8088','','\0','10.128.2.28'),(41,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 23:01:24.579000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 23:00:29 GMT (54s767ms ago)','2024-04-22 23:05:14.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1511296</peak><max>5836800</max><used>1461248</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102170624</committed><peak>101664128</peak><max>-1</max><used>101664128</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23920640</committed><peak>23898496</peak><max>122908672</max><used>23898496</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11443496</peak><max>1073741824</max><used>11443496</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>150994944</committed><peak>180355072</peak><max>-1</max><used>60817408</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>148897792</committed><peak>102591488</peak><max>3221225472</max><used>102591488</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>25165824</peak><max>-1</max><used>11083784</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9764864</committed><peak>9714304</peak><max>122912768</max><used>9714304</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-gxzt5:8088','','\0','10.128.2.27'),(42,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 23:05:53.721000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 23:05:02 GMT (51s509ms ago)','2024-04-23 15:20:57.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1589632</peak><max>5836800</max><used>1471872</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>108265472</committed><peak>107678712</peak><max>-1</max><used>107678712</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>31391744</committed><peak>31303424</peak><max>122908672</max><used>29746304</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12124160</committed><peak>11818456</peak><max>1073741824</max><used>11818456</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>249561088</committed><peak>343932928</peak><max>-1</max><used>113246208</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>106608128</peak><max>3221225472</max><used>106608128</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>42757408</peak><max>-1</max><used>196920</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>16252928</committed><peak>16192768</peak><max>122912768</max><used>16192768</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-5ptx6:8088','','\0','10.131.0.12'),(43,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-22 23:06:08.161000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-22 23:05:03 GMT (1m5s ago)','2024-04-23 15:20:34.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1519616</peak><max>5836800</max><used>1458048</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103874560</committed><peak>103316752</peak><max>-1</max><used>103316752</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28704768</committed><peak>28670848</peak><max>122908672</max><used>25027328</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11454032</peak><max>1073741824</max><used>11436488</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>171966464</committed><peak>165675008</peak><max>-1</max><used>27262976</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>119537664</committed><peak>109834240</peak><max>3221225472</max><used>92625408</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>23068672</peak><max>-1</max><used>220688</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>13762560</committed><peak>13752576</peak><max>122912768</max><used>13752576</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-xjlf6:8088','','\0','10.131.0.16'),(44,'\0',0,0,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 15:21:30.961000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 15:20:42 GMT (48s226ms ago)','2024-04-23 15:25:53.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1514240</peak><max>5836800</max><used>1459584</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102760448</committed><peak>102209040</peak><max>-1</max><used>102209040</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23527424</committed><peak>23470464</peak><max>122908672</max><used>23470464</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11482344</peak><max>1073741824</max><used>11482344</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>278921216</committed><peak>281018368</peak><max>-1</max><used>44040192</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>178257920</committed><peak>87575040</peak><max>3221225472</max><used>87575040</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>20971520</committed><peak>34203992</peak><max>-1</max><used>19922944</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10420224</committed><peak>10365568</peak><max>122912768</max><used>10085888</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-2cqnf:8088','','\0','10.128.2.98'),(45,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 15:21:45.059000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 15:20:42 GMT (1m2s ago)','2024-04-23 15:26:00.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1506304</peak><max>5836800</max><used>1459840</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102170624</committed><peak>101662584</peak><max>-1</max><used>101662584</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24576000</committed><peak>24531200</peak><max>122908672</max><used>22870784</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11438904</peak><max>1073741824</max><used>11438904</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>174063616</committed><peak>163577856</peak><max>-1</max><used>159383552</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>157286400</committed><peak>98892792</peak><max>3221225472</max><used>98892792</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>16777216</committed><peak>20971520</peak><max>-1</max><used>15661376</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10158080</committed><peak>10114304</peak><max>122912768</max><used>9281280</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-rljql:8088','','\0','10.128.2.95'),(46,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 15:26:32.383000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 15:25:44 GMT (47s854ms ago)','2024-04-23 16:33:21.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1545856</peak><max>5836800</max><used>1460992</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104005632</committed><peak>103414568</peak><max>-1</max><used>103414568</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29425664</committed><peak>29370112</peak><max>122908672</max><used>27007616</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11488480</peak><max>1073741824</max><used>11488480</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>239075328</committed><peak>234881024</peak><max>-1</max><used>195035136</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>157286400</committed><peak>106432512</peak><max>3221225472</max><used>102803968</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>23068672</peak><max>-1</max><used>1550392</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11468800</committed><peak>11465344</peak><max>122912768</max><used>11304576</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-5xj7m:8088','','\0','10.131.0.11'),(47,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 15:26:46.583000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 15:25:47 GMT (59s664ms ago)','2024-04-23 16:34:02.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1518336</peak><max>5836800</max><used>1457536</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103612416</committed><peak>103058864</peak><max>-1</max><used>103058864</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28180480</committed><peak>28162816</peak><max>122908672</max><used>28162816</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11460328</peak><max>1073741824</max><used>11460328</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>171966464</committed><peak>186646528</peak><max>-1</max><used>85983232</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>142606336</committed><peak>103989760</peak><max>3221225472</max><used>103989760</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>20098560</peak><max>-1</max><used>9750728</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11403264</committed><peak>11373952</peak><max>122912768</max><used>11373952</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-kzftq:8088','','\0','10.131.0.15'),(48,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 16:34:17.589000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 16:33:27 GMT (49s948ms ago)','2024-04-23 16:39:58.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1538304</peak><max>5836800</max><used>1461376</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102694912</committed><peak>102087656</peak><max>-1</max><used>102087656</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25165824</committed><peak>25139328</peak><max>122908672</max><used>25139328</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11472672</peak><max>1073741824</max><used>11472672</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>195035136</committed><peak>209715200</peak><max>-1</max><used>65011712</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>163577856</committed><peak>109464064</peak><max>3221225472</max><used>109464064</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>26686400</peak><max>-1</max><used>2097152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10158080</committed><peak>10122624</peak><max>122912768</max><used>10122624</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-k5nn2:8088','','\0','10.128.2.34'),(49,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 16:34:35.895000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 16:33:28 GMT (1m7s ago)','2024-04-23 16:39:55.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1546624</peak><max>5836800</max><used>1456896</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102236160</committed><peak>101718920</peak><max>-1</max><used>101718920</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25165824</committed><peak>24866560</peak><max>122908672</max><used>23378944</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11427088</peak><max>1073741824</max><used>11427088</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>203423744</committed><peak>211812352</peak><max>-1</max><used>60817408</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>150994944</committed><peak>92600832</peak><max>3221225472</max><used>92600832</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>14680064</committed><peak>22465920</peak><max>-1</max><used>14680064</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9895936</committed><peak>9880448</peak><max>122912768</max><used>9211904</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-gj8jq:8088','','\0','10.128.2.38'),(50,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 16:41:09.764000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 16:40:02 GMT (1m7s ago)','2024-04-23 17:46:06.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1513856</peak><max>5836800</max><used>1458560</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104071168</committed><peak>103530184</peak><max>-1</max><used>103530184</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28508160</committed><peak>28451712</peak><max>122908672</max><used>26826752</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11500744</peak><max>1073741824</max><used>11500744</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>236978176</committed><peak>295698432</peak><max>-1</max><used>23068672</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>98763264</peak><max>3221225472</max><used>98763264</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>38639136</peak><max>-1</max><used>709800</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>12124160</committed><peak>12097920</peak><max>122912768</max><used>12097920</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-whr4c:8088','','\0','10.131.0.12'),(51,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 16:41:25.382000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 16:40:03 GMT (1m21s ago)','2024-04-23 17:46:01.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1509760</peak><max>5836800</max><used>1457152</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103612416</committed><peak>103056408</peak><max>-1</max><used>102929224</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28508160</committed><peak>28478592</peak><max>122908672</max><used>25750656</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11459136</peak><max>1073741824</max><used>11432464</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>190840832</committed><peak>176160768</peak><max>-1</max><used>8388608</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>104059392</peak><max>3221225472</max><used>104059392</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>20971520</peak><max>-1</max><used>8839480</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11403264</committed><peak>11390592</peak><max>122912768</max><used>11306624</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-fbpnq:8088','','\0','10.131.0.17'),(52,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 17:46:38.294000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 17:45:45 GMT (53s414ms ago)','2024-04-23 17:49:57.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1555840</peak><max>5836800</max><used>1459456</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102432768</committed><peak>101862560</peak><max>-1</max><used>101862560</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23199744</committed><peak>23157760</peak><max>122908672</max><used>23157760</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11462112</peak><max>1073741824</max><used>11462112</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>243269632</committed><peak>249561088</peak><max>-1</max><used>218103808</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>169869312</committed><peak>97123328</peak><max>3221225472</max><used>97123328</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>14680064</committed><peak>22597728</peak><max>-1</max><used>14438976</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9895936</committed><peak>9884160</peak><max>122912768</max><used>9301248</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-k9b9b:8088','','\0','10.128.2.22'),(53,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 17:46:50.398000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 17:45:45 GMT (1m4s ago)','2024-04-23 17:49:57.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1499008</peak><max>5836800</max><used>1453824</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>101974016</committed><peak>101456136</peak><max>-1</max><used>101456136</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23592960</committed><peak>23583104</peak><max>122908672</max><used>22709888</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11427640</peak><max>1073741824</max><used>11427640</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>236978176</committed><peak>268435456</peak><max>-1</max><used>205520896</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>153092096</committed><peak>91394560</peak><max>3221225472</max><used>91394560</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>23068672</committed><peak>34962848</peak><max>-1</max><used>23068672</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9633792</committed><peak>9585152</peak><max>122912768</max><used>8830848</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-6wcqc:8088','','\0','10.128.2.23'),(54,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 17:52:34.114000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 17:51:38 GMT (55s824ms ago)','2024-04-23 18:43:40.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1557888</peak><max>5836800</max><used>1460096</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104071168</committed><peak>103485688</peak><max>-1</max><used>103485688</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29491200</committed><peak>29481344</peak><max>122908672</max><used>27152128</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11492616</peak><max>1073741824</max><used>11492616</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>251658240</committed><peak>262144000</peak><max>-1</max><used>56623104</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>159383552</committed><peak>105887744</peak><max>3221225472</max><used>105887744</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>23589248</peak><max>-1</max><used>2097152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11403264</committed><peak>11396608</peak><max>122912768</max><used>11229568</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-fl6vq:8088','','\0','10.131.0.19'),(55,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 17:52:42.618000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 17:51:38 GMT (1m4s ago)','2024-04-23 18:43:17.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1518976</peak><max>5836800</max><used>1462656</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103481344</committed><peak>102979224</peak><max>-1</max><used>102979224</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27000832</committed><peak>26985984</peak><max>122908672</max><used>26985984</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11468160</peak><max>1073741824</max><used>11468160</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>243269632</committed><peak>243269632</peak><max>-1</max><used>161480704</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>155189248</committed><peak>98516992</peak><max>3221225472</max><used>98516992</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>14680064</committed><peak>24152576</peak><max>-1</max><used>13219528</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10878976</committed><peak>10830592</peak><max>122912768</max><used>10830592</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-8srmh:8088','','\0','10.131.0.21'),(56,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 18:43:48.477000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 18:43:07 GMT (41s630ms ago)','2024-04-23 18:47:29.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1533056</peak><max>5836800</max><used>1454080</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102432768</committed><peak>101963840</peak><max>-1</max><used>101963840</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24969216</committed><peak>24956416</peak><max>122908672</max><used>24956416</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11469960</peak><max>1073741824</max><used>11469960</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>171966464</committed><peak>190840832</peak><max>-1</max><used>134217728</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>94236160</peak><max>3221225472</max><used>94236160</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>16777216</committed><peak>22738976</peak><max>-1</max><used>16666736</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10223616</committed><peak>10194944</peak><max>122912768</max><used>10194944</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-6g9zz:8088','','\0','10.128.2.25'),(57,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 18:43:57.670000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 18:43:07 GMT (50s823ms ago)','2024-04-23 18:47:25.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1506304</peak><max>5836800</max><used>1459712</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>101974016</committed><peak>101513784</peak><max>-1</max><used>101513784</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23724032</committed><peak>23671424</peak><max>122908672</max><used>23671424</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11427704</peak><max>1073741824</max><used>11427704</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>234881024</committed><peak>228589568</peak><max>-1</max><used>113246208</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>155189248</committed><peak>82391040</peak><max>3221225472</max><used>82391040</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>18874368</committed><peak>31457280</peak><max>-1</max><used>17825792</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9109504</committed><peak>9063808</peak><max>122912768</max><used>9063808</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-xdt86:8088','','\0','10.128.2.24'),(58,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 18:48:23.648000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 18:47:34 GMT (49s973ms ago)','2024-04-23 19:30:12.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1554304</peak><max>5836800</max><used>1456640</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104136704</committed><peak>103585000</peak><max>-1</max><used>103585000</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29032448</committed><peak>29021696</peak><max>122908672</max><used>27209344</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11515848</peak><max>1073741824</max><used>11515848</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>157286400</committed><peak>167772160</peak><max>-1</max><used>27262976</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>142606336</committed><peak>107434496</peak><max>3221225472</max><used>100704256</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>20971520</peak><max>-1</max><used>224368</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11665408</committed><peak>11631360</peak><max>122912768</max><used>11515392</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-67zwc:8088','','\0','10.131.0.13'),(59,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 18:48:41.836000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 18:47:41 GMT (1m0s ago)','2024-04-23 19:29:45.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1515392</peak><max>5836800</max><used>1459968</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103546880</committed><peak>103009752</peak><max>-1</max><used>103009752</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27328512</committed><peak>27247104</peak><max>122908672</max><used>27247104</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11451248</peak><max>1073741824</max><used>11451248</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>184549376</committed><peak>201326592</peak><max>-1</max><used>50331648</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>153092096</committed><peak>105879552</peak><max>3221225472</max><used>105879552</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>8388608</committed><peak>26219632</peak><max>-1</max><used>6683616</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10944512</committed><peak>10921728</peak><max>122912768</max><used>10921728</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-pjgrr:8088','','\0','10.131.0.22'),(60,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 19:30:33.055000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 19:29:42 GMT (51s7ms ago)','2024-04-23 19:34:14.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1507840</peak><max>5836800</max><used>1461248</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102563840</committed><peak>102051968</peak><max>-1</max><used>102051968</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24051712</committed><peak>24044416</peak><max>122908672</max><used>24044416</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11484448</peak><max>1073741824</max><used>11484448</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>281018368</committed><peak>293601280</peak><max>-1</max><used>236978176</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>184549376</committed><peak>73736192</peak><max>3221225472</max><used>73736192</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>35651584</committed><peak>35519336</peak><max>-1</max><used>35519336</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9895936</committed><peak>9856000</peak><max>122912768</max><used>9856000</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-sjgj7:8088','','\0','10.128.2.25'),(61,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 19:30:42.882000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 19:29:42 GMT (1m0s ago)','2024-04-23 19:33:48.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1504768</peak><max>5836800</max><used>1455232</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102170624</committed><peak>101591552</peak><max>-1</max><used>101591552</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24182784</committed><peak>24161792</peak><max>122908672</max><used>24161792</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11453384</peak><max>1073741824</max><used>11453384</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>155189248</committed><peak>148897792</peak><max>-1</max><used>96468992</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>98095616</peak><max>3221225472</max><used>98095616</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>18874368</peak><max>-1</max><used>10931960</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9764864</committed><peak>9716480</peak><max>122912768</max><used>9716480</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-2mqb7:8088','','\0','10.128.2.27'),(62,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 19:34:36.175000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 19:33:39 GMT (56s859ms ago)','2024-04-23 20:28:57.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1511680</peak><max>5836800</max><used>1458688</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104005632</committed><peak>103491136</peak><max>-1</max><used>103491136</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28835840</committed><peak>28801408</peak><max>122908672</max><used>26318464</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11506304</peak><max>1073741824</max><used>11506304</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>188743680</committed><peak>192937984</peak><max>-1</max><used>60817408</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>142606336</committed><peak>107152384</peak><max>3221225472</max><used>101092352</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>25077184</peak><max>-1</max><used>255088</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11730944</committed><peak>11683200</peak><max>122912768</max><used>11501440</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-kgr6c:8088','','\0','10.131.0.14'),(63,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 19:34:47.717000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 19:33:39 GMT (1m8s ago)','2024-04-23 20:28:35.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1563008</peak><max>5836800</max><used>1460096</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103612416</committed><peak>103060672</peak><max>-1</max><used>103060672</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27459584</committed><peak>27394176</peak><max>122908672</max><used>27394176</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11472664</peak><max>1073741824</max><used>11472664</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>222298112</committed><peak>211812352</peak><max>-1</max><used>169869312</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>142606336</committed><peak>94596096</peak><max>3221225472</max><used>94596096</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>29080016</peak><max>-1</max><used>11007912</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11010048</committed><peak>10990208</peak><max>122912768</max><used>10990208</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-2fwvv:8088','','\0','10.131.0.18'),(64,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 20:29:08.145000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 20:28:22 GMT (45s900ms ago)','2024-04-23 20:32:32.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1548416</peak><max>5836800</max><used>1456256</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102367232</committed><peak>101813360</peak><max>-1</max><used>101813360</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23396352</committed><peak>23314176</peak><max>122908672</max><used>23092480</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11467480</peak><max>1073741824</max><used>11467480</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>260046848</committed><peak>253755392</peak><max>-1</max><used>75497472</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>167772160</committed><peak>83919360</peak><max>3221225472</max><used>83919360</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>23068672</committed><peak>33554432</peak><max>-1</max><used>22020096</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10420224</committed><peak>10371200</peak><max>122912768</max><used>9655680</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-gf965:8088','','\0','10.128.2.20'),(65,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 20:29:16.034000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 20:28:20 GMT (55s562ms ago)','2024-04-23 20:32:33.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1502976</peak><max>5836800</max><used>1455744</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102039552</committed><peak>101548912</peak><max>-1</max><used>101548912</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24641536</committed><peak>24617088</peak><max>122908672</max><used>24617088</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11430112</peak><max>1073741824</max><used>11430112</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>199229440</committed><peak>197132288</peak><max>-1</max><used>52428800</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>155189248</committed><peak>93507584</peak><max>3221225472</max><used>93507584</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>14680064</committed><peak>24002992</peak><max>-1</max><used>13631488</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9371648</committed><peak>9353088</peak><max>122912768</max><used>9353088</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-k89zn:8088','','\0','10.128.2.18'),(66,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 20:33:41.594000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 20:32:39 GMT (1m2s ago)','2024-04-23 21:47:14.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1530496</peak><max>5836800</max><used>1457664</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104071168</committed><peak>103535376</peak><max>-1</max><used>103535376</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28770304</committed><peak>28724224</peak><max>122908672</max><used>27340928</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11504704</peak><max>1073741824</max><used>11504704</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>167772160</committed><peak>159383552</peak><max>-1</max><used>123731968</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>138412032</committed><peak>108122624</peak><max>3221225472</max><used>101109248</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>23068672</peak><max>-1</max><used>212592</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11993088</committed><peak>11967488</peak><max>122912768</max><used>11967488</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-qjstg:8088','','\0','10.131.0.15'),(67,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 20:33:47.137000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 20:32:39 GMT (1m7s ago)','2024-04-23 21:46:52.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1517056</peak><max>5836800</max><used>1454976</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103677952</committed><peak>103172864</peak><max>-1</max><used>103172864</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27262976</committed><peak>27244416</peak><max>122908672</max><used>27244416</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11469536</peak><max>1073741824</max><used>11469536</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>211812352</committed><peak>213909504</peak><max>-1</max><used>44040192</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>140509184</committed><peak>98809856</peak><max>3221225472</max><used>98809856</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>27262976</peak><max>-1</max><used>12582912</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10878976</committed><peak>10843264</peak><max>122912768</max><used>10843264</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-tnsjr:8088','','\0','10.131.0.18'),(68,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 21:47:26.342000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 21:46:40 GMT (45s408ms ago)','2024-04-23 21:50:52.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1563264</peak><max>5836800</max><used>1453824</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102367232</committed><peak>101837264</peak><max>-1</max><used>101837264</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23527424</committed><peak>23476096</peak><max>122908672</max><used>23476096</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11472208</peak><max>1073741824</max><used>11472208</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>125829120</committed><peak>157286400</peak><max>-1</max><used>56623104</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>103075840</peak><max>3221225472</max><used>103075840</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>21452080</peak><max>-1</max><used>9032376</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9961472</committed><peak>9942016</peak><max>122912768</max><used>9580672</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-rk4jp:8088','','\0','10.128.2.23'),(69,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 21:47:35.447000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 21:46:40 GMT (55s25ms ago)','2024-04-23 21:50:52.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1513216</peak><max>5836800</max><used>1456768</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102039552</committed><peak>101563064</peak><max>-1</max><used>101563064</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24444928</committed><peak>24408576</peak><max>122908672</max><used>24408576</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11428792</peak><max>1073741824</max><used>11428792</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>121634816</committed><peak>155189248</peak><max>-1</max><used>37748736</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>148897792</committed><peak>103885312</peak><max>3221225472</max><used>103885312</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>20971520</peak><max>-1</max><used>9731920</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9568256</committed><peak>9550592</peak><max>122912768</max><used>9550592</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-ttwck:8088','','\0','10.128.2.22'),(70,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 21:51:55.438000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 21:50:57 GMT (58s219ms ago)','2024-04-23 22:38:57.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1517696</peak><max>5836800</max><used>1461504</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104136704</committed><peak>103604064</peak><max>-1</max><used>103604064</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28639232</committed><peak>28234752</peak><max>122908672</max><used>27943424</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11508552</peak><max>1073741824</max><used>11508552</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>222298112</committed><peak>192937984</peak><max>-1</max><used>29360128</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>104130048</peak><max>3221225472</max><used>104130048</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>18874368</peak><max>-1</max><used>2097152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11206656</committed><peak>11168128</peak><max>122912768</max><used>11168128</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-48thd:8088','','\0','10.131.0.11'),(71,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 21:52:07.322000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 21:50:57 GMT (1m9s ago)','2024-04-23 22:10:01.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1512192</peak><max>5836800</max><used>1458176</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102891520</committed><peak>102302632</peak><max>-1</max><used>102302632</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>25493504</committed><peak>25434240</peak><max>122908672</max><used>25085056</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11460464</peak><max>1073741824</max><used>11460464</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>289406976</committed><peak>287309824</peak><max>-1</max><used>94371840</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>182452224</committed><peak>85154816</peak><max>3221225472</max><used>85154816</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>23068672</committed><peak>33368688</peak><max>-1</max><used>22020096</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9699328</committed><peak>9686528</peak><max>122912768</max><used>9411456</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-2rt9d:8088','','\0','10.131.0.17'),(72,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 22:10:26.259000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 22:10:07 GMT (18s855ms ago)','2024-04-23 22:38:50.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1520640</peak><max>5836800</max><used>1460352</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103743488</committed><peak>103237840</peak><max>-1</max><used>103237840</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28442624</committed><peak>28378112</peak><max>122908672</max><used>28378112</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11449864</peak><max>1073741824</max><used>11449864</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>148897792</committed><peak>165675008</peak><max>-1</max><used>115343360</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>102459392</peak><max>3221225472</max><used>102459392</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>23068672</peak><max>-1</max><used>9959144</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10551296</committed><peak>10510080</peak><max>122912768</max><used>10510080</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-2rt9d:8088','','\0','10.131.0.17'),(73,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 22:39:25.546000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 22:38:41 GMT (44s101ms ago)','2024-04-23 22:43:09.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1524352</peak><max>5836800</max><used>1460992</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102498304</committed><peak>101867208</peak><max>-1</max><used>101867208</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24051712</committed><peak>24006016</peak><max>122908672</max><used>24006016</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11468544</peak><max>1073741824</max><used>11468544</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>171966464</committed><peak>165675008</peak><max>-1</max><used>92274688</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>155189248</committed><peak>101248000</peak><max>3221225472</max><used>101248000</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>20971520</peak><max>-1</max><used>10977040</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9502720</committed><peak>9484672</peak><max>122912768</max><used>9406336</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-t5x5w:8088','','\0','10.128.2.20'),(74,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 22:39:34.017000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 22:38:41 GMT (52s628ms ago)','2024-04-23 22:43:07.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1513088</peak><max>5836800</max><used>1458560</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>101974016</committed><peak>101447880</peak><max>-1</max><used>101447880</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24248320</committed><peak>24247040</peak><max>122908672</max><used>24237696</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11422472</peak><max>1073741824</max><used>11422472</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>171966464</committed><peak>188743680</peak><max>-1</max><used>60817408</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>157286400</committed><peak>108449792</peak><max>3221225472</max><used>108449792</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>23068672</peak><max>-1</max><used>1762632</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9306112</committed><peak>9302144</peak><max>122912768</max><used>9302144</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-d7rjs:8088','','\0','10.128.2.18'),(75,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 22:45:31.308000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 22:44:26 GMT (1m5s ago)','2024-04-24 00:00:07.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1516928</peak><max>5836800</max><used>1461120</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104136704</committed><peak>103573008</peak><max>-1</max><used>103573008</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>30015488</committed><peak>29786240</peak><max>122908672</max><used>27677056</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11509920</peak><max>1073741824</max><used>11509920</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>197132288</committed><peak>188743680</peak><max>-1</max><used>23068672</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>142606336</committed><peak>102794240</peak><max>3221225472</max><used>102286848</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>27262976</peak><max>-1</max><used>448488</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11730944</committed><peak>11671808</peak><max>122912768</max><used>11671808</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-tzrq9:8088','','\0','10.131.0.21'),(76,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-23 22:45:32.129000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 22:44:24 GMT (1m7s ago)','2024-04-23 23:59:57.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1560064</peak><max>5836800</max><used>1455616</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103546880</committed><peak>103036208</peak><max>-1</max><used>103036208</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27983872</committed><peak>27900416</peak><max>122908672</max><used>25100288</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11468728</peak><max>1073741824</max><used>11468728</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>251658240</committed><peak>239075328</peak><max>-1</max><used>113246208</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>155189248</committed><peak>93164544</peak><max>3221225472</max><used>93164544</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>29360128</peak><max>-1</max><used>12271264</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11665408</committed><peak>11642880</peak><max>122912768</max><used>11557888</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-fntf7:8088','','\0','10.131.0.17'),(77,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 00:00:49.118000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 23:59:47 GMT (1m1s ago)','2024-04-24 00:04:19.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1532928</peak><max>5836800</max><used>1457792</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102694912</committed><peak>102110384</peak><max>-1</max><used>102110384</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24576000</committed><peak>24543744</peak><max>122908672</max><used>24543744</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11490144</peak><max>1073741824</max><used>11490144</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>236978176</committed><peak>283115520</peak><max>-1</max><used>220200960</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>153092096</committed><peak>86941696</peak><max>3221225472</max><used>86941696</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>23068672</committed><peak>31950248</peak><max>-1</max><used>23068672</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10092544</committed><peak>10068352</peak><max>122912768</max><used>9898880</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-5sk29:8088','','\0','10.128.2.22'),(78,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 00:01:01.278000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-23 23:59:47 GMT (1m14s ago)','2024-04-24 00:03:55.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1515520</peak><max>5836800</max><used>1460608</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102170624</committed><peak>101647272</peak><max>-1</max><used>101647272</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>23396352</committed><peak>23361536</peak><max>122908672</max><used>23361536</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11440536</peak><max>1073741824</max><used>11440536</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>241172480</committed><peak>236978176</peak><max>-1</max><used>54525952</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>167772160</committed><peak>89255424</peak><max>3221225472</max><used>89255424</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>18874368</committed><peak>32819264</peak><max>-1</max><used>18874368</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9699328</committed><peak>9657216</peak><max>122912768</max><used>9088000</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-k5r6j:8088','','\0','10.128.2.21'),(79,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 00:04:43.569000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 00:03:49 GMT (54s803ms ago)','2024-04-24 00:58:38.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1549568</peak><max>5836800</max><used>1458560</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104267776</committed><peak>103669664</peak><max>-1</max><used>103669664</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29556736</committed><peak>29481472</peak><max>122908672</max><used>28111616</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11515880</peak><max>1073741824</max><used>11515880</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>184549376</committed><peak>197132288</peak><max>-1</max><used>58720256</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>101976064</peak><max>3221225472</max><used>101976064</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>27262976</peak><max>-1</max><used>12582912</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11468800</committed><peak>11404160</peak><max>122912768</max><used>11404160</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-7fmcx:8088','','\0','10.131.0.17'),(80,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 00:04:58.446000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 00:03:49 GMT (1m8s ago)','2024-04-24 00:57:56.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1515008</peak><max>5836800</max><used>1459328</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103350272</committed><peak>102838608</peak><max>-1</max><used>102838608</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27066368</committed><peak>27047680</peak><max>122908672</max><used>27047680</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11437592</peak><max>1073741824</max><used>11437592</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>197132288</committed><peak>201326592</peak><max>-1</max><used>155189248</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>97645568</peak><max>3221225472</max><used>97645568</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>27262976</peak><max>-1</max><used>9438544</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11141120</committed><peak>11091968</peak><max>122912768</max><used>11091968</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-74ttf:8088','','\0','10.131.0.22'),(81,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 00:59:02.626000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 00:58:19 GMT (43s634ms ago)','2024-04-24 01:03:41.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1517056</peak><max>5836800</max><used>1465088</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102825984</committed><peak>102272968</peak><max>-1</max><used>102272968</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24772608</committed><peak>24742784</peak><max>122908672</max><used>24742784</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11499704</peak><max>1073741824</max><used>11499704</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>167772160</committed><peak>182452224</peak><max>-1</max><used>123731968</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>148897792</committed><peak>97063424</peak><max>3221225472</max><used>97063424</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>14680064</committed><peak>25165824</peak><max>-1</max><used>13821216</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10092544</committed><peak>10078464</peak><max>122912768</max><used>10078464</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-rn7lq:8088','','\0','10.128.2.23'),(82,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 00:59:15.537000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 00:58:19 GMT (56s450ms ago)','2024-04-24 01:03:29.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1518208</peak><max>5836800</max><used>1455744</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102301696</committed><peak>101772968</peak><max>-1</max><used>101772968</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24444928</committed><peak>24410112</peak><max>122908672</max><used>22698112</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11451032</peak><max>1073741824</max><used>11451032</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>148897792</committed><peak>178257920</peak><max>-1</max><used>62914560</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>153092096</committed><peak>103789568</peak><max>3221225472</max><used>103789568</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>23068672</peak><max>-1</max><used>11067136</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10027008</committed><peak>10015104</peak><max>122912768</max><used>9399808</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-q8zfd:8088','','\0','10.128.2.18'),(83,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 01:03:57.248000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 01:03:06 GMT (51s40ms ago)','2024-04-24 02:15:55.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1520640</peak><max>5836800</max><used>1464704</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104988672</committed><peak>104400616</peak><max>-1</max><used>104400616</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29818880</committed><peak>29786752</peak><max>122908672</max><used>28553344</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11862016</committed><peak>11583592</peak><max>1073741824</max><used>11583592</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>211812352</committed><peak>209715200</peak><max>-1</max><used>73400320</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>148897792</committed><peak>104660480</peak><max>3221225472</max><used>104660480</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>27262976</peak><max>-1</max><used>362744</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>12386304</committed><peak>12346624</peak><max>122912768</max><used>12346624</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-qqwln:8088','','\0','10.131.0.22'),(84,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 01:04:09.798000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 01:03:06 GMT (1m3s ago)','2024-04-24 02:15:16.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1513088</peak><max>5836800</max><used>1457792</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103481344</committed><peak>102936704</peak><max>-1</max><used>102936704</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>27852800</committed><peak>27796864</peak><max>122908672</max><used>25831552</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11449088</peak><max>1073741824</max><used>11449088</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>247463936</committed><peak>304087040</peak><max>-1</max><used>205520896</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>148897792</committed><peak>103688704</peak><max>3221225472</max><used>103688704</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>25459568</peak><max>-1</max><used>2097152</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11206656</committed><peak>11152768</peak><max>122912768</max><used>11008896</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-fm86j:8088','','\0','10.131.0.19'),(85,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 02:16:05.872000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 02:15:25 GMT (40s335ms ago)','2024-04-24 02:21:35.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1529344</peak><max>5836800</max><used>1451776</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102891520</committed><peak>102363584</peak><max>-1</max><used>102363584</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>26279936</committed><peak>26264832</peak><max>122908672</max><used>26264832</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11480760</peak><max>1073741824</max><used>11480760</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>165675008</committed><peak>190840832</peak><max>-1</max><used>39845888</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>155189248</committed><peak>103695360</peak><max>3221225472</max><used>103695360</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>25165824</peak><max>-1</max><used>10261592</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10420224</committed><peak>10379776</peak><max>122912768</max><used>10379776</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-pq2vz:8088','','\0','10.128.2.40'),(86,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 02:16:18.752000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 02:15:25 GMT (53s873ms ago)','2024-04-24 02:20:56.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1508096</peak><max>5836800</max><used>1458816</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102170624</committed><peak>101703072</peak><max>-1</max><used>101703072</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24576000</committed><peak>24522112</peak><max>122908672</max><used>24522112</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11430024</peak><max>1073741824</max><used>11430024</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>132120576</committed><peak>163577856</peak><max>-1</max><used>98566144</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>98586112</peak><max>3221225472</max><used>98586112</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>20971520</peak><max>-1</max><used>10369760</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9895936</committed><peak>9874688</peak><max>122912768</max><used>9874688</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-86z2h:8088','','\0','10.128.2.36'),(87,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 02:22:13.833000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 02:21:16 GMT (58s16ms ago)','2024-04-24 03:54:41.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1537152</peak><max>5836800</max><used>1459072</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104464384</committed><peak>103902064</peak><max>-1</max><used>103902064</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>31195136</committed><peak>31177856</peak><max>122908672</max><used>28795008</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11486008</peak><max>1073741824</max><used>11486008</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>255852544</committed><peak>241172480</peak><max>-1</max><used>25165824</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>153092096</committed><peak>106027520</peak><max>3221225472</max><used>106027520</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>24871216</peak><max>-1</max><used>456640</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11665408</committed><peak>11662848</peak><max>122912768</max><used>11662848</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-sqrgp:8088','','\0','10.131.0.15'),(88,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 02:22:25.762000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 02:21:17 GMT (1m8s ago)','2024-04-24 03:54:41.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1509504</peak><max>5836800</max><used>1453952</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103940096</committed><peak>103428088</peak><max>-1</max><used>103428088</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29556736</committed><peak>29507200</peak><max>122908672</max><used>27553664</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11444808</peak><max>1073741824</max><used>11444808</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>505413632</committed><peak>480247808</peak><max>-1</max><used>438304768</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>306184192</committed><peak>96153600</peak><max>3221225472</max><used>96153600</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>20018688</peak><max>-1</max><used>12555072</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11665408</committed><peak>11614336</peak><max>122912768</max><used>11614336</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-lt9bl:8088','','\0','10.131.0.21'),(89,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 03:55:42.950000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 03:54:47 GMT (55s844ms ago)','2024-04-24 03:58:58.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1565184</peak><max>5836800</max><used>1457408</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102760448</committed><peak>102219696</peak><max>-1</max><used>102219696</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24707072</committed><peak>24692992</peak><max>122908672</max><used>24692992</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11466704</peak><max>1073741824</max><used>11466704</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>109051904</committed><peak>140509184</peak><max>-1</max><used>58720256</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>103241216</peak><max>3221225472</max><used>103241216</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>18874368</peak><max>-1</max><used>8982728</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>10223616</committed><peak>10202240</peak><max>122912768</max><used>9901696</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-zwf4l:8088','','\0','10.128.2.41'),(90,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 03:55:47.386000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 03:54:47 GMT (1m0s ago)','2024-04-24 03:59:01.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1509248</peak><max>5836800</max><used>1459968</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>102563840</committed><peak>102007720</peak><max>-1</max><used>102007720</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>24641536</committed><peak>24597632</peak><max>122908672</max><used>24597632</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11439896</peak><max>1073741824</max><used>11439896</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>169869312</committed><peak>192937984</peak><max>-1</max><used>79691776</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>150994944</committed><peak>100342272</peak><max>3221225472</max><used>100342272</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>12582912</committed><peak>25048288</peak><max>-1</max><used>12582912</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>9830400</committed><peak>9785088</peak><max>122912768</max><used>9433728</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-sbw9n:8088','','\0','10.128.2.40'),(91,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 04:00:09.777000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 03:59:09 GMT (1m0s ago)','2024-04-24 05:26:38.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1511424</peak><max>5836800</max><used>1457792</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104595456</committed><peak>104037184</peak><max>-1</max><used>104037184</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>30736384</committed><peak>30687232</peak><max>122908672</max><used>28879360</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11796480</committed><peak>11511888</peak><max>1073741824</max><used>11511888</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>245366784</committed><peak>289406976</peak><max>-1</max><used>144703488</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>148897792</committed><peak>101409792</peak><max>3221225472</max><used>101409792</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>4194304</committed><peak>28345448</peak><max>-1</max><used>2302808</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>12058624</committed><peak>12013440</peak><max>122912768</max><used>12013440</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-j9qjq:8088','','\0','10.131.0.13'),(92,'\0',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 04:00:26.098000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 03:59:10 GMT (1m16s ago)','2024-04-24 05:26:13.000000',0,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1513472</peak><max>5836800</max><used>1460736</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>103874560</committed><peak>103316424</peak><max>-1</max><used>103316424</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>28704768</committed><peak>28672000</peak><max>122908672</max><used>26016128</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11452032</peak><max>1073741824</max><used>11452032</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>184549376</committed><peak>180355072</peak><max>-1</max><used>155189248</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>136314880</committed><peak>99230720</peak><max>3221225472</max><used>99230720</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>10485760</committed><peak>25165824</peak><max>-1</max><used>10485760</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>11403264</committed><peak>11363072</peak><max>122912768</max><used>11363072</used></memUsageDataList></qieServerResourcesModel>',NULL,0,0,'/java/qie','qie-57c7f485d9-46fmp:8088','','\0','10.131.0.15'),(93,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 05:26:44.014000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','\0','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 05:26:02 GMT (41s873ms ago)','2024-04-24 17:59:35.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1602816</peak><max>5836800</max><used>1462784</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>105578496</committed><peak>105000088</peak><max>-1</max><used>105000088</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>31391744</committed><peak>30978944</peak><max>122908672</max><used>28454784</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11862016</committed><peak>11571720</peak><max>1073741824</max><used>11571720</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>178257920</committed><peak>180355072</peak><max>-1</max><used>58720256</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>138412032</committed><peak>109668352</peak><max>3221225472</max><used>109668352</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>25165824</peak><max>-1</max><used>353888</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>14811136</committed><peak>14773376</peak><max>122912768</max><used>14773376</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-h4hwd:8088','','\0','10.128.2.34'),(94,'',0,10,0,'com.qvera.qie.persistence.MySQL57UnicodeDialect','MariaDB Connector/J','2.7.10','jdbc:mariadb://192.168.22.212:30924/qie','2024-04-24 05:26:55.637000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','','\0','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-24 05:26:02 GMT (53s458ms ago)','2024-04-24 17:59:40.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1571200</peak><max>5836800</max><used>1459200</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104202240</committed><peak>103731168</peak><max>-1</max><used>103731168</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29491200</committed><peak>29355520</peak><max>122908672</max><used>26145664</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11730944</committed><peak>11464640</peak><max>1073741824</max><used>11464640</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>249561088</committed><peak>295698432</peak><max>-1</max><used>48234496</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>146800640</committed><peak>105315328</peak><max>3221225472</max><used>105315328</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>32561392</peak><max>-1</max><used>351848</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>13565952</committed><peak>13530112</peak><max>122912768</max><used>13530112</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-57c7f485d9-q45q7:8088','','\0','10.128.2.32'),(95,'\0',0,10,0,'org.hibernate.dialect.MariaDB106Dialect','MariaDB Connector/J','2.7.10','jdbc:mysql://mariadb:3306/qie','2024-04-29 21:09:59.198000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','\0','\0','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-29 21:09:36 GMT (22s296ms ago)','2024-05-01 20:35:34.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1580160</peak><max>5836800</max><used>1479296</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>115671040</committed><peak>114840888</peak><max>-1</max><used>114840888</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>37486592</committed><peak>37212800</peak><max>122908672</max><used>35284224</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>12976128</committed><peak>12528680</peak><max>1073741824</max><used>12528680</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>190840832</committed><peak>190840832</peak><max>-1</max><used>33554432</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>122987008</peak><max>3221225472</max><used>110404096</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>4194304</committed><peak>25663608</peak><max>-1</max><used>4085656</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>23527424</committed><peak>23399552</peak><max>122912768</max><used>23399552</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-68f8ddb784-w4qh7:8088','\0','\0','10.131.1.162'),(96,'\0',0,10,0,'org.hibernate.dialect.MariaDB106Dialect','MariaDB Connector/J','2.7.10','jdbc:mysql://mariadb:3306/qie','2024-04-29 21:10:08.792000',0,'','����?k|��_)#�G8��aF�Uta�e,H7s#n>��i���=�������D;H�:��\"T�ԯ���׉W�c1M�H�����@',0,'\0','\0','\0','/usr/lib/jvm/java-17-amazon-corretto','Amazon.com Inc.','17.0.10 (64-bit)','2024-04-29 21:09:36 GMT (32s132ms ago)','2024-05-01 20:35:37.000000',0,2,0,'<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><qieServerResourcesModel><memUsageDataList><name>CodeHeap \'non-nmethods\'</name><committed>2555904</committed><peak>1554304</peak><max>5836800</max><used>1450368</used></memUsageDataList><memUsageDataList><name>Metaspace</name><committed>104202240</committed><peak>103637720</peak><max>-1</max><used>103637720</used></memUsageDataList><memUsageDataList><name>CodeHeap \'profiled nmethods\'</name><committed>29687808</committed><peak>29530496</peak><max>122908672</max><used>29530496</used></memUsageDataList><memUsageDataList><name>Compressed Class Space</name><committed>11665408</committed><peak>11329248</peak><max>1073741824</max><used>11329248</used></memUsageDataList><memUsageDataList><name>G1 Eden Space</name><committed>130023424</committed><peak>146800640</peak><max>-1</max><used>106954752</used></memUsageDataList><memUsageDataList><name>G1 Old Gen</name><committed>144703488</committed><peak>114410496</peak><max>3221225472</max><used>114410496</used></memUsageDataList><memUsageDataList><name>G1 Survivor Space</name><committed>2097152</committed><peak>18874368</peak><max>-1</max><used>213872</used></memUsageDataList><memUsageDataList><name>CodeHeap \'non-profiled nmethods\'</name><committed>16056320</committed><peak>16013312</peak><max>122912768</max><used>16013312</used></memUsageDataList></qieServerResourcesModel>',NULL,11,0,'/java/qie','qie-68f8ddb784-98vvc:8088','\0','\0','10.128.2.59');
/*!40000 ALTER TABLE `qie_instance_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_message`
--

DROP TABLE IF EXISTS `sample_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_message` (
  `sample_message_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(85) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `raw_data_encrypted` longblob DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `record_length` int(11) DEFAULT NULL,
  `raw_refresh_script_encrypted` longblob DEFAULT NULL,
  `segment_delimiter` int(11) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sample_message_id`),
  KEY `idx_channel_id_list_order` (`channel_id`,`list_order`),
  KEY `idx_sample_message_channel_id` (`channel_id`),
  KEY `FK2675654lnqwfdyehew9v3ogf1` (`variable_id`),
  CONSTRAINT `FK2675654lnqwfdyehew9v3ogf1` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`),
  CONSTRAINT `FKjbd8hi3q8w2ne2kfhunvar877` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_message`
--

LOCK TABLES `sample_message` WRITE;
/*!40000 ALTER TABLE `sample_message` DISABLE KEYS */;
INSERT INTO `sample_message` VALUES ('8a0380938e682ec5018eee3f199f00fc','admin','2024-04-17 22:48:16.543000','admin','2024-04-17 22:48:16.543000',0,'Sample ADT',3,1,NULL,'','Q��l4I,������5����C���\'{�s��ː�_f�k��~>B�-��6G���^���\'�>O*�JJ\nC޼`.�H�bH|����D���#-Vt~�B��B�4��Uv�&�EV�B�C|O�6ht�����!\r�~!�[k&{�X�#\\Q��K��,4o�U�ΐ{;QI���^��l��dXզ\"[�-��0�\Z�)���}E\r�<Gg���d�\"ָ!}âJB�9p�\\�z�A�W�������3��&\Z>n�S \'5��6yg���]f$<Vظ]����j�b�{�Z�Kت�������2_X���U��=Y�\n)�J�B�V>\\�=����Gv�5Oٽg[5\Z�ưd\\K���[����R���1�N���^U����A�f�Y���Wњ���B��L�L�د�#12E�h=c�5y�oY�\n��7����\n�3��c�����^�me����3Z�����JWL�� 4@��֖��z�߆�8�w5��:L&]�6��4>\\-��cfJ�����%}ƍUml�Ol��h��3��O\"��Q��Uk˴t��_aU�m�X6��-ݷY`�	�[� ш3�\r���;��b�q���뒶����б}i[��Mم��x2���߇�h��QФ�=B�*Jp��W�I��K�y<�op7�����<x̛�1\Z�^y����\r�k���N�\Z��^�	�e�\"��bf=�b���sU�{�Ӷ\n�2Eգ���O�o��2�0�+%9�	�?7Υ�����\n��8cfClv����e��-J]I�2)9?�E�95�Uc��y0Nڗ��s�X_R��(��\Z��+�D�6����q�E@�����]{��K\nPy\'���)3/k����v6#�A¥�v�o(#�y���<9��D��������-��З͕Ҍ�1�g	+)�b�	�=��$�����P#K��I-�X��y�E�rnZ��:�b�p�2�r�ɣ�Br}�L�s��9�?�gݸ�{�PdN�h&1�[���a����8���>�d6�Z%W!��lΫH�Ԝ\\�x�^�����%9RE��r�}�\n�����Q��P��.�-)��� ߜAI`�D/�-�7=ۀ�M/r���T^�cH{��I\\c�&��Cg�W��-S]��yB���d�V)	��[�	�ފ�X�w�����>�����uE,�킌N%�`�a>�aD�����x� ��\r��a��3�+�Q+�9n#�B_���`N��y�\"�e9���R�a�Ǒ�2v�)J�?&$��ng�����=7q+1�L��8�8�\"6�:\"^��s��Hm3OՌ����uɺ��^ξ��W���=?�K�����C�׻x\r�2�k�)Dz3\'�:֤k~������N�/S�C��Q�����>�~u��ӽ��0Cz7EC:�|mE�~�C�\'H�O�`ټ{��SS\\NbT��\n�A���(T�K�,�\Z���~䶌\Z�ͫsa�g�ݴ���g��Z���v (��\"Wj��9P���S��0�\'A\"�0F4�.��][�baaS��1�-�`��~5�=����ʃ>L0N��Z)MN��kº�zW1�a��ka�=A���|�]��۟t���^�����9�����\"�g�R�:]���G���Ĩ����?\Ze���2E������jsQ���d��H�JQ�����O��_�RDb�Z����?�1[F��}��Sn��?B��ͿU�MvzI�Ά3���}�f�u����441�if����ƕ�4ߩ�o��njI�����[��#��6�g�S`���>��nQ��x�ay�����eUm�k�ā������H�C����(� C��J�gt�:���\nԨ�$���&x��]84&Q�\n���z�������rP��?y����{k�;1�\"K��F�� ܛ^��8!j��ׁ��Ԇn�F�m�8b��0�U�̺i�Y0�Wopj��N\\!@Ii\'�3��4�9�횄��i���w���\r�Ԏ#���\n���m�|[�uSθN~[�?�%2�az���+E��d��N��Th5�|-ym����`�t��Hq}E�d N V��\rpr���C�\"���(�3����#�aj�N �|�/D0g���SqU��H<�UፑJS�ϭ�q-�(UP�����nJy�\\�A���8�S�~@��%۹9�5�����D�-G�\Z�ܤp���J�u�C��yф��{�o�*�/�y5�m�_����i`����	�$g�|�\0Y��\Z?���]Bʻg�_��,�ۈy����_%��g�����٩)5��Y��G1�\"��{��-o�K�r[o6��^�k9���FH�H��\'��\Zc�`��W�x�5\n3�j]����E�ؗ�j��޽��)�+x�bvSNW��u�e�A�����9�㪧P�%�c�*��eF@��>̞��!Յ�6W�Ĺ^-~�o���E֔	����\0��fE�_Hْ؀\'�e�6�4�mv!3X,���ԂD_�Х���7��zR�5�{���\\��\Z�V�\\G�y�8%��$�g���\\o��.Y��	VP�o��c/�29��B�D{<��(q:p�b�f�t��I���Q�m;7ݙh9fyw��ӟ�N�v�V ǩ���O�5z:�<���>�!E\'Q�P^�Pqψ4�\\�\'?{�����Γɦ3�\0��W�)�J4��I(�V=l\"GOL�>Mn���3�3��*N��\rQ�MUT�Ui]����\0�͔��gܾ�����S���O4fF�@�L���ܺ\n�>�L����%��E��\r��#�l퐏	%�]l�M�����q��T��E�fX���,\Z�v�*@��҄�W�?���G�j�i���vYk)����(�1������\"b��\n�� ��w�A�t���0�M*�1y\Z�T\"ӂ�b4���\"���l�ח�vC4���C\0��c�{V�N�qi���T��{��$!��m�c#���@�Lp�s�k9N�Ȁ��h��WH���=C�Vv#���p�c7�k�zW��\"n�%+[|芁��ǖ?�u�.�P��<�-=�o)�/X�p�a$?����H:�/Z�ɘ���o�����wp��xs�@<��-�MNM���?���Xk[�Lc��.\"ǋ�ۃ`M�}�?+5����џӅ$����Ai�agD��q�p=[�ۀ��R�~�ud�#Y2���9�㪧P�%�c�K�wҨ�Y57U���>��~tB>!�!��C`����t-Hwt�e1Y!�=�X<b��QW�v:G帠�e�?Ӌѥ$�����҅q�?Bx��\r?����18w���\r3DҺ��̪iݠ��]d\Z����t.%e�� qׅ��_�i��ϙ`�tn��)����䞣�KF���V�\0��+��\Z��\'�M�\'�>�nI�V�=����Gv�5Oٽ��@-���+<�����8�dfco��(=�zM_��k��0�\r���f�V�=9��u��KpB�x�]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��L?�IB[�p�� ���ٜ�6�e�[�(��=>e�؉��e;��b�1�q��CLB��4O,m�\ZlA4��t�^0*Ȥ�YC@�>��f�����Ϭ�4�F��G�y�z>G�]�5q��5�\0��}���[P�R@��.@��K����gW�mV�վ�͹.=���#|��	�l4�.UQV^�^2�Fs!q�����G/��������ڗ�>��2���u��y4R�ჯ�t\'��M��35�2��[Y\Z��d���H�d���7ς�~\Z���p�Q�}D}p,;ײ\'/l��Q3G��Upl����J�u� Y/h�s�\r%����$�x�b��C�G�qU�\"�)1-�9�2v�3���<�k[-y�X�h��$��?�v��N�w�����l�P�~5��\Z7��@vU~�t��d԰�����������M����Ze[�	��o�b[�������rx�z�{���g�I�����uP�E��j�7�P�	�\';���L�vA����]\0Q_�}�ӑ�o�lZ�1�>��V)^���@�]!�yE\\�J�\"�h�\Z�$��(k�/6\Z��@�fj�+��<\r��1E��\\�N\'F��z*��L�O��W��E��rL\n��_ROq	�����8H�\Z�\'k]L=��Of�����t�*�Ϯ�i�By�F&�$��\\~�\'e;T��\0į�e&x�;�LS�\"e1�������=�`2�>$���k߻K!���L{��������(�\'0u��\Z���C{�n���K��l[W	�g�p)�@���R-�\\������:��������*���H��w���[����i�5�@)׭U�A�$�g��y\"���aR�}�=���K�y<�op7�����<k�T}w]�f�w�z�,Gv�\0�[H���P�EF�u����F�[�t���ɛV�¤E(�E�~֦ڙ�a��ӱ},D\\yMx� �h�q�&���7]}���A�p�Oi �>�\\��턦�j��v�:8C�*��7�4�+��{��\"Nq�q_�k\\�L���nR�%Jw�#��s0������`ˣ�Z7��\"�O���ez_1�$��4���]�F�\"&�o�r{�/K$��e��?JR{�f�39w>�������p��)�/g(\\8��}G���&�4ļ3�t�BH�9]� X�/P�y��.QM\0X�Q\n����=͓M��\n���ܽ`�\nŠ���\rb-I�̦qȚ��x��]+��g�[\Z/\Z��L-����������L�i��\'�sz��k\06)J����X.u�$�%^���F9d���}@OL:WEU}gC�E��g��8WHx}���`��[�_s��c�Ű��<�|�b?q���emLQ�\"��3t����i��4/}�p0��#)3,��wR��ZZyl\'ˬÛ^�ZsH̟�-��҄�W�?���G�j�i���vYk)����(�1������\"b��\n�� ��w�A�t���0�M*�1y\Z�T\"ӂ�b4���^0\n�A�<��S�&IΊ�C\0��c�{V�N�qi���T��{��$!��1���k:��F�눑��=�ɐ��|i���Z%��G`�\rEDb�Zvh7�h�\Z���^�+\'��v�[�� P1�p�U�	?��Y͇��)�.<Wz��V�ff� X�Y�e�t�Z��L�o�֗0ץ����R��>�m�I5ӳN(㪍y~��������O�Qu��6�����9J ��,��I�A���Ǒ��DQr0�(���Z�H���	���E�����5��tٝ�ٹ�ű}~�Dg=��h�����%˸���oJ��Է��K�:��OB��/U`�$��YZ��/7�>�]�_�q�}n��Y�FC�/ϗ(��K�f��6z��w��9P���S��0�\'A\"�0F4�.��][�baaS��1�-�`��~5�=����ʃ>L0N��Z)MN��kº�zW1�a��ka�=A���|�]������{��ٸnM��o�\0&\r4x5���\ZSD�9{@\r�~V�\"�^I�Q^�Tj�f��s�NGZ� #�:�,m��ꀕM�a\Z����SwJi��g��&]�!\no��x�\'���f�������(�o�(���]E$:�e3%�ʆ36W&ߵ�9PMꝾ7	@�X޶4���n\"r)Ǣ�3b�!����ٮ�֯��J�v��oO%��A=,�����/�M9#P�=��	�����k��0�\r���f�����5C�M�[[*M%��]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��L?�IB[�p�� ���tF��{Z��f)�U�+�؉��e;��b�1�q��CLB��4O,m�l�L\r$M}Tf����(��n\Z�4�2�(,|�6�z7RV��r�D���M��<w���7���y�em�0��j�f?���0A�Oϔ<�8Ǿ��r�B�(z�\n� �	��;`pV^�t3�#�<-��<��N�yh�.	��m�F��h�]k_�`T���[��aх|��<�˒.{vIq�9�����!	_N�呣�o�<�) ��(�rV._�;�:/?��&I�\0#d�w\n��$�(7)8�����3V{�yF[p2�И�;��b�q���뒶���E���P�A�_�%�����p�i�SFh��-���g��V�XRDo.6�4�mv!3X,���ԂwT����os�Y1�T�x|9`�\'V������)(�=��Q\"@���2G,�n�Zg^U%��w:�r��,������[���Ӫ1�%qx7��1��Ȳ�^-Hy�\"�zB\Z���2>���Gi��0\\��IRp�\\���\n�^&+�|;eL�zW���`�2��e<��W2(��ߛ\\*�ߴI1�	e�N��_�n�>�Q쇲x\"��]K�)]s���Q�0(�-\"��t�v�;�	��o�ÛNt}��F�mFS��a�R�>\\2m^ez�,��0�Sǂ�����(\ng��f�h��ٔ=�p��qu��2m1���$��C�<c�\'|0)���\r(�f{���9������:�Bd��]�,<��%�s��}.m�}\\����SbB��\'ŮǘAg�����q�\'��.��X���l��E����l�s���%\\�)sk��0�\r���f����G�t\n���;��ű?�xC�;)\0\n��v(�?�xC�;)\0\n��v(Dn��0rM`�����ۈd!p ��N����9�wy���f��gU�Z�^�R�s�\rX/~��!��QĹѣ�*3��_ݱ?nJ�R5r��GH!��>`��]�I/��,����>��O��%�}�)������*\\��9Ù��dr3�j�|ԍ�v2Wռ*�\Z!/���t�\'����I�UN����Pq��G�����S�gTE���:��$s��u��[\"q���C[�c\n\"���W:��c���R�f;�ˡ��7m�`\n�(�\\N�}\ZS���-���Ҝ���O��g���RY��-U��D�\0%1�JB\Z�ମ�����m�Z�{ZJ�=te\'���4d&�4��{��}5>bn�>pR�b�	u�C\n!\"�\\p��W�dz���r��/�(l��<^���,��Dn�XjP�Ppu�E[��^���%˸���oJ��Է�������q��N�i4�q���7����Z{��vX�q�}n��Y�FC�/�� ��\n�хۤQ��Z��\n���~�\'uth��n0GZ]m{j4M@�ᝬ��wޠ&/0I�/�?����=����Gv�5Oٽ�is�FLL䌯�TlGf!���ijG�����ŉW{�LU��Lꊞ�0<|Jl\0q�,�����5A0����+��*�d_\Z�4��QE�A�YW.U��l�8��$�;/;(>3QlU��zG�\\��S�+�p~ͪl����oϢ��p����z���nyt�G|3Q��N]�%_\"|���0^*j�;D��	=g�ok��0�\r���f����<����\';:\\�*k���T�����5g�tS���Y�]\'��7t{�1O��T��Q�C%LV��u�33c:��������uĲ\Zt5m��7X�71bZ��B���B���52)5k��0�\r���f��M�����%g�����]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��L?�IB[�p�� ���������Cʼ����o�؉��e;��b�1�q��CLB��4O,m0��i���7�$���X����1�8	xkAl�(�K_��é���jK����D����4`�0�\\�{}m(ü\'l�m�w.L3/f��f�CE��0a�d�/�\'���d��M����`�&���f�\"w���!o/{7\'E���¯ΩY7��C���X�?l�a�ɛV�¤E(�E�~֦ڙ�a��ӱ},D\\yMx� �h�q�&���7]}���A�p�Oi �>�\\��턦�j��v�:8C�*���ƟxwECQq���?������0��-倴��[��\"��l��5�Zr#f�����6�������\n)&�z8>mK7���qM5I��з�3�\n�l�vLL�gvUG���Cȸ��� �!)\\�U>NK\n�b����\'���f�B�s��o�F�슴^f��B�,|�f}���_��Tm����7�2�pG`���[)��,�$s�n\"A�n�ECT�\0rRj-V�J7{�����k�ecىS���V��e6k�[{�F���mPߡ���90fĪ������1�����[^n���O\n��Hp)�/	vK�l�V���\"�W�&E�P�.r]�$���)x�-�n��\\;�c&�t�rRfK,3��<��$�ސF[����m,��J���e��i�#?�0�f,:<V?4��$A	���gI.5��S\'g����Cί��%W#!>����f-�X�够-��>v�v�Q-u��AGw������=������D�1l�/�\'Ӌ��O!q �1<N�� E+���Ŕ(�g���>}eӢ��`U7�(	��D��)^q������ڶ)Y��dL�Y�f�KH��B�����^�S�|��O%TKɴq�W4�i���$ĩ�T+ \'���Q�=y�N�Bd�j�ݵ7��tk�S.B�}S�Pd9�������{�v&�q�GM�*j23<�ʑXA�C�j����ʳ\'�ν>�=uN�&ct<�d��H&���\n���R���\n�}�&陨�r+���+Ӗ]�g�_el1�y�����i���`8%\"�L�.�sE����n��l�\\�%X�B��y���F=�2Y ���0���V�;-8H���\nN�:�\n�+r�U�\r@(�_�p��o�\\�}6��W�I�Sc�l��k�f�$\0��S����^X[�-�B�l$��M�R\\u��g������nx�����f�yd�\ZX�0&H�T��M�!�E�{�\\�a�$No�fP�Ԯnm%� ���n+2a��qe~c���J���T2{���o�JU�&Ka��C\"�Ѡ�=�]L����g$7���f��A.�����.���T�CY���UdɽU�8K�zk��0�\r���f�p�L���kvfN5T|`��]�I/��,����>��O��%�}�)������*\\��9Ù��dr3�j�|ԍ�v2W���D~d �TzR\r��	Ђz�d���TC9�&sб�Pq��G�����S�gTE����i�_@V4�h�&�\'6�3\0��n��D\r�D��U���(�eC��ۑ���}���<�ňAgp����&�a�!��>����b�����=������Nؽ&�����¥���q�n���d�@�{:zw�^4�Nޯ�B��2�B%g�Vx�ލy�w}��u@�����I�Mp)\0?���7ߩkm���r�i�>D��r�X���;F�{�U�kh��SX�[�N#�����R�P��.�.0����ԡ*JL̟��\n)�����?`�+|2��0��;�3+�x�4��e���1�)��ȱk4��9P���S��0�\'A\"�0F4�.��][�baaS��1�-�`��~5�=����ʃ>L0N��Z)MN��kº�zW1�N8���N��t0N�\0�u#඲t�6���C�S	��f�H\n�-kT�œ���(ذ�jv���W�9��MeQ�,5�;���W]M�Ǐr�����,lք�&�<w�WK~L��ꑄ���c�d�h�מh�i�#uXX<[��D�	�313�h��e�9�M3��:�i��$�28ʴi��k��0�\r���f��a�0��GMϙ}\r{c��x8��\r����ΐ�;Oo�;�ق�?of��u��ڽP��=��U ����͊o��+����=�8\\��p/fS�#�-72Gt&�uͮ�~P����_{��|r�m��g�������H������ E\rG[�a�u�\ry��&b	,O�	8��@��LX�M/��Q��l4I,������5����C���\'{�s��ː�_f�k��~>B�-��6G���^���\'�+��!��#\'�ɴ.������,\"Wr��m�ݞb4#-Vt~�B��B�4��UD�h��, ��Ӊ۠?�y��^�®=*-��c�b�XP������[��$}(��ꗸ��@�{_��C0��g�P�9}�k�V�\n�T���N��I�c��T0p�o����l!6�}\\���R������T�wI��HcN�l��?!�\\��P��LG�u:>���D<P����_��[������{j��O���v�@�#@&X[9���t ��/O+� 2C)c�������u��V�r,�4�C�J䰀��V���F�y1��dt%�ߥ%�	{�ӷ3��>Ĭ�FZ��H�o3�����x��N#�����R�P���2�m��>~��`�G��]�,���w��	���\\U�@�ީޫ<��za�j�𷑹���E���fM\nÀ���w��(���h�s�7���D�oU�wyAJ,X�����㄄&B:h��8�O�����j�\0��赆�7Gz�ڿ����~Ee^�,ȢrsU�\\\"3$8�&dD�ZWO?���A~3,�_P��J�Y�/s�@��r���I>>K�������ZD���A�O8��F��Q{\\��,=�߹�/���v4~k���L�*��\0U��&u�F�r�ߠ��\0�JM�[�dc�/�N#�\Zm��P�ʌaA�.�_\"yh����LkV�X��bȖq\r}U[�!�r�O#�]�Q������T��\0a����vk)!x�K���~\03d6B\0Q*\0���A�2K�t*��\0���&k��0�\r���f�L��[���f*Č6�*�]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��}}lE���&U��}��b�r��F���^L��\'+�؉��e;��b�1�q��_�9V��M�p��?�d�]D4ժ�%�A�YD\Z����ǊH�p_\'�����\06ӤT��<)�M�x���-j��ME��f���E`�7^^���/�Y�6���¶��g��v�=��8��aX���ہ�,us�\r�e9�;?�B�8��+��9�a<�K�[���\r7v�=$&%dBjMB�(�n=˦� ���RB�Z{4�t�d�\rJQM��Xx/C{�HGo��c�[9N�d�ֱ�8�K�ۄ�R2t��Չ�`�e��6��1jo}�~�ج[]Մ�6��\ZU�QEn@L�H�M��J�`,�඲t�6���C�S	��f�H\n�-kT�œ���(ذ�jv���W�9��MeQ�,5�;���W]M�Ǐr�����,lք�&�<w�WK~L��ꑄ���c�d�h�מh�i�#uXX<[��D�	�313�h��e�9�M3��:�i��$�28ʴi��k��0�\r���f�	����o{��ٖ��Z!��c�\0b#��܊M�x���-j��ME��f���E`�7^^���z�z�@V;�t��4Q%���G�ݣNV��&��\0������_x���hEr���s\\�mFi���v�LT�ĩBd�>�;$M��/�4�_�B�g��Xs��g��m� �U�7���~���-ɓl������ P��J��<��4u=L�8�B�V6~�O�����L�P8�p\n}$V�����g_[�7$����Cz�~�CV�`U^H���a�~x�p�{�L�\Z8�3}Z�NRۥ:#���\rLN�����v��W�s�+Qn��]\0W���3�4k2dy�o��C��.?7эY�@ѷ!������U�7�T�̠��ҝ��d�q�9�����!	_N�呣�o�<�) ��(�rV._�;�:/?��&I�\0#d�w\n��$�(7)8�����3V{�yF[p2�И�;��b�q���뒶����k�gxP���9��ܨ�B����z������w�^	�D�յ��,�l^MN� �v��z�H���}�S�0�kIL��׷Q���m>�]Xn[?(�h���7���P[��PtZ4��U߅�D�7����\ZS�	/p6�L�S����Ԧ���i����l!�i���;?����T�����0��ߛgE}#. t�\n���\r�N�����v��W�s�+Qn��]\0W���3�4k2dI4�ն�I���]���\'\\��S�\Z_V�������-�p�pr��\'���/�\\�j�0�遟��������֦z���3P�ꁸLL1�E{))�!J>��@��\"�a�e���Lx�6����oUB�题�d�IB�b��_94}�M������-kcu}]J�X.�*!���r��Q�M ��d@YR\Z�3�r7���O�8����}X7Ӹ?8�5ę��/H��݀=�����[%_�$.|����C>��A�r��&[�){��\'�x7��p�Ҏ����{ȇ���w��8$A�R\ZZ���)�JF�A@�xӧ�����S�b�:c.�<E���0�D�貙�C�2-���Uw���$�B�\ZID�>�A�KK���Vc2��:I~�����՗�I�L(�oY���p*C�ۉ�����,/:�h�R� ����\n��I��0�ef�X��Z���5Ԥ������׸l8bHLט����[y�ܾ:���/H�|lҮ|��Ԡ��N�i1��G��ň�׽t�}\0�p4D�z�L	c\'z�Ro��*��t��|[�(�\0F�X�{���F�$���%,$��>\0�������Ӟ>���b�GycU��4�� 甶��І�?g��\\m����s�S�W��$��섊�|�V�����l֐1:XEÈ$��0z�(���i��3�P��-�j�Q�]9Qһ vU��tѕx�x����V�gK��v��`�� ���֖��z�߆�8�w5YIp�̹�:�6��AIP�L��&���r�OP�j4t�E�Eɝ.�{����Ƹ�}\\=ˊ�3�\Z���Ʉfm�׈�Aw\\�+J|$Ȣ0��������g���ޘM7g�-:���˗�8�$��\n�|q,-Ca&���@XsQZx�p\ZΓ\0�8���0�W�׵���c�tـ�υ��k��0�\r���f���;��N��K:7R�Y;�ԹB&��\'R�;���S�où�{Q[���Z�ؿ�D���\"Q�KfoS��VG;41�Tݵ��W0Jr�r8�{ڼ�û1�1��=I���K�KunR������4t�Y�0dY\r�!���et��\ZD���f�O$�)������dI��҈WIu#���I�Ǭ\"O\Z��20$�صt���7�����(n�\0�k��0�\r���f���E�7i]o5���#Sf��ç*O��}��Ġ\n�f��Mt�t>Ҳ|PIj�Ե�d���T$�d1l�X��\Z.t�7k��F�v?n�=���k(�49�6��44��;U�	�K��6��A6�<�6�\rk��0�\r���f��h~�g�n���ˮ�]�]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��}}lE���&U��}��b��Bݜ��\0R�g�\r$�؉��e;��b�1�q��_�9V��M�p�.�5(;�/��\'H���w������F�(Ny&O~D�$0�@y������k��\ZDj�*:Q�E���U�v�����̻b�<�}�F@�g��Qb��nF�ߘcazY�H���Ph�gN�s�D��)�I�(���|��h��KA\\ƪ}	�������\\P����5�����I��3̔���:X�=|��@��\"�l��+w\\<]�q�9�����!	_N�呣�o�<�) ��(�rV._�;�:/?��&I�\0#d�w\n��$�(7)8�����3V{�yF[p2�И�;��b�q���뒶���ͽ,��N_P�¬)=�ZA�bLW�γ\0B�w6�\"����*�4��m�wp�lb���O���sԊ��dߠ�\n\'b�v�J1�?�\'fū`�`z�t��3vD\'�S;��Z�	�C�Ȑ,��o�\"���%V^�jp�\'�Zz>���\rG�,��O��Qɢ���WWf\r%	��ԕ���H�*�Pf�-p�\'_w�PI�\np�KK�H+�Ё��(�9���/���Z��[�}ɛ9~�\Zj�²�*�.�{�A�=~LTDN�m\\�J?i��s�S��\\I��\0ѣ=�F�K+ Tdr���.ޢ[&W���vhQ��@4R�.V�����ݯ�u��T��������Յ}��W+3��m��Ȇ�kq��ec��9����2�q�����n�<;�Ӡ���Y����$T@O�ʩ�0\"L��4ԽP��hC��T~��-�PIU����O�V���� �8�T!����0��9�9t!?5V�軿B���{]�3�ǳ��8\nH_O������\'�/ϤǑ^����=R�C_���<�J~�a����k>a�\'��\"��S⍙a�w��/�ޏTN��^g����6�$JC� �D��;;�6�@��*t3����m\0U��]^d����+���r��b0Z�w��������4��Z����1�Z�`��& ��h�,�0���$O��R��h�**��*|QNM���#�/C���f;^�1|�{�fx��pcW]YM8p��>\\-��cfJ�����%}ƍUml�Ol��h��3��O\"��Q��Uk˴t��_aU�m�X6��-ݷY`�	�[� ш3�\r���;��b�q���뒶���QY�J��u���ad!\0KZ� ��N�bA�Aq�vH����ު+@FJ��<P�$3�����\"�Mz#�l�;�X�C��.��D�Z��U5�#�_s��v�w��<�cz���4x\";�8	�2��,����6���C�B��ߗ�� qׅ��_�i��ϙ`�tn��)����䞣�KF���V�\0��+��\Z��\'�M�\'�>�nI�V�=����Gv�5Oٽ��@-���+<�����8�\r�D������<�m�㵉�_t����$��ٓK@H��\ra6\r��K�fi��x-���@6NQ��l4I,������5����C���\'{�s��ː�_f�k��~>B�-��6G���^���\'�+��!��#\'�ɴ.������P%�l��N�����4#-Vt~�B��B�4��UD�h��, ��Ӊ۠��\Z���Q��v���l,�X���V����1\\���tࣔ}��?N@�+���:M����ZCh|1Z`LT@���==\"�r��d��:��C�Kgjr��Se��Qǽ|�ix�+6sf�(#�D�HH۾1T�X��	��+�x�L4��J��։�}#Q\'h����< �\"*�R���ڸ��i�曉�-�k	��(���5uɔG�3+�\r>��@�`�����\rDfz���x�&\n�G\"�?��.F�;��.�_�T�b3+�1��DwՁ�A���3�\'�7���,����b��n\Z���@\n�	��}�H�9�/���fU���I�Fy<���(��{k6�L�<bu����z[�\0Y��\Z?���]Bʻg�,ޏ)ڗ�gS.%%baQ��H�B\'-���`��\r9\'+t��;��t�Z�E ���R,� ��g�bx0���L�� ��O}��ح|h�fA��_n�	�4S4�V���u8���Q�\"�1R��?W�?6T��px}��)(��t���:��]\0E[����vFm�/W��95�+#���{=Aj�X�CZvk�`�����e��ӄ��j��v�:8C�*���ƟxwECQq���?�э�`6!�X���x+d�2f��0ޅE���l]��fQ��h^�r5�Q�k��0�\r���f�`�Z\Z�d�`���+���Mx�e�D�E�B���֓)I?lѸ�κ�}�z��$�H�QѧR<�yĞ�A��T��[�qM���3����,X���p��C^g��1Q�B�jhL�s����VU�a�v��-�����#;F�n�!��P�ᓻ��s$�w� ��[�oM�#gB.Zꃴ	Z�4sÈz\Z �J[$���*6��:�X?��]��!������Cm>?TX��|����Zo��tU6%����?�A�k��0�\r���f�������\"^W(\"��Xz��]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��}}lE���&U��}��bs9�oیsh�\"~MZ��؉��e;��b�1�q��_�9V��M�p��`�8�0Ek޹Bʟ$3��[*i�\"kG�o��������6䑌֣���6��ّS\r��6����4��h؀;^E9j�	B5���qA_<�\'����5C��.��A���u���O�u!#�َnw��bHP]`=�Br�>+x��4�<M�Ԭj2\'K�\\�SZ�/Ԣ��|$��VI��QT�@x��=�D�e$���O��#��ӏF�����_3�m�{g��\n�[?�> �c3Biϭ�zo�P��#:�\0��=oȚ�MvzI�Ά3���}�f�u����441�if����ƕ�4ߩ�o��njI�����[��#��6�g�S`���>��nQ��x�ay�����e�\Z}\0\0YK�Dm+RC�����1�����[^n���O\n��Hp)�/	vK�l�V���\"�W�&E��)��,���u���s��)e�E8�\'��X;_��G��V��s�V�٬V��\Z�m,��J���e��,��F��wC�0�_g0�꿐���o7�T�0:I �W�������{[���ˊ�E�\n��N���Cwk�\\Q�����(�¦�4��H��¦����;��	� �1�J޳�!��NyX�|^�+�zŬ*��?ݤ�J}/���1�≖�����O�\"!y�×���v��/�I�5�z��Jy�`Y�ߩj��h�M��W��{���[5yʮ�y\\N��e��@D��?:-h$ܷ�w��\'�aG��\rj!�t}�J�����Q��!kF��ጐ�8�2��bz|:\\��ޭ�$�\\,_ڝ(��Ŝ�A���v�*�!�d��g1��o`��y�V���u\Z0��j\n��_�����~���	=֑�p�\Z!�\"!�1@��f��	&v*BB����]�iJ�gƾ�\r;�1���c��nQ���*��Lh�$ o>���T֢\rg9#���a��k�8 �\"s��^p�z�fY7��s�c���u7�@�lGq��I��L�w�=;x:�3�U��������;^��>����%��t�֏�t8cd����7���r��mU���EfW�s��`g�>)���\n}��b��p�&7e�a1�#~L@��~\\J%���h^�<m��al��?z\ZE\Ze���U�AY_����ע�N�NÊgĤ�S$BJK�ә��y����.ѪV��㥉/��.j�p��E�p)�=�R���Nj�ޭ�j�(X�=�d�����}rU�>^����*F������9�R\'��������2u{H�\Z�0X=�4�O������u+��K�⚊Y���h�Ð߼�0�X�нh:��Ä|WK�¾v2x����,�w8|w\"͠;k�2\r��D8}ȴbk��$���զ}Rz���c_���-���̪�3`��8���Q4��H袋Ko��0[�sd)�ٟ	VQQ�[��D�	�313�h��e�9�M3��:�i��$�28ʴi��k��0�\r���f��q��Tsh�UԠ0+Q2��H�`*gI���E�}Ǩ�|Rj�2��=����Gv�5Oٽ>b�s����c\\p��!Y�q^�Di���O���S��M� �sy��\r��W��м2����j}Z�ȇt�����\n����>j�Yu�������8͜*�����\"O��e��S��GD[��2F�\nd�,�1l\0[�n��%wl�;YXY�$Y6}ʽ*l�jO��F���3u�o��W5�(�Zg����Um�k�ā������]���&��s�ϼ_+UZ�<F<v<Zk�}C��ٟ��v�LT�ĩBd�>�;$M��/�4�_�B�g��Xs��g��m� �]�go^�G�e��N�}a���_���og9�$�1,�^��򎀉��Q)�Q�����L�P8�p\n}$V&��]�~��ե�Nc�l�6\'�ۓ��t�U�A���u��]��8`.&kZR{\n�_�1����=�b���ؿ�|�K�~�^J�5:�4>x_�������\'z2�}��ˀ����d��S��|����Y+�(S=����1�wc��\Zg��t�8㱞���a�����c���d%lr9�Ȇ��A�\0����\Z$n��@��G�BNc%K�B�Ln[`.F�v<�%^��]���_��Fo�۶e*�\n���&�����_	.���JL��+�vR�,}��0�N�{�.n!����C��\ZN�[��K�<*#��Y�Ļ�P���E�Q|�=�E����v�% +\ZN��u#�+�]��q\'�3���ukJ�귥x��eT=5�U�@�02����Km��>Ɇ`���\'tﮎ��[�\'���l1�KjW���B��?�֭e\\n�}Fc\"��M*K�=�e�>���p��6�k\0i�?c|v�K�v	)��8���_����2�U*S;�(�&�c_%ہxU���x�{��2_?7ؔF��]�ϸY��Cra;X�����3I@۟���ͬq\'e\Z���7c�l���t�D�e �Ȋ�h&�O&��\0�?�H�m)So����`\"���r}d_l�����\nX�վ8�J\n�{�]�DM�aw7����k_Kz@7�ֱxd�啞��\ZP�\'Jl�� /&�Q2ek-�{��P̎�qE0=�+�,�=�������	8�8�3R��b,�	r�B��dnW���h\"��]�y�!OV8�q\"|���2�_D�_�.��|l��^T�p�O\'�b�߁��4쇡,�2�1۟#�a�s\nP{n)�ٹmVbqTWѭ�.\\��̍���?�i���T�4�(P��$�8���C��8��.��x��2$�͊�����64��p�P��U��狇F0�g�P[N���%�J?F�x�!�:axS�<{\rY���rq�p�9K|00������|$9q��\Z�����ı�_=��k-��O���\nő�-C�Ѷ0�\r��o�Mܕ�!��<����ٯ\Z�\n�Lq\\��[H��ѯ	��k�8�l[0�9٢HP���w�+�R3ꥩ�fr=�e�����%��V�8t�z��q���Qi7a�>��:����f��a$�zE����%z������=w7W?9�#N�+���J�6>\"�(�%���j�k��0�\r���f��&_��r˓�_?R2zP�\"�h�\Z�$��(k�/6\Z��@�fj�+��<\r��1E��\\�N\'F��z*��L�O��W��E��rL\n��_ROq	������~<�6VOE�)Q�ۿ�����t�*�Ϯ�i�By�F&�$��\\~�\'e�fBp��]�.��Ye�|��yc2��u��ǎ��Q�j��؊�i�o\"�xE���6d�H!����l�F����(4?�]\"�	��+\r@�&�@AotŢ����M�������;D����0��C)õ����O�)h�\Z����Fĭ��}+�s<~Ʃbе�����i\'M^�����sU�Ky�R�f���I�pS񍡫���$I��(ع���� �$<\Z���&F�p�3��ѣ#��\0h�F�y7z�㵘cTh:��L�j\nxs�@<��-�MNM���?���Xk[�Lc��.\"ǋ�ۃ`M�}�?+5����џӅ$����Ai�agD��q�p=[�ۀ��R�~�ud�#Y2_��ʟ�g�������X_$��:\n��\Z������ӬM���TR�n�٨?�kgڭU1&B�I&ii�oRx�������고�X���=���́��7ς�~\Z���p=\'�\Z�~�$OI.�v&w�Z��M�1�zK7��J����U\\?�%#R�U�1�esRQ�n��4�Z���~�Z�Ms��u���HY$L6���9&v�)7�=��@��#�7U����\nZ�!S�ܷV3�}�3�*�$�6�<��|;�/R�����(��CY��<��x�XZ~o�j����+�ږޒ����X#�����l^�zV�x������������\"B���9�T@Q�B��/\ZY��kp]<ZK\\eVj \Z˞�ށ�eI�y	��o�b[������g\"v�g���uu�{7\\��:���ïhl�Z^>X@�+�a|u��\0ð8����n1<#�J�( s���P�Dn.\r!vO�՟�\r��#�l퐏	%�]8�����X��:g�\0KlJN��QK���\\�@p�b�f�t��I���Q�U�|u�����sJ��{��K	�^2xߦ�7�˖;Y��=��?��s���H�~\'�~T2�Z�#�*�ern[�+	D���@\\�\"	6��v}���a� \0ch�<Ht�b�e\\�+X>�aD�����x� 3l��7\\��L�������!u:�e����H�K@H��\ra6\r���d9K�8aZ2?��	 ','8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sample_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_message_audit`
--

DROP TABLE IF EXISTS `sample_message_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_message_audit` (
  `sample_message_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` varchar(85) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `raw_data_encrypted` longblob DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `record_length` int(11) DEFAULT NULL,
  `raw_refresh_script_encrypted` longblob DEFAULT NULL,
  `segment_delimiter` int(11) DEFAULT NULL,
  `variable_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sample_message_id`,`revision`),
  KEY `FKbfj6oerq9i5t75vdd2o3wxhfb` (`revision`),
  KEY `idx_sample_message_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKbfj6oerq9i5t75vdd2o3wxhfb` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_message_audit`
--

LOCK TABLES `sample_message_audit` WRITE;
/*!40000 ALTER TABLE `sample_message_audit` DISABLE KEYS */;
INSERT INTO `sample_message_audit` VALUES ('8a0380938e682ec5018eee3f199f00fc',39,0,'admin','2024-04-17 22:48:16.543000','Sample ADT',3,1,NULL,'','Q��l4I,������5����C���\'{�s��ː�_f�k��~>B�-��6G���^���\'�>O*�JJ\nC޼`.�H�bH|����D���#-Vt~�B��B�4��Uv�&�EV�B�C|O�6ht�����!\r�~!�[k&{�X�#\\Q��K��,4o�U�ΐ{;QI���^��l��dXզ\"[�-��0�\Z�)���}E\r�<Gg���d�\"ָ!}âJB�9p�\\�z�A�W�������3��&\Z>n�S \'5��6yg���]f$<Vظ]����j�b�{�Z�Kت�������2_X���U��=Y�\n)�J�B�V>\\�=����Gv�5Oٽg[5\Z�ưd\\K���[����R���1�N���^U����A�f�Y���Wњ���B��L�L�د�#12E�h=c�5y�oY�\n��7����\n�3��c�����^�me����3Z�����JWL�� 4@��֖��z�߆�8�w5��:L&]�6��4>\\-��cfJ�����%}ƍUml�Ol��h��3��O\"��Q��Uk˴t��_aU�m�X6��-ݷY`�	�[� ш3�\r���;��b�q���뒶����б}i[��Mم��x2���߇�h��QФ�=B�*Jp��W�I��K�y<�op7�����<x̛�1\Z�^y����\r�k���N�\Z��^�	�e�\"��bf=�b���sU�{�Ӷ\n�2Eգ���O�o��2�0�+%9�	�?7Υ�����\n��8cfClv����e��-J]I�2)9?�E�95�Uc��y0Nڗ��s�X_R��(��\Z��+�D�6����q�E@�����]{��K\nPy\'���)3/k����v6#�A¥�v�o(#�y���<9��D��������-��З͕Ҍ�1�g	+)�b�	�=��$�����P#K��I-�X��y�E�rnZ��:�b�p�2�r�ɣ�Br}�L�s��9�?�gݸ�{�PdN�h&1�[���a����8���>�d6�Z%W!��lΫH�Ԝ\\�x�^�����%9RE��r�}�\n�����Q��P��.�-)��� ߜAI`�D/�-�7=ۀ�M/r���T^�cH{��I\\c�&��Cg�W��-S]��yB���d�V)	��[�	�ފ�X�w�����>�����uE,�킌N%�`�a>�aD�����x� ��\r��a��3�+�Q+�9n#�B_���`N��y�\"�e9���R�a�Ǒ�2v�)J�?&$��ng�����=7q+1�L��8�8�\"6�:\"^��s��Hm3OՌ����uɺ��^ξ��W���=?�K�����C�׻x\r�2�k�)Dz3\'�:֤k~������N�/S�C��Q�����>�~u��ӽ��0Cz7EC:�|mE�~�C�\'H�O�`ټ{��SS\\NbT��\n�A���(T�K�,�\Z���~䶌\Z�ͫsa�g�ݴ���g��Z���v (��\"Wj��9P���S��0�\'A\"�0F4�.��][�baaS��1�-�`��~5�=����ʃ>L0N��Z)MN��kº�zW1�a��ka�=A���|�]��۟t���^�����9�����\"�g�R�:]���G���Ĩ����?\Ze���2E������jsQ���d��H�JQ�����O��_�RDb�Z����?�1[F��}��Sn��?B��ͿU�MvzI�Ά3���}�f�u����441�if����ƕ�4ߩ�o��njI�����[��#��6�g�S`���>��nQ��x�ay�����eUm�k�ā������H�C����(� C��J�gt�:���\nԨ�$���&x��]84&Q�\n���z�������rP��?y����{k�;1�\"K��F�� ܛ^��8!j��ׁ��Ԇn�F�m�8b��0�U�̺i�Y0�Wopj��N\\!@Ii\'�3��4�9�횄��i���w���\r�Ԏ#���\n���m�|[�uSθN~[�?�%2�az���+E��d��N��Th5�|-ym����`�t��Hq}E�d N V��\rpr���C�\"���(�3����#�aj�N �|�/D0g���SqU��H<�UፑJS�ϭ�q-�(UP�����nJy�\\�A���8�S�~@��%۹9�5�����D�-G�\Z�ܤp���J�u�C��yф��{�o�*�/�y5�m�_����i`����	�$g�|�\0Y��\Z?���]Bʻg�_��,�ۈy����_%��g�����٩)5��Y��G1�\"��{��-o�K�r[o6��^�k9���FH�H��\'��\Zc�`��W�x�5\n3�j]����E�ؗ�j��޽��)�+x�bvSNW��u�e�A�����9�㪧P�%�c�*��eF@��>̞��!Յ�6W�Ĺ^-~�o���E֔	����\0��fE�_Hْ؀\'�e�6�4�mv!3X,���ԂD_�Х���7��zR�5�{���\\��\Z�V�\\G�y�8%��$�g���\\o��.Y��	VP�o��c/�29��B�D{<��(q:p�b�f�t��I���Q�m;7ݙh9fyw��ӟ�N�v�V ǩ���O�5z:�<���>�!E\'Q�P^�Pqψ4�\\�\'?{�����Γɦ3�\0��W�)�J4��I(�V=l\"GOL�>Mn���3�3��*N��\rQ�MUT�Ui]����\0�͔��gܾ�����S���O4fF�@�L���ܺ\n�>�L����%��E��\r��#�l퐏	%�]l�M�����q��T��E�fX���,\Z�v�*@��҄�W�?���G�j�i���vYk)����(�1������\"b��\n�� ��w�A�t���0�M*�1y\Z�T\"ӂ�b4���\"���l�ח�vC4���C\0��c�{V�N�qi���T��{��$!��m�c#���@�Lp�s�k9N�Ȁ��h��WH���=C�Vv#���p�c7�k�zW��\"n�%+[|芁��ǖ?�u�.�P��<�-=�o)�/X�p�a$?����H:�/Z�ɘ���o�����wp��xs�@<��-�MNM���?���Xk[�Lc��.\"ǋ�ۃ`M�}�?+5����џӅ$����Ai�agD��q�p=[�ۀ��R�~�ud�#Y2���9�㪧P�%�c�K�wҨ�Y57U���>��~tB>!�!��C`����t-Hwt�e1Y!�=�X<b��QW�v:G帠�e�?Ӌѥ$�����҅q�?Bx��\r?����18w���\r3DҺ��̪iݠ��]d\Z����t.%e�� qׅ��_�i��ϙ`�tn��)����䞣�KF���V�\0��+��\Z��\'�M�\'�>�nI�V�=����Gv�5Oٽ��@-���+<�����8�dfco��(=�zM_��k��0�\r���f�V�=9��u��KpB�x�]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��L?�IB[�p�� ���ٜ�6�e�[�(��=>e�؉��e;��b�1�q��CLB��4O,m�\ZlA4��t�^0*Ȥ�YC@�>��f�����Ϭ�4�F��G�y�z>G�]�5q��5�\0��}���[P�R@��.@��K����gW�mV�վ�͹.=���#|��	�l4�.UQV^�^2�Fs!q�����G/��������ڗ�>��2���u��y4R�ჯ�t\'��M��35�2��[Y\Z��d���H�d���7ς�~\Z���p�Q�}D}p,;ײ\'/l��Q3G��Upl����J�u� Y/h�s�\r%����$�x�b��C�G�qU�\"�)1-�9�2v�3���<�k[-y�X�h��$��?�v��N�w�����l�P�~5��\Z7��@vU~�t��d԰�����������M����Ze[�	��o�b[�������rx�z�{���g�I�����uP�E��j�7�P�	�\';���L�vA����]\0Q_�}�ӑ�o�lZ�1�>��V)^���@�]!�yE\\�J�\"�h�\Z�$��(k�/6\Z��@�fj�+��<\r��1E��\\�N\'F��z*��L�O��W��E��rL\n��_ROq	�����8H�\Z�\'k]L=��Of�����t�*�Ϯ�i�By�F&�$��\\~�\'e;T��\0į�e&x�;�LS�\"e1�������=�`2�>$���k߻K!���L{��������(�\'0u��\Z���C{�n���K��l[W	�g�p)�@���R-�\\������:��������*���H��w���[����i�5�@)׭U�A�$�g��y\"���aR�}�=���K�y<�op7�����<k�T}w]�f�w�z�,Gv�\0�[H���P�EF�u����F�[�t���ɛV�¤E(�E�~֦ڙ�a��ӱ},D\\yMx� �h�q�&���7]}���A�p�Oi �>�\\��턦�j��v�:8C�*��7�4�+��{��\"Nq�q_�k\\�L���nR�%Jw�#��s0������`ˣ�Z7��\"�O���ez_1�$��4���]�F�\"&�o�r{�/K$��e��?JR{�f�39w>�������p��)�/g(\\8��}G���&�4ļ3�t�BH�9]� X�/P�y��.QM\0X�Q\n����=͓M��\n���ܽ`�\nŠ���\rb-I�̦qȚ��x��]+��g�[\Z/\Z��L-����������L�i��\'�sz��k\06)J����X.u�$�%^���F9d���}@OL:WEU}gC�E��g��8WHx}���`��[�_s��c�Ű��<�|�b?q���emLQ�\"��3t����i��4/}�p0��#)3,��wR��ZZyl\'ˬÛ^�ZsH̟�-��҄�W�?���G�j�i���vYk)����(�1������\"b��\n�� ��w�A�t���0�M*�1y\Z�T\"ӂ�b4���^0\n�A�<��S�&IΊ�C\0��c�{V�N�qi���T��{��$!��1���k:��F�눑��=�ɐ��|i���Z%��G`�\rEDb�Zvh7�h�\Z���^�+\'��v�[�� P1�p�U�	?��Y͇��)�.<Wz��V�ff� X�Y�e�t�Z��L�o�֗0ץ����R��>�m�I5ӳN(㪍y~��������O�Qu��6�����9J ��,��I�A���Ǒ��DQr0�(���Z�H���	���E�����5��tٝ�ٹ�ű}~�Dg=��h�����%˸���oJ��Է��K�:��OB��/U`�$��YZ��/7�>�]�_�q�}n��Y�FC�/ϗ(��K�f��6z��w��9P���S��0�\'A\"�0F4�.��][�baaS��1�-�`��~5�=����ʃ>L0N��Z)MN��kº�zW1�a��ka�=A���|�]������{��ٸnM��o�\0&\r4x5���\ZSD�9{@\r�~V�\"�^I�Q^�Tj�f��s�NGZ� #�:�,m��ꀕM�a\Z����SwJi��g��&]�!\no��x�\'���f�������(�o�(���]E$:�e3%�ʆ36W&ߵ�9PMꝾ7	@�X޶4���n\"r)Ǣ�3b�!����ٮ�֯��J�v��oO%��A=,�����/�M9#P�=��	�����k��0�\r���f�����5C�M�[[*M%��]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��L?�IB[�p�� ���tF��{Z��f)�U�+�؉��e;��b�1�q��CLB��4O,m�l�L\r$M}Tf����(��n\Z�4�2�(,|�6�z7RV��r�D���M��<w���7���y�em�0��j�f?���0A�Oϔ<�8Ǿ��r�B�(z�\n� �	��;`pV^�t3�#�<-��<��N�yh�.	��m�F��h�]k_�`T���[��aх|��<�˒.{vIq�9�����!	_N�呣�o�<�) ��(�rV._�;�:/?��&I�\0#d�w\n��$�(7)8�����3V{�yF[p2�И�;��b�q���뒶���E���P�A�_�%�����p�i�SFh��-���g��V�XRDo.6�4�mv!3X,���ԂwT����os�Y1�T�x|9`�\'V������)(�=��Q\"@���2G,�n�Zg^U%��w:�r��,������[���Ӫ1�%qx7��1��Ȳ�^-Hy�\"�zB\Z���2>���Gi��0\\��IRp�\\���\n�^&+�|;eL�zW���`�2��e<��W2(��ߛ\\*�ߴI1�	e�N��_�n�>�Q쇲x\"��]K�)]s���Q�0(�-\"��t�v�;�	��o�ÛNt}��F�mFS��a�R�>\\2m^ez�,��0�Sǂ�����(\ng��f�h��ٔ=�p��qu��2m1���$��C�<c�\'|0)���\r(�f{���9������:�Bd��]�,<��%�s��}.m�}\\����SbB��\'ŮǘAg�����q�\'��.��X���l��E����l�s���%\\�)sk��0�\r���f����G�t\n���;��ű?�xC�;)\0\n��v(�?�xC�;)\0\n��v(Dn��0rM`�����ۈd!p ��N����9�wy���f��gU�Z�^�R�s�\rX/~��!��QĹѣ�*3��_ݱ?nJ�R5r��GH!��>`��]�I/��,����>��O��%�}�)������*\\��9Ù��dr3�j�|ԍ�v2Wռ*�\Z!/���t�\'����I�UN����Pq��G�����S�gTE���:��$s��u��[\"q���C[�c\n\"���W:��c���R�f;�ˡ��7m�`\n�(�\\N�}\ZS���-���Ҝ���O��g���RY��-U��D�\0%1�JB\Z�ମ�����m�Z�{ZJ�=te\'���4d&�4��{��}5>bn�>pR�b�	u�C\n!\"�\\p��W�dz���r��/�(l��<^���,��Dn�XjP�Ppu�E[��^���%˸���oJ��Է�������q��N�i4�q���7����Z{��vX�q�}n��Y�FC�/�� ��\n�хۤQ��Z��\n���~�\'uth��n0GZ]m{j4M@�ᝬ��wޠ&/0I�/�?����=����Gv�5Oٽ�is�FLL䌯�TlGf!���ijG�����ŉW{�LU��Lꊞ�0<|Jl\0q�,�����5A0����+��*�d_\Z�4��QE�A�YW.U��l�8��$�;/;(>3QlU��zG�\\��S�+�p~ͪl����oϢ��p����z���nyt�G|3Q��N]�%_\"|���0^*j�;D��	=g�ok��0�\r���f����<����\';:\\�*k���T�����5g�tS���Y�]\'��7t{�1O��T��Q�C%LV��u�33c:��������uĲ\Zt5m��7X�71bZ��B���B���52)5k��0�\r���f��M�����%g�����]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��L?�IB[�p�� ���������Cʼ����o�؉��e;��b�1�q��CLB��4O,m0��i���7�$���X����1�8	xkAl�(�K_��é���jK����D����4`�0�\\�{}m(ü\'l�m�w.L3/f��f�CE��0a�d�/�\'���d��M����`�&���f�\"w���!o/{7\'E���¯ΩY7��C���X�?l�a�ɛV�¤E(�E�~֦ڙ�a��ӱ},D\\yMx� �h�q�&���7]}���A�p�Oi �>�\\��턦�j��v�:8C�*���ƟxwECQq���?������0��-倴��[��\"��l��5�Zr#f�����6�������\n)&�z8>mK7���qM5I��з�3�\n�l�vLL�gvUG���Cȸ��� �!)\\�U>NK\n�b����\'���f�B�s��o�F�슴^f��B�,|�f}���_��Tm����7�2�pG`���[)��,�$s�n\"A�n�ECT�\0rRj-V�J7{�����k�ecىS���V��e6k�[{�F���mPߡ���90fĪ������1�����[^n���O\n��Hp)�/	vK�l�V���\"�W�&E�P�.r]�$���)x�-�n��\\;�c&�t�rRfK,3��<��$�ސF[����m,��J���e��i�#?�0�f,:<V?4��$A	���gI.5��S\'g����Cί��%W#!>����f-�X�够-��>v�v�Q-u��AGw������=������D�1l�/�\'Ӌ��O!q �1<N�� E+���Ŕ(�g���>}eӢ��`U7�(	��D��)^q������ڶ)Y��dL�Y�f�KH��B�����^�S�|��O%TKɴq�W4�i���$ĩ�T+ \'���Q�=y�N�Bd�j�ݵ7��tk�S.B�}S�Pd9�������{�v&�q�GM�*j23<�ʑXA�C�j����ʳ\'�ν>�=uN�&ct<�d��H&���\n���R���\n�}�&陨�r+���+Ӗ]�g�_el1�y�����i���`8%\"�L�.�sE����n��l�\\�%X�B��y���F=�2Y ���0���V�;-8H���\nN�:�\n�+r�U�\r@(�_�p��o�\\�}6��W�I�Sc�l��k�f�$\0��S����^X[�-�B�l$��M�R\\u��g������nx�����f�yd�\ZX�0&H�T��M�!�E�{�\\�a�$No�fP�Ԯnm%� ���n+2a��qe~c���J���T2{���o�JU�&Ka��C\"�Ѡ�=�]L����g$7���f��A.�����.���T�CY���UdɽU�8K�zk��0�\r���f�p�L���kvfN5T|`��]�I/��,����>��O��%�}�)������*\\��9Ù��dr3�j�|ԍ�v2W���D~d �TzR\r��	Ђz�d���TC9�&sб�Pq��G�����S�gTE����i�_@V4�h�&�\'6�3\0��n��D\r�D��U���(�eC��ۑ���}���<�ňAgp����&�a�!��>����b�����=������Nؽ&�����¥���q�n���d�@�{:zw�^4�Nޯ�B��2�B%g�Vx�ލy�w}��u@�����I�Mp)\0?���7ߩkm���r�i�>D��r�X���;F�{�U�kh��SX�[�N#�����R�P��.�.0����ԡ*JL̟��\n)�����?`�+|2��0��;�3+�x�4��e���1�)��ȱk4��9P���S��0�\'A\"�0F4�.��][�baaS��1�-�`��~5�=����ʃ>L0N��Z)MN��kº�zW1�N8���N��t0N�\0�u#඲t�6���C�S	��f�H\n�-kT�œ���(ذ�jv���W�9��MeQ�,5�;���W]M�Ǐr�����,lք�&�<w�WK~L��ꑄ���c�d�h�מh�i�#uXX<[��D�	�313�h��e�9�M3��:�i��$�28ʴi��k��0�\r���f��a�0��GMϙ}\r{c��x8��\r����ΐ�;Oo�;�ق�?of��u��ڽP��=��U ����͊o��+����=�8\\��p/fS�#�-72Gt&�uͮ�~P����_{��|r�m��g�������H������ E\rG[�a�u�\ry��&b	,O�	8��@��LX�M/��Q��l4I,������5����C���\'{�s��ː�_f�k��~>B�-��6G���^���\'�+��!��#\'�ɴ.������,\"Wr��m�ݞb4#-Vt~�B��B�4��UD�h��, ��Ӊ۠?�y��^�®=*-��c�b�XP������[��$}(��ꗸ��@�{_��C0��g�P�9}�k�V�\n�T���N��I�c��T0p�o����l!6�}\\���R������T�wI��HcN�l��?!�\\��P��LG�u:>���D<P����_��[������{j��O���v�@�#@&X[9���t ��/O+� 2C)c�������u��V�r,�4�C�J䰀��V���F�y1��dt%�ߥ%�	{�ӷ3��>Ĭ�FZ��H�o3�����x��N#�����R�P���2�m��>~��`�G��]�,���w��	���\\U�@�ީޫ<��za�j�𷑹���E���fM\nÀ���w��(���h�s�7���D�oU�wyAJ,X�����㄄&B:h��8�O�����j�\0��赆�7Gz�ڿ����~Ee^�,ȢrsU�\\\"3$8�&dD�ZWO?���A~3,�_P��J�Y�/s�@��r���I>>K�������ZD���A�O8��F��Q{\\��,=�߹�/���v4~k���L�*��\0U��&u�F�r�ߠ��\0�JM�[�dc�/�N#�\Zm��P�ʌaA�.�_\"yh����LkV�X��bȖq\r}U[�!�r�O#�]�Q������T��\0a����vk)!x�K���~\03d6B\0Q*\0���A�2K�t*��\0���&k��0�\r���f�L��[���f*Č6�*�]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��}}lE���&U��}��b�r��F���^L��\'+�؉��e;��b�1�q��_�9V��M�p��?�d�]D4ժ�%�A�YD\Z����ǊH�p_\'�����\06ӤT��<)�M�x���-j��ME��f���E`�7^^���/�Y�6���¶��g��v�=��8��aX���ہ�,us�\r�e9�;?�B�8��+��9�a<�K�[���\r7v�=$&%dBjMB�(�n=˦� ���RB�Z{4�t�d�\rJQM��Xx/C{�HGo��c�[9N�d�ֱ�8�K�ۄ�R2t��Չ�`�e��6��1jo}�~�ج[]Մ�6��\ZU�QEn@L�H�M��J�`,�඲t�6���C�S	��f�H\n�-kT�œ���(ذ�jv���W�9��MeQ�,5�;���W]M�Ǐr�����,lք�&�<w�WK~L��ꑄ���c�d�h�מh�i�#uXX<[��D�	�313�h��e�9�M3��:�i��$�28ʴi��k��0�\r���f�	����o{��ٖ��Z!��c�\0b#��܊M�x���-j��ME��f���E`�7^^���z�z�@V;�t��4Q%���G�ݣNV��&��\0������_x���hEr���s\\�mFi���v�LT�ĩBd�>�;$M��/�4�_�B�g��Xs��g��m� �U�7���~���-ɓl������ P��J��<��4u=L�8�B�V6~�O�����L�P8�p\n}$V�����g_[�7$����Cz�~�CV�`U^H���a�~x�p�{�L�\Z8�3}Z�NRۥ:#���\rLN�����v��W�s�+Qn��]\0W���3�4k2dy�o��C��.?7эY�@ѷ!������U�7�T�̠��ҝ��d�q�9�����!	_N�呣�o�<�) ��(�rV._�;�:/?��&I�\0#d�w\n��$�(7)8�����3V{�yF[p2�И�;��b�q���뒶����k�gxP���9��ܨ�B����z������w�^	�D�յ��,�l^MN� �v��z�H���}�S�0�kIL��׷Q���m>�]Xn[?(�h���7���P[��PtZ4��U߅�D�7����\ZS�	/p6�L�S����Ԧ���i����l!�i���;?����T�����0��ߛgE}#. t�\n���\r�N�����v��W�s�+Qn��]\0W���3�4k2dI4�ն�I���]���\'\\��S�\Z_V�������-�p�pr��\'���/�\\�j�0�遟��������֦z���3P�ꁸLL1�E{))�!J>��@��\"�a�e���Lx�6����oUB�题�d�IB�b��_94}�M������-kcu}]J�X.�*!���r��Q�M ��d@YR\Z�3�r7���O�8����}X7Ӹ?8�5ę��/H��݀=�����[%_�$.|����C>��A�r��&[�){��\'�x7��p�Ҏ����{ȇ���w��8$A�R\ZZ���)�JF�A@�xӧ�����S�b�:c.�<E���0�D�貙�C�2-���Uw���$�B�\ZID�>�A�KK���Vc2��:I~�����՗�I�L(�oY���p*C�ۉ�����,/:�h�R� ����\n��I��0�ef�X��Z���5Ԥ������׸l8bHLט����[y�ܾ:���/H�|lҮ|��Ԡ��N�i1��G��ň�׽t�}\0�p4D�z�L	c\'z�Ro��*��t��|[�(�\0F�X�{���F�$���%,$��>\0�������Ӟ>���b�GycU��4�� 甶��І�?g��\\m����s�S�W��$��섊�|�V�����l֐1:XEÈ$��0z�(���i��3�P��-�j�Q�]9Qһ vU��tѕx�x����V�gK��v��`�� ���֖��z�߆�8�w5YIp�̹�:�6��AIP�L��&���r�OP�j4t�E�Eɝ.�{����Ƹ�}\\=ˊ�3�\Z���Ʉfm�׈�Aw\\�+J|$Ȣ0��������g���ޘM7g�-:���˗�8�$��\n�|q,-Ca&���@XsQZx�p\ZΓ\0�8���0�W�׵���c�tـ�υ��k��0�\r���f���;��N��K:7R�Y;�ԹB&��\'R�;���S�où�{Q[���Z�ؿ�D���\"Q�KfoS��VG;41�Tݵ��W0Jr�r8�{ڼ�û1�1��=I���K�KunR������4t�Y�0dY\r�!���et��\ZD���f�O$�)������dI��҈WIu#���I�Ǭ\"O\Z��20$�صt���7�����(n�\0�k��0�\r���f���E�7i]o5���#Sf��ç*O��}��Ġ\n�f��Mt�t>Ҳ|PIj�Ե�d���T$�d1l�X��\Z.t�7k��F�v?n�=���k(�49�6��44��;U�	�K��6��A6�<�6�\rk��0�\r���f��h~�g�n���ˮ�]�]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��}}lE���&U��}��b��Bݜ��\0R�g�\r$�؉��e;��b�1�q��_�9V��M�p�.�5(;�/��\'H���w������F�(Ny&O~D�$0�@y������k��\ZDj�*:Q�E���U�v�����̻b�<�}�F@�g��Qb��nF�ߘcazY�H���Ph�gN�s�D��)�I�(���|��h��KA\\ƪ}	�������\\P����5�����I��3̔���:X�=|��@��\"�l��+w\\<]�q�9�����!	_N�呣�o�<�) ��(�rV._�;�:/?��&I�\0#d�w\n��$�(7)8�����3V{�yF[p2�И�;��b�q���뒶���ͽ,��N_P�¬)=�ZA�bLW�γ\0B�w6�\"����*�4��m�wp�lb���O���sԊ��dߠ�\n\'b�v�J1�?�\'fū`�`z�t��3vD\'�S;��Z�	�C�Ȑ,��o�\"���%V^�jp�\'�Zz>���\rG�,��O��Qɢ���WWf\r%	��ԕ���H�*�Pf�-p�\'_w�PI�\np�KK�H+�Ё��(�9���/���Z��[�}ɛ9~�\Zj�²�*�.�{�A�=~LTDN�m\\�J?i��s�S��\\I��\0ѣ=�F�K+ Tdr���.ޢ[&W���vhQ��@4R�.V�����ݯ�u��T��������Յ}��W+3��m��Ȇ�kq��ec��9����2�q�����n�<;�Ӡ���Y����$T@O�ʩ�0\"L��4ԽP��hC��T~��-�PIU����O�V���� �8�T!����0��9�9t!?5V�軿B���{]�3�ǳ��8\nH_O������\'�/ϤǑ^����=R�C_���<�J~�a����k>a�\'��\"��S⍙a�w��/�ޏTN��^g����6�$JC� �D��;;�6�@��*t3����m\0U��]^d����+���r��b0Z�w��������4��Z����1�Z�`��& ��h�,�0���$O��R��h�**��*|QNM���#�/C���f;^�1|�{�fx��pcW]YM8p��>\\-��cfJ�����%}ƍUml�Ol��h��3��O\"��Q��Uk˴t��_aU�m�X6��-ݷY`�	�[� ш3�\r���;��b�q���뒶���QY�J��u���ad!\0KZ� ��N�bA�Aq�vH����ު+@FJ��<P�$3�����\"�Mz#�l�;�X�C��.��D�Z��U5�#�_s��v�w��<�cz���4x\";�8	�2��,����6���C�B��ߗ�� qׅ��_�i��ϙ`�tn��)����䞣�KF���V�\0��+��\Z��\'�M�\'�>�nI�V�=����Gv�5Oٽ��@-���+<�����8�\r�D������<�m�㵉�_t����$��ٓK@H��\ra6\r��K�fi��x-���@6NQ��l4I,������5����C���\'{�s��ː�_f�k��~>B�-��6G���^���\'�+��!��#\'�ɴ.������P%�l��N�����4#-Vt~�B��B�4��UD�h��, ��Ӊ۠��\Z���Q��v���l,�X���V����1\\���tࣔ}��?N@�+���:M����ZCh|1Z`LT@���==\"�r��d��:��C�Kgjr��Se��Qǽ|�ix�+6sf�(#�D�HH۾1T�X��	��+�x�L4��J��։�}#Q\'h����< �\"*�R���ڸ��i�曉�-�k	��(���5uɔG�3+�\r>��@�`�����\rDfz���x�&\n�G\"�?��.F�;��.�_�T�b3+�1��DwՁ�A���3�\'�7���,����b��n\Z���@\n�	��}�H�9�/���fU���I�Fy<���(��{k6�L�<bu����z[�\0Y��\Z?���]Bʻg�,ޏ)ڗ�gS.%%baQ��H�B\'-���`��\r9\'+t��;��t�Z�E ���R,� ��g�bx0���L�� ��O}��ح|h�fA��_n�	�4S4�V���u8���Q�\"�1R��?W�?6T��px}��)(��t���:��]\0E[����vFm�/W��95�+#���{=Aj�X�CZvk�`�����e��ӄ��j��v�:8C�*���ƟxwECQq���?�э�`6!�X���x+d�2f��0ޅE���l]��fQ��h^�r5�Q�k��0�\r���f�`�Z\Z�d�`���+���Mx�e�D�E�B���֓)I?lѸ�κ�}�z��$�H�QѧR<�yĞ�A��T��[�qM���3����,X���p��C^g��1Q�B�jhL�s����VU�a�v��-�����#;F�n�!��P�ᓻ��s$�w� ��[�oM�#gB.Zꃴ	Z�4sÈz\Z �J[$���*6��:�X?��]��!������Cm>?TX��|����Zo��tU6%����?�A�k��0�\r���f�������\"^W(\"��Xz��]:�|���.�s�~W���Y���@���=5H�ە�B�\0&�C�|�z��3�x�7/��b��}}lE���&U��}��bs9�oیsh�\"~MZ��؉��e;��b�1�q��_�9V��M�p��`�8�0Ek޹Bʟ$3��[*i�\"kG�o��������6䑌֣���6��ّS\r��6����4��h؀;^E9j�	B5���qA_<�\'����5C��.��A���u���O�u!#�َnw��bHP]`=�Br�>+x��4�<M�Ԭj2\'K�\\�SZ�/Ԣ��|$��VI��QT�@x��=�D�e$���O��#��ӏF�����_3�m�{g��\n�[?�> �c3Biϭ�zo�P��#:�\0��=oȚ�MvzI�Ά3���}�f�u����441�if����ƕ�4ߩ�o��njI�����[��#��6�g�S`���>��nQ��x�ay�����e�\Z}\0\0YK�Dm+RC�����1�����[^n���O\n��Hp)�/	vK�l�V���\"�W�&E��)��,���u���s��)e�E8�\'��X;_��G��V��s�V�٬V��\Z�m,��J���e��,��F��wC�0�_g0�꿐���o7�T�0:I �W�������{[���ˊ�E�\n��N���Cwk�\\Q�����(�¦�4��H��¦����;��	� �1�J޳�!��NyX�|^�+�zŬ*��?ݤ�J}/���1�≖�����O�\"!y�×���v��/�I�5�z��Jy�`Y�ߩj��h�M��W��{���[5yʮ�y\\N��e��@D��?:-h$ܷ�w��\'�aG��\rj!�t}�J�����Q��!kF��ጐ�8�2��bz|:\\��ޭ�$�\\,_ڝ(��Ŝ�A���v�*�!�d��g1��o`��y�V���u\Z0��j\n��_�����~���	=֑�p�\Z!�\"!�1@��f��	&v*BB����]�iJ�gƾ�\r;�1���c��nQ���*��Lh�$ o>���T֢\rg9#���a��k�8 �\"s��^p�z�fY7��s�c���u7�@�lGq��I��L�w�=;x:�3�U��������;^��>����%��t�֏�t8cd����7���r��mU���EfW�s��`g�>)���\n}��b��p�&7e�a1�#~L@��~\\J%���h^�<m��al��?z\ZE\Ze���U�AY_����ע�N�NÊgĤ�S$BJK�ә��y����.ѪV��㥉/��.j�p��E�p)�=�R���Nj�ޭ�j�(X�=�d�����}rU�>^����*F������9�R\'��������2u{H�\Z�0X=�4�O������u+��K�⚊Y���h�Ð߼�0�X�нh:��Ä|WK�¾v2x����,�w8|w\"͠;k�2\r��D8}ȴbk��$���զ}Rz���c_���-���̪�3`��8���Q4��H袋Ko��0[�sd)�ٟ	VQQ�[��D�	�313�h��e�9�M3��:�i��$�28ʴi��k��0�\r���f��q��Tsh�UԠ0+Q2��H�`*gI���E�}Ǩ�|Rj�2��=����Gv�5Oٽ>b�s����c\\p��!Y�q^�Di���O���S��M� �sy��\r��W��м2����j}Z�ȇt�����\n����>j�Yu�������8͜*�����\"O��e��S��GD[��2F�\nd�,�1l\0[�n��%wl�;YXY�$Y6}ʽ*l�jO��F���3u�o��W5�(�Zg����Um�k�ā������]���&��s�ϼ_+UZ�<F<v<Zk�}C��ٟ��v�LT�ĩBd�>�;$M��/�4�_�B�g��Xs��g��m� �]�go^�G�e��N�}a���_���og9�$�1,�^��򎀉��Q)�Q�����L�P8�p\n}$V&��]�~��ե�Nc�l�6\'�ۓ��t�U�A���u��]��8`.&kZR{\n�_�1����=�b���ؿ�|�K�~�^J�5:�4>x_�������\'z2�}��ˀ����d��S��|����Y+�(S=����1�wc��\Zg��t�8㱞���a�����c���d%lr9�Ȇ��A�\0����\Z$n��@��G�BNc%K�B�Ln[`.F�v<�%^��]���_��Fo�۶e*�\n���&�����_	.���JL��+�vR�,}��0�N�{�.n!����C��\ZN�[��K�<*#��Y�Ļ�P���E�Q|�=�E����v�% +\ZN��u#�+�]��q\'�3���ukJ�귥x��eT=5�U�@�02����Km��>Ɇ`���\'tﮎ��[�\'���l1�KjW���B��?�֭e\\n�}Fc\"��M*K�=�e�>���p��6�k\0i�?c|v�K�v	)��8���_����2�U*S;�(�&�c_%ہxU���x�{��2_?7ؔF��]�ϸY��Cra;X�����3I@۟���ͬq\'e\Z���7c�l���t�D�e �Ȋ�h&�O&��\0�?�H�m)So����`\"���r}d_l�����\nX�վ8�J\n�{�]�DM�aw7����k_Kz@7�ֱxd�啞��\ZP�\'Jl�� /&�Q2ek-�{��P̎�qE0=�+�,�=�������	8�8�3R��b,�	r�B��dnW���h\"��]�y�!OV8�q\"|���2�_D�_�.��|l��^T�p�O\'�b�߁��4쇡,�2�1۟#�a�s\nP{n)�ٹmVbqTWѭ�.\\��̍���?�i���T�4�(P��$�8���C��8��.��x��2$�͊�����64��p�P��U��狇F0�g�P[N���%�J?F�x�!�:axS�<{\rY���rq�p�9K|00������|$9q��\Z�����ı�_=��k-��O���\nő�-C�Ѷ0�\r��o�Mܕ�!��<����ٯ\Z�\n�Lq\\��[H��ѯ	��k�8�l[0�9٢HP���w�+�R3ꥩ�fr=�e�����%��V�8t�z��q���Qi7a�>��:����f��a$�zE����%z������=w7W?9�#N�+���J�6>\"�(�%���j�k��0�\r���f��&_��r˓�_?R2zP�\"�h�\Z�$��(k�/6\Z��@�fj�+��<\r��1E��\\�N\'F��z*��L�O��W��E��rL\n��_ROq	������~<�6VOE�)Q�ۿ�����t�*�Ϯ�i�By�F&�$��\\~�\'e�fBp��]�.��Ye�|��yc2��u��ǎ��Q�j��؊�i�o\"�xE���6d�H!����l�F����(4?�]\"�	��+\r@�&�@AotŢ����M�������;D����0��C)õ����O�)h�\Z����Fĭ��}+�s<~Ʃbе�����i\'M^�����sU�Ky�R�f���I�pS񍡫���$I��(ع���� �$<\Z���&F�p�3��ѣ#��\0h�F�y7z�㵘cTh:��L�j\nxs�@<��-�MNM���?���Xk[�Lc��.\"ǋ�ۃ`M�}�?+5����џӅ$����Ai�agD��q�p=[�ۀ��R�~�ud�#Y2_��ʟ�g�������X_$��:\n��\Z������ӬM���TR�n�٨?�kgڭU1&B�I&ii�oRx�������고�X���=���́��7ς�~\Z���p=\'�\Z�~�$OI.�v&w�Z��M�1�zK7��J����U\\?�%#R�U�1�esRQ�n��4�Z���~�Z�Ms��u���HY$L6���9&v�)7�=��@��#�7U����\nZ�!S�ܷV3�}�3�*�$�6�<��|;�/R�����(��CY��<��x�XZ~o�j����+�ږޒ����X#�����l^�zV�x������������\"B���9�T@Q�B��/\ZY��kp]<ZK\\eVj \Z˞�ށ�eI�y	��o�b[������g\"v�g���uu�{7\\��:���ïhl�Z^>X@�+�a|u��\0ð8����n1<#�J�( s���P�Dn.\r!vO�՟�\r��#�l퐏	%�]8�����X��:g�\0KlJN��QK���\\�@p�b�f�t��I���Q�U�|u�����sJ��{��K	�^2xߦ�7�˖;Y��=��?��s���H�~\'�~T2�Z�#�*�ern[�+	D���@\\�\"	6��v}���a� \0ch�<Ht�b�e\\�+X>�aD�����x� 3l��7\\��L�������!u:�e����H�K@H��\ra6\r���d9K�8aZ2?��	 ','8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sample_message_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_variable`
--

DROP TABLE IF EXISTS `script_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_variable` (
  `script_variable_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `scope` varchar(10) DEFAULT NULL,
  `channel_id` varchar(255) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`script_variable_id`),
  KEY `idx_script_variable_channel_id` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_variable`
--

LOCK TABLES `script_variable` WRITE;
/*!40000 ALTER TABLE `script_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_variable_audit`
--

DROP TABLE IF EXISTS `script_variable_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_variable_audit` (
  `script_variable_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` varchar(10) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `revision_modified` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`script_variable_id`,`revision`),
  KEY `FKsyfgkdldpsy23aeyx0q8djyub` (`revision`),
  KEY `idx_script_variable_audit_channel_id` (`channel_id`,`revision`),
  CONSTRAINT `FKsyfgkdldpsy23aeyx0q8djyub` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_variable_audit`
--

LOCK TABLES `script_variable_audit` WRITE;
/*!40000 ALTER TABLE `script_variable_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_variable_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_license`
--

DROP TABLE IF EXISTS `secure_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_license` (
  `license_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `invalid_reason` varchar(255) DEFAULT NULL,
  `license_group_id` varchar(32) DEFAULT NULL,
  `license_key` longblob DEFAULT NULL,
  `license_notes` varchar(255) DEFAULT NULL,
  `md5_customer_id` varchar(255) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`license_id`),
  KEY `idx_license_reference_id` (`reference_id`),
  KEY `FK1qjg5yjq7qku9hoym4a51qk71` (`license_group_id`),
  CONSTRAINT `FK1qjg5yjq7qku9hoym4a51qk71` FOREIGN KEY (`license_group_id`) REFERENCES `secure_license_zone` (`license_group_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_license`
--

LOCK TABLES `secure_license` WRITE;
/*!40000 ALTER TABLE `secure_license` DISABLE KEYS */;
INSERT INTO `secure_license` VALUES ('8a0380ca872dfb8c01872e7a0a0a0002','admin','2023-03-29 17:46:02.634000','sys','2024-04-29 21:11:03.315000',15,NULL,NULL,'��@�!#x�̤��«Vi���� ��	�_&����Pyۇ�~�ш؝6�e�pXm�6���A���C�k��uM����ch��飿ie��r���;fP��<�u�N\n\\�,B�!��>iSz�py[��j��w2�?�@�������!9����w	aLw���@�����,���m�H�H#4Kw�Q�(4��8Z4=��Q�h6�h.}�g��u.����`��U�52eI�*n��N(��b_������b%�dfN3�\'،���p�qϽl��il[�5�d���)�ظ�\r>t\\5@����L�\'�m�N��@��-�x�����M\r�ŏ��r�ra;�� �r�v���*ٔ2�:x4��l������FɨWDN~K�S��G�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0','\0');
/*!40000 ALTER TABLE `secure_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_license_audit`
--

DROP TABLE IF EXISTS `secure_license_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_license_audit` (
  `license_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `invalid_reason` varchar(255) DEFAULT NULL,
  `license_group_id` varchar(32) DEFAULT NULL,
  `license_key` longblob DEFAULT NULL,
  `license_notes` varchar(255) DEFAULT NULL,
  `md5_customer_id` varchar(255) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`license_id`,`revision`),
  KEY `FKceorgllbiyn6hvcdsgs8j72tw` (`revision`),
  CONSTRAINT `FKceorgllbiyn6hvcdsgs8j72tw` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_license_audit`
--

LOCK TABLES `secure_license_audit` WRITE;
/*!40000 ALTER TABLE `secure_license_audit` DISABLE KEYS */;
INSERT INTO `secure_license_audit` VALUES ('8a0380ca872dfb8c01872e7a0a0a0002',7,0,'admin','2023-03-29 17:46:02.634000',NULL,NULL,'��\nKy��R��J?3���ݰ�+�(ϸ3u�(�^7�rdFFo��[!�z*Q\0VSMѿ�a�wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I_�����_�dze���MI�Ga��τ2���Ӌ','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',8,1,'sys','2023-03-30 05:03:24.343000',NULL,NULL,'��\nKy��R��J?3���ݰ�+�(ϸ3u�(�^7�rdFFo��[!�z*Q\0VSMѿ�a�wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',9,1,'sys','2023-04-25 14:59:38.207000',NULL,NULL,'��\nKy��R��J?3>0�f]>�L@��_U����G�d�|7�vٍh���\\u=jU���E����+wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',10,1,'sys','2023-05-01 14:10:20.065000',NULL,NULL,'��\nKy��R��J?3v�~�]l$���,���fa��:{�A�\0U������҇z�p��\rwnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',11,1,'sys','2023-05-16 06:44:09.186000',NULL,NULL,'��\nKy��R��J?38��w��PL�z\0Δ�WC�^��\'_��A��@\n�M�:Y.[ �Vr-#\Z�wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',13,1,'sys','2023-06-05 15:51:30.172000',NULL,NULL,'��\nKy��R��J?3�:V�鹎���\n2A����7�M�˖H\nr%C��`��\ru���0\"&(/wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',15,1,'sys','2023-06-19 18:29:53.562000',NULL,NULL,'��\nKy��R��J?3>0�f]>�L@��_U����G�d�|7�vٍh���\\u=jU���E����+wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',20,1,'sys','2023-08-23 20:18:10.416000',NULL,NULL,'��\nKy��R��J?3�:V�鹎���\n2A����7�M�˖H\nr%C��`��\ru���0\"&(/wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',26,1,'sys','2023-11-01 21:47:43.041000',NULL,NULL,'��\nKy��R��J?3\Z��E�ϽCyD�ެ�@6�k���P���㍬W���ܚT\'����wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',29,1,'sys','2024-03-15 22:32:21.968000',NULL,NULL,'��\nKy��R��J?38��w��PL�z\0Δ�WC�^��\'_��A��@\n�M�:Y.[ �Vr-#\Z�wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0',NULL),('8a0380ca872dfb8c01872e7a0a0a0002',31,1,'sys','2024-03-19 23:44:53.182000',NULL,NULL,'��\nKy��R��J?3�����#��gӦ�8�G*X���g�t��F�Ov�ak��Ic�)lwnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0','\0'),('8a0380ca872dfb8c01872e7a0a0a0002',35,1,'sys','2024-03-23 03:11:30.924000',NULL,NULL,'��\nKy��R��J?3$�����_�\n¨��u�%�~�A�)�BB��(+���*��hb\'wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0','\0'),('8a0380ca872dfb8c01872e7a0a0a0002',44,1,'sys','2024-04-23 04:53:37.764000',NULL,NULL,'��\nKy��R��J?3�:V�鹎���\n2A����7�M�˖H\nr%C��`��\ru���0\"&(/wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0','\0'),('8a0380ca872dfb8c01872e7a0a0a0002',45,1,'sys','2024-04-24 05:27:50.363000',NULL,NULL,'��\nKy��R��J?3G|�y��uǭ��8}}W�ĭw�A/�{L��Ad��%���%���c�wnc�F]�X�b��o���\0�w�V^z�D��į`4���s�D1,+�U����T=r�#�b��O�(*��SX�yoV�|�!?{�]�.���X���y��vZ��\"��:��0^�3���I�p�1��3Sɩ�^��ݏ�����swG��](Pgh�%��]�{�]�\Zf�ҝi��Öl�|;[5���j/��	\\<������u�=,C�jt46H�*u�z���lƧ�$|mR��hy��d�aB+����^�I���I�E[M��>��Q]Qb4Ĉd�i4�������X�]J�:��rx+p�(�sd\"4\n;�{v�CD/��Ԯ��B�\"�a/5��BeTc�x/��|x%�Sz��dm��^�*<H�M�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0','\0'),('8a0380ca872dfb8c01872e7a0a0a0002',46,1,'sys','2024-04-29 21:11:03.315000',NULL,NULL,'��@�!#x�̤��«Vi���� ��	�_&����Pyۇ�~�ш؝6�e�pXm�6���A���C�k��uM����ch��飿ie��r���;fP��<�u�N\n\\�,B�!��>iSz�py[��j��w2�?�@�������!9����w	aLw���@�����,���m�H�H#4Kw�Q�(4��8Z4=��Q�h6�h.}�g��u.����`��U�52eI�*n��N(��b_������b%�dfN3�\'،���p�qϽl��il[�5�d���)�ظ�\r>t\\5@����L�\'�m�N��@��-�x�����M\r�ŏ��r�ra;�� �r�v���*ٔ2�:x4��l������FɨWDN~K�S��G�','','04ef22837026165dfe09ca33a0cdac06','8a0380ca872dfb8c01872e7a0a0a0002','\0','\0');
/*!40000 ALTER TABLE `secure_license_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_license_zone`
--

DROP TABLE IF EXISTS `secure_license_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_license_zone` (
  `license_group_Id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`license_group_Id`),
  KEY `idx_license_group_reference_id` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_license_zone`
--

LOCK TABLES `secure_license_zone` WRITE;
/*!40000 ALTER TABLE `secure_license_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `secure_license_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_license_zone_audit`
--

DROP TABLE IF EXISTS `secure_license_zone_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_license_zone_audit` (
  `license_group_Id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`license_group_Id`,`revision`),
  KEY `FK85lyiiiwasy0yh00n9jyakqfm` (`revision`),
  CONSTRAINT `FK85lyiiiwasy0yh00n9jyakqfm` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_license_zone_audit`
--

LOCK TABLES `secure_license_zone_audit` WRITE;
/*!40000 ALTER TABLE `secure_license_zone_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `secure_license_zone_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_license_zone_secure_license_audit`
--

DROP TABLE IF EXISTS `secure_license_zone_secure_license_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_license_zone_secure_license_audit` (
  `revision` int(11) NOT NULL,
  `license_group_id` varchar(32) NOT NULL,
  `license_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`license_group_id`,`license_id`),
  CONSTRAINT `FK568hp42vtcs1qycmhcnjluock` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_license_zone_secure_license_audit`
--

LOCK TABLES `secure_license_zone_secure_license_audit` WRITE;
/*!40000 ALTER TABLE `secure_license_zone_secure_license_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `secure_license_zone_secure_license_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_license_zone_zone_audit`
--

DROP TABLE IF EXISTS `secure_license_zone_zone_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_license_zone_zone_audit` (
  `revision` int(11) NOT NULL,
  `license_group_id` varchar(32) NOT NULL,
  `zone_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`license_group_id`,`zone_id`),
  CONSTRAINT `FKor2j9of1365xd7dik3u38hbjv` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_license_zone_zone_audit`
--

LOCK TABLES `secure_license_zone_zone_audit` WRITE;
/*!40000 ALTER TABLE `secure_license_zone_zone_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `secure_license_zone_zone_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_permission`
--

DROP TABLE IF EXISTS `secure_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_permission` (
  `permission_id` int(11) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permission_name` varchar(60) NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_permission`
--

LOCK TABLES `secure_permission` WRITE;
/*!40000 ALTER TABLE `secure_permission` DISABLE KEYS */;
INSERT INTO `secure_permission` VALUES (1,'sys','2023-03-29 15:28:23.910000','sys','2023-03-29 15:28:23.910000',0,'Access Application','PERMISSION_APP'),(2,'sys','2023-03-29 15:28:23.935000','sys','2023-03-29 15:28:23.935000',0,'Edit system configuration and manage users','PERMISSION_ADMIN');
/*!40000 ALTER TABLE `secure_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_permission_audit`
--

DROP TABLE IF EXISTS `secure_permission_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_permission_audit` (
  `permission_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permission_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`revision`),
  KEY `FKk0owc75uxm3oqh5pvhscddk71` (`revision`),
  CONSTRAINT `FKk0owc75uxm3oqh5pvhscddk71` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_permission_audit`
--

LOCK TABLES `secure_permission_audit` WRITE;
/*!40000 ALTER TABLE `secure_permission_audit` DISABLE KEYS */;
INSERT INTO `secure_permission_audit` VALUES (1,1,0,'sys','2023-03-29 15:28:23.910000','Access Application','PERMISSION_APP'),(2,2,0,'sys','2023-03-29 15:28:23.935000','Edit system configuration and manage users','PERMISSION_ADMIN');
/*!40000 ALTER TABLE `secure_permission_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_user`
--

DROP TABLE IF EXISTS `secure_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_user` (
  `userid` varchar(25) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `days_password_valid` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `invalid_login_attempts` int(11) DEFAULT NULL,
  `last_login_timestamp` datetime(6) DEFAULT NULL,
  `lock_timeout_sec` int(11) DEFAULT NULL,
  `login_password` varchar(360) DEFAULT NULL,
  `login_password_changed` bit(1) DEFAULT NULL,
  `logout_timeout_sec` int(11) DEFAULT NULL,
  `management_api_token` varchar(255) DEFAULT NULL,
  `management_api_user` bit(1) DEFAULT NULL,
  `min_password_strength` varchar(6) DEFAULT NULL,
  `password_change_date` date DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `single_use_password` varchar(360) DEFAULT NULL,
  `single_use_password_timestamp` datetime(6) DEFAULT NULL,
  `temp_password` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `email_verified` bit(1) DEFAULT NULL,
  `use_2fa` bit(1) DEFAULT NULL,
  `email_verification_expired_after` tinyblob DEFAULT NULL,
  `email_verification_passcode` varchar(360) DEFAULT NULL,
  `twofa_passcode` varchar(360) DEFAULT NULL,
  `twofa_expired_after` tinyblob DEFAULT NULL,
  `user_settings` longblob DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_user`
--

LOCK TABLES `secure_user` WRITE;
/*!40000 ALTER TABLE `secure_user` DISABLE KEYS */;
INSERT INTO `secure_user` VALUES ('admin','sys','2023-03-29 15:28:24.570000','admin','2024-04-17 22:29:53.155000',8,0,NULL,NULL,'System Administrator',0,'2024-05-01 20:30:37.751000',NULL,'05b76249e94dc130350eff002c251c1a','\0',NULL,NULL,'\0','Medium','2024-04-17',NULL,NULL,NULL,'\0','','','\0','\0',NULL,NULL,NULL,NULL,'{\"qieEditorFontSize\":\"10pt\",\"testPanelPlaySpeed\":\"1\",\"testPanelShowTree\":\"false\",\"allowLoadThemeFromCookies\":\"false\",\"enableLiveAutoComplete\":\"true\",\"popupMaximized\":\"true\",\"qieEditorLineHeight\":\"1.2\",\"testPanelStepMappings\":\"true\",\"navPanelExpanded\":\"true\",\"isTextEditorNodeTreeVisible\":\"true\",\"qieEditorFont\":\"Courier New\",\"enableAutoComplete\":\"true\"}');
/*!40000 ALTER TABLE `secure_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_user_audit`
--

DROP TABLE IF EXISTS `secure_user_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_user_audit` (
  `userid` varchar(25) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `days_password_valid` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `invalid_login_attempts` int(11) DEFAULT NULL,
  `last_login_timestamp` datetime(6) DEFAULT NULL,
  `lock_timeout_sec` int(11) DEFAULT NULL,
  `login_password_changed` bit(1) DEFAULT NULL,
  `logout_timeout_sec` int(11) DEFAULT NULL,
  `management_api_token` varchar(255) DEFAULT NULL,
  `management_api_user` bit(1) DEFAULT NULL,
  `min_password_strength` varchar(6) DEFAULT NULL,
  `password_change_date` date DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `temp_password` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `email_verified` bit(1) DEFAULT NULL,
  `use_2fa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`userid`,`revision`),
  KEY `FKqlvfpqsl3evmuox8x022fjj9i` (`revision`),
  CONSTRAINT `FKqlvfpqsl3evmuox8x022fjj9i` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_user_audit`
--

LOCK TABLES `secure_user_audit` WRITE;
/*!40000 ALTER TABLE `secure_user_audit` DISABLE KEYS */;
INSERT INTO `secure_user_audit` VALUES ('admin',3,0,'sys','2023-03-29 15:28:24.677000',0,NULL,NULL,'System Administrator',0,NULL,NULL,'\0',NULL,NULL,'\0','Medium','2023-03-29',NULL,'','','\0',NULL,NULL),('admin',4,1,'admin','2023-03-29 15:29:29.800000',0,NULL,NULL,'System Administrator',0,'2023-03-29 15:28:58.000000',NULL,'',NULL,NULL,'\0','Medium','2023-03-29',NULL,'\0','','\0',NULL,NULL),('admin',32,1,'sys','2024-03-19 23:46:43.765000',0,NULL,NULL,'System Administrator',0,'2024-03-19 23:44:37.300000',NULL,'\0',NULL,NULL,'\0','Medium','2023-03-29',NULL,'\0','','\0','\0','\0'),('admin',33,1,'sys','2024-03-19 23:47:11.437000',0,NULL,'arnejr@paulsenitsolutions.com','System Administrator',0,'2024-03-19 23:44:37.300000',NULL,'\0',NULL,NULL,'\0','Medium','2023-03-29',NULL,'\0','','\0','','\0'),('admin',34,1,'admin','2024-03-19 23:47:13.461000',0,'Integrator-of-the-month','arnejr@paulsenitsolutions.com','System Administrator',0,'2024-03-19 23:44:37.300000',NULL,'\0',NULL,NULL,'\0','Medium','2023-03-29','925-465-4115','\0','\0','\0','','\0'),('admin',37,1,'admin','2024-04-17 22:29:53.155000',0,NULL,NULL,'System Administrator',0,NULL,NULL,'\0',NULL,NULL,'\0','Medium','2024-04-17',NULL,'\0','','','\0','\0');
/*!40000 ALTER TABLE `secure_user_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_user_oldpass`
--

DROP TABLE IF EXISTS `secure_user_oldpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_user_oldpass` (
  `oldpass_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `old_password` varchar(360) NOT NULL,
  `userid` varchar(25) NOT NULL,
  PRIMARY KEY (`oldpass_id`),
  KEY `idx_secure_user_oldpass_userid` (`userid`),
  CONSTRAINT `FKhwrgfisw39x5ieb9wgh2sllg` FOREIGN KEY (`userid`) REFERENCES `secure_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_user_oldpass`
--

LOCK TABLES `secure_user_oldpass` WRITE;
/*!40000 ALTER TABLE `secure_user_oldpass` DISABLE KEYS */;
/*!40000 ALTER TABLE `secure_user_oldpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_user_permission`
--

DROP TABLE IF EXISTS `secure_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_user_permission` (
  `userid` varchar(25) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`permission_id`),
  KEY `FKita0gq1lmnfkdca998nloqc9k` (`permission_id`),
  CONSTRAINT `FK6pkes5ni5tdd8l4tj0nx0ww6k` FOREIGN KEY (`userid`) REFERENCES `secure_user` (`userid`),
  CONSTRAINT `FKita0gq1lmnfkdca998nloqc9k` FOREIGN KEY (`permission_id`) REFERENCES `secure_permission` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_user_permission`
--

LOCK TABLES `secure_user_permission` WRITE;
/*!40000 ALTER TABLE `secure_user_permission` DISABLE KEYS */;
INSERT INTO `secure_user_permission` VALUES ('admin',1),('admin',2);
/*!40000 ALTER TABLE `secure_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_user_permission_audit`
--

DROP TABLE IF EXISTS `secure_user_permission_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_user_permission_audit` (
  `revision` int(11) NOT NULL,
  `userid` varchar(25) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`userid`,`permission_id`),
  CONSTRAINT `FKqd4ghdoooosobujc5s3hyqbje` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_user_permission_audit`
--

LOCK TABLES `secure_user_permission_audit` WRITE;
/*!40000 ALTER TABLE `secure_user_permission_audit` DISABLE KEYS */;
INSERT INTO `secure_user_permission_audit` VALUES (3,'admin',1,0),(3,'admin',2,0);
/*!40000 ALTER TABLE `secure_user_permission_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_user_secure_zone_permission_audit`
--

DROP TABLE IF EXISTS `secure_user_secure_zone_permission_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_user_secure_zone_permission_audit` (
  `revision` int(11) NOT NULL,
  `userid` varchar(25) NOT NULL,
  `zone_permission_id` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`userid`,`zone_permission_id`),
  CONSTRAINT `FKf3hj4nkdrookuioii6tx2bg4k` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_user_secure_zone_permission_audit`
--

LOCK TABLES `secure_user_secure_zone_permission_audit` WRITE;
/*!40000 ALTER TABLE `secure_user_secure_zone_permission_audit` DISABLE KEYS */;
INSERT INTO `secure_user_secure_zone_permission_audit` VALUES (3,'admin',1,0),(3,'admin',2,0),(37,'admin',1,2),(37,'admin',2,2),(37,'admin',3,0),(37,'admin',4,0),(37,'admin',5,0);
/*!40000 ALTER TABLE `secure_user_secure_zone_permission_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_zone_permission`
--

DROP TABLE IF EXISTS `secure_zone_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_zone_permission` (
  `zone_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `alert_flag` bit(1) DEFAULT NULL,
  `edit_flag` bit(1) DEFAULT NULL,
  `error_flag` bit(1) DEFAULT NULL,
  `manage_flag` bit(1) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  `view_flag` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`zone_permission_id`),
  KEY `idx_zone_id_userid` (`zone_id`,`userid`),
  KEY `idx_secure_zone_permission_userid` (`userid`),
  CONSTRAINT `FK3gxspdfuyv2okudhxkaay5iij` FOREIGN KEY (`userid`) REFERENCES `secure_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_zone_permission`
--

LOCK TABLES `secure_zone_permission` WRITE;
/*!40000 ALTER TABLE `secure_zone_permission` DISABLE KEYS */;
INSERT INTO `secure_zone_permission` VALUES (3,'admin','2024-04-17 22:29:53.120000','admin','2024-04-17 22:29:53.120000',0,'','','\0','\0','admin','','8a0380ca872dfb8c01872dfc081f0000','\0'),(4,'admin','2024-04-17 22:29:53.123000','admin','2024-04-17 22:29:53.123000',0,'','','\0','','admin','','8a0380ca872dfb8c01872dfc08310001','\0'),(5,'admin','2024-04-17 22:29:53.125000','admin','2024-04-17 22:29:53.125000',0,'','','\0','','admin','','8a0380938e682ec5018eee2e43340000','\0');
/*!40000 ALTER TABLE `secure_zone_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure_zone_permission_audit`
--

DROP TABLE IF EXISTS `secure_zone_permission_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_zone_permission_audit` (
  `zone_permission_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `alert_flag` bit(1) DEFAULT NULL,
  `edit_flag` bit(1) DEFAULT NULL,
  `error_flag` bit(1) DEFAULT NULL,
  `manage_flag` bit(1) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  `view_flag` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`zone_permission_id`,`revision`),
  KEY `FKip0wslw1q5jv6fp1x1fxtrodn` (`revision`),
  CONSTRAINT `FKip0wslw1q5jv6fp1x1fxtrodn` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure_zone_permission_audit`
--

LOCK TABLES `secure_zone_permission_audit` WRITE;
/*!40000 ALTER TABLE `secure_zone_permission_audit` DISABLE KEYS */;
INSERT INTO `secure_zone_permission_audit` VALUES (1,3,0,'sys','2023-03-29 15:28:24.677000','','','\0','\0',NULL,'','8a0380ca872dfb8c01872dfc081f0000','\0'),(1,34,1,'admin','2024-03-19 23:47:13.461000','','','\0','\0',NULL,'','8a0380ca872dfb8c01872dfc081f0000',''),(1,37,2,'admin','2024-03-19 23:47:13.461000','','','\0','\0',NULL,'','8a0380ca872dfb8c01872dfc081f0000',''),(2,3,0,'sys','2023-03-29 15:28:24.675000','','','\0','',NULL,'','8a0380ca872dfb8c01872dfc08310001',''),(2,34,1,'admin','2024-03-19 23:47:13.461000','','','\0','',NULL,'','8a0380ca872dfb8c01872dfc08310001','\0'),(2,37,2,'admin','2024-03-19 23:47:13.461000','','','\0','',NULL,'','8a0380ca872dfb8c01872dfc08310001','\0'),(3,37,0,'admin','2024-04-17 22:29:53.120000','','','\0','\0',NULL,'','8a0380ca872dfb8c01872dfc081f0000','\0'),(4,37,0,'admin','2024-04-17 22:29:53.123000','','','\0','',NULL,'','8a0380ca872dfb8c01872dfc08310001','\0'),(5,37,0,'admin','2024-04-17 22:29:53.125000','','','\0','',NULL,'','8a0380938e682ec5018eee2e43340000','\0');
/*!40000 ALTER TABLE `secure_zone_permission_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_db_query_parameter`
--

DROP TABLE IF EXISTS `source_db_query_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_db_query_parameter` (
  `db_query_parameter_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `list_order` int(11) NOT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) NOT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`),
  KEY `idx_db_query_parameter_channel_id` (`channel_id`),
  CONSTRAINT `FK1egpvagvvwb8i0ac15yykachy` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_db_query_parameter`
--

LOCK TABLES `source_db_query_parameter` WRITE;
/*!40000 ALTER TABLE `source_db_query_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_db_query_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_db_query_parameter_audit`
--

DROP TABLE IF EXISTS `source_db_query_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_db_query_parameter_audit` (
  `db_query_parameter_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`,`revision`),
  KEY `FKt3xtywf2o9o8vd0jwooxgus4y` (`revision`),
  CONSTRAINT `FKt3xtywf2o9o8vd0jwooxgus4y` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_db_query_parameter_audit`
--

LOCK TABLES `source_db_query_parameter_audit` WRITE;
/*!40000 ALTER TABLE `source_db_query_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_db_query_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_update_db_query_parameter`
--

DROP TABLE IF EXISTS `source_update_db_query_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_update_db_query_parameter` (
  `db_query_parameter_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `list_order` int(11) NOT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) NOT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`),
  KEY `idx_update_db_query_parameter_channel_id` (`channel_id`),
  CONSTRAINT `FK2p5djb5l7a27s9494hhkgg8m6` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_update_db_query_parameter`
--

LOCK TABLES `source_update_db_query_parameter` WRITE;
/*!40000 ALTER TABLE `source_update_db_query_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_update_db_query_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_update_db_query_parameter_audit`
--

DROP TABLE IF EXISTS `source_update_db_query_parameter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_update_db_query_parameter_audit` (
  `db_query_parameter_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `parameter_name` longblob DEFAULT NULL,
  `parameter_type` int(11) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `parameter_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_query_parameter_id`,`revision`),
  KEY `FK752esi90g4pg0clq3p8wxgqdr` (`revision`),
  CONSTRAINT `FK752esi90g4pg0clq3p8wxgqdr` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_update_db_query_parameter_audit`
--

LOCK TABLES `source_update_db_query_parameter_audit` WRITE;
/*!40000 ALTER TABLE `source_update_db_query_parameter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_update_db_query_parameter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssl_certificate`
--

DROP TABLE IF EXISTS `ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_certificate` (
  `ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` longblob DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `modulus_md5` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `suppress_notification` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `certificate_blob` longblob DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ssl_certificate_id`),
  UNIQUE KEY `UKlul867jku4gisugmyr2cdj3bk` (`zone_id`,`name`),
  KEY `idx_ssl_certificate_reference_id` (`reference_id`),
  KEY `FKg74hc6jhmm9vgwcsqhuksffus` (`package_id`),
  CONSTRAINT `FKg74hc6jhmm9vgwcsqhuksffus` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_certificate`
--

LOCK TABLES `ssl_certificate` WRITE;
/*!40000 ALTER TABLE `ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssl_certificate_audit`
--

DROP TABLE IF EXISTS `ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_certificate_audit` (
  `ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `modulus_md5` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `suppress_notification` bit(1) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `certificate_blob` longblob DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ssl_certificate_id`,`revision`),
  KEY `FK3g5uw5kj53tbx51qv4k7d0guv` (`revision`),
  CONSTRAINT `FK3g5uw5kj53tbx51qv4k7d0guv` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_certificate_audit`
--

LOCK TABLES `ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssl_key`
--

DROP TABLE IF EXISTS `ssl_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_key` (
  `ssl_key_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `description` longblob DEFAULT NULL,
  `modulus_md5` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `packed_key_blob` longblob DEFAULT NULL,
  `packed_password` tinyblob DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ssl_key_id`),
  UNIQUE KEY `UK7c9u5d04dudklx25mjaomuqit` (`zone_id`,`name`),
  KEY `idx_ssl_key_reference_id` (`reference_id`),
  KEY `FKdbipxdpa0pbum0ver337et0nx` (`package_id`),
  CONSTRAINT `FKdbipxdpa0pbum0ver337et0nx` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_key`
--

LOCK TABLES `ssl_key` WRITE;
/*!40000 ALTER TABLE `ssl_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssl_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssl_key_audit`
--

DROP TABLE IF EXISTS `ssl_key_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_key_audit` (
  `ssl_key_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `modulus_md5` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `packed_key_blob` longblob DEFAULT NULL,
  `packed_password` tinyblob DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ssl_key_id`,`revision`),
  KEY `FKpsbast4mus4cuu1onxbf3o6tx` (`revision`),
  CONSTRAINT `FKpsbast4mus4cuu1onxbf3o6tx` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_key_audit`
--

LOCK TABLES `ssl_key_audit` WRITE;
/*!40000 ALTER TABLE `ssl_key_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssl_key_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config`
--

DROP TABLE IF EXISTS `system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config` (
  `profile_id` varchar(5) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `alert_interval` int(11) DEFAULT NULL,
  `alert_on_first_error` bit(1) DEFAULT NULL,
  `alternate_config_backup_path` varchar(99) DEFAULT NULL,
  `auto_download_updates` bit(1) DEFAULT NULL,
  `auto_install_cron` varchar(1024) DEFAULT NULL,
  `auto_install_updates` bit(1) DEFAULT NULL,
  `auto_start_channels` bit(1) DEFAULT NULL,
  `backup_to_qie_home` bit(1) DEFAULT NULL,
  `completion_backlog_throttle_count` int(11) DEFAULT NULL,
  `completion_threads_per_gig` int(11) DEFAULT NULL,
  `daily_count_emails` bit(1) DEFAULT NULL,
  `database_migration_document` longblob DEFAULT NULL,
  `days_password_valid` int(11) NOT NULL,
  `days_to_retain_errors` int(11) DEFAULT NULL,
  `days_to_retain` int(11) DEFAULT NULL,
  `default_port_start` int(11) DEFAULT NULL,
  `dicom_log_level` varchar(5) DEFAULT NULL,
  `email_client_stacktrace` bit(1) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `error_form_management_base_url` longblob DEFAULT NULL,
  `errors_alert_interval` int(11) DEFAULT NULL,
  `european_style_date` bit(1) DEFAULT NULL,
  `http_non_proxy_hosts` varchar(255) DEFAULT NULL,
  `http_proxy_host` varchar(255) DEFAULT NULL,
  `http_proxy_port` int(11) DEFAULT NULL,
  `inbound_critical` int(11) DEFAULT NULL,
  `inbound_warning` int(11) DEFAULT NULL,
  `include_zero_count_channels_in_daily_count_emails` bit(1) DEFAULT NULL,
  `invalid_attempts_before_lock` int(11) DEFAULT NULL,
  `iso_8583_module_enabled` bit(1) DEFAULT NULL,
  `last_check_in` bigint(20) DEFAULT NULL,
  `last_cloud_check_in` bigint(20) DEFAULT NULL,
  `last_cloud_ping` bigint(20) DEFAULT NULL,
  `last_temp_id` bigint(20) DEFAULT NULL,
  `default_timeout_sec` int(11) DEFAULT NULL,
  `logger_threads_per_gig` int(11) DEFAULT NULL,
  `logout_timeout_sec` int(11) DEFAULT NULL,
  `max_search_results_limit` int(11) DEFAULT NULL,
  `message_errors_until_shutdown` int(11) DEFAULT NULL,
  `min_completion_threads` int(11) DEFAULT NULL,
  `min_logger_threads` int(11) DEFAULT NULL,
  `min_password_strength` varchar(6) NOT NULL,
  `min_processor_threads` int(11) DEFAULT NULL,
  `number_config_backups` int(11) DEFAULT NULL,
  `outbound_critical` int(11) DEFAULT NULL,
  `outbound_warning` int(11) DEFAULT NULL,
  `pause_after_error` int(11) DEFAULT NULL,
  `polite_purge_thread_count` int(11) DEFAULT NULL,
  `processors_threads_per_gig` int(11) DEFAULT NULL,
  `purge_system_log` bit(1) DEFAULT NULL,
  `purge_time` datetime(6) DEFAULT NULL,
  `receive_errors_until_shutdown` int(11) DEFAULT NULL,
  `release_type` varchar(10) DEFAULT NULL,
  `search_thread_count` int(11) DEFAULT NULL,
  `send_critical_errors` bit(1) DEFAULT NULL,
  `send_error_limit` int(11) DEFAULT NULL,
  `send_errors_until_shutdown` int(11) DEFAULT NULL,
  `sftp_proxy_host` varchar(255) DEFAULT NULL,
  `sftp_proxy_pass` varchar(255) DEFAULT NULL,
  `sftp_proxy_pass_changed` bit(1) DEFAULT NULL,
  `sftp_proxy_port` int(11) DEFAULT NULL,
  `sftp_proxy_user` varchar(255) DEFAULT NULL,
  `show_client_stacktrace` bit(1) DEFAULT NULL,
  `smtp_enable_tls` bit(1) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `smtp_password_changed` bit(1) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `suppress_alt_config_backup_warning` bit(1) DEFAULT NULL,
  `system_log_level` varchar(5) DEFAULT NULL,
  `system_name` varchar(45) DEFAULT NULL,
  `system_type` varchar(15) DEFAULT NULL,
  `trust_self_signed` bit(1) DEFAULT NULL,
  `use_proxy` bit(1) DEFAULT NULL,
  `use_sftp_proxy` bit(1) DEFAULT NULL,
  `available_qie_build_check_sum` varchar(255) DEFAULT NULL,
  `available_qie_build_file_size` int(11) DEFAULT NULL,
  `available_qie_build_number` int(11) DEFAULT NULL,
  `available_qie_build_version` varchar(255) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `custom_characters` int(11) DEFAULT NULL,
  `custom_lowercase_letters` int(11) DEFAULT NULL,
  `custom_numbers` int(11) DEFAULT NULL,
  `custom_symbols` int(11) DEFAULT NULL,
  `custom_uppercase_letters` int(11) DEFAULT NULL,
  `dicom_storage_path` varchar(255) DEFAULT NULL,
  `enable_2fa` bit(1) DEFAULT NULL,
  `enable_global_alert_email_handler` bit(1) DEFAULT NULL,
  `enable_notify_invalid_login_attempt_threshold` bit(1) DEFAULT NULL,
  `enable_remember_device` bit(1) DEFAULT NULL,
  `global_alert_email_handler_script_encrypted` longblob DEFAULT NULL,
  `notify_invalid_login_attempt_threshold` int(11) DEFAULT NULL,
  `remember_device_duration` int(11) DEFAULT NULL,
  `system_default_theme` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `build_outdated_on` bigint(20) DEFAULT NULL,
  `remember_device_key` tinyblob DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config`
--

LOCK TABLES `system_config` WRITE;
/*!40000 ALTER TABLE `system_config` DISABLE KEYS */;
INSERT INTO `system_config` VALUES ('live','sys','2023-03-29 15:28:24.377000','sys','2024-04-22 15:55:12.923000',30,15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',NULL,0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',1714536478575,NULL,NULL,-4,900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,NULL,'\0',NULL,NULL,'\0','\0',NULL,'','\0',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,'�?o���nw�_JE=!�C%���˿犋�����C�Oa�܂l');
/*!40000 ALTER TABLE `system_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_audit`
--

DROP TABLE IF EXISTS `system_config_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_audit` (
  `profile_id` varchar(5) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `alert_interval` int(11) DEFAULT NULL,
  `alert_on_first_error` bit(1) DEFAULT NULL,
  `alternate_config_backup_path` varchar(99) DEFAULT NULL,
  `auto_download_updates` bit(1) DEFAULT NULL,
  `auto_install_cron` varchar(1024) DEFAULT NULL,
  `auto_install_updates` bit(1) DEFAULT NULL,
  `auto_start_channels` bit(1) DEFAULT NULL,
  `backup_to_qie_home` bit(1) DEFAULT NULL,
  `completion_backlog_throttle_count` int(11) DEFAULT NULL,
  `completion_threads_per_gig` int(11) DEFAULT NULL,
  `daily_count_emails` bit(1) DEFAULT NULL,
  `days_password_valid` int(11) DEFAULT NULL,
  `days_to_retain_errors` int(11) DEFAULT NULL,
  `days_to_retain` int(11) DEFAULT NULL,
  `default_port_start` int(11) DEFAULT NULL,
  `dicom_log_level` varchar(5) DEFAULT NULL,
  `email_client_stacktrace` bit(1) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `error_form_management_base_url` longblob DEFAULT NULL,
  `errors_alert_interval` int(11) DEFAULT NULL,
  `european_style_date` bit(1) DEFAULT NULL,
  `http_non_proxy_hosts` varchar(255) DEFAULT NULL,
  `http_proxy_host` varchar(255) DEFAULT NULL,
  `http_proxy_port` int(11) DEFAULT NULL,
  `inbound_critical` int(11) DEFAULT NULL,
  `inbound_warning` int(11) DEFAULT NULL,
  `include_zero_count_channels_in_daily_count_emails` bit(1) DEFAULT NULL,
  `invalid_attempts_before_lock` int(11) DEFAULT NULL,
  `iso_8583_module_enabled` bit(1) DEFAULT NULL,
  `default_timeout_sec` int(11) DEFAULT NULL,
  `logger_threads_per_gig` int(11) DEFAULT NULL,
  `logout_timeout_sec` int(11) DEFAULT NULL,
  `max_search_results_limit` int(11) DEFAULT NULL,
  `message_errors_until_shutdown` int(11) DEFAULT NULL,
  `min_completion_threads` int(11) DEFAULT NULL,
  `min_logger_threads` int(11) DEFAULT NULL,
  `min_password_strength` varchar(6) DEFAULT NULL,
  `min_processor_threads` int(11) DEFAULT NULL,
  `number_config_backups` int(11) DEFAULT NULL,
  `outbound_critical` int(11) DEFAULT NULL,
  `outbound_warning` int(11) DEFAULT NULL,
  `pause_after_error` int(11) DEFAULT NULL,
  `polite_purge_thread_count` int(11) DEFAULT NULL,
  `processors_threads_per_gig` int(11) DEFAULT NULL,
  `purge_system_log` bit(1) DEFAULT NULL,
  `purge_time` datetime(6) DEFAULT NULL,
  `receive_errors_until_shutdown` int(11) DEFAULT NULL,
  `release_type` varchar(10) DEFAULT NULL,
  `search_thread_count` int(11) DEFAULT NULL,
  `send_critical_errors` bit(1) DEFAULT NULL,
  `send_error_limit` int(11) DEFAULT NULL,
  `send_errors_until_shutdown` int(11) DEFAULT NULL,
  `sftp_proxy_host` varchar(255) DEFAULT NULL,
  `sftp_proxy_pass_changed` bit(1) DEFAULT NULL,
  `sftp_proxy_port` int(11) DEFAULT NULL,
  `sftp_proxy_user` varchar(255) DEFAULT NULL,
  `show_client_stacktrace` bit(1) DEFAULT NULL,
  `smtp_enable_tls` bit(1) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_password_changed` bit(1) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `suppress_alt_config_backup_warning` bit(1) DEFAULT NULL,
  `system_log_level` varchar(5) DEFAULT NULL,
  `system_name` varchar(45) DEFAULT NULL,
  `system_type` varchar(15) DEFAULT NULL,
  `trust_self_signed` bit(1) DEFAULT NULL,
  `use_proxy` bit(1) DEFAULT NULL,
  `use_sftp_proxy` bit(1) DEFAULT NULL,
  `available_qie_build_check_sum` varchar(255) DEFAULT NULL,
  `available_qie_build_file_size` int(11) DEFAULT NULL,
  `available_qie_build_number` int(11) DEFAULT NULL,
  `available_qie_build_version` varchar(255) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `custom_characters` int(11) DEFAULT NULL,
  `custom_lowercase_letters` int(11) DEFAULT NULL,
  `custom_numbers` int(11) DEFAULT NULL,
  `custom_symbols` int(11) DEFAULT NULL,
  `custom_uppercase_letters` int(11) DEFAULT NULL,
  `dicom_storage_path` varchar(255) DEFAULT NULL,
  `enable_2fa` bit(1) DEFAULT NULL,
  `enable_global_alert_email_handler` bit(1) DEFAULT NULL,
  `enable_notify_invalid_login_attempt_threshold` bit(1) DEFAULT NULL,
  `enable_remember_device` bit(1) DEFAULT NULL,
  `global_alert_email_handler_script_encrypted` longblob DEFAULT NULL,
  `notify_invalid_login_attempt_threshold` int(11) DEFAULT NULL,
  `remember_device_duration` int(11) DEFAULT NULL,
  `system_default_theme` longblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `build_outdated_on` bigint(20) DEFAULT NULL,
  `remember_device_key` tinyblob DEFAULT NULL,
  PRIMARY KEY (`profile_id`,`revision`),
  KEY `FKgx7wsqplfat8j3yy01wa7idc` (`revision`),
  CONSTRAINT `FKgx7wsqplfat8j3yy01wa7idc` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_audit`
--

LOCK TABLES `system_config_audit` WRITE;
/*!40000 ALTER TABLE `system_config_audit` DISABLE KEYS */;
INSERT INTO `system_config_audit` VALUES ('live',3,0,'sys','2023-03-29 15:28:24.377000',15,'\0',NULL,'',NULL,'','','',1000,15,'',0,90,14,NULL,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,NULL,5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Production','\0','\0','\0',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',5,1,'admin','2023-03-29 15:31:13.508000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',6,1,'admin','2023-03-29 15:41:46.380000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0',NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',8,1,'sys','2023-03-30 05:03:24.343000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','7bd824e6a75bc265997bbfc25c1fabe2',165358066,16371,'5.23.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',12,1,'sys','2023-05-24 03:44:29.514000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','b5690a99221a357fe49bc3513599196f',168860112,16384,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',14,1,'sys','2023-06-05 15:54:24.504000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','b5690a99221a357fe49bc3513599196f',168860112,16384,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',15,1,'sys','2023-06-19 18:29:53.562000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','e130d0bd708df84fe3afcaa11b1b86fc',159575539,15619,'5.0.50','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',16,1,'sys','2023-06-28 03:33:33.734000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','9e9dbcd7c495d07e64981b66276f066b',168862407,16386,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',17,1,'sys','2023-07-11 04:28:51.228000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','e130d0bd708df84fe3afcaa11b1b86fc',159575539,15619,'5.0.50','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',18,1,'sys','2023-07-12 05:02:37.397000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','37ff8f29925318e5be638c185c8e059d',168864286,16387,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',19,1,'sys','2023-07-13 03:18:21.523000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','1b9a5ca17dc0b2cf4ab4054dae59a772',168864181,16388,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',20,1,'sys','2023-08-23 20:18:10.417000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','90f0fa573b0b929fb2fe0d6aacb099c9',168865940,16391,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',21,1,'sys','2023-08-24 03:20:51.397000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','e130d0bd708df84fe3afcaa11b1b86fc',159575539,15619,'5.0.50','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',22,1,'sys','2023-08-25 05:05:25.450000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','eddc5dee07ac6a60cf9b43a56ced41ca',168865707,16393,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',23,1,'sys','2023-10-19 20:03:32.500000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','78dc68ddf72b806f2660b94dd37d1600',168866016,16394,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',24,1,'admin','2023-10-19 20:34:39.065000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','78dc68ddf72b806f2660b94dd37d1600',168866016,16394,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',25,1,'sys','2023-10-20 03:17:20.633000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','78dc68ddf72b806f2660b94dd37d1600',168866016,16394,'23.2.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',27,1,'sys','2023-12-14 04:14:56.456000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','4a3e107961dbb5a79a57570c1002551f',171208266,16405,'23.4.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',28,1,'sys','2023-12-20 03:50:21.925000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','2fcf7a02cc18308c4695e5f51ad59cec',171209746,16406,'23.4.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',29,1,'sys','2024-03-15 22:32:21.969000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','54e0de74e343fafbcca2155b91678241',171300178,16409,'23.4.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('live',30,1,'sys','2024-03-19 23:43:50.248000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','54e0de74e343fafbcca2155b91678241',171300178,16409,'23.4.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0',NULL,'����`Er�����\'aOU\\2�8����_�b\Z�������C�Oa�܂l'),('live',31,1,'sys','2024-03-19 23:44:53.182000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0',NULL,'����`Er�����\'aOU\\2�8����_�b\Z�������C�Oa�܂l'),('live',36,1,'sys','2024-03-27 04:42:12.926000',15,'\0',NULL,'','0 0 5 * * SAT','\0','','',1000,15,'',0,90,14,20000,NULL,'\0','paulsen.arne@gmail.com',NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',20,'\0',3600,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Beta',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','','smtp.gmail.com','\0',587,'paulsen.arne@gmail.com','\0',NULL,'qie-6597fc57df-k8qqr','Test','\0','\0','\0','66c3fc29f5af11fd17e0074b8c148d4e',175165638,16423,'24.1.1','\0',NULL,NULL,NULL,NULL,NULL,NULL,'\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0',1711491153000,'����`Er�����\'aOU\\2�8����_�b\Z�������C�Oa�܂l'),('live',37,1,'admin','2024-04-17 22:29:53.077000',15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0',NULL,NULL,NULL,NULL,'',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,NULL),('live',38,1,'sys','2024-04-17 22:32:29.640000',15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,NULL),('live',40,1,'sys','2024-04-22 15:49:20.810000',15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,NULL),('live',41,1,'sys','2024-04-22 15:54:07.422000',15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,NULL),('live',42,1,'sys','2024-04-22 15:54:13.042000',15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,NULL),('live',43,1,'sys','2024-04-22 15:55:12.923000',15,'\0',NULL,'','0 0 5 * * SAT','','','',1000,15,'',0,90,14,20000,NULL,'\0',NULL,NULL,10,'\0',NULL,NULL,NULL,100,50,'\0',5,'\0',900,5,3600,5000,-1,10,2,'None',10,30,100,50,5000,10,10,'','1900-01-01 02:00:00.000000',-1,'Production',5,'',-1,-1,NULL,'\0',NULL,NULL,'\0','\0',NULL,'\0',25,NULL,'\0',NULL,'Paulsen Qvera Consulting','Test','\0','\0','\0','4b9a01933321d356b451231afc264224',171299927,16409,'23.4.1','',8,1,1,1,1,NULL,'\0','\0','\0','\0',NULL,3,NULL,NULL,'',NULL,'�?o���nw�_JE=!�C%���˿犋�����C�Oa�܂l');
/*!40000 ALTER TABLE `system_config_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_event_log`
--

DROP TABLE IF EXISTS `system_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_event_log` (
  `system_event_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_timestamp` datetime(6) NOT NULL,
  `metadata` longblob DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  PRIMARY KEY (`system_event_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_event_log`
--

LOCK TABLES `system_event_log` WRITE;
/*!40000 ALTER TABLE `system_event_log` DISABLE KEYS */;
INSERT INTO `system_event_log` VALUES (92,'2024-04-17 05:07:25.156000','{\"instanceId\":15}',39,'sys'),(93,'2024-04-17 22:29:53.033000',NULL,15,'admin'),(94,'2024-04-17 22:29:53.479000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\",\"channelRevisionNumber\":0}]}',23,'admin'),(95,'2024-04-17 22:29:53.721000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\",\"channelRevisionNumber\":0}]}',23,'admin'),(96,'2024-04-17 22:29:53.840000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\",\"channelRevisionNumber\":0}]}',23,'admin'),(97,'2024-04-17 22:29:54.096000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\",\"channelRevisionNumber\":0}]}',23,'admin'),(98,'2024-04-17 22:29:54.211000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\",\"channelRevisionNumber\":0}]}',23,'admin'),(99,'2024-04-17 22:29:54.280000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\",\"channelRevisionNumber\":0}]}',23,'admin'),(100,'2024-04-17 22:29:54.387000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\",\"channelRevisionNumber\":0}]}',23,'admin'),(101,'2024-04-17 22:29:54.447000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\",\"channelRevisionNumber\":0}]}',23,'admin'),(102,'2024-04-17 22:29:54.507000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\",\"channelRevisionNumber\":0}]}',23,'admin'),(103,'2024-04-17 22:29:54.574000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\",\"channelRevisionNumber\":0}]}',23,'admin'),(104,'2024-04-17 22:29:54.646000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\",\"channelRevisionNumber\":0}]}',23,'admin'),(105,'2024-04-17 22:29:54.728000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\",\"channelRevisionNumber\":0}]}',23,'admin'),(106,'2024-04-17 22:29:54.808000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\",\"channelRevisionNumber\":0}]}',23,'admin'),(107,'2024-04-17 22:29:54.916000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\",\"channelRevisionNumber\":0}]}',23,'admin'),(108,'2024-04-17 22:29:55.260000','{\"instanceId\":15}',17,'admin'),(109,'2024-04-17 22:29:55.270000','{\"instanceId\":15}',40,'admin'),(110,'2024-04-17 22:29:55.272000','{\"instanceId\":15}',37,'admin'),(111,'2024-04-17 22:29:55.278000','{\"instanceId\":15}',34,'admin'),(112,'2024-04-17 22:32:29.881000','{\"instanceId\":15}',39,'sys'),(113,'2024-04-17 22:33:50.918000','{\"testSessionKey\":\"x-auto-1330_1\"}',28,'admin'),(114,'2024-04-17 22:34:15.348000','{\"testSessionKey\":\"x-auto-1330_2\"}',28,'admin'),(115,'2024-04-17 22:34:27.721000','{\"testSessionKey\":\"x-auto-1330_3\"}',28,'admin'),(116,'2024-04-17 22:34:27.802000','{\"testSessionKey\":\"x-auto-1621_1\"}',28,'admin'),(117,'2024-04-17 22:34:29.341000','{\"testSessionKey\":\"x-auto-1621_2\"}',28,'admin'),(118,'2024-04-17 22:34:29.419000','{\"testSessionKey\":\"x-auto-1850_1\"}',28,'admin'),(119,'2024-04-17 22:34:31.075000','{\"testSessionKey\":\"x-auto-1850_2\"}',28,'admin'),(120,'2024-04-17 22:35:12.429000','{\"testSessionKey\":\"x-auto-1850_3\"}',28,'admin'),(121,'2024-04-17 22:35:12.541000','{\"testSessionKey\":\"x-auto-2941_1\"}',28,'admin'),(122,'2024-04-17 22:35:17.628000','{\"testSessionKey\":\"x-auto-2941_2\"}',28,'admin'),(123,'2024-04-17 22:35:22.102000','{\"testSessionKey\":\"x-auto-2941_3\"}',28,'admin'),(124,'2024-04-17 22:35:22.167000','{\"testSessionKey\":\"x-auto-3239_1\"}',28,'admin'),(125,'2024-04-17 22:36:35.835000','{\"testSessionKey\":\"x-auto-3239_2\"}',28,'admin'),(126,'2024-04-17 22:36:35.904000','{\"testSessionKey\":\"x-auto-4246_1\"}',28,'admin'),(127,'2024-04-17 22:36:38.361000','{\"testSessionKey\":\"x-auto-4246_2\"}',28,'admin'),(128,'2024-04-17 22:36:46.285000','{\"testSessionKey\":\"x-auto-4246_3\"}',28,'admin'),(129,'2024-04-17 22:36:50.862000','{\"testSessionKey\":\"x-auto-4246_4\"}',28,'admin'),(130,'2024-04-17 22:36:50.908000','{\"testSessionKey\":\"x-auto-4544_1\"}',28,'admin'),(131,'2024-04-17 22:36:52.780000','{\"testSessionKey\":\"x-auto-4544_2\"}',28,'admin'),(132,'2024-04-17 22:37:04.963000','{\"testSessionKey\":\"x-auto-4544_3\"}',28,'admin'),(133,'2024-04-17 22:37:05.019000','{\"testSessionKey\":\"x-auto-5554_1\"}',28,'admin'),(134,'2024-04-17 22:37:30.237000','{\"testSessionKey\":\"x-auto-5554_2\"}',28,'admin'),(135,'2024-04-17 22:37:30.330000','{\"testSessionKey\":\"x-auto-6568_1\"}',28,'admin'),(136,'2024-04-17 22:43:10.953000','{\"testSessionKey\":\"x-auto-6568_2\"}',28,'admin'),(137,'2024-04-17 22:43:15.576000','{\"testSessionKey\":\"x-auto-6568_3\",\"executeOnInstanceId\":15}',28,'admin'),(138,'2024-04-17 22:43:51.040000','{\"testSessionKey\":\"x-auto-6568_3\",\"executeOnInstanceId\":15}',28,'admin'),(139,'2024-04-17 22:43:54.688000','{\"testSessionKey\":\"x-auto-6568_4\",\"executeOnInstanceId\":15}',28,'admin'),(140,'2024-04-17 22:44:23.174000','{\"testSessionKey\":\"x-auto-6568_4\",\"executeOnInstanceId\":15}',28,'admin'),(141,'2024-04-17 22:44:24.903000','{\"testSessionKey\":\"x-auto-6568_5\",\"executeOnInstanceId\":15}',28,'admin'),(142,'2024-04-17 22:45:41.227000','{\"testSessionKey\":\"x-auto-6568_5\",\"executeOnInstanceId\":15}',28,'admin'),(143,'2024-04-17 22:45:41.304000','{\"testSessionKey\":\"x-auto-9038_1\"}',28,'admin'),(144,'2024-04-17 22:46:26.134000','{\"testSessionKey\":\"x-auto-9038_2\"}',28,'admin'),(145,'2024-04-17 22:46:26.213000','{\"testSessionKey\":\"x-auto-9279_1\"}',28,'admin'),(146,'2024-04-17 22:47:02.644000','{\"testSessionKey\":\"x-auto-9279_2\"}',28,'admin'),(147,'2024-04-17 22:47:05.645000','{\"testSessionKey\":\"x-auto-9279_3\",\"executeOnInstanceId\":15}',28,'admin'),(148,'2024-04-17 22:47:06.052000','{\"testSessionKey\":\"x-auto-9279_3\",\"executeOnInstanceId\":15}',28,'admin'),(149,'2024-04-17 22:47:06.358000','{\"testSessionKey\":\"x-auto-9279_3\",\"executeOnInstanceId\":15}',28,'admin'),(150,'2024-04-17 22:48:16.828000','{\"instanceId\":15,\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\",\"channelRevisionNumber\":2}]}',23,'admin'),(151,'2024-04-17 22:48:17.209000','{\"testSessionKey\":\"x-auto-9279_3\",\"executeOnInstanceId\":15}',28,'admin'),(152,'2024-04-17 22:48:17.235000','{\"testSessionKey\":\"x-auto-11516_1\"}',28,'admin'),(153,'2024-04-17 22:48:34.338000','{\"testSessionKey\":\"x-auto-11516_2\"}',28,'admin'),(154,'2024-04-17 22:48:34.393000','{\"testSessionKey\":\"x-auto-11887_1\"}',28,'admin'),(155,'2024-04-17 22:48:46.004000','{\"testSessionKey\":\"x-auto-11887_2\"}',28,'admin'),(156,'2024-04-17 22:48:46.068000','{\"testSessionKey\":\"x-auto-12960_1\"}',28,'admin'),(157,'2024-04-17 22:50:43.552000','{\"testSessionKey\":\"x-auto-940_1\"}',28,'admin'),(158,'2024-04-18 01:05:00.853000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(159,'2024-04-18 01:05:00.892000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(160,'2024-04-18 01:05:00.916000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(161,'2024-04-18 01:05:00.941000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(162,'2024-04-18 01:05:00.983000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(163,'2024-04-18 01:05:01.007000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(164,'2024-04-18 01:05:01.039000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(165,'2024-04-18 01:05:01.073000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(166,'2024-04-18 01:05:01.102000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(167,'2024-04-18 01:05:01.126000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(168,'2024-04-18 01:05:01.152000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(169,'2024-04-18 01:05:01.180000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(170,'2024-04-18 01:05:01.219000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(171,'2024-04-18 01:05:01.255000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(172,'2024-04-18 04:30:16.278000','{\"instanceId\":15}',39,'sys'),(173,'2024-04-18 18:17:16.133000','{\"testSessionKey\":\"x-auto-510_1\"}',28,'admin'),(174,'2024-04-19 01:05:00.030000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(175,'2024-04-19 01:05:00.056000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(176,'2024-04-19 01:05:00.083000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(177,'2024-04-19 01:05:00.106000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(178,'2024-04-19 01:05:00.136000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(179,'2024-04-19 01:05:00.158000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(180,'2024-04-19 01:05:00.194000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(181,'2024-04-19 01:05:00.231000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(182,'2024-04-19 01:05:00.249000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(183,'2024-04-19 01:05:00.270000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(184,'2024-04-19 01:05:00.290000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(185,'2024-04-19 01:05:00.310000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(186,'2024-04-19 01:05:00.332000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(187,'2024-04-19 01:05:00.349000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(188,'2024-04-19 03:38:20.892000','{\"instanceId\":15}',39,'sys'),(189,'2024-04-20 01:05:00.101000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(190,'2024-04-20 01:05:00.181000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(191,'2024-04-20 01:05:00.246000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(192,'2024-04-20 01:05:00.754000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(193,'2024-04-20 01:05:00.778000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(194,'2024-04-20 01:05:00.795000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(195,'2024-04-20 01:05:00.813000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(196,'2024-04-20 01:05:00.859000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(197,'2024-04-20 01:05:00.880000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(198,'2024-04-20 01:05:00.899000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(199,'2024-04-20 01:05:00.920000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(200,'2024-04-20 01:05:00.937000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(201,'2024-04-20 01:05:00.956000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(202,'2024-04-20 01:05:00.973000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(203,'2024-04-20 04:02:33.459000','{\"instanceId\":15}',39,'sys'),(204,'2024-04-21 01:05:00.094000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(205,'2024-04-21 01:05:00.137000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(206,'2024-04-21 01:05:00.202000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(207,'2024-04-21 01:05:00.577000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(208,'2024-04-21 01:05:00.916000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(209,'2024-04-21 01:05:00.943000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(210,'2024-04-21 01:05:00.967000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(211,'2024-04-21 01:05:00.984000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(212,'2024-04-21 01:05:01.003000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(213,'2024-04-21 01:05:01.021000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(214,'2024-04-21 01:05:01.059000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(215,'2024-04-21 01:05:01.081000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(216,'2024-04-21 01:05:01.104000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(217,'2024-04-21 01:05:01.122000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(218,'2024-04-21 04:45:00.276000','{\"instanceId\":15}',39,'sys'),(219,'2024-04-22 01:05:00.070000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(220,'2024-04-22 01:05:00.152000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(221,'2024-04-22 01:05:00.234000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(222,'2024-04-22 01:05:00.280000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(223,'2024-04-22 01:05:00.304000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(224,'2024-04-22 01:05:00.325000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(225,'2024-04-22 01:05:00.346000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(226,'2024-04-22 01:05:00.362000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(227,'2024-04-22 01:05:00.393000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(228,'2024-04-22 01:05:00.413000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(229,'2024-04-22 01:05:00.438000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(230,'2024-04-22 01:05:00.462000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(231,'2024-04-22 01:05:00.480000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(232,'2024-04-22 01:05:00.497000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(233,'2024-04-22 03:49:05.394000','{\"instanceId\":15}',39,'sys'),(234,'2024-04-22 15:50:05.338000','{\"instanceId\":17}',17,'sys'),(235,'2024-04-22 15:50:05.355000','{\"instanceId\":17}',40,'sys'),(236,'2024-04-22 15:50:05.359000','{\"instanceId\":17}',37,'sys'),(237,'2024-04-22 15:50:05.362000','{\"instanceId\":17}',34,'sys'),(238,'2024-04-22 15:55:10.307000','{\"instanceId\":18}',17,'sys'),(239,'2024-04-22 15:55:10.317000','{\"instanceId\":18}',40,'sys'),(240,'2024-04-22 15:55:10.322000','{\"instanceId\":18}',37,'sys'),(241,'2024-04-22 15:55:10.328000','{\"instanceId\":18}',34,'sys'),(242,'2024-04-22 15:55:26.933000','{\"instanceId\":19}',17,'sys'),(243,'2024-04-22 15:55:27.000000','{\"instanceId\":19}',40,'sys'),(244,'2024-04-22 15:55:27.038000','{\"instanceId\":19}',37,'sys'),(245,'2024-04-22 15:55:27.047000','{\"instanceId\":19}',34,'sys'),(246,'2024-04-22 18:25:41.382000','{\"instanceId\":20}',17,'sys'),(247,'2024-04-22 18:25:41.392000','{\"instanceId\":20}',40,'sys'),(248,'2024-04-22 18:25:41.400000','{\"instanceId\":20}',37,'sys'),(249,'2024-04-22 18:25:41.416000','{\"instanceId\":20}',34,'sys'),(250,'2024-04-22 18:25:53.303000','{\"instanceId\":21}',17,'sys'),(251,'2024-04-22 18:25:53.309000','{\"instanceId\":21}',40,'sys'),(252,'2024-04-22 18:25:53.312000','{\"instanceId\":21}',37,'sys'),(253,'2024-04-22 18:25:53.317000','{\"instanceId\":21}',34,'sys'),(254,'2024-04-22 18:31:36.470000','{\"instanceId\":22}',17,'sys'),(255,'2024-04-22 18:31:36.520000','{\"instanceId\":22}',40,'sys'),(256,'2024-04-22 18:31:36.545000','{\"instanceId\":22}',37,'sys'),(257,'2024-04-22 18:31:36.550000','{\"instanceId\":22}',34,'sys'),(258,'2024-04-22 18:31:48.233000','{\"instanceId\":23}',17,'sys'),(259,'2024-04-22 18:31:48.240000','{\"instanceId\":23}',40,'sys'),(260,'2024-04-22 18:31:48.244000','{\"instanceId\":23}',37,'sys'),(261,'2024-04-22 18:31:48.249000','{\"instanceId\":23}',34,'sys'),(262,'2024-04-22 19:26:35.071000','{\"instanceId\":24}',17,'sys'),(263,'2024-04-22 19:26:35.086000','{\"instanceId\":24}',40,'sys'),(264,'2024-04-22 19:26:35.099000','{\"instanceId\":24}',37,'sys'),(265,'2024-04-22 19:26:35.130000','{\"instanceId\":24}',34,'sys'),(266,'2024-04-22 19:26:40.521000','{\"instanceId\":25}',17,'sys'),(267,'2024-04-22 19:26:40.540000','{\"instanceId\":25}',40,'sys'),(268,'2024-04-22 19:26:40.546000','{\"instanceId\":25}',37,'sys'),(269,'2024-04-22 19:26:40.549000','{\"instanceId\":25}',34,'sys'),(270,'2024-04-22 19:30:43.628000','{\"instanceId\":26}',17,'sys'),(271,'2024-04-22 19:30:43.639000','{\"instanceId\":26}',40,'sys'),(272,'2024-04-22 19:30:43.643000','{\"instanceId\":26}',37,'sys'),(273,'2024-04-22 19:30:43.646000','{\"instanceId\":26}',34,'sys'),(274,'2024-04-22 19:30:56.185000','{\"instanceId\":27}',17,'sys'),(275,'2024-04-22 19:30:56.191000','{\"instanceId\":27}',40,'sys'),(276,'2024-04-22 19:30:56.194000','{\"instanceId\":27}',37,'sys'),(277,'2024-04-22 19:30:56.200000','{\"instanceId\":27}',34,'sys'),(278,'2024-04-22 20:12:02.847000','{\"instanceId\":28}',17,'sys'),(279,'2024-04-22 20:12:02.896000','{\"instanceId\":28}',40,'sys'),(280,'2024-04-22 20:12:02.900000','{\"instanceId\":28}',37,'sys'),(281,'2024-04-22 20:12:02.902000','{\"instanceId\":28}',34,'sys'),(282,'2024-04-22 20:12:04.775000','{\"instanceId\":29}',17,'sys'),(283,'2024-04-22 20:12:04.792000','{\"instanceId\":29}',40,'sys'),(284,'2024-04-22 20:12:04.800000','{\"instanceId\":29}',37,'sys'),(285,'2024-04-22 20:12:04.815000','{\"instanceId\":29}',34,'sys'),(286,'2024-04-22 20:16:54.315000','{\"instanceId\":30}',17,'sys'),(287,'2024-04-22 20:16:54.359000','{\"instanceId\":30}',40,'sys'),(288,'2024-04-22 20:16:54.419000','{\"instanceId\":30}',37,'sys'),(289,'2024-04-22 20:16:54.462000','{\"instanceId\":30}',34,'sys'),(290,'2024-04-22 20:17:03.388000','{\"instanceId\":31}',17,'sys'),(291,'2024-04-22 20:17:03.394000','{\"instanceId\":31}',40,'sys'),(292,'2024-04-22 20:17:03.397000','{\"instanceId\":31}',37,'sys'),(293,'2024-04-22 20:17:03.401000','{\"instanceId\":31}',34,'sys'),(294,'2024-04-22 21:06:31.486000','{\"instanceId\":32}',17,'sys'),(295,'2024-04-22 21:06:31.570000','{\"instanceId\":32}',40,'sys'),(296,'2024-04-22 21:06:31.591000','{\"instanceId\":32}',37,'sys'),(297,'2024-04-22 21:06:31.609000','{\"instanceId\":32}',34,'sys'),(298,'2024-04-22 21:06:43.470000','{\"instanceId\":33}',17,'sys'),(299,'2024-04-22 21:06:43.477000','{\"instanceId\":33}',40,'sys'),(300,'2024-04-22 21:06:43.480000','{\"instanceId\":33}',37,'sys'),(301,'2024-04-22 21:06:43.483000','{\"instanceId\":33}',34,'sys'),(302,'2024-04-22 21:11:02.131000','{\"instanceId\":34}',17,'sys'),(303,'2024-04-22 21:11:02.144000','{\"instanceId\":34}',40,'sys'),(304,'2024-04-22 21:11:02.150000','{\"instanceId\":34}',37,'sys'),(305,'2024-04-22 21:11:02.159000','{\"instanceId\":34}',34,'sys'),(306,'2024-04-22 21:11:18.672000','{\"instanceId\":35}',17,'sys'),(307,'2024-04-22 21:11:18.679000','{\"instanceId\":35}',40,'sys'),(308,'2024-04-22 21:11:18.682000','{\"instanceId\":35}',37,'sys'),(309,'2024-04-22 21:11:18.690000','{\"instanceId\":35}',34,'sys'),(310,'2024-04-22 22:10:49.796000','{\"instanceId\":36}',17,'sys'),(311,'2024-04-22 22:10:49.819000','{\"instanceId\":36}',40,'sys'),(312,'2024-04-22 22:10:49.827000','{\"instanceId\":36}',37,'sys'),(313,'2024-04-22 22:10:49.844000','{\"instanceId\":36}',34,'sys'),(314,'2024-04-22 22:11:00.555000','{\"instanceId\":37}',17,'sys'),(315,'2024-04-22 22:11:00.581000','{\"instanceId\":37}',40,'sys'),(316,'2024-04-22 22:11:00.591000','{\"instanceId\":37}',37,'sys'),(317,'2024-04-22 22:11:00.604000','{\"instanceId\":37}',34,'sys'),(318,'2024-04-22 22:16:30.345000','{\"instanceId\":38}',17,'sys'),(319,'2024-04-22 22:16:30.354000','{\"instanceId\":38}',40,'sys'),(320,'2024-04-22 22:16:30.376000','{\"instanceId\":38}',37,'sys'),(321,'2024-04-22 22:16:30.413000','{\"instanceId\":38}',34,'sys'),(322,'2024-04-22 22:16:43.752000','{\"instanceId\":39}',17,'sys'),(323,'2024-04-22 22:16:43.771000','{\"instanceId\":39}',40,'sys'),(324,'2024-04-22 22:16:43.830000','{\"instanceId\":39}',37,'sys'),(325,'2024-04-22 22:16:43.889000','{\"instanceId\":39}',34,'sys'),(326,'2024-04-22 23:01:12.295000','{\"instanceId\":40}',17,'sys'),(327,'2024-04-22 23:01:12.303000','{\"instanceId\":40}',40,'sys'),(328,'2024-04-22 23:01:12.320000','{\"instanceId\":40}',37,'sys'),(329,'2024-04-22 23:01:12.326000','{\"instanceId\":40}',34,'sys'),(330,'2024-04-22 23:01:24.643000','{\"instanceId\":41}',17,'sys'),(331,'2024-04-22 23:01:24.650000','{\"instanceId\":41}',40,'sys'),(332,'2024-04-22 23:01:24.653000','{\"instanceId\":41}',37,'sys'),(333,'2024-04-22 23:01:24.656000','{\"instanceId\":41}',34,'sys'),(334,'2024-04-22 23:05:53.942000','{\"instanceId\":42}',17,'sys'),(335,'2024-04-22 23:05:54.014000','{\"instanceId\":42}',40,'sys'),(336,'2024-04-22 23:05:54.065000','{\"instanceId\":42}',37,'sys'),(337,'2024-04-22 23:05:54.109000','{\"instanceId\":42}',34,'sys'),(338,'2024-04-22 23:06:08.232000','{\"instanceId\":43}',17,'sys'),(339,'2024-04-22 23:06:08.241000','{\"instanceId\":43}',40,'sys'),(340,'2024-04-22 23:06:08.245000','{\"instanceId\":43}',37,'sys'),(341,'2024-04-22 23:06:08.248000','{\"instanceId\":43}',34,'sys'),(342,'2024-04-23 01:05:00.264000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(343,'2024-04-23 01:05:00.304000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(344,'2024-04-23 01:05:00.332000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(345,'2024-04-23 01:05:00.373000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(346,'2024-04-23 01:05:00.461000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(347,'2024-04-23 01:05:00.519000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(348,'2024-04-23 01:05:00.545000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(349,'2024-04-23 01:05:00.576000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(350,'2024-04-23 01:05:00.601000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(351,'2024-04-23 01:05:00.633000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(352,'2024-04-23 01:05:00.666000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(353,'2024-04-23 01:05:00.703000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(354,'2024-04-23 01:05:00.789000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(355,'2024-04-23 01:05:00.883000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(356,'2024-04-23 04:53:38.175000','{\"instanceId\":42}',39,'sys'),(357,'2024-04-23 15:21:31.053000','{\"instanceId\":44}',17,'sys'),(358,'2024-04-23 15:21:31.062000','{\"instanceId\":44}',40,'sys'),(359,'2024-04-23 15:21:31.066000','{\"instanceId\":44}',37,'sys'),(360,'2024-04-23 15:21:31.069000','{\"instanceId\":44}',34,'sys'),(361,'2024-04-23 15:21:45.128000','{\"instanceId\":45}',17,'sys'),(362,'2024-04-23 15:21:45.134000','{\"instanceId\":45}',40,'sys'),(363,'2024-04-23 15:21:45.138000','{\"instanceId\":45}',37,'sys'),(364,'2024-04-23 15:21:45.147000','{\"instanceId\":45}',34,'sys'),(365,'2024-04-23 15:26:32.502000','{\"instanceId\":46}',17,'sys'),(366,'2024-04-23 15:26:32.516000','{\"instanceId\":46}',40,'sys'),(367,'2024-04-23 15:26:32.533000','{\"instanceId\":46}',37,'sys'),(368,'2024-04-23 15:26:32.537000','{\"instanceId\":46}',34,'sys'),(369,'2024-04-23 15:26:46.704000','{\"instanceId\":47}',17,'sys'),(370,'2024-04-23 15:26:46.728000','{\"instanceId\":47}',40,'sys'),(371,'2024-04-23 15:26:46.735000','{\"instanceId\":47}',37,'sys'),(372,'2024-04-23 15:26:46.755000','{\"instanceId\":47}',34,'sys'),(373,'2024-04-23 16:34:17.670000','{\"instanceId\":48}',17,'sys'),(374,'2024-04-23 16:34:17.677000','{\"instanceId\":48}',40,'sys'),(375,'2024-04-23 16:34:17.680000','{\"instanceId\":48}',37,'sys'),(376,'2024-04-23 16:34:17.682000','{\"instanceId\":48}',34,'sys'),(377,'2024-04-23 16:34:36.053000','{\"instanceId\":49}',17,'sys'),(378,'2024-04-23 16:34:36.060000','{\"instanceId\":49}',40,'sys'),(379,'2024-04-23 16:34:36.073000','{\"instanceId\":49}',37,'sys'),(380,'2024-04-23 16:34:36.088000','{\"instanceId\":49}',34,'sys'),(381,'2024-04-23 16:41:09.947000','{\"instanceId\":50}',17,'sys'),(382,'2024-04-23 16:41:10.015000','{\"instanceId\":50}',40,'sys'),(383,'2024-04-23 16:41:10.065000','{\"instanceId\":50}',37,'sys'),(384,'2024-04-23 16:41:10.109000','{\"instanceId\":50}',34,'sys'),(385,'2024-04-23 16:41:25.576000','{\"instanceId\":51}',17,'sys'),(386,'2024-04-23 16:41:25.602000','{\"instanceId\":51}',40,'sys'),(387,'2024-04-23 16:41:25.608000','{\"instanceId\":51}',37,'sys'),(388,'2024-04-23 16:41:25.633000','{\"instanceId\":51}',34,'sys'),(389,'2024-04-23 17:46:38.373000','{\"instanceId\":52}',17,'sys'),(390,'2024-04-23 17:46:38.381000','{\"instanceId\":52}',40,'sys'),(391,'2024-04-23 17:46:38.391000','{\"instanceId\":52}',37,'sys'),(392,'2024-04-23 17:46:38.394000','{\"instanceId\":52}',34,'sys'),(393,'2024-04-23 17:46:50.474000','{\"instanceId\":53}',17,'sys'),(394,'2024-04-23 17:46:50.482000','{\"instanceId\":53}',40,'sys'),(395,'2024-04-23 17:46:50.485000','{\"instanceId\":53}',37,'sys'),(396,'2024-04-23 17:46:50.491000','{\"instanceId\":53}',34,'sys'),(397,'2024-04-23 17:52:34.406000','{\"instanceId\":54}',17,'sys'),(398,'2024-04-23 17:52:34.470000','{\"instanceId\":54}',40,'sys'),(399,'2024-04-23 17:52:34.517000','{\"instanceId\":54}',37,'sys'),(400,'2024-04-23 17:52:34.586000','{\"instanceId\":54}',34,'sys'),(401,'2024-04-23 17:52:42.707000','{\"instanceId\":55}',17,'sys'),(402,'2024-04-23 17:52:42.715000','{\"instanceId\":55}',40,'sys'),(403,'2024-04-23 17:52:42.719000','{\"instanceId\":55}',37,'sys'),(404,'2024-04-23 17:52:42.724000','{\"instanceId\":55}',34,'sys'),(405,'2024-04-23 18:43:48.714000','{\"instanceId\":56}',17,'sys'),(406,'2024-04-23 18:43:48.725000','{\"instanceId\":56}',40,'sys'),(407,'2024-04-23 18:43:48.730000','{\"instanceId\":56}',37,'sys'),(408,'2024-04-23 18:43:48.733000','{\"instanceId\":56}',34,'sys'),(409,'2024-04-23 18:43:57.759000','{\"instanceId\":57}',17,'sys'),(410,'2024-04-23 18:43:57.764000','{\"instanceId\":57}',40,'sys'),(411,'2024-04-23 18:43:57.766000','{\"instanceId\":57}',37,'sys'),(412,'2024-04-23 18:43:57.769000','{\"instanceId\":57}',34,'sys'),(413,'2024-04-23 18:48:23.805000','{\"instanceId\":58}',17,'sys'),(414,'2024-04-23 18:48:23.845000','{\"instanceId\":58}',40,'sys'),(415,'2024-04-23 18:48:23.913000','{\"instanceId\":58}',37,'sys'),(416,'2024-04-23 18:48:23.919000','{\"instanceId\":58}',34,'sys'),(417,'2024-04-23 18:48:41.935000','{\"instanceId\":59}',17,'sys'),(418,'2024-04-23 18:48:41.946000','{\"instanceId\":59}',40,'sys'),(419,'2024-04-23 18:48:41.957000','{\"instanceId\":59}',37,'sys'),(420,'2024-04-23 18:48:41.964000','{\"instanceId\":59}',34,'sys'),(421,'2024-04-23 19:30:33.226000','{\"instanceId\":60}',17,'sys'),(422,'2024-04-23 19:30:33.269000','{\"instanceId\":60}',40,'sys'),(423,'2024-04-23 19:30:33.320000','{\"instanceId\":60}',37,'sys'),(424,'2024-04-23 19:30:33.323000','{\"instanceId\":60}',34,'sys'),(425,'2024-04-23 19:30:42.972000','{\"instanceId\":61}',17,'sys'),(426,'2024-04-23 19:30:42.983000','{\"instanceId\":61}',40,'sys'),(427,'2024-04-23 19:30:42.987000','{\"instanceId\":61}',37,'sys'),(428,'2024-04-23 19:30:42.991000','{\"instanceId\":61}',34,'sys'),(429,'2024-04-23 19:34:36.262000','{\"instanceId\":62}',17,'sys'),(430,'2024-04-23 19:34:36.340000','{\"instanceId\":62}',40,'sys'),(431,'2024-04-23 19:34:36.385000','{\"instanceId\":62}',37,'sys'),(432,'2024-04-23 19:34:36.390000','{\"instanceId\":62}',34,'sys'),(433,'2024-04-23 19:34:47.785000','{\"instanceId\":63}',17,'sys'),(434,'2024-04-23 19:34:47.794000','{\"instanceId\":63}',40,'sys'),(435,'2024-04-23 19:34:47.799000','{\"instanceId\":63}',37,'sys'),(436,'2024-04-23 19:34:47.811000','{\"instanceId\":63}',34,'sys'),(437,'2024-04-23 20:29:08.212000','{\"instanceId\":64}',17,'sys'),(438,'2024-04-23 20:29:08.217000','{\"instanceId\":64}',40,'sys'),(439,'2024-04-23 20:29:08.221000','{\"instanceId\":64}',37,'sys'),(440,'2024-04-23 20:29:08.228000','{\"instanceId\":64}',34,'sys'),(441,'2024-04-23 20:29:16.109000','{\"instanceId\":65}',17,'sys'),(442,'2024-04-23 20:29:16.115000','{\"instanceId\":65}',40,'sys'),(443,'2024-04-23 20:29:16.120000','{\"instanceId\":65}',37,'sys'),(444,'2024-04-23 20:29:16.124000','{\"instanceId\":65}',34,'sys'),(445,'2024-04-23 20:33:41.802000','{\"instanceId\":66}',17,'sys'),(446,'2024-04-23 20:33:41.834000','{\"instanceId\":66}',40,'sys'),(447,'2024-04-23 20:33:41.886000','{\"instanceId\":66}',37,'sys'),(448,'2024-04-23 20:33:41.903000','{\"instanceId\":66}',34,'sys'),(449,'2024-04-23 20:33:47.242000','{\"instanceId\":67}',17,'sys'),(450,'2024-04-23 20:33:47.295000','{\"instanceId\":67}',40,'sys'),(451,'2024-04-23 20:33:47.327000','{\"instanceId\":67}',37,'sys'),(452,'2024-04-23 20:33:47.332000','{\"instanceId\":67}',34,'sys'),(453,'2024-04-23 21:47:26.483000','{\"instanceId\":68}',17,'sys'),(454,'2024-04-23 21:47:26.528000','{\"instanceId\":68}',40,'sys'),(455,'2024-04-23 21:47:26.552000','{\"instanceId\":68}',37,'sys'),(456,'2024-04-23 21:47:26.560000','{\"instanceId\":68}',34,'sys'),(457,'2024-04-23 21:47:35.515000','{\"instanceId\":69}',17,'sys'),(458,'2024-04-23 21:47:35.528000','{\"instanceId\":69}',40,'sys'),(459,'2024-04-23 21:47:35.532000','{\"instanceId\":69}',37,'sys'),(460,'2024-04-23 21:47:35.536000','{\"instanceId\":69}',34,'sys'),(461,'2024-04-23 21:51:55.539000','{\"instanceId\":70}',17,'sys'),(462,'2024-04-23 21:51:55.562000','{\"instanceId\":70}',40,'sys'),(463,'2024-04-23 21:51:55.604000','{\"instanceId\":70}',37,'sys'),(464,'2024-04-23 21:51:55.645000','{\"instanceId\":70}',34,'sys'),(465,'2024-04-23 21:52:07.443000','{\"instanceId\":71}',17,'sys'),(466,'2024-04-23 21:52:07.453000','{\"instanceId\":71}',40,'sys'),(467,'2024-04-23 21:52:07.457000','{\"instanceId\":71}',37,'sys'),(468,'2024-04-23 21:52:07.464000','{\"instanceId\":71}',34,'sys'),(469,'2024-04-23 22:10:26.330000','{\"instanceId\":72}',17,'sys'),(470,'2024-04-23 22:10:26.337000','{\"instanceId\":72}',40,'sys'),(471,'2024-04-23 22:10:26.341000','{\"instanceId\":72}',37,'sys'),(472,'2024-04-23 22:10:26.345000','{\"instanceId\":72}',34,'sys'),(473,'2024-04-23 22:39:25.677000','{\"instanceId\":73}',17,'sys'),(474,'2024-04-23 22:39:25.711000','{\"instanceId\":73}',40,'sys'),(475,'2024-04-23 22:39:25.725000','{\"instanceId\":73}',37,'sys'),(476,'2024-04-23 22:39:25.729000','{\"instanceId\":73}',34,'sys'),(477,'2024-04-23 22:39:34.096000','{\"instanceId\":74}',17,'sys'),(478,'2024-04-23 22:39:34.130000','{\"instanceId\":74}',40,'sys'),(479,'2024-04-23 22:39:34.147000','{\"instanceId\":74}',37,'sys'),(480,'2024-04-23 22:39:34.150000','{\"instanceId\":74}',34,'sys'),(481,'2024-04-23 22:45:31.381000','{\"instanceId\":75}',17,'sys'),(482,'2024-04-23 22:45:31.392000','{\"instanceId\":75}',40,'sys'),(483,'2024-04-23 22:45:31.397000','{\"instanceId\":75}',37,'sys'),(484,'2024-04-23 22:45:31.401000','{\"instanceId\":75}',34,'sys'),(485,'2024-04-23 22:45:32.269000','{\"instanceId\":76}',17,'sys'),(486,'2024-04-23 22:45:32.276000','{\"instanceId\":76}',40,'sys'),(487,'2024-04-23 22:45:32.280000','{\"instanceId\":76}',37,'sys'),(488,'2024-04-23 22:45:32.284000','{\"instanceId\":76}',34,'sys'),(489,'2024-04-24 00:00:49.879000','{\"instanceId\":77}',17,'sys'),(490,'2024-04-24 00:00:50.038000','{\"instanceId\":77}',40,'sys'),(491,'2024-04-24 00:00:50.096000','{\"instanceId\":77}',37,'sys'),(492,'2024-04-24 00:00:50.177000','{\"instanceId\":77}',34,'sys'),(493,'2024-04-24 00:01:01.345000','{\"instanceId\":78}',17,'sys'),(494,'2024-04-24 00:01:01.351000','{\"instanceId\":78}',40,'sys'),(495,'2024-04-24 00:01:01.354000','{\"instanceId\":78}',37,'sys'),(496,'2024-04-24 00:01:01.357000','{\"instanceId\":78}',34,'sys'),(497,'2024-04-24 00:04:43.792000','{\"instanceId\":79}',17,'sys'),(498,'2024-04-24 00:04:43.806000','{\"instanceId\":79}',40,'sys'),(499,'2024-04-24 00:04:43.812000','{\"instanceId\":79}',37,'sys'),(500,'2024-04-24 00:04:43.817000','{\"instanceId\":79}',34,'sys'),(501,'2024-04-24 00:04:58.552000','{\"instanceId\":80}',17,'sys'),(502,'2024-04-24 00:04:58.561000','{\"instanceId\":80}',40,'sys'),(503,'2024-04-24 00:04:58.577000','{\"instanceId\":80}',37,'sys'),(504,'2024-04-24 00:04:58.589000','{\"instanceId\":80}',34,'sys'),(505,'2024-04-24 00:59:02.801000','{\"instanceId\":81}',17,'sys'),(506,'2024-04-24 00:59:02.807000','{\"instanceId\":81}',40,'sys'),(507,'2024-04-24 00:59:02.809000','{\"instanceId\":81}',37,'sys'),(508,'2024-04-24 00:59:02.813000','{\"instanceId\":81}',34,'sys'),(509,'2024-04-24 00:59:15.643000','{\"instanceId\":82}',17,'sys'),(510,'2024-04-24 00:59:15.653000','{\"instanceId\":82}',40,'sys'),(511,'2024-04-24 00:59:15.656000','{\"instanceId\":82}',37,'sys'),(512,'2024-04-24 00:59:15.660000','{\"instanceId\":82}',34,'sys'),(513,'2024-04-24 01:03:57.360000','{\"instanceId\":83}',17,'sys'),(514,'2024-04-24 01:03:57.372000','{\"instanceId\":83}',40,'sys'),(515,'2024-04-24 01:03:57.377000','{\"instanceId\":83}',37,'sys'),(516,'2024-04-24 01:03:57.381000','{\"instanceId\":83}',34,'sys'),(517,'2024-04-24 01:04:09.890000','{\"instanceId\":84}',17,'sys'),(518,'2024-04-24 01:04:09.906000','{\"instanceId\":84}',40,'sys'),(519,'2024-04-24 01:04:09.918000','{\"instanceId\":84}',37,'sys'),(520,'2024-04-24 01:04:09.923000','{\"instanceId\":84}',34,'sys'),(521,'2024-04-24 01:05:00.167000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(522,'2024-04-24 01:05:00.237000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(523,'2024-04-24 01:05:00.349000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(524,'2024-04-24 01:05:00.416000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(525,'2024-04-24 01:05:00.494000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(526,'2024-04-24 01:05:00.543000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(527,'2024-04-24 01:05:00.585000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(528,'2024-04-24 01:05:00.707000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(529,'2024-04-24 01:05:00.765000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(530,'2024-04-24 01:05:00.819000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(531,'2024-04-24 01:05:00.860000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(532,'2024-04-24 01:05:00.895000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(533,'2024-04-24 01:05:00.959000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(534,'2024-04-24 01:05:01.004000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(535,'2024-04-24 02:16:05.953000','{\"instanceId\":85}',17,'sys'),(536,'2024-04-24 02:16:05.961000','{\"instanceId\":85}',40,'sys'),(537,'2024-04-24 02:16:05.977000','{\"instanceId\":85}',37,'sys'),(538,'2024-04-24 02:16:05.986000','{\"instanceId\":85}',34,'sys'),(539,'2024-04-24 02:16:18.812000','{\"instanceId\":86}',17,'sys'),(540,'2024-04-24 02:16:18.835000','{\"instanceId\":86}',40,'sys'),(541,'2024-04-24 02:16:18.838000','{\"instanceId\":86}',37,'sys'),(542,'2024-04-24 02:16:18.841000','{\"instanceId\":86}',34,'sys'),(543,'2024-04-24 02:22:13.911000','{\"instanceId\":87}',17,'sys'),(544,'2024-04-24 02:22:13.921000','{\"instanceId\":87}',40,'sys'),(545,'2024-04-24 02:22:13.925000','{\"instanceId\":87}',37,'sys'),(546,'2024-04-24 02:22:13.934000','{\"instanceId\":87}',34,'sys'),(547,'2024-04-24 02:22:25.829000','{\"instanceId\":88}',17,'sys'),(548,'2024-04-24 02:22:25.835000','{\"instanceId\":88}',40,'sys'),(549,'2024-04-24 02:22:25.839000','{\"instanceId\":88}',37,'sys'),(550,'2024-04-24 02:22:25.843000','{\"instanceId\":88}',34,'sys'),(551,'2024-04-24 03:55:43.187000','{\"instanceId\":89}',17,'sys'),(552,'2024-04-24 03:55:43.215000','{\"instanceId\":89}',40,'sys'),(553,'2024-04-24 03:55:43.227000','{\"instanceId\":89}',37,'sys'),(554,'2024-04-24 03:55:43.239000','{\"instanceId\":89}',34,'sys'),(555,'2024-04-24 03:55:47.659000','{\"instanceId\":90}',17,'sys'),(556,'2024-04-24 03:55:47.689000','{\"instanceId\":90}',40,'sys'),(557,'2024-04-24 03:55:47.710000','{\"instanceId\":90}',37,'sys'),(558,'2024-04-24 03:55:47.722000','{\"instanceId\":90}',34,'sys'),(559,'2024-04-24 04:00:10.043000','{\"instanceId\":91}',17,'sys'),(560,'2024-04-24 04:00:10.059000','{\"instanceId\":91}',40,'sys'),(561,'2024-04-24 04:00:10.080000','{\"instanceId\":91}',37,'sys'),(562,'2024-04-24 04:00:10.097000','{\"instanceId\":91}',34,'sys'),(563,'2024-04-24 04:00:26.190000','{\"instanceId\":92}',17,'sys'),(564,'2024-04-24 04:00:26.199000','{\"instanceId\":92}',40,'sys'),(565,'2024-04-24 04:00:26.204000','{\"instanceId\":92}',37,'sys'),(566,'2024-04-24 04:00:26.208000','{\"instanceId\":92}',34,'sys'),(567,'2024-04-24 05:26:44.143000','{\"instanceId\":93}',17,'sys'),(568,'2024-04-24 05:26:44.149000','{\"instanceId\":93}',40,'sys'),(569,'2024-04-24 05:26:44.153000','{\"instanceId\":93}',37,'sys'),(570,'2024-04-24 05:26:44.157000','{\"instanceId\":93}',34,'sys'),(571,'2024-04-24 05:26:55.730000','{\"instanceId\":94}',17,'sys'),(572,'2024-04-24 05:26:55.735000','{\"instanceId\":94}',40,'sys'),(573,'2024-04-24 05:26:55.739000','{\"instanceId\":94}',37,'sys'),(574,'2024-04-24 05:26:55.743000','{\"instanceId\":94}',34,'sys'),(575,'2024-04-24 05:27:50.616000','{\"instanceId\":93}',39,'sys'),(576,'2024-04-29 21:09:59.292000','{\"instanceId\":95}',17,'sys'),(577,'2024-04-29 21:09:59.305000','{\"instanceId\":95}',40,'sys'),(578,'2024-04-29 21:09:59.310000','{\"instanceId\":95}',37,'sys'),(579,'2024-04-29 21:09:59.313000','{\"instanceId\":95}',34,'sys'),(580,'2024-04-29 21:10:08.855000','{\"instanceId\":96}',17,'sys'),(581,'2024-04-29 21:10:08.861000','{\"instanceId\":96}',40,'sys'),(582,'2024-04-29 21:10:08.864000','{\"instanceId\":96}',37,'sys'),(583,'2024-04-29 21:10:08.867000','{\"instanceId\":96}',34,'sys'),(584,'2024-04-29 21:11:03.615000','{\"instanceId\":95}',39,'sys'),(585,'2024-04-30 01:05:00.078000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(586,'2024-04-30 01:05:00.111000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(587,'2024-04-30 01:05:00.140000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(588,'2024-04-30 01:05:00.166000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(589,'2024-04-30 01:05:00.192000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(590,'2024-04-30 01:05:00.224000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(591,'2024-04-30 01:05:00.253000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(592,'2024-04-30 01:05:00.308000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(593,'2024-04-30 01:05:00.336000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(594,'2024-04-30 01:05:00.369000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(595,'2024-04-30 01:05:00.416000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(596,'2024-04-30 01:05:00.448000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(597,'2024-04-30 01:05:00.479000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(598,'2024-04-30 01:05:00.508000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(599,'2024-04-30 04:57:24.523000','{\"instanceId\":95}',39,'sys'),(600,'2024-05-01 01:05:00.327000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e44110006\"}]}',38,'sys'),(601,'2024-05-01 01:05:00.360000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45430016\"}]}',38,'sys'),(602,'2024-05-01 01:05:00.385000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e45f2002b\"}]}',38,'sys'),(603,'2024-05-01 01:05:00.411000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e466d0033\"}]}',38,'sys'),(604,'2024-05-01 01:05:00.439000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e475b005e\"}]}',38,'sys'),(605,'2024-05-01 01:05:00.464000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e47c6006d\"}]}',38,'sys'),(606,'2024-05-01 01:05:00.493000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48110078\"}]}',38,'sys'),(607,'2024-05-01 01:05:00.516000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e487300a2\"}]}',38,'sys'),(608,'2024-05-01 01:05:00.540000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48af00a9\"}]}',38,'sys'),(609,'2024-05-01 01:05:00.564000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e48ec00b0\"}]}',38,'sys'),(610,'2024-05-01 01:05:00.606000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e493300ba\"}]}',38,'sys'),(611,'2024-05-01 01:05:00.633000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e498200c5\"}]}',38,'sys'),(612,'2024-05-01 01:05:00.658000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e49d200cf\"}]}',38,'sys'),(613,'2024-05-01 01:05:00.686000','{\"channels\":[{\"channelId\":\"8a0380938e682ec5018eee2e4a2a00d8\"}]}',38,'sys'),(614,'2024-05-01 04:07:58.912000','{\"instanceId\":95}',39,'sys'),(615,'2024-05-01 20:31:13.280000','{\"testSessionKey\":\"x-auto-762_1\"}',28,'admin'),(616,'2024-05-01 20:31:24.400000','{\"testSessionKey\":\"x-auto-762_2\"}',28,'admin'),(617,'2024-05-01 20:31:24.483000','{\"testSessionKey\":\"x-auto-1164_1\"}',28,'admin'),(618,'2024-05-01 20:31:29.239000','{\"testSessionKey\":\"x-auto-1164_2\"}',28,'admin'),(619,'2024-05-01 20:31:29.319000','{\"testSessionKey\":\"x-auto-1457_1\"}',28,'admin'),(620,'2024-05-01 20:31:31.322000','{\"testSessionKey\":\"x-auto-1457_2\"}',28,'admin'),(621,'2024-05-01 20:31:31.392000','{\"testSessionKey\":\"x-auto-1770_1\"}',28,'admin'),(622,'2024-05-01 20:31:38.714000','{\"testSessionKey\":\"x-auto-1770_2\"}',28,'admin'),(623,'2024-05-01 20:31:38.773000','{\"testSessionKey\":\"x-auto-2071_1\"}',28,'admin');
/*!40000 ALTER TABLE `system_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_flag`
--

DROP TABLE IF EXISTS `system_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_flag` (
  `profile_id` varchar(5) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `f36` bit(1) DEFAULT NULL,
  `f27` bit(1) DEFAULT NULL,
  `f34` bit(1) DEFAULT NULL,
  `f28` bit(1) DEFAULT NULL,
  `f20` bit(1) DEFAULT NULL,
  `f1` bit(1) DEFAULT NULL,
  `f5` bit(1) DEFAULT NULL,
  `f26` datetime(6) DEFAULT NULL,
  `f2` bit(1) DEFAULT NULL,
  `f12` bit(1) DEFAULT NULL,
  `f33` bit(1) DEFAULT NULL,
  `f30` bit(1) DEFAULT NULL,
  `f6` bit(1) DEFAULT NULL,
  `f31` bit(1) DEFAULT NULL,
  `f44` bit(1) DEFAULT NULL,
  `f23` bit(1) DEFAULT NULL,
  `f3` bit(1) DEFAULT NULL,
  `f29` varchar(255) DEFAULT NULL,
  `f32` bit(1) DEFAULT NULL,
  `f48` bit(1) DEFAULT NULL,
  `f16` bit(1) DEFAULT NULL,
  `f4` bit(1) DEFAULT NULL,
  `f10` bit(1) DEFAULT NULL,
  `f49` bit(1) DEFAULT NULL,
  `f13` bit(1) DEFAULT NULL,
  `f15` bit(1) DEFAULT NULL,
  `f7` bit(1) DEFAULT NULL,
  `f25` varchar(255) DEFAULT NULL,
  `f22` bit(1) DEFAULT NULL,
  `f37` bit(1) DEFAULT NULL,
  `f8` bit(1) DEFAULT NULL,
  `f21` bit(1) DEFAULT NULL,
  `f24` bit(1) DEFAULT NULL,
  `f19` bit(1) DEFAULT NULL,
  `f47` varchar(32) DEFAULT NULL,
  `f17` bit(1) DEFAULT NULL,
  `f18` bit(1) DEFAULT NULL,
  `f38` bit(1) DEFAULT NULL,
  `f14` bit(1) DEFAULT NULL,
  `f35` bit(1) DEFAULT NULL,
  `f43` bit(1) DEFAULT NULL,
  `f42` bit(1) DEFAULT NULL,
  `f11` bit(1) DEFAULT NULL,
  `f9` bit(1) DEFAULT NULL,
  `f40` bit(1) DEFAULT NULL,
  `f41` bit(1) DEFAULT NULL,
  `f45` bit(1) DEFAULT NULL,
  `f54` bit(1) DEFAULT NULL,
  `f51` bit(1) DEFAULT NULL,
  `f50` bit(1) DEFAULT NULL,
  `f52` bit(1) DEFAULT NULL,
  `f53` bit(1) DEFAULT NULL,
  `f55` bit(1) DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_flag`
--

LOCK TABLES `system_flag` WRITE;
/*!40000 ALTER TABLE `system_flag` DISABLE KEYS */;
INSERT INTO `system_flag` VALUES ('live','sys','2023-03-29 15:28:23.795000','sys','2024-04-30 04:57:24.261000',19,'','','','','','','',NULL,'','','','','','','','','','23.4.1.16409','','','','','','','','','','642e73c3-b71a-4fdb-aa36-87afcf3b3d6c','','','','','','','2fe0c98643f110a18e045e77bf0b74c3','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `system_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_log` (
  `system_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(32) DEFAULT NULL,
  `message_path` varchar(255) DEFAULT NULL,
  `sort_order` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `channel_node_id` varchar(32) DEFAULT NULL,
  `log_message` longblob DEFAULT NULL,
  `log_level` int(11) DEFAULT NULL,
  `log_timestamp` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`system_log_id`),
  KEY `idx_sys_log_zone_id_system_log_id` (`zone_id`,`system_log_id`),
  KEY `idx_sys_log_channel_id_system_log_id` (`channel_id`,`system_log_id`),
  KEY `idx_sys_log_message_id_system_log_id` (`message_id`,`system_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` VALUES (162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240417010500052'),(163,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955242'),(164,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955244'),(165,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955245'),(166,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955246'),(167,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955248'),(168,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955249'),(169,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955250'),(170,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955252'),(171,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955253'),(172,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955255'),(173,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955256'),(174,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955257'),(175,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955258'),(176,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,30000,'20240417222955260'),(177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240418010500524'),(178,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500705'),(179,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500867'),(180,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500867'),(181,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500903'),(182,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500903'),(183,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500926'),(184,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500926'),(185,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500953'),(186,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500953'),(187,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500992'),(188,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010500992'),(189,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501017'),(190,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501017'),(191,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501054'),(192,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501054'),(193,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501082'),(194,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501082'),(195,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501110'),(196,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501110'),(197,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501136'),(198,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501136'),(199,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501164'),(200,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501164'),(201,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501203'),(202,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501203'),(203,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501234'),(204,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501234'),(205,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240418010501268'),(206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240419010500012'),(207,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500017'),(208,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500039'),(209,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500039'),(210,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500065'),(211,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500066'),(212,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500091'),(213,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500091'),(214,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500113'),(215,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500113'),(216,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500144'),(217,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500144'),(218,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500175'),(219,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500175'),(220,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500219'),(221,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500219'),(222,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500238'),(223,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500238'),(224,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500257'),(225,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500257'),(226,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500278'),(227,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500278'),(228,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500297'),(229,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500297'),(230,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500319'),(231,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500319'),(232,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500338'),(233,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500338'),(234,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240419010500359'),(235,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240420010500030'),(236,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500044'),(237,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500132'),(238,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500132'),(239,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500196'),(240,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500196'),(241,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500517'),(242,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500517'),(243,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500761'),(244,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500761'),(245,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500783'),(246,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500783'),(247,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500802'),(248,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500802'),(249,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500843'),(250,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500843'),(251,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500866'),(252,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500866'),(253,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500886'),(254,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500886'),(255,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500906'),(256,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500906'),(257,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500925'),(258,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500925'),(259,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500943'),(260,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500943'),(261,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500962'),(262,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500962'),(263,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240420010500982'),(264,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240421010500028'),(265,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500042'),(266,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500106'),(267,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500106'),(268,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500152'),(269,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500152'),(270,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500237'),(271,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500237'),(272,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500629'),(273,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500629'),(274,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500926'),(275,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500926'),(276,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500954'),(277,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500954'),(278,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500973'),(279,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500973'),(280,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500991'),(281,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010500991'),(282,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501010'),(283,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501010'),(284,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501044'),(285,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501044'),(286,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501065'),(287,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501065'),(288,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501089'),(289,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501089'),(290,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501111'),(291,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501111'),(292,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240421010501127'),(293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240422010500020'),(294,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500034'),(295,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500089'),(296,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500089'),(297,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500177'),(298,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500177'),(299,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500251'),(300,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500252'),(301,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500292'),(302,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500292'),(303,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500313'),(304,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500313'),(305,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500336'),(306,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500336'),(307,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500352'),(308,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500352'),(309,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500381'),(310,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500381'),(311,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500401'),(312,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500401'),(313,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500423'),(314,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500423'),(315,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500452'),(316,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500452'),(317,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500468'),(318,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500468'),(319,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500486'),(320,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500486'),(321,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240422010500503'),(322,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240422192640624'),(323,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240422192640638'),(324,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240422192640640'),(325,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240422192640642'),(326,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240423010500133'),(327,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500191'),(328,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500277'),(329,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500277'),(330,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500313'),(331,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500313'),(332,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500343'),(333,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500343'),(334,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500409'),(335,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500409'),(336,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500494'),(337,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500494'),(338,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500527'),(339,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500527'),(340,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500552'),(341,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500552'),(342,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500585'),(343,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500585'),(344,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500613'),(345,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500613'),(346,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500646'),(347,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500646'),(348,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500674'),(349,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500674'),(350,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500729'),(351,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500729'),(352,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500820'),(353,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500820'),(354,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240423010500914'),(355,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423175242985'),(356,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423175242993'),(357,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423175242999'),(358,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423175243007'),(359,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423203348449'),(360,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423203348458'),(361,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240423203348469'),(362,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240424010500089'),(363,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500106'),(364,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500196'),(365,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500196'),(366,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500256'),(367,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500256'),(368,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500374'),(369,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500374'),(370,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500439'),(371,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500439'),(372,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500512'),(373,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500512'),(374,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500556'),(375,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500556'),(376,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500599'),(377,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500599'),(378,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500720'),(379,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500720'),(380,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500779'),(381,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500779'),(382,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500831'),(383,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500832'),(384,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500869'),(385,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500869'),(386,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500907'),(387,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500907'),(388,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500971'),(389,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010500971'),(390,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240424010501018'),(391,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240424035547762'),(392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240424035547833'),(393,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240424035547781'),(394,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40000,'20240424035547799'),(395,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240430010500034'),(396,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500044'),(397,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500089'),(398,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500089'),(399,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500125'),(400,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500125'),(401,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500149'),(402,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500149'),(403,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500176'),(404,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500176'),(405,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500201'),(406,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500201'),(407,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500233'),(408,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500233'),(409,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500270'),(410,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500270'),(411,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500317'),(412,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500317'),(413,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500346'),(414,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500346'),(415,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500382'),(416,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500382'),(417,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500427'),(418,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500427'),(419,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500459'),(420,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500459'),(421,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500488'),(422,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500488'),(423,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240430010500516'),(424,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,'20240501010500101'),(425,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500249'),(426,'8a0380938e682ec5018eee2e44110006',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500339'),(427,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500339'),(428,'8a0380938e682ec5018eee2e45430016',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500369'),(429,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500370'),(430,'8a0380938e682ec5018eee2e45f2002b',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500393'),(431,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500393'),(432,'8a0380938e682ec5018eee2e466d0033',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500419'),(433,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500419'),(434,'8a0380938e682ec5018eee2e475b005e',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500447'),(435,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500447'),(436,'8a0380938e682ec5018eee2e47c6006d',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500473'),(437,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500473'),(438,'8a0380938e682ec5018eee2e48110078',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500501'),(439,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500501'),(440,'8a0380938e682ec5018eee2e487300a2',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500524'),(441,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500524'),(442,'8a0380938e682ec5018eee2e48af00a9',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500548'),(443,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500548'),(444,'8a0380938e682ec5018eee2e48ec00b0',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500571'),(445,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500571'),(446,'8a0380938e682ec5018eee2e493300ba',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500615'),(447,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500615'),(448,'8a0380938e682ec5018eee2e498200c5',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500642'),(449,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500642'),(450,'8a0380938e682ec5018eee2e49d200cf',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500668'),(451,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500668'),(452,'8a0380938e682ec5018eee2e4a2a00d8',NULL,NULL,NULL,'8a0380938e682ec5018eee2e43340000',NULL,NULL,20000,'20240501010500693');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log_blob`
--

DROP TABLE IF EXISTS `system_log_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_log_blob` (
  `system_log_blob_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_message_blob` longblob DEFAULT NULL,
  `system_log_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`system_log_blob_id`),
  KEY `idx_system_log_id` (`system_log_id`),
  CONSTRAINT `FKo1umaw2p923iqtq8r4uh0ac91` FOREIGN KEY (`system_log_id`) REFERENCES `system_log` (`system_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log_blob`
--

LOCK TABLES `system_log_blob` WRITE;
/*!40000 ALTER TABLE `system_log_blob` DISABLE KEYS */;
INSERT INTO `system_log_blob` VALUES (162,'r9�P5�@�J�~���/�i�Xt�4�c٣�(=Y1��B��>�-0��Y;ݯ=�\Z��-���yb�`U�����-��#��6�w�����Nʚ����ә�qťu�VJ9�E�\'Y̝�����%f7�	@��K���*xz�W������',162),(163,'��`c\\�b�p� 9p&#��K��4Q��©�Cө��A����\0���JI��&>��Be�Ď��v.t���f{��j�$+�S70�V~V^I�H೷��',163),(164,'��`c\\�b�p� 9p����\n�K�D�	� �hH�s��y�pf�\Z� sR��n\'���LOOA���%�n�1T�����H^VZ��3�A�1L���Z',164),(165,'�h��u�}�D������g~wfEH�-���s5��+����k�e@q��@��~�����~�\0[~N�ҬTΟY\0�b��7�ġ���V<�e',165),(166,'��`c\\�b�p� 9p%zۤ$��Y�v-��0���sc��x����b�Z����ټ{�LXm���W�(D��kz2-��%m�\\+�CFZN�\Z&|�',166),(167,'��`c\\�b�p� 9p�XeR~���\n+�D��mLsn�֔�)v�8�Nо�H���s�\Z��wJ�kDH���H{j��+�\Z&4	�c�\"���',167),(168,'��`c\\�b�p� 9p��Txi�\n�Th*�t��D]Ϧُ`�)8�I5q��&>��Be�Ď��v.tN<+�a�mԊES���t��O�&ko�-�*',168),(169,'��C�)V܂rS�+��|EF�B���	!\ZM=R2�]��cuȴ�ȴP��Iϰ9����6��9�\0���`�{���0\n6aC;˅�m����Uɻ8DVhZU����7�',169),(170,'��`c\\�b�p� 9pZ�>B�4�Xq�K��4+��s5$��#�2m��zR��n\'���LOOA�����D��Ҁn�w\Z����b�D������',170),(171,'aԺt��/��prƤ�����*u�:q�\\�߂=�Ww~�5�U	�q��ɣXn�X���+�Q	���@\"���ǑKvǽ�!!K�m�[�n#d@e',171),(172,'��`c\\�b�p� 9p���]O�	?\n[��hH�s��y�pf�\Z� sR��n\'���LOOA���-��Da\r]hw�:�W�{]-��x!{\n��',172),(173,'��`c\\�b�p� 9p��ӝT^v�.��o��k7���9�/9E^C�J}��.\r�d�ߊ�\0G���m�_���\r���ץkv�!��4�C�5x#',173),(174,'��`c\\�b�p� 9p��Pm��slut�9w���9�B=��\Z��l�����`|\rR�WZس7���L$\Za��\'4��9���}�5{ϼ�j`�p��',174),(175,'��`c\\�b�p� 9p5�?O�\'y�g�$K(��^p����1]��?�+i��湫P��O�9�s�[cw�½������q>��ZDݸkp�b',175),(176,'��`c\\�b�p� 9p��Gq{.��B���7R��\'��b�n��\'`ՁEvlc���~�g���7��|�X#�r�����C��Z+b,R���X�',176),(177,'r9�P5�@�J�~���/�F.Q�M0�>wf���4>�B��>�-0��Y;ݯ=�\Z��-���yb�`U�����-��#��6�w�����Nʚ����ә�qťu�VJ9�E�\'Y̝���u8�o/О���Gg�����0,)�`ۻ�|�',177),(178,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',178),(179,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',179),(180,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',180),(181,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',181),(182,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',182),(183,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',183),(184,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',184),(185,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',185),(186,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',186),(187,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',187),(188,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',188),(189,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',189),(190,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',190),(191,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',191),(192,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',192),(193,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',193),(194,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',194),(195,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',195),(196,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',196),(197,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',197),(198,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',198),(199,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',199),(200,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',200),(201,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',201),(202,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',202),(203,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',203),(204,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',204),(205,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',205),(206,'�e��-g2m�.�i�{\Z!�Q�,{���Ɖr	�b��d���i�p1���׎|����������-��#��6�w�����Nʚ����ә�qťu�VJ9�E�\'Y̝�(��\\?T������Ur�N+�n�w��)(',206),(207,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',207),(208,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',208),(209,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',209),(210,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',210),(211,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',211),(212,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',212),(213,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',213),(214,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',214),(215,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',215),(216,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',216),(217,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',217),(218,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',218),(219,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',219),(220,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',220),(221,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',221),(222,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',222),(223,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',223),(224,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',224),(225,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',225),(226,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',226),(227,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',227),(228,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',228),(229,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',229),(230,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',230),(231,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',231),(232,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',232),(233,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',233),(234,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',234),(235,'r9�P5�@�J�~���/�&k�j��6^�T�a���-�{)Y�xv�l`�C�������ц�5fq��0\'YB��X� ���^nǲ���]i�ɏ����UŨ���<�O�&��NS ���8*����M�Q�2b=�|i�iU?\r�lT',235),(236,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',236),(237,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',237),(238,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',238),(239,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',239),(240,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',240),(241,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',241),(242,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',242),(243,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',243),(244,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',244),(245,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',245),(246,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',246),(247,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',247),(248,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',248),(249,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',249),(250,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',250),(251,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',251),(252,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',252),(253,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',253),(254,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',254),(255,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',255),(256,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',256),(257,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',257),(258,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',258),(259,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',259),(260,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',260),(261,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',261),(262,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',262),(263,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',263),(264,'CVc��!��Ǧ�HBT�ZM�pώ�Hg�o- �^�^��D�By�~����Ѻ���z�)��n��!5�����S6��?6�ov���sĥhr��%n�_v���Xr\ru���2�gj�$ղ�vo�2b=�|i�iU?\r�lT',264),(265,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',265),(266,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',266),(267,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',267),(268,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',268),(269,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',269),(270,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',270),(271,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',271),(272,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',272),(273,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',273),(274,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',274),(275,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',275),(276,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',276),(277,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',277),(278,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',278),(279,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',279),(280,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',280),(281,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',281),(282,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',282),(283,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',283),(284,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',284),(285,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',285),(286,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',286),(287,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',287),(288,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',288),(289,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',289),(290,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',290),(291,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',291),(292,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',292),(293,'r9�P5�@�J�~���/�&k�j��6^�T�a���-�{)Y�xv�l`�C�������ц�5fq0V���\'��<��\n���Sl�q2�ߐ�W�o�9�A��>Y_��W����B�-ȩ5��8�X�^)�L��2b=�|i�iU?\r�lT',293),(294,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',294),(295,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',295),(296,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',296),(297,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',297),(298,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',298),(299,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',299),(300,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',300),(301,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',301),(302,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',302),(303,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',303),(304,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',304),(305,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',305),(306,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',306),(307,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',307),(308,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',308),(309,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',309),(310,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',310),(311,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',311),(312,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',312),(313,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',313),(314,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',314),(315,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',315),(316,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',316),(317,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',317),(318,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',318),(319,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',319),(320,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',320),(321,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',321),(322,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',322),(323,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',323),(324,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',324),(325,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',325),(326,'CVc��!��Ǧ�HBT��1�/Ģ���	ꥑ�ǭ:i�&��q�&lr���beh>��:@P�l46k� ���/}1�]y.��_�P�����#�-\'\r����EO0%��n]Q�����j���G�y�;���B��\\\rsmS�',326),(327,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',327),(328,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',328),(329,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',329),(330,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',330),(331,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',331),(332,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',332),(333,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',333),(334,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',334),(335,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',335),(336,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',336),(337,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',337),(338,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',338),(339,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',339),(340,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',340),(341,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',341),(342,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',342),(343,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',343),(344,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',344),(345,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',345),(346,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',346),(347,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',347),(348,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',348),(349,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',349),(350,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',350),(351,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',351),(352,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',352),(353,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',353),(354,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',354),(355,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',355),(356,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',356),(357,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',357),(358,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',358),(359,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',359),(360,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',360),(361,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',361),(362,'CVc��!��Ǧ�HBT��Įl�o=Ⱥ<�K9�>4(nS��_��;%/�\"qb��kK�L��[���#F�\nUOΌ�H]�Eq~dpxz���)�z�����n����l�w\n	(-��\\3Y��~��8P�~�2b=�|i�iU?\r�lT',362),(363,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',363),(364,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',364),(365,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',365),(366,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',366),(367,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',367),(368,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',368),(369,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',369),(370,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',370),(371,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',371),(372,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',372),(373,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',373),(374,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',374),(375,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',375),(376,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',376),(377,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',377),(378,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',378),(379,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',379),(380,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',380),(381,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',381),(382,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',382),(383,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',383),(384,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',384),(385,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',385),(386,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',386),(387,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',387),(388,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',388),(389,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',389),(390,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',390),(391,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',391),(392,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',392),(393,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',393),(394,'�x�L�O�i!�X���a��\0�f2Y�-�\\Φ�ͱ���iH����-!9`]���i	�Q\0���=��΁�+�W��WB�QRu%Nώ�+��)��~��n>m.��p�紷������C�Oa�܂l',394),(395,'�e��-g2m�.�iw�oZ��t\Zƃ�c�e\Z	�<\\��w;��Y�t�߻ĺOKԾ|t Ǩ��ɝ6����?f��\Z�\"��lʼ�\r�)i�ʶ��T� 	��K��P��2�|�q�N�L�2.ѹ�2b=�|i�iU?\r�lT',395),(396,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',396),(397,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',397),(398,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',398),(399,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',399),(400,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',400),(401,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',401),(402,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',402),(403,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',403),(404,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',404),(405,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',405),(406,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',406),(407,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',407),(408,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',408),(409,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',409),(410,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',410),(411,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',411),(412,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',412),(413,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',413),(414,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',414),(415,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',415),(416,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',416),(417,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',417),(418,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',418),(419,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',419),(420,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',420),(421,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',421),(422,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',422),(423,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',423),(424,'CVc��!��Ǧ�HBT�E]�S|��&��L�e}�5;��f^���OI63>�9��Ɣ\"E��޺��.0�����\"�����#-A)���N�aQ�rb����ׄ�X�۳m|+/x�����%\r�����w��2b=�|i�iU?\r�lT',424),(425,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',425),(426,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',426),(427,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',427),(428,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',428),(429,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',429),(430,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',430),(431,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',431),(432,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',432),(433,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',433),(434,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',434),(435,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',435),(436,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',436),(437,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',437),(438,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',438),(439,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',439),(440,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',440),(441,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',441),(442,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',442),(443,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',443),(444,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',444),(445,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',445),(446,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',446),(447,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',447),(448,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',448),(449,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',449),(450,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',450),(451,'DI֕���p����h�yŮ�0�^w_&�b���x���fI۶�)��21�5S�Ը|�m���',451),(452,'DI֕���p����h�y$�P�TL�:�^�n�T4�-���]�o�_��ǊŃB!�&ď�n��[',452);
/*!40000 ALTER TABLE `system_log_blob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variable` (
  `variable_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `allow_script_updates` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `alert_after_misses` int(11) DEFAULT NULL,
  `alert_interval` int(11) DEFAULT NULL,
  `cron_string` varchar(1024) DEFAULT NULL,
  `custom_apache_params` longblob DEFAULT NULL,
  `customize_apache` bit(1) DEFAULT NULL,
  `ftp_binary` bit(1) DEFAULT NULL,
  `ftp_encryption` int(11) DEFAULT NULL,
  `ftp_passive` bit(1) DEFAULT NULL,
  `ftp_protocol` int(11) DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `last_alert_sent` datetime(6) DEFAULT NULL,
  `last_successful_check` datetime(6) DEFAULT NULL,
  `last_variable_update` datetime(6) DEFAULT NULL,
  `next_scheduled_check` datetime(6) DEFAULT NULL,
  `number_missed_checks` int(11) DEFAULT NULL,
  `password` tinyblob DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `source_encoding` varchar(255) DEFAULT NULL,
  `source_path` varchar(1024) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `username` tinyblob DEFAULT NULL,
  `csv_header` bit(1) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `csv_separator` varchar(1) DEFAULT NULL,
  `txt_type` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `use_variable_source` bit(1) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `value_encrypted` longblob DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `cred_password_changed` bit(1) DEFAULT NULL,
  `clientPassword` tinyblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UK53vkigaucnwpgaa495ta4hfqq` (`zone_id`,`name`),
  KEY `idx_variable_reference_id` (`reference_id`),
  KEY `FKcsqpjifea07d7o2xyrqj53uq6` (`package_id`),
  CONSTRAINT `FKcsqpjifea07d7o2xyrqj53uq6` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variable`
--

LOCK TABLES `variable` WRITE;
/*!40000 ALTER TABLE `variable` DISABLE KEYS */;
INSERT INTO `variable` VALUES ('8a0380938e682ec5018eee2e43c10004','admin','2024-04-17 22:29:53.217000','admin','2024-04-17 22:29:53.217000',0,'\0','Provider Look-Up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Providers',',',NULL,6,'\0',NULL,'�`.s	m2���$o�68!Um؆�.����g�&��������գ�JH��s��K	!t���檟','8a0380938e682ec5018eee2e43340000',NULL,NULL,NULL,NULL,'ff808181763fc0650176439016590012','','\0',NULL,'\0'),('8a0380938e682ec5018eee2e43d10005','admin','2024-04-17 22:29:53.233000','admin','2024-04-17 22:29:53.233000',0,'\0','Sex cross-reference',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Sex XRef',',',NULL,6,'\0',NULL,'�߮`�u����_��4�N�1o)���+�˒pR��(\"\\l��jK�Y����*��J�g*�@���','8a0380938e682ec5018eee2e43340000',NULL,NULL,NULL,NULL,'ff808181763fc06501764b6c4bee013c','','\0',NULL,'\0');
/*!40000 ALTER TABLE `variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable_audit`
--

DROP TABLE IF EXISTS `variable_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variable_audit` (
  `variable_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `allow_script_updates` bit(1) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `alert_after_misses` int(11) DEFAULT NULL,
  `alert_interval` int(11) DEFAULT NULL,
  `cron_string` varchar(1024) DEFAULT NULL,
  `custom_apache_params` longblob DEFAULT NULL,
  `customize_apache` bit(1) DEFAULT NULL,
  `ftp_binary` bit(1) DEFAULT NULL,
  `ftp_encryption` int(11) DEFAULT NULL,
  `ftp_passive` bit(1) DEFAULT NULL,
  `ftp_protocol` int(11) DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `source_encoding` varchar(255) DEFAULT NULL,
  `source_path` varchar(1024) DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL,
  `username` tinyblob DEFAULT NULL,
  `csv_header` bit(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `csv_separator` varchar(1) DEFAULT NULL,
  `txt_type` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `use_variable_source` bit(1) DEFAULT NULL,
  `value` longblob DEFAULT NULL,
  `value_encrypted` longblob DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `cred_password_changed` bit(1) DEFAULT NULL,
  `clientPassword` tinyblob DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`variable_id`,`revision`),
  KEY `FK707woybj52cvfttkr8afye1du` (`revision`),
  CONSTRAINT `FK707woybj52cvfttkr8afye1du` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variable_audit`
--

LOCK TABLES `variable_audit` WRITE;
/*!40000 ALTER TABLE `variable_audit` DISABLE KEYS */;
INSERT INTO `variable_audit` VALUES ('8a0380938e682ec5018eee2e43c10004',37,0,'admin','2024-04-17 22:29:53.217000','\0','Provider Look-Up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Providers',',',NULL,6,'\0',NULL,'�`.s	m2���$o�68!Um؆�.����g�&��������գ�JH��s��K	!t���檟','8a0380938e682ec5018eee2e43340000',NULL,NULL,NULL,NULL,'ff808181763fc0650176439016590012','','\0',NULL,'\0'),('8a0380938e682ec5018eee2e43d10005',37,0,'admin','2024-04-17 22:29:53.233000','\0','Sex cross-reference',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Sex XRef',',',NULL,6,'\0',NULL,'�߮`�u����_��4�N�1o)���+�˒pR��(\"\\l��jK�Y����*��J�g*�@���','8a0380938e682ec5018eee2e43340000',NULL,NULL,NULL,NULL,'ff808181763fc06501764b6c4bee013c','','\0',NULL,'\0');
/*!40000 ALTER TABLE `variable_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_connection`
--

DROP TABLE IF EXISTS `ws_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_connection` (
  `ws_connection_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `allow_concurrent_connections` bit(1) DEFAULT NULL,
  `auth_protocol` int(11) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `enabled_operations` longblob DEFAULT NULL,
  `endpoint_url` longblob DEFAULT NULL,
  `google_cloud_base_url` longblob DEFAULT NULL,
  `google_cloud_project_id` varchar(255) DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `include_basic_authentication_in_header` bit(1) DEFAULT NULL,
  `location` tinyblob DEFAULT NULL,
  `manage_cookies` bit(1) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `oauth2_with_cc_auth_url` longblob DEFAULT NULL,
  `oauth2_with_cc_content_type` varchar(255) DEFAULT NULL,
  `oauth2_with_cc_method` varchar(255) DEFAULT NULL,
  `oauth2_with_cc_payload` longblob DEFAULT NULL,
  `oauth2_with_cc_token_path` varchar(255) DEFAULT NULL,
  `oauth2_with_cc_token_refresh` int(11) DEFAULT NULL,
  `password` tinyblob DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `refresh_token_expire_path` varchar(255) DEFAULT NULL,
  `refresh_token_fixed_time` int(11) DEFAULT NULL,
  `refresh_token_path` varchar(255) DEFAULT NULL,
  `refresh_token_payload` longblob DEFAULT NULL,
  `refresh_token_url` longblob DEFAULT NULL,
  `secure_connection` bit(1) DEFAULT NULL,
  `skip_preempt_auth` bit(1) DEFAULT NULL,
  `http_headers` longblob DEFAULT NULL,
  `oauth2_http_headers` longblob DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `token_content` longblob DEFAULT NULL,
  `token_server_url` longblob DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `ws_type` varchar(255) NOT NULL,
  `user_name` tinyblob DEFAULT NULL,
  `wsdl_url` longblob DEFAULT NULL,
  `zone_id` varchar(32) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `google_datastore_config` longblob DEFAULT NULL,
  `google_json_keyfile` longblob DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `token_config` longblob DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `wsdl_blob` longblob DEFAULT NULL,
  `ssl_certificate_id2` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `aws_region` varchar(45) DEFAULT NULL,
  `aws_service` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ws_connection_id`),
  UNIQUE KEY `UKbvmrjbvmrv2k24m53bg7p5eip` (`zone_id`,`name`),
  KEY `idx_ws_connection_reference_id` (`reference_id`),
  KEY `idx_ws_connection_ssl_certificate_id` (`ssl_certificate_id`),
  KEY `idx_ws_connection_ssl_certificate_id2` (`ssl_certificate_id2`),
  KEY `FK7oepsa6onskbrip661o9qy34l` (`package_id`),
  CONSTRAINT `FK7oepsa6onskbrip661o9qy34l` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `FKo3ny6xe14k5eca37hkhk2t1qn` FOREIGN KEY (`ssl_certificate_id2`) REFERENCES `ssl_certificate` (`ssl_certificate_id`),
  CONSTRAINT `FKt5252xeod75sf868c0vm5aqg5` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_connection`
--

LOCK TABLES `ws_connection` WRITE;
/*!40000 ALTER TABLE `ws_connection` DISABLE KEYS */;
INSERT INTO `ws_connection` VALUES ('8a0380938e682ec5018eee2e437f0002','admin','2024-04-17 22:29:53.151000','admin','2024-04-17 22:29:53.151000',0,'',1,NULL,'Soap example',NULL,NULL,'http://<host>:<port>/<location>',NULL,'UY�N$�����ǉ��V�#}<��YE�.@�U�','\0','|p[�̯��R�{�ٝ�9�\\I\'�ڣ4�r�','','Google Maps',NULL,NULL,NULL,NULL,NULL,NULL,'�����C�Oa�܂l',443,NULL,NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,NULL,1,'rest-form',NULL,'http://<host>:<port>/<location>','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','ff808181763fc06501764411f7ff0099',NULL,'',NULL,NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e43940003','admin','2024-04-17 22:29:53.172000','admin','2024-04-17 22:29:53.172000',0,'',1,NULL,'Get BMI ',NULL,NULL,'http://<host>:<port>/<location>?wsdl',NULL,'�w�V\"\n\")dNu\n�','\0',NULL,'','BMI',NULL,NULL,NULL,NULL,NULL,NULL,'�����C�Oa�܂l',80,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,NULL,1,'wsdl',NULL,'http://qvera.com:7485/webservices/bmiservice.asmx?wsdl','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','ff808181763fc06501764b7a2ce1013d',NULL,'','X��l`/dC%\njhqfZA����\r���_k��:#��$t��U����%Mb�\'~Y��9�:<�t0�r�l�\'É�����\n3\Z����#���Q��-�N�\"���u���Z�p�t})�ڬ�&����+\n���@�z�\\��.�҇Thc�C�o�)������`��q�9P����<�ݱQ�.xݧ���䍰E	�Dh� ���؃��U�vH]�z�SwI!��BH٪���]T+�Y�̛A�k8Θ��v5l�����Z�tEb����@�#<���j2�����%]�B�@5��1J�\\R�,9��`��\'8y�\n8J�&�,��\r5��Fl��<��K�Tբ*�=3Z��e�Z�U��;����Q��YwM#5�K�n�ѱ�fe--\Z��M&�(g \rZ�N����i�l���D�M�-^*��f�*�b^�**�Gm:�&�-ڇ�F�c�Z=쌬�@$�2�IMN*��ʥ�x\'<T����u,�F�����L5�y�Z.�M\0<Fk\Z��wM�/YB�Sf:��<�O�:8/��17�U��=>����\Z`��������/�ܺ~D\n���Ϥ/�l3w�V���Ę�h\\8���\r�6IW�0��< 2w��Ϟ��@x~��h���#���4��Z��\"��#k��l�ߝ������v>����局�ٕ3@��#���N��ui�r3�\Zy���[X5�O�I`�9����i�?��NSpk�w-�C���,4��5���B)4`���r�Y�ԍ���H��>\rb�+\0ێ��������Xe���x�@���.��I\Zz}��\ZT��&����kA��`{A�0\r�Rp��ռE��rv�Gg��[��)�>�\'ND�g)i%	��t}}�ß�M��y�6nfQѨ�Yvk��nucS� G��ɨ�8��0e��J\'4T�j���t��]�y�p8���P�4���Ax��#9�q�a�\r�F���$�a��MD`%}�<��7��]uLy�k��6��?} >~�un�Ξv=��z[�U(S�?P��g��/=x�5Z�&p����_�CO�pl=��2F��bz{�y���D&���>�a{N�st�$B�ɛ+4�&���zơp�N�=�0&�^[Tr �~��6BȲ1�jf�$�W@�=��w�0��̈��v>����局��g�oS�K���t�M�+6E. ��Z���Z���/R[N�d߽W:A�KXژ��*�\'�\09mt1�(<�l���i_�6���(�2O�9�MN\\MjJw�8�f-؏>��>�B�c�q�ino�@��������:_\0O��L�ܢ1}ΫN�Qs��a�r���Fy\\s�4�2e_��r����\'��5R��vSA��a�D�U��K��߬Y}���r�j)S� G��ɨ�8��0e��7S�Ց�G����#>=��H�&W�L�(�����Y��+I�\0�>}�jS�DmM��2n�~D�\0�����d�HWņ?r�\\h�-\n�=�	H�pQc8~4a{���։��Æ	�7w�_�>���}�����	\r���${?�+2F��bz{�y���D&���>�a{N�st�$B�ɛ+4�&���zơpƽ�\r�V�e�������\ZU�n��sR�W�i,Pp ��~�2:۳\'Yc��������bЍ�	�P�ʊ�{�6��5q��[���F1T���Y��5q�=�����zM��~B�N���T�F�Վ��#���4��Z��\"��#k��l�ߝ������v>����局�ٕ3@��#���N��ui���\"塛����J��ub�+\0ێ��������Xe���x�@���.��I\Zz}��\ZT��&����kA��`{A�0\r�Rp��ռ��SP�����/I��xՁ�D�LZ>ͺ�\"�EF@��������:_\0O��L�ܢ1}ΫN�Qs��a�r���Fy\\s�4����ʠ�����20���aÒ{�\0n����<><#=|m�&\nE#\n㉆Ձ��=�Lu�J֥���e���x�@���.��I\Zz}��\ZT��&����kA+���\\}�����xxA������/���`�b@��/���5:�a�gGm�o���t;�\\$F�ć�I��>���ǃ<[��I��O>��r��J��\r�g���J�2���\0p�\"8`n�:6�^��Z?�U�O�^�z3@�l����NʹM����*����s�~�\0-s�E��rv�Gg��[�޻^L�Qwт�\'�Û����<����ߋٱ����2;-<��!� :͊%L<���.�	��Q�h#�ҏq7+���)K6(�>���!�_��A{-� ���p5��۫�1k_`Ւ���I�*\n:�g^4~�?��\'̟��3y@� v�v�ΰ�R�7 �$���)��9FWoh�\0{�xk`��f�s�M?E�@��/���5:�a�gGm�wl�8M\\-�	��C���1ZҤ�x8���T=�ŀO>��r��J��\r�g��Z�T���u�ō��0\r�F�͟�\'$\0Sʂ�;B�r3�Bm!�x�z�������3�yt�3���c_kna��Z�\r�%�ճ�D\rJ�N�m���i�t?�{���Pw��+i#\"���1C���M�\rŬI��b��L@ݛ��ar��y���U��6{zb;c?�Q���޸���J�4W��S\'5L���&���NO�ʁ�]\'&}!�?�{���Pw��+i#\"���1C���M�\rŬI\r�I2�\0\rA�y�I�O������#dBG���Q�(����\Z����֞��t6Y������SjB�_�B���0Nb:�[�%�b�-����A���[c%��`8_�GF�SH�����r����������X��\\`ϖV�$a�Ò<�}��9��듔C6�I�\\4@Gm�gAc���;fإ)������a�Ò<�}��9��듔C��>n�h�\"�Ȉ�!�ѝB���Ӌt��H�������W|�b:��\r�A�Y��yW����}X ������:����P0n���P�ʿ����}��[<�_�$��f�?\"�bu�^�Jr��y�,Q��z�����e�(\"�]$Z(�����̄�W����3h8-����	oV=�)���^l݈&�nJ��\Z\r@�{%/���\n��y$ᡇ#��7��(B�&\\�$!`\\(K��bIcPR4�����7��ȸ��C*\ZV�QpRo�0k��1�xkig�%^��	����mS�l�er�\r,�Pz�\r#��&�_fl5m%ma�[L��7%v{�קĺ�*r뤛�A\\x�p+�������d���gX��<|\'>.��A5�&5��Á�i\r���C_�`�ֹ���r�AO�}Bm��\0B�2�	;�P����[\\�\"��\0=e�8$��O��s�$Q��T�d��F��>_p�<3�=��.Ф�,T���l��*t�0����;���D��T%��+4��DF���3��R�����\0Gn�n�s�G��U�U^�������\n��?�Z2J1�[�u�A�CW�+V.�D���q���\\�O+���Ns�~���v����W7�j����0]T�Mߝ�A���r��r��$�R�=)�Gx�jw���ɝ\ZN¬I�Cb�v����\Zp���5�ＧQF2��<۔Pc���;$tw.��xH�4�����H���w;��w��T��Jt�\'�ӓn�u�Vp�~�-2��܃�p�C�,�]mR��KO#@���]L��\Z�A#$I��\"CU�s߳#��m.gu��m\0���_���a�w20*-�u���eM@�=����%�B��)���\"��$�z������@�TY��WrS����+ձU�B��&fSP��f����|.���i5X��hb�kIR\n�V!�J��R%�����3h8-����	oV=�)���^l݈&�nJ��\Z\r@�{%/���\n��y \ra�*��C�+����M�Ijq�Q�V��2qD���/�ܺ~D\n����<&�\r�6<`�����mX�><��+���!��3Q���T�����6D���H9g~hf�5ՙz#���r�����nǈw�<E\\���g��#�^��<�.��͡�j�ܕ7L�;�r�[���F��&_�V��y�_��y/M|n\0A��]}�\Z����9?�R��sp\rot��2��R�9�fؤM�7�\n����s��Fm��ؘ�P(Ұ(��{��\'n�QS�=��K7�����O֊��I\'�3�i�Wf�-���tY\0��g~��2�zU�B[kT���*�g�����\'�kW��V��T�(�^(���Sx*5����Y�7FA�m�C����l2uBު�ׇho���J3�K��/3hK�_E���)��/dh/��u���R_�ח�%7{��������b��t����R5?`*�v���� �{_��x�7�����K3��gՓ�f�������c�v��r�����nǈw�<E\\���g��#�^��<�.���F�+�[�\"[]�������&�.,�l��_�f���F5�2p��\'�.���D�@윋����?�ǌ7�wD�������U����8�Νv�\Z�v�LY�͝���S9���&�gA�f�K=^٭����A�a	\'�������Lxϗ��蜅\Z�\'��C$OO��lٯ��C��%.��-���\n>Z�R���t��S�{��#��o�S�{Y+���_@�z������@�TY��WrS����+ձU�B��&fger�$�!��t��\'�%���p�r�Z��\0/�Bd�p漮�֦�<�V���2E�ܰ�/�U3�=��.Ф�,T���lꈈsl���*���ݱ>0 R��c��P�����3��R�����\0Gn�n�s�G��U�U^����o��^UbV`�Sz����UZ#��T��Uj_���6y���fI�p��UM�Vq�:��&����Gp���W7�j����0]T�Mߝ�A���r��r��$�R�=)�Gx�jw������\r����_�(���o�a뷑I\0	��{�h�q?$\r\0-���O�\"{/�[k�p�8��Q�\n%��\\���w��Ab�U�_�91���[��2:�S�O�w�-K��x��/��(�n��3���r�n�{n��kp����^Es��Ʉ���sFߣ�fe\Z��=h{��@>�\"�<����\\f������mq�>I��F`�p]���i�t��\"?�9�T�B0y��W�-)�@ڢ�<�-�Dg��׋����r�T��� �������e�?\\\\RJ�y�AP���\n��IB���,�����}(�d���gX��<|\'>.Ь��WƅU��� Ry�ӻ�ec��M�R\\��.���n�s�G��U�U^����$7c<��f����$Fp!H�T2	 }�6���9�cg��OI�3J欄��(@yS��H��&����5�W,�S�wx�y����9��\ZbQ��i��ߤg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ws_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_connection_audit`
--

DROP TABLE IF EXISTS `ws_connection_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_connection_audit` (
  `ws_connection_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `allow_concurrent_connections` bit(1) DEFAULT NULL,
  `auth_protocol` int(11) DEFAULT NULL,
  `cipher_suites` varchar(4096) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `enabled_operations` longblob DEFAULT NULL,
  `endpoint_url` longblob DEFAULT NULL,
  `google_cloud_base_url` longblob DEFAULT NULL,
  `google_cloud_project_id` varchar(255) DEFAULT NULL,
  `host` tinyblob DEFAULT NULL,
  `include_basic_authentication_in_header` bit(1) DEFAULT NULL,
  `location` tinyblob DEFAULT NULL,
  `manage_cookies` bit(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `oauth2_with_cc_auth_url` longblob DEFAULT NULL,
  `oauth2_with_cc_content_type` varchar(255) DEFAULT NULL,
  `oauth2_with_cc_method` varchar(255) DEFAULT NULL,
  `oauth2_with_cc_payload` longblob DEFAULT NULL,
  `oauth2_with_cc_token_path` varchar(255) DEFAULT NULL,
  `oauth2_with_cc_token_refresh` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `refresh_token_expire_path` varchar(255) DEFAULT NULL,
  `refresh_token_fixed_time` int(11) DEFAULT NULL,
  `refresh_token_path` varchar(255) DEFAULT NULL,
  `refresh_token_payload` longblob DEFAULT NULL,
  `refresh_token_url` longblob DEFAULT NULL,
  `secure_connection` bit(1) DEFAULT NULL,
  `skip_preempt_auth` bit(1) DEFAULT NULL,
  `http_headers` longblob DEFAULT NULL,
  `oauth2_http_headers` longblob DEFAULT NULL,
  `tls_version` varchar(32) DEFAULT NULL,
  `token_content` longblob DEFAULT NULL,
  `token_server_url` longblob DEFAULT NULL,
  `ssl_trust_policy` int(11) DEFAULT NULL,
  `ws_type` varchar(255) DEFAULT NULL,
  `user_name` tinyblob DEFAULT NULL,
  `wsdl_url` longblob DEFAULT NULL,
  `zone_id` varchar(32) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `google_datastore_config` longblob DEFAULT NULL,
  `google_json_keyfile` longblob DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `publishable` bit(1) DEFAULT NULL,
  `viewable` bit(1) DEFAULT NULL,
  `package_id` varchar(32) DEFAULT NULL,
  `password_changed` bit(1) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `token_config` longblob DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  `wsdl_blob` longblob DEFAULT NULL,
  `ssl_certificate_id2` varchar(32) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `aws_region` varchar(45) DEFAULT NULL,
  `aws_service` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ws_connection_id`,`revision`),
  KEY `FKt4ahnbisjhbl5a48bspt1cccy` (`revision`),
  CONSTRAINT `FKt4ahnbisjhbl5a48bspt1cccy` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_connection_audit`
--

LOCK TABLES `ws_connection_audit` WRITE;
/*!40000 ALTER TABLE `ws_connection_audit` DISABLE KEYS */;
INSERT INTO `ws_connection_audit` VALUES ('8a0380938e682ec5018eee2e437f0002',37,0,'admin','2024-04-17 22:29:53.151000','',1,NULL,'Soap example',NULL,NULL,'http://<host>:<port>/<location>',NULL,'UY�N$�����ǉ��V�#}<��YE�.@�U�','\0','|p[�̯��R�{�ٝ�9�\\I\'�ڣ4�r�','','Google Maps',NULL,NULL,NULL,NULL,NULL,NULL,443,NULL,NULL,NULL,NULL,NULL,'','\0',NULL,NULL,NULL,NULL,NULL,1,'rest-form',NULL,'http://<host>:<port>/<location>','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','ff808181763fc06501764411f7ff0099',NULL,'',NULL,NULL,NULL,NULL,NULL),('8a0380938e682ec5018eee2e43940003',37,0,'admin','2024-04-17 22:29:53.172000','',1,NULL,'Get BMI ',NULL,NULL,'http://<host>:<port>/<location>?wsdl',NULL,'�w�V\"\n\")dNu\n�','\0',NULL,'','BMI',NULL,NULL,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,NULL,NULL,NULL,1,'wsdl',NULL,'http://qvera.com:7485/webservices/bmiservice.asmx?wsdl','8a0380938e682ec5018eee2e43340000','',NULL,NULL,NULL,NULL,NULL,NULL,'\0','ff808181763fc06501764b7a2ce1013d',NULL,'','X��l`/dC%\njhqfZA����\r���_k��:#��$t��U����%Mb�\'~Y��9�:<�t0�r�l�\'É�����\n3\Z����#���Q��-�N�\"���u���Z�p�t})�ڬ�&����+\n���@�z�\\��.�҇Thc�C�o�)������`��q�9P����<�ݱQ�.xݧ���䍰E	�Dh� ���؃��U�vH]�z�SwI!��BH٪���]T+�Y�̛A�k8Θ��v5l�����Z�tEb����@�#<���j2�����%]�B�@5��1J�\\R�,9��`��\'8y�\n8J�&�,��\r5��Fl��<��K�Tբ*�=3Z��e�Z�U��;����Q��YwM#5�K�n�ѱ�fe--\Z��M&�(g \rZ�N����i�l���D�M�-^*��f�*�b^�**�Gm:�&�-ڇ�F�c�Z=쌬�@$�2�IMN*��ʥ�x\'<T����u,�F�����L5�y�Z.�M\0<Fk\Z��wM�/YB�Sf:��<�O�:8/��17�U��=>����\Z`��������/�ܺ~D\n���Ϥ/�l3w�V���Ę�h\\8���\r�6IW�0��< 2w��Ϟ��@x~��h���#���4��Z��\"��#k��l�ߝ������v>����局�ٕ3@��#���N��ui�r3�\Zy���[X5�O�I`�9����i�?��NSpk�w-�C���,4��5���B)4`���r�Y�ԍ���H��>\rb�+\0ێ��������Xe���x�@���.��I\Zz}��\ZT��&����kA��`{A�0\r�Rp��ռE��rv�Gg��[��)�>�\'ND�g)i%	��t}}�ß�M��y�6nfQѨ�Yvk��nucS� G��ɨ�8��0e��J\'4T�j���t��]�y�p8���P�4���Ax��#9�q�a�\r�F���$�a��MD`%}�<��7��]uLy�k��6��?} >~�un�Ξv=��z[�U(S�?P��g��/=x�5Z�&p����_�CO�pl=��2F��bz{�y���D&���>�a{N�st�$B�ɛ+4�&���zơp�N�=�0&�^[Tr �~��6BȲ1�jf�$�W@�=��w�0��̈��v>����局��g�oS�K���t�M�+6E. ��Z���Z���/R[N�d߽W:A�KXژ��*�\'�\09mt1�(<�l���i_�6���(�2O�9�MN\\MjJw�8�f-؏>��>�B�c�q�ino�@��������:_\0O��L�ܢ1}ΫN�Qs��a�r���Fy\\s�4�2e_��r����\'��5R��vSA��a�D�U��K��߬Y}���r�j)S� G��ɨ�8��0e��7S�Ց�G����#>=��H�&W�L�(�����Y��+I�\0�>}�jS�DmM��2n�~D�\0�����d�HWņ?r�\\h�-\n�=�	H�pQc8~4a{���։��Æ	�7w�_�>���}�����	\r���${?�+2F��bz{�y���D&���>�a{N�st�$B�ɛ+4�&���zơpƽ�\r�V�e�������\ZU�n��sR�W�i,Pp ��~�2:۳\'Yc��������bЍ�	�P�ʊ�{�6��5q��[���F1T���Y��5q�=�����zM��~B�N���T�F�Վ��#���4��Z��\"��#k��l�ߝ������v>����局�ٕ3@��#���N��ui���\"塛����J��ub�+\0ێ��������Xe���x�@���.��I\Zz}��\ZT��&����kA��`{A�0\r�Rp��ռ��SP�����/I��xՁ�D�LZ>ͺ�\"�EF@��������:_\0O��L�ܢ1}ΫN�Qs��a�r���Fy\\s�4����ʠ�����20���aÒ{�\0n����<><#=|m�&\nE#\n㉆Ձ��=�Lu�J֥���e���x�@���.��I\Zz}��\ZT��&����kA+���\\}�����xxA������/���`�b@��/���5:�a�gGm�o���t;�\\$F�ć�I��>���ǃ<[��I��O>��r��J��\r�g���J�2���\0p�\"8`n�:6�^��Z?�U�O�^�z3@�l����NʹM����*����s�~�\0-s�E��rv�Gg��[�޻^L�Qwт�\'�Û����<����ߋٱ����2;-<��!� :͊%L<���.�	��Q�h#�ҏq7+���)K6(�>���!�_��A{-� ���p5��۫�1k_`Ւ���I�*\n:�g^4~�?��\'̟��3y@� v�v�ΰ�R�7 �$���)��9FWoh�\0{�xk`��f�s�M?E�@��/���5:�a�gGm�wl�8M\\-�	��C���1ZҤ�x8���T=�ŀO>��r��J��\r�g��Z�T���u�ō��0\r�F�͟�\'$\0Sʂ�;B�r3�Bm!�x�z�������3�yt�3���c_kna��Z�\r�%�ճ�D\rJ�N�m���i�t?�{���Pw��+i#\"���1C���M�\rŬI��b��L@ݛ��ar��y���U��6{zb;c?�Q���޸���J�4W��S\'5L���&���NO�ʁ�]\'&}!�?�{���Pw��+i#\"���1C���M�\rŬI\r�I2�\0\rA�y�I�O������#dBG���Q�(����\Z����֞��t6Y������SjB�_�B���0Nb:�[�%�b�-����A���[c%��`8_�GF�SH�����r����������X��\\`ϖV�$a�Ò<�}��9��듔C6�I�\\4@Gm�gAc���;fإ)������a�Ò<�}��9��듔C��>n�h�\"�Ȉ�!�ѝB���Ӌt��H�������W|�b:��\r�A�Y��yW����}X ������:����P0n���P�ʿ����}��[<�_�$��f�?\"�bu�^�Jr��y�,Q��z�����e�(\"�]$Z(�����̄�W����3h8-����	oV=�)���^l݈&�nJ��\Z\r@�{%/���\n��y$ᡇ#��7��(B�&\\�$!`\\(K��bIcPR4�����7��ȸ��C*\ZV�QpRo�0k��1�xkig�%^��	����mS�l�er�\r,�Pz�\r#��&�_fl5m%ma�[L��7%v{�קĺ�*r뤛�A\\x�p+�������d���gX��<|\'>.��A5�&5��Á�i\r���C_�`�ֹ���r�AO�}Bm��\0B�2�	;�P����[\\�\"��\0=e�8$��O��s�$Q��T�d��F��>_p�<3�=��.Ф�,T���l��*t�0����;���D��T%��+4��DF���3��R�����\0Gn�n�s�G��U�U^�������\n��?�Z2J1�[�u�A�CW�+V.�D���q���\\�O+���Ns�~���v����W7�j����0]T�Mߝ�A���r��r��$�R�=)�Gx�jw���ɝ\ZN¬I�Cb�v����\Zp���5�ＧQF2��<۔Pc���;$tw.��xH�4�����H���w;��w��T��Jt�\'�ӓn�u�Vp�~�-2��܃�p�C�,�]mR��KO#@���]L��\Z�A#$I��\"CU�s߳#��m.gu��m\0���_���a�w20*-�u���eM@�=����%�B��)���\"��$�z������@�TY��WrS����+ձU�B��&fSP��f����|.���i5X��hb�kIR\n�V!�J��R%�����3h8-����	oV=�)���^l݈&�nJ��\Z\r@�{%/���\n��y \ra�*��C�+����M�Ijq�Q�V��2qD���/�ܺ~D\n����<&�\r�6<`�����mX�><��+���!��3Q���T�����6D���H9g~hf�5ՙz#���r�����nǈw�<E\\���g��#�^��<�.��͡�j�ܕ7L�;�r�[���F��&_�V��y�_��y/M|n\0A��]}�\Z����9?�R��sp\rot��2��R�9�fؤM�7�\n����s��Fm��ؘ�P(Ұ(��{��\'n�QS�=��K7�����O֊��I\'�3�i�Wf�-���tY\0��g~��2�zU�B[kT���*�g�����\'�kW��V��T�(�^(���Sx*5����Y�7FA�m�C����l2uBު�ׇho���J3�K��/3hK�_E���)��/dh/��u���R_�ח�%7{��������b��t����R5?`*�v���� �{_��x�7�����K3��gՓ�f�������c�v��r�����nǈw�<E\\���g��#�^��<�.���F�+�[�\"[]�������&�.,�l��_�f���F5�2p��\'�.���D�@윋����?�ǌ7�wD�������U����8�Νv�\Z�v�LY�͝���S9���&�gA�f�K=^٭����A�a	\'�������Lxϗ��蜅\Z�\'��C$OO��lٯ��C��%.��-���\n>Z�R���t��S�{��#��o�S�{Y+���_@�z������@�TY��WrS����+ձU�B��&fger�$�!��t��\'�%���p�r�Z��\0/�Bd�p漮�֦�<�V���2E�ܰ�/�U3�=��.Ф�,T���lꈈsl���*���ݱ>0 R��c��P�����3��R�����\0Gn�n�s�G��U�U^����o��^UbV`�Sz����UZ#��T��Uj_���6y���fI�p��UM�Vq�:��&����Gp���W7�j����0]T�Mߝ�A���r��r��$�R�=)�Gx�jw������\r����_�(���o�a뷑I\0	��{�h�q?$\r\0-���O�\"{/�[k�p�8��Q�\n%��\\���w��Ab�U�_�91���[��2:�S�O�w�-K��x��/��(�n��3���r�n�{n��kp����^Es��Ʉ���sFߣ�fe\Z��=h{��@>�\"�<����\\f������mq�>I��F`�p]���i�t��\"?�9�T�B0y��W�-)�@ڢ�<�-�Dg��׋����r�T��� �������e�?\\\\RJ�y�AP���\n��IB���,�����}(�d���gX��<|\'>.Ь��WƅU��� Ry�ӻ�ec��M�R\\��.���n�s�G��U�U^����$7c<��f����$Fp!H�T2	 }�6���9�cg��OI�3J欄��(@yS��H��&����5�W,�S�wx�y����9��\ZbQ��i��ߤg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ws_connection_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_connection_ssl_certificate`
--

DROP TABLE IF EXISTS `ws_connection_ssl_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_connection_ssl_certificate` (
  `ws_connection_ssl_certificate_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_connection_ssl_certificate_id`),
  UNIQUE KEY `UKrkv1v1r7h0lm6v5p5mw2pv1w7` (`ws_connection_id`,`ssl_certificate_id`),
  KEY `ws_connection_ssl_certificate_connection_id` (`ws_connection_id`),
  KEY `ws_connection_ssl_certificate_certificate_id` (`ssl_certificate_id`),
  CONSTRAINT `FK4nmm6lo5kno0lmu2975a2ao6b` FOREIGN KEY (`ssl_certificate_id`) REFERENCES `ssl_certificate` (`ssl_certificate_id`),
  CONSTRAINT `FK61re9m6g4401tdouh3t9britg` FOREIGN KEY (`ws_connection_id`) REFERENCES `ws_connection` (`ws_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_connection_ssl_certificate`
--

LOCK TABLES `ws_connection_ssl_certificate` WRITE;
/*!40000 ALTER TABLE `ws_connection_ssl_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_connection_ssl_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_connection_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `ws_connection_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_connection_ssl_certificate_audit` (
  `ws_connection_ssl_certificate_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `force_modification_for_audit` bit(1) DEFAULT NULL,
  `ssl_certificate_id` varchar(32) DEFAULT NULL,
  `ws_connection_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ws_connection_ssl_certificate_id`,`revision`),
  KEY `FKg60i5xyd8kn0hfgoi0gw0l2vg` (`revision`),
  CONSTRAINT `FKg60i5xyd8kn0hfgoi0gw0l2vg` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_connection_ssl_certificate_audit`
--

LOCK TABLES `ws_connection_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `ws_connection_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_connection_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_connection_ws_connection_ssl_certificate_audit`
--

DROP TABLE IF EXISTS `ws_connection_ws_connection_ssl_certificate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_connection_ws_connection_ssl_certificate_audit` (
  `revision` int(11) NOT NULL,
  `ws_connection_id` varchar(32) NOT NULL,
  `ws_connection_ssl_certificate_id` varchar(32) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision`,`ws_connection_id`,`ws_connection_ssl_certificate_id`),
  CONSTRAINT `FKkffrryxu3wqq0onxbbuecqjtl` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_connection_ws_connection_ssl_certificate_audit`
--

LOCK TABLES `ws_connection_ws_connection_ssl_certificate_audit` WRITE;
/*!40000 ALTER TABLE `ws_connection_ws_connection_ssl_certificate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_connection_ws_connection_ssl_certificate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zone_id` varchar(32) NOT NULL,
  `created_by_userid` varchar(25) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `color` varchar(6) NOT NULL,
  `description` longblob DEFAULT NULL,
  `hot_key` varchar(1) DEFAULT NULL,
  `license_group_id` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`zone_id`),
  UNIQUE KEY `UK_27s7q3vqft9a76yi9k7e7rroi` (`name`),
  KEY `idx_zone_reference_id` (`reference_id`),
  KEY `FKjsycmy0ufkqqk4s9tt11hn7js` (`license_group_id`),
  CONSTRAINT `FKjsycmy0ufkqqk4s9tt11hn7js` FOREIGN KEY (`license_group_id`) REFERENCES `secure_license_zone` (`license_group_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES ('8a0380938e682ec5018eee2e43340000','admin','2024-04-17 22:29:53.076000','admin','2024-04-17 22:29:53.076000',0,'blue',NULL,NULL,NULL,'Level 1 Certification','8a8080834fe543f7014ff1be939a005e',''),('8a0380ca872dfb8c01872dfc081f0000','sys','2023-03-29 15:28:24.607000','sys','2023-03-29 15:28:24.607000',0,'blue','Global Settings','G',NULL,'Global Settings','0',''),('8a0380ca872dfb8c01872dfc08310001','sys','2023-03-29 15:28:24.625000','sys','2023-03-29 15:28:24.626000',1,'blue','','D',NULL,'Default Zone','8a0380ca872dfb8c01872dfc08310001','');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_audit`
--

DROP TABLE IF EXISTS `zone_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_audit` (
  `zone_id` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL,
  `revision_type` tinyint(4) DEFAULT NULL,
  `modified_by_userid` varchar(25) DEFAULT NULL,
  `modified_timestamp` datetime(6) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `hot_key` varchar(1) DEFAULT NULL,
  `license_group_id` varchar(32) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `updated_via_import` bit(1) DEFAULT NULL,
  PRIMARY KEY (`zone_id`,`revision`),
  KEY `FK99ilbq4gt1mr1ol33tv79f2be` (`revision`),
  CONSTRAINT `FK99ilbq4gt1mr1ol33tv79f2be` FOREIGN KEY (`revision`) REFERENCES `REVINFO` (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_audit`
--

LOCK TABLES `zone_audit` WRITE;
/*!40000 ALTER TABLE `zone_audit` DISABLE KEYS */;
INSERT INTO `zone_audit` VALUES ('8a0380938e682ec5018eee2e43340000',37,0,'admin','2024-04-17 22:29:53.076000','blue',NULL,NULL,NULL,'Level 1 Certification','8a8080834fe543f7014ff1be939a005e',''),('8a0380ca872dfb8c01872dfc081f0000',3,0,'sys','2023-03-29 15:28:24.607000','blue','Global Settings','G',NULL,'Global Settings','0',''),('8a0380ca872dfb8c01872dfc08310001',3,0,'sys','2023-03-29 15:28:24.626000','blue','','D',NULL,'Default Zone','8a0380ca872dfb8c01872dfc08310001','');
/*!40000 ALTER TABLE `zone_audit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 13:35:41
