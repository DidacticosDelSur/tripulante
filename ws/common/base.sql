
CREATE DATABASE `tripulantes`;

CREATE TABLE `libros` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`titulo` VARCHAR(100) NOT NULL DEFAULT '',
	`link` VARCHAR(100) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
)
ENGINE=MyISAM
;

CREATE TABLE `paginas` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`libro_id` INT(11) NOT NULL,
	`nro` INT(11) NOT NULL,
	`primera` TINYINT(4) NULL DEFAULT NULL COMMENT '1 si es la primer página',
	`ultima` TINYINT(4) NULL DEFAULT NULL COMMENT '1 si es la última página',
	`imagen` VARCHAR(100) NOT NULL DEFAULT '',
	`imagen_mobile` VARCHAR(100) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
)
ENGINE=MyISAM
;
CREATE TABLE `audios` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`pagina_id` INT(11) NOT NULL DEFAULT '0',
	`archivo` VARCHAR(100) NOT NULL DEFAULT '' COMMENT 'Ruta del audio',
	`ubicacion` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'ubicacion del reproductor si es distinto de bottom',
	PRIMARY KEY (`id`)
)
COLLATE='utf8_spanish_ci'
ENGINE=MyISAM
CREATE TABLE `parrafos` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`pagina_id` INT(11) NOT NULL DEFAULT '0',
	`texto` TEXT NOT NULL COLLATE 'utf8_spanish_ci',
	`carilla` TINYINT(4) NOT NULL DEFAULT '1' COMMENT 'Si pertenece a la carilla 1 o 2 de la pagina',
	`ubicacion` VARCHAR(50) NULL DEFAULT '' COMMENT 'lugar del texto en la carilla' COLLATE 'utf8_spanish_ci',
	`estilos` VARCHAR(50) NULL DEFAULT '' COMMENT 'estilos del texto' COLLATE 'utf8_spanish_ci',
	PRIMARY KEY (`id`)
)
COLLATE='utf8_spanish_ci'