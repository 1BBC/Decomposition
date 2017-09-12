CREATE TABLE IF NOT EXISTS `decomposition` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(60) DEFAULT '', 
    `difficult` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) 
)
COMMENT = 'Decomposition';


 

