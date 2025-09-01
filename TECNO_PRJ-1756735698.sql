CREATE TABLE IF NOT EXISTS `CLIENTES` (
	`id_cliente` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nombre` int NOT NULL,
	`apellido` int NOT NULL,
	`direccion` int NOT NULL,
	`telefono` int NOT NULL,
	`mail` int NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE IF NOT EXISTS `FACTURA` (
	`id_factura` int AUTO_INCREMENT NOT NULL UNIQUE,
	`fecha` date NOT NULL,
	`id_cliente` int NOT NULL,
	PRIMARY KEY (`id_factura`)
);

CREATE TABLE IF NOT EXISTS `DETALLE` (
	`id_detalle` int AUTO_INCREMENT NOT NULL UNIQUE,
	`id_factura` int NOT NULL,
	`id_articulo` int NOT NULL,
	`cantidad` int NOT NULL,
	`precio_unitario` decimal(10,0) NOT NULL,
	PRIMARY KEY (`id_detalle`)
);

CREATE TABLE IF NOT EXISTS `ARTICULOS` (
	`id_articulo` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nombre` varchar(255) NOT NULL,
	`descripción` varchar(255) NOT NULL,
	`precio` decimal(10,0) NOT NULL,
	PRIMARY KEY (`id_articulo`)
);


ALTER TABLE `FACTURA` ADD CONSTRAINT `FACTURA_fk2` FOREIGN KEY (`id_cliente`) REFERENCES `CLIENTES`(`id_cliente`);
ALTER TABLE `DETALLE` ADD CONSTRAINT `DETALLE_fk1` FOREIGN KEY (`id_factura`) REFERENCES `FACTURA`(`id_factura`);

ALTER TABLE `DETALLE` ADD CONSTRAINT `DETALLE_fk2` FOREIGN KEY (`id_articulo`) REFERENCES `ARTICULOS`(`id_articulo`);
