
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

INSERT INTO `parrafos` (`pagina_id`, `texto`, `carilla`, `ubicacion`, `estilos`) VALUES 
('11', 'HABÍA UNA VEZ, UNA NIÑA QUE VIVÍA JUNTO A SU MAMÁ.<br/> TODOS LA LLAMABAN CAPERUCITA ROJA<br/> POR UNA CAPUCHITA QUE USABA PARA<br/>PROTEGERSE DEL FRÍO.', '1', NULL, NULL), 
('11', '—UN DÍA SU ABUELITA,QUE VIVÍA AL OTRO<br/> LADO DEL BOSQUE, SE ENFERMÓ.<br/>— NECESITO QUE LLEVES ESTA CANASTA CON GALLETITAS A TU ABUELA .<br/>ES IMPORTANTE QUE TE CUIDES MUCHO.—DIJO SU MADRE.<br/>—¡CLARO QUE SÍ! —CONTESTÓ CAPERUCITA Y SALIÓ RUMBO AL BOSQUE.', '1', NULL, NULL), 

('12', 'DE REPENTE SINTIÓ UNA VOZ:<br/>— CAPERUCITA ROJA ¿DÓNDE VAS TAN CONTENTA?<br/> — DIJO UN LOBO QUE POR ALLÍ PASABA.<br/>—A LA CASA DE MI ABUELITA —RESPONDIÓ CAPERUCITA.', '1', NULL, NULL),
('12', '—¿Y QUÉ LE LLEVAS? —VOLVIÓ A PREGUNTAR EL LOBO.<br/>—UNA CANASTA CON COMIDA PORQUE SE ENFERMÓ.<br/>—¿Y POR QUÉ NO LE LLEVAS UNAS FLORES?<br/>EN ESE, QUE ES EL CAMINO MÁS CORTO,<br/>ENCONTRARÁS UNAS BELLAS ROSAS PARA DARLE A TU ABUELITA.<br/>—DIJO EL LOBO.<br/>—¡QUÉ BUENA IDEA! —DIJO ELLA<br/>Y SIN DUDARLO TOMÓ EL CAMINO.', '1', NULL, NULL), 

('13', 'EL LOBO HABÍA ENGAÑADO A CAPERUCITA.<br/>EL CAMINO QUE ELLA TOMÓ ERA EL MÁS LARGO,<br/>MIENTRAS QUE ÉL IRÍA POR EL MÁS CORTO.<br/>QUERÍA LLEGAR ANTES QUE ELLA. Y ASÍ FUE.', '1', NULL, NULL),
('13', 'EL LOBO LLEGÓ A LA CASA DE LA ABUELA.<br/>TOMÓ LA ROPA DE LA ABUELITA<br/>Y SE RECOSTÓ EN SU CAMA<br/>PARA ESPERAR A CAPERUCITA<br/>Y ENGAÑARLA.', '1', NULL, NULL),

('14', 'LUEGO DE MUCHO CAMINAR, CAPERUCITA VIO LA CASA<br/>Y AL ENTRAR, NOTÓ A SU ABUELA ALGO CAMBIADA..<br/>—ABUELITA, ABUELITA, ¡QUÉ OJOS MÁS GRANDES TIENES!<br/>—SON PARA VERTE MEJOR —DIJO EL LOBO', '1', NULL, NULL),
('14', '—ABUELITA, ABUELITA, ¡QUÉ OREJAS MÁS GRANDES TIENES!<br/>—SON PARA OÍRTE MEJOR —<br/>—ABUELITA, ABUELITA, ¡QUÉ DIENTES MÁS GRANDES TIENES!<br/>—SON PARA...', '1', NULL, NULL), 
('14', '¡COMERTE MEJOOOOR! —<br/> GRITÓ EL LOBO ABALANZÁNDOSE SOBRE CAPERUCITA ROJA.<br/>LA NIÑA, MUERTA DE MIEDO, COMENZÓ A GRITAR<br/>PIDIENDO AYUDA.', '1', NULL, NULL), 

('15', 'UN CAZADOR QUE PASABA CERCA ESCUCHÓ LOS GRITOS<br/> Y NO DUDÓ EN ENTRAR A LA CASA.<br/> CUANDO VIO AL LOBO INTENTANDO DEVORAR A CAPERUCITA<br/>DE UN GOLPE LO DESMAYÓ.', '1', NULL, NULL),
('15', 'CAPERUCITA LLORABA TANTO<br/> QUE NO PODÍA ESCUCHARSE A LO LEJOS<br/>LA VOZ DE SU ABUELITA<br/>QUE ESTABA ENCERRADA EN EL ARMARIO.<br/>EL LOBO LA HABÍA DEJADO AHÍ PARA<br/>ENGAÑAR A LA NIÑA.', '1', NULL, NULL),
('15', 'TODO LO QUE PASÓ FUE SOLO UN GRAN SUSTO<br/>Y CAPERUCITA APRENDIÓ QUE NUNCA<br/>DEBE APARTARSE DEL CAMINO Y TAMPOCO HABLAR CON EXTRAÑOS.', '1', NULL, NULL),

('16', 'ESTA ES LA HISTORIA DE UNA REINA<br />QUE COSIENDO JUNTO A SU VENTANA,<br/>SE PINCHÓ EL DEDO.', '1', NULL, NULL), 
('16', 'AL VER CÓMO LA SANGRE CAÍA EN LA NIEVE,<br/>PENSÓ QUE CUANDO TUVIERA UNA HIJA<br/>LE GUSTARÍA QUE SU PIEL<br/>FUERA TAN BLANCA COMO LA NIEVE,<br/>SUS LABIOS ROJOS COMO LA SANGRE<br/>Y SU PELO NEGRO COMO EL ÉBANO.', '1', NULL, NULL), 
('16', 'SU DESEO SE CUMPLIÓ<br/>Y NACIÓ LA PRINCESA<br/>BLANCANIEVES.', '1', NULL, NULL),

('17', 'TRISTEMENTE, LA REINA MURIÓ CUANDO BLANCANIEVES ERA UNA NIÑA,<br/> Y EL REY SE CASÓ CON UNA HECHICERA PODEROSA QUE TENÍA<br/> UN ESPEJO MÁGICO.<br/>LA NUEVA REINA HECHICERA LE PREGUNTABA A SU ESPEJO CADA DÍA:<br/>—ESPEJITO, ESPEJITO,¿QUIÉN ES LA MÁS BELLA DE TODAS?<br/>Y ÉL CONTESTABA:<br/>—TÚ MI REINA, ERES LA MÁS BELLA DE TODAS.', '1', NULL, NULL), 
('17', 'PERO EL DÍA QUE BLANCANIEVES CUMPLIÓ DIECISIETE AÑOS,<br/>ESTA RESPUESTA CAMBIÓ:<br/>—ESPEJITO, ESPEJITO,<br/> ¿QUIÉN ES LA MÁS BELLA DE TODAS?<br/>—TÚ ERES MUY BELLA PERO<br/>BLANCANIEVES ES MÁS BELLA QUE TÚ<br/>Y NUNCA PODRÁS CAMBIAR ESO.', '1', NULL, NULL),

('18', 'LA REINA, MUY CELOSA, ORDENÓ A UN CAZADOR QUE<br/>MATARA A BLANCANIEVES EN EL BOSQUE Y, COMO PRUEBA,<br/>LE PIDIO QUE LE TRAJERA EL CORAZÓN DE LA NIÑA.<br/>EL CAZADOR SE ARREPINTIÓ Y LA DEJÓ ESCAPAR,<br/>LLEVÁNDOLE A LA REINA EL CORAZÓN<br/>DE UN CIERVO JOVEN.', '1', NULL, NULL);
('18', 'EN EL BOSQUE, BLANCANIEVES DESCUBRIÓ UNA PEQUEÑA CASA<br/>Y DECIDIÓ ENTRAR PARA DESCANSAR.<br/>ESTA CASITA ERA DE SIETE ENANITOS QUE,<br/>AL VOLVER, LA ENCONTRARON Y LE DIJERON:<br/>—SI NOS AYUDAS CON LAS TAREAS DE LA CASA PUEDES QUEDARTE.<br/>LE ADVIRTIERON, QUE NO DEJARA ENTRAR A NADIE<br/>MIENTRAS ELLOS NO ESTUVIERAN.', '1', NULL, NULL),

('19', 'LA REINA LE PREGUNTÓ A SU ESPEJO,<br/>UNA VEZ MÁS, QUIÉN ERA LA MÁS BELLA DE TODAS<br/>Y CON ESTA RESPUESTA, SE ENTERÓ QUE<br/>BLANCANIEVES SEGUÍA VIVA.<br/>ENTONCES, LA REINA SE DISFRAZÓ DE ANCIANA<br/>Y FUE EN BUSCA DE LA JOVEN.', '1', NULL, NULL), 
('17', 'AL LLEGAR A LA CASITA DE LOS ENANOS, GOLPEÓ LA PUERTA<br/>Y CUANDO BLANCANIEVES SE ASOMÓ,<br/>LE OFRECIÓ UNA MANZANA<br/> ENVENENADA.<br/>LA JOVEN, CONFIADA AL VER A LA MUJER COMER, MORDIÓ<br/>LA MANZANA CON ENTUSIASMO Y AL PROBARLA,SE DESMAYÓ.', '1', NULL, NULL),

('20', 'AL VOLVER DE LA MONTAÑA LOS ENANITOS<br/>INTENTARON, EN VANO, REVIVIR A BLANCANIEVES.<br/>FABRICARON UNA CAJA DE CRISTAL<br/>DONDE RECOSTARON A BLANCANIEVES.<br/>AL CABO DE UN TIEMPO, UN PRÍNCIPE<br/>QUE PASABA VIO A LA PRINCESA Y<br/>QUEDO ENCANTANDO<br/>POR SU BELLEZA.', '1', NULL, NULL);
('20', 'QUISO ACERCARSE A VERLA Y AL HACERLO,<br/>TROPEZÓ CON LA CAJA DE CRISTAL.<br/>ESTO MOVIÓ A BLANCANIEVES Y EL TROZO<br/>DE MANZANA QUE ESTABA EN SU BOCA CAYÓ.<br/>BLANCANIEVES DESPERTÓ<br/>Y EL PRÍNCIPE LE DECLARÓ SU AMOR.<br/>SE CASARON<br/>Y FUERON MUY FELICES.<br/>LA MALVADA REINA FUE ENCERRADA<br/>POR SUS MALOS ACTOS.', '1', NULL, NULL);

INSERT INTO `audios` (`pagina_id`, `archivo`, `ubicacion`) VALUES
(6, 'https://diegofernandez.org/tripulante/audios/Pinocho/Pinocho1-2.mp4', ''),
(7, 'https://diegofernandez.org/tripulante/audios/Pinocho/Pinocho3-4.mp4', ''),
(8, 'https://diegofernandez.org/tripulante/audios/Pinocho/Pinocho5-6.mp4', ''),
(9, 'https://diegofernandez.org/tripulante/audios/Pinocho/Pinocho7-8.mp4', ''),
(10, 'https://diegofernandez.org/tripulante/audios/Pinocho/Pinocho9-10.mp4', ''),
(11, 'https://diegofernandez.org/tripulante/audios/Caperucita/Caperucita1-2.mp4', ''),
(12, 'https://diegofernandez.org/tripulante/audios/Caperucita/Caperucita3-4.mp4', 'top'),
(13, 'https://diegofernandez.org/tripulante/audios/Caperucita/Caperucita5-6.mp4', ''),
(14, 'https://diegofernandez.org/tripulante/audios/Caperucita/Caperucita7-8.mp4', ''),
(15, 'https://diegofernandez.org/tripulante/audios/Caperucita/Caperucita9-10.mp4', ''),
(16, 'https://diegofernandez.org/tripulante/audios/Blancanieves/Blancanieves1-2.mp4', ''),
(17, 'https://diegofernandez.org/tripulante/audios/Blancanieves/Blancanieves3-4.mp4', ''),
(18, 'https://diegofernandez.org/tripulante/audios/Blancanieves/Blancanieves5-6.mp4', ''),
(19, 'https://diegofernandez.org/tripulante/audios/Blancanieves/Blancanieves7-8.mp4', ''),
(20, 'https://diegofernandez.org/tripulante/audios/Blancanieves/Blancanieves9-10.mp4', '');

UPDATE `audios` SET `archivo` = 'https://diegofernandez.org/tripulante/audios/TresChanchitos/TresChanchitos1-2.m4a' WHERE `audios`.`id` = 1;
UPDATE `audios` SET `archivo` = 'https://diegofernandez.org/tripulante/audios/TresChanchitos/TresChanchitos3-4.m4a' WHERE `audios`.`id` = 2;
UPDATE `audios` SET `archivo` = 'https://diegofernandez.org/tripulante/audios/TresChanchitos/TresChanchitos5-6.m4a' WHERE `audios`.`id` = 3;
UPDATE `audios` SET `archivo` = 'https://diegofernandez.org/tripulante/audios/TresChanchitos/TresChanchitos7-8.m4a' WHERE `audios`.`id` = 4;
UPDATE `audios` SET `archivo` = 'https://diegofernandez.org/tripulante/audios/TresChanchitos/TresChanchitos9-10.m4a' WHERE `audios`.`id` = 5;

UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Pinocho/Pinocho1-2.m4a' WHERE `audios`.`id` = 6;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Pinocho/Pinocho3-4.m4a' WHERE `audios`.`id` = 7;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Pinocho/Pinocho5-6.m4a' WHERE `audios`.`id` = 8;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Pinocho/Pinocho7-8.m4a' WHERE `audios`.`id` = 9;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Pinocho/Pinocho9-10.m4a' WHERE `audios`.`id` = 10;

UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Blancanieves/Blancanieves1-2.m4a' WHERE `audios`.`id` = 16;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Blancanieves/Blancanieves3-4.m4a' WHERE `audios`.`id` = 17;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Blancanieves/Blancanieves5-6.m4a' WHERE `audios`.`id` = 18;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Blancanieves/Blancanieves7-8.m4a' WHERE `audios`.`id` = 19;
UPDATE `audios` SET `archivo` = 'https://tripulante.com.ar/cuentos/audios/Blancanieves/Blancanieves9-10.m4a' WHERE `audios`.`id` = 20;