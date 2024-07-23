
CREATE DATABASE `tripulantes`;

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `portada` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CCREATE TABLE `paginas` (
  `id` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `nro` int(11) NOT NULL,
  `primera` tinyint(4) DEFAULT NULL COMMENT '1 si es la primer página',
  `ultima` tinyint(4) DEFAULT NULL COMMENT '1 si es la última página',
  `imagen` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagen_mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `audios` (
  `id` int(11) NOT NULL,
  `pagina_id` int(11) NOT NULL DEFAULT '0',
  `archivo` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '' COMMENT 'Ruta del audio',
  `ubicacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '' COMMENT 'ubicacion del reproductor si es distinto de bottom'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE `parrafos` (
  `id` int(11) NOT NULL,
  `pagina_id` int(11) NOT NULL DEFAULT '0',
  `texto` text COLLATE utf8_spanish_ci NOT NULL,
  `carilla` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Si pertenece a la carilla 1 o 2 de la pagina',
  `ubicacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT '' COMMENT 'lugar del texto en la carilla',
  `estilos` varchar(50) COLLATE utf8_spanish_ci DEFAULT '' COMMENT 'estilos del texto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
