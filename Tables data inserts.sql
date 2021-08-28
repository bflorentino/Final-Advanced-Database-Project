
INSERT INTO  pais  VALUES ( 1 ,  ' Afganist�n ' );
INSERT INTO  pais  VALUES ( 2 ,  ' Islas Gl�ndula ' );
INSERT INTO  pais  VALUES ( 3 ,  ' Albania ' );
INSERT INTO  pais  VALUES ( 4 ,  ' Alemania ' );
INSERT INTO  pais  VALUES ( 5 ,  ' Andorra ' );
INSERT INTO  pais  VALUES ( 6 ,  ' Angola ' );
INSERT INTO  pais  VALUES ( 7 ,  ' Anguilla ' );
INSERT INTO  pais  VALUES ( 8 ,  ' Ant�rtida ' );
INSERT INTO  pais  VALUES ( 9 ,  ' Antigua y Barbuda ' );
INSERT INTO  pais  VALUES ( 10 ,  ' Antillas Holandesas ' );
INSERT INTO  pais  VALUES ( 11 ,  ' Arabia Saud� ' );
INSERT INTO  pais  VALUES ( 12 ,  ' Argelia ' );
INSERT INTO  pais  VALUES ( 13 ,  ' Argentina ' );
INSERT INTO  pais  VALUES ( 14 ,  ' Armenia ' );
INSERT INTO  pais  VALUES ( 15 ,  ' Aruba ' );
INSERT INTO  pais  VALUES ( 16 ,  ' Australia ' );
INSERT INTO  pais  VALUES ( 17 ,  ' Austria ' );
INSERT INTO  pais  VALUES ( 18 ,  ' Azerbaiy�n ' );
INSERT INTO  pais  VALUES ( 19 ,  ' Bahamas ' );
INSERT INTO  pais  VALUES ( 20 ,  ' Bahr�in ' );
INSERT INTO  pais  VALUES ( 21 ,  ' Bangladesh ' );
INSERT INTO  pais  VALUES ( 22 ,  ' Barbados ' );
INSERT INTO  pais  VALUES ( 23 ,  ' Bielorrusia ' );
INSERT INTO  pais  VALUES ( 24 ,  ' B�lgica ' );
INSERT INTO  pais  VALUES ( 25 ,  ' Belice ' );
INSERT INTO  pais  VALUES ( 26 ,  ' Benin ' );
INSERT INTO  pais  VALUES ( 27 ,  ' Bermudas ' );
INSERT INTO  pais  VALUES ( 28 ,  ' Bhut�n ' );
INSERT INTO  pais  VALUES ( 29 ,  ' Bolivia ' );
INSERT INTO  pais  VALUES ( 30 ,  ' Bosnia y Herzegovina ' );
INSERT INTO  pais  VALUES ( 31 ,  ' Botsuana ' );
INSERT INTO  pais  VALUES ( 32 ,  ' Isla Bouvet ' );
INSERT INTO  pais  VALUES ( 33 ,  ' Brasil ' );
INSERT INTO  pais  VALUES ( 34 ,  ' Brun�i ' );
INSERT INTO  pais  VALUES ( 35 ,  ' Bulgaria ' );
INSERT INTO  pais  VALUES ( 36 ,  ' Burkina Faso ' );
INSERT INTO  pais  VALUES ( 37 ,  ' Burundi ' );
INSERT INTO  pais  VALUES ( 38 ,  ' Cabo Verde ' );
INSERT INTO  pais  VALUES ( 39 ,  ' Islas Caim�n ' );
INSERT INTO  pais  VALUES ( 40 ,  ' Camboya ' );
INSERT INTO  pais  VALUES ( 41 ,  ' Camer�n ' );
INSERT INTO  pais  VALUES ( 42 ,  ' Canad� ' );
INSERT INTO  pais  VALUES ( 43 ,  ' Rep�blica Centroafricana ' );
INSERT INTO  pais  VALUES ( 44 ,  ' Chad ' );
INSERT INTO  pais  VALUES ( 45 ,  ' Rep�blica Checa ' );
INSERT INTO  pais  VALUES ( 46 ,  ' Chile ' );
INSERT INTO  pais  VALUES ( 47 ,  ' de China ' );
INSERT INTO  pais  VALUES ( 48 ,  ' Chipre ' );
INSERT INTO  pais  VALUES ( 49 ,  ' Isla de Navidad ' );
INSERT INTO  pais  VALUES ( 50 ,  ' Ciudad del Vaticano ' );
INSERT INTO  pais  VALUES ( 51 ,  ' Islas Cocos ' );
INSERT INTO  pais  VALUES ( 52 ,  ' Colombia ' );
INSERT INTO  pais  VALUES ( 53 ,  ' Comoras ' );
INSERT INTO  pais  VALUES ( 54 ,  ' Rep�blica Democr�tica del Congo ' );
INSERT INTO  pais  VALUES ( 55 ,  ' Congo ' );
INSERT INTO  pais  VALUES ( 56 ,  ' Islas de Cook ' );
INSERT INTO  pais  VALUES ( 57 ,  ' Corea del Norte ' );
INSERT INTO  pais  VALUES ( 58 ,  ' Corea del Sur ' );
INSERT INTO  pais  VALUES ( 59 ,  ' Costa de Marfil ' );
INSERT INTO  pais  VALUES ( 60 ,  ' Costa Rica ' );
INSERT INTO  pais  VALUES ( 61 ,  ' Croacia ' );
INSERT INTO  pais  VALUES ( 62 ,  ' Cuba ' );
INSERT INTO  pais  VALUES ( 63 ,  ' Dinamarca ' );
INSERT INTO  pais  VALUES ( 64 ,  ' Dominica ' );
INSERT INTO  pais  VALUES ( 65 ,  ' Rep�blica Dominicana ' );







INSERT INTO Provincias VALUES
('Santo Domingo'),('Distrito Nacional'),('Santiago'),('San Crist�bal'),('La Vega'),('Puerto Plata'),('San Pedro de Macor�s'),
('Duarte'),('La Altagracia'),('La Romana'),('San Juan'),('Espaillat'),('Azua'),('Barahona'),('Monte Plata'),('Peravia'),
('Monse�or Nouel'),('Valverde'),('S�nchez Ram�rez'),('Mar�a Trinidad S�nchez'),('Montecristi'),('Saman�'),('Bahoruco'),
('Hermanas Mirabal'),('El Seibo'),('Hato Mayor'),('Dajab�n'),('El�as Pi�a'),('San Jos� de Ocoa'),('Santiago Rodr�guez'),
('Independencia'),('Pedernales');
INSERT INTO sucursales VALUES
(1,'los jardines',2),(2,'los prados',19),(3,'vista bella',10), (4,'buena vista',22),(5,'obreros',31),(6,'caminito',6),
(7,'barranquilla',13),(8,'el valle',7),(9,'punta cana',9),(10,'nuevo aire',31),(11,'monte alto',5),(12,'los tainos',4),
(13,'Duarte',24),(14,'Santiago',3),(15,'Sanchez ',19)

Insert into Servicios values(1, 'Tours tur�sticos')
Insert into Servicios values(2, 'Viajes interurbarnos')
Insert into Servicios values (3, 'Envio de paquetes')
Insert into Servicios values (4, 'Transporte privado')


INSERT INTO detalles_servicios (id, id_servicio, descripcion, origen, destino_turistico) 
VALUES 
(1, 1, 'viaje turistico de Distrito Nacional Puerto Plata', 1, 6),
(2, 1, 'viaje turistico de Distrito Nacional a Punta Cana', 1, 9),
(3, 1, 'viaje turistico de San Cristobal a Samana', 12, 4),
(4, 1, 'viaje turistico de San Pedro a Jarabacoa', 8, 11)

INSERT INTO detalles_servicios(id, id_servicio, descripcion, origen, destino)
VALUES
(5, 2, 'Viaje interurbano de Distrito Nacional a Puerto Plata', 1,  6),
(6, 2, 'Viaje interurbano de Samana a Santiago', 4, 14),
(7, 2, 'Viaje interurbano de Santiago a La Altagracia', 14, 9),
(8, 2, 'Viaje interurbano de Distrito Nacional a La Romana', 1, 3),
(9, 2, 'Viaje interurbano de Puerto Plata a Azua', 6, 7),
(10, 2, 'Viaje interurbano de La Vega al Distrito Nacional', 11, 1)

INSERT INTO detalles_servicios(id, id_servicio, descripcion, origen, destino)
VALUES
(11, 3, 'Envio de paquete de Distrito Nacional a Puerto Plata', 1,  6),
(12, 3, 'Envio de paquete de Distrito Nacional a Santiago', 4, 14),
(13, 3, 'Envio de paquete de Santiago a La Altagracia', 14, 9),
(14, 3, 'Envio de paquete de Distrito Nacional a La Romana', 1, 3),
(15, 3, 'Envio de paquete de Puerto Plata a Azua', 6, 7),
(16, 3, 'Envio de paquete de La Vega al Distrito Nacional', 11, 1)


INSERT INTO detalles_servicios(id, id_servicio, descripcion, plazo_en_dias)
VALUES
(17, 4, 'Servicio de alquiler de autobus', 1),
(18, 4, 'Servicio de alquiler de autobus', 2),
(19, 4, 'Servicio de alquiler de autobus', 3),
(20, 4, 'Servicio de alquiler de minibus', 1),
(21, 4, 'Servicio de alquiler de minibus', 2),
(22, 4, 'Servicio de alquiler de minibus', 3)
INSERT INTO estado VALUES 
(1,'EN TRANSITO'),(2,'EN REPARTO'),(3,'ENTREGADO'),(4,'DESTINATARIO AUSENTE')


INSERT INTO CLIENTE VALUES (1, 'Jose', 'Calderon','00100456000', 'M', 'Santo Domingo Este', '829-898-4399', 'jose@gmail.com', 65)
INSERT INTO CLIENTE VALUES (2, 'Juan', 'Vittine', '00100654000', 'M', 'Punta Cana', '829-898-4399', 'JuanVitine@gmail.com', 13)
INSERT INTO CLIENTE VALUES (3, 'Rosa', 'Hansbirnia', '00100943000','F', 'Bavaro','946-463-4979', 'JuanVitine@gmail.com', 33)
INSERT INTO CLIENTE VALUES (4, 'Julio', 'Santana','00129533500', 'M', 'Distrito Nacional, Piantini', '809-126-8942', 'JulioSantana@gmail.com', 65)
INSERT INTO CLIENTE VALUES (5, 'Rosxi', 'Bungne', '00184940000', 'M', 'Bavaro', '809-723-8402', 'Bugne@gmail.com', 4)

INSERT INTO Tarifas VALUES
(1,1	,1000,	0  ),(2,2	,2000,	0  ),(3,3	,800,	0  ),(4,4	,800,	0  ),(5,5	,350,	0  ),(6,6	,200,	0  ),
(7,7	,250,	0  ),(8,8	,200,	0  ),(9,9	,200,	0  ),(10,10	,250,	0  ),(11,11	,300,	0  ),(12,12	,200,	0  ),
(13,13	,200,	0  ),(14,14	,200,	0  ),(15,15	,200,	0  ),(16,16	,250,	0  ),(17,17	,2500,	250),(18,18	,3000,	300),
(19,19	,4500,	450),(20,20	,1000,	100),(21,21	,1500,	150),(22,22	,2000,	200)

insert into factura values (1, 1, '2019-03-24') 
insert into factura values (2, 2, '2019-05-23')
insert into factura values (3, 1, '2019-06-28')
insert into factura values (4, 2, '2019-06-15')
insert into factura values (5, 1, '2019-08-23')
insert into factura values (6, 2, '2019-08-30')
insert into factura values (7, 3, '2020-01-21')
insert into factura values (8, 3, '2020-02-10')
insert into factura values (9, 2, '2020-02-23')
insert into factura values (10, 2, '2020-05-29')
insert into factura values (11, 1, '2020-08-27')
insert into factura values (12, 3, '2020-09-29')
insert into factura values (13, 4, '2020-10-31')
insert into factura values (14, 4, '2020-11-10')
insert into factura values (15, 4, '2020-11-23')
insert into factura values (16, 2, '2021-01-25')
insert into factura values (17, 5, '2021-03-03')
insert into factura values (18, 5, '2021-04-27')
insert into factura values (19, 1, '2021-06-28')
insert into factura values (20, 4, '2021-08-20')
insert into factura values (21, 1, '2021-03-20')
insert into factura values (22, 4, '2021-02-21')
insert into factura values (23, 1, '2021-02-27')
insert into factura values (24, 3, '2021-04-21')
insert into factura values (25, 1, '2021-06-22')
insert into factura values (26, 3, '2021-07-23')
insert into factura values (27, 4, '2021-01-20')
insert into factura values (28, 3, '2021-01-26')
insert into factura values (29, 5, '2021-04-05')
insert into factura values (30, 5, '2021-04-10')
insert into factura values (31, 1, '2021-02-23')
insert into factura values (32, 3, '2021-01-20')
insert into factura values (33, 4, '2021-01-31')
insert into factura values (34, 5, '2021-04-15')
insert into factura values (35, 5, '2021-07-13')
insert into factura values (36, 2, '2021-01-31')
insert into factura values (37, 2, '2021-04-17')
insert into factura values (38, 2, '2021-08-15')
insert into factura values (39, 2, '2021-08-16')
insert into factura values (40, 2, '2021-07-12')
insert into factura values (41, 2, '2021-04-30')
insert into factura values (42, 2, '2021-04-17')
insert into factura values (43, 2, '2021-08-15')
insert into factura values (44, 2, '2021-08-24')
insert into factura values (45, 2, '2021-05-12')
insert into factura values (46, 2, '2021-01-31')
insert into factura values (47, 2, '2021-04-29')
insert into factura values (48, 3, '2021-04-29')
insert into factura values (49, 4, '2021-04-29')
insert into factura values (50, 2, '2021-09-15')
insert into factura values (51, 2, '2021-08-16')
insert into factura values (52, 2, '2021-07-12')
insert into factura values (53, 2, '2021-10-10')
insert into factura values (54, 1, '2021-12-12')
insert into factura values (55, 3, '2021-11-03')
insert into factura values (56, 2, '2021-03-11')


insert into detalle_factura values(1, 1, 11, 3, 1)
insert into detalle_factura values(2, 1, 1, 1, 1)
insert into detalle_factura values(3, 2, 13, 3, 1)
insert into detalle_factura values(4, 2, 2, 1, 1)
insert into detalle_factura values(5, 3, 11, 3, 1)
insert into detalle_factura values(6, 4, 11, 3, 1)
insert into detalle_factura values(7, 5, 12, 3, 1)
insert into detalle_factura values(8, 6, 3, 1, 1)
insert into detalle_factura values(9, 7, 11, 3, 1)
insert into detalle_factura values(10, 7, 10, 2, 1)
insert into detalle_factura values(11, 8, 11, 3, 1)
insert into detalle_factura values(12, 8, 1, 1, 1)
insert into detalle_factura values(13, 9, 17, 4, 1)
insert into detalle_factura values(14, 10, 12, 3, 1)
insert into detalle_factura values(15, 11, 11, 3, 1)
insert into detalle_factura values(16, 11, 12, 3, 1)
insert into detalle_factura values(17, 12, 22, 4, 1)
insert into detalle_factura values(18, 12, 11, 3, 1)
insert into detalle_factura values(19, 13, 3, 1, 1)
insert into detalle_factura values(20, 14, 3, 1, 1)
insert into detalle_factura values(21, 14, 11, 3, 1)
insert into detalle_factura values(22, 15, 13, 3, 1)
insert into detalle_factura values(23, 15, 1, 1, 1)
insert into detalle_factura values(24, 16, 3, 1 ,1)
insert into detalle_factura values(25, 17, 10, 2, 1)
insert into detalle_factura values(26, 17, 11, 3, 1)
insert into detalle_factura values(27, 18, 14, 3, 1)
insert into detalle_factura values(28, 19, 11, 3, 1)
insert into detalle_factura values(29, 20, 1, 1, 1)
insert into detalle_factura values(30, 20, 10, 2, 1)
insert into detalle_factura values(31, 21, 11, 3, 1)
insert into detalle_factura values(32, 22, 11, 3, 1)
insert into detalle_factura values(33, 23, 11, 3, 1)
insert into detalle_factura values(34, 24, 11, 3, 1)
insert into detalle_factura values(35, 25, 11, 3, 1)
insert into detalle_factura values(36, 26, 11, 3, 1)
insert into detalle_factura values(37, 27, 11, 3, 1)
insert into detalle_factura values(38, 28, 11, 3, 1)
insert into detalle_factura values(39, 29, 11, 3, 1)
insert into detalle_factura values(40, 30, 11, 3, 1)
insert into detalle_factura values(41, 31, 11, 3, 1)
insert into detalle_factura values(42, 31, 1, 1, 1)
insert into detalle_factura values(43, 32, 11, 3, 1)
insert into detalle_factura values(44, 33, 11, 3, 1)
insert into detalle_factura values(45, 34, 11, 3, 1)
insert into detalle_factura values(46, 35, 11, 3, 1)
insert into detalle_factura values(47, 36, 11, 3, 1)
insert into detalle_factura values(48, 37, 11, 3, 1)
insert into detalle_factura values(49, 38, 11, 3, 1)
insert into detalle_factura values(50, 39, 11, 3, 1)
insert into detalle_factura values(51, 40, 11, 3, 1)
insert into detalle_factura values(52, 41, 11, 3, 1)
insert into detalle_factura values(53, 42, 11, 3, 1)
insert into detalle_factura values(54, 43, 11, 3, 1)
insert into detalle_factura values(55, 44, 11, 3, 1)
insert into detalle_factura values(56, 45, 11, 3, 1)
insert into detalle_factura values(57, 46, 11, 3, 1)
insert into detalle_factura values(58, 47, 11, 3, 1)
insert into detalle_factura values(59, 48, 11, 3, 1)
insert into detalle_factura values(60, 49, 11, 3, 1)
insert into detalle_factura values(61, 50, 11, 3, 1)
insert into detalle_factura values(62, 51, 11, 3, 1)
insert into detalle_factura values(63, 52, 11, 3, 1)
insert into detalle_factura values(64, 53, 11, 3, 1)
insert into detalle_factura values(65, 54, 11, 3, 1)
insert into detalle_factura values(66, 55, 11, 3, 1)
insert into detalle_factura values(67, 56, 11, 3, 1)

