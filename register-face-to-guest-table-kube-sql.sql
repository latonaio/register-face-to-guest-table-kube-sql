CREATE TABLE `register-face-to-guest-table-kube` /*必要に応じてテーブル名を編集してください*/
(
    `guest_id`        int(11) NOT NULL AUTO_INCREMENT,
    `face_id_azure`   varchar(100) DEFAULT NULL,
    `face_image_path` varchar(100) DEFAULT NULL,
    `create_date`     datetime     DEFAULT current_timestamp(),
    `update_date`     datetime     DEFAULT NULL ON UPDATE current_timestamp(),
    `delete_flag`     tinyint(4)   DEFAULT 0,
    PRIMARY KEY (`guest_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4;