create database if not exists omotebako default character set utf8 collate utf8_general_ci;
drop table if exists `guest`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
create table `guest`
(
    `guest_id`        int(11) NOT NULL AUTO_INCREMENT,
    `gender_by_face`  varchar(10)  DEFAULT NULL,
    `age_by_face`     float        DEFAULT NULL,
    `face_id_azure`   varchar(100) DEFAULT NULL,
    `face_image_path` varchar(100) DEFAULT NULL,
    `create_date`     datetime     DEFAULT current_timestamp(),
    `update_date`     datetime     DEFAULT NULL ON UPDATE current_timestamp(),
    `delete_flag`     tinyint(4)   DEFAULT 0,
    PRIMARY KEY (`guest_id`),
    CONSTRAINT `gender_fk` FOREIGN KEY (`gender`) REFERENCES `gender_master` (`gender_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--
