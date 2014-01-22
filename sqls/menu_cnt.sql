CREATE TABLE `menu_cnt` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu`     	VARCHAR(20)       NOT NULL,
  `cnt`        	INT(11)           NOT NULL,
  `wdate`       TIMESTAMP         NOT NULL DEFAULT CURRENT_TIMESTAMP,
 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
