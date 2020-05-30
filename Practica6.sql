INSERT INTO `gym3`.`tipodeempleado` (`IdTipoEmpleo`, `Empleo`) VALUES (NULL, 'Coach'), (NULL, 'Secretaria');

INSERT INTO `gym3`.`empleados` (`IdEmpeado`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `TipoDeEmpleado`) 
VALUES (NULL, 'Moy', 'Moya', 'Salazar', 'Coach'), (NULL, 'Randal', 'Lopez', 'Sanchez', 'Secretaria');

INSERT INTO `gym3`.`registro` (`IdRegistro`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `FechaDeNacimiento`, `IdCoach`) VALUES 
(NULL, 'Gerardo', 'Salazar', 'Marroquin', '2020-05-20', '1'), (NULL, 'Francisco', 'Moya', 'Gravity', '2020-05-20', '2');

INSERT INTO `gym3`.`maquinas` (`IdMaquina`, `NumDeMaquina`, `TipoDeMaquina`, `TiempoDeDuracion`, `FechaDeEntrega`) VALUES
(NULL, '420', 'Caminadora', '2031-02-20', '2020-09-16'), (NULL, '330', 'Barra', '2040-05-01', '2020-12-23');

INSERT INTO `gym3`.`maquinas` (`IdMaquina`, `NumDeMaquina`, `TipoDeMaquina`, `TiempoDeDuracion`, `FechaDeEntrega`) VALUES 
(NULL, '500', 'Mancuernas', '2030-05-08', '2020-06-16'), (NULL, '490', 'Prensa', '2030-10-20', '2020-08-20');

UPDATE `gym3`.`registro` SET `ApellidoMaterno` = 'Perez' WHERE `registro`.`IdRegistro` =3;
UPDATE `gym3`.`coach` SET `FechaDeNacimiento` = '2000-05-05' WHERE `coach`.`IdCoach` =2;
UPDATE `gym3`.`maquinas` SET `NumDeMaquina` = '422' WHERE `maquinas`.`IdMaquina` =1;
UPDATE `gym3`.`maquinas` SET `NumDeMaquina` = '442' WHERE `maquinas`.`IdMaquina` =3;
UPDATE `gym3`.`registro` SET `ApellidoPaterno` = 'Perez' WHERE `registro`.`IdRegistro` =3;

DELETE FROM `gym3`.`registro` WHERE `registro`.`IdRegistro` = 1;
DELETE FROM `gym3`.`registro` WHERE `registro`.`IdRegistro` = 2;
DELETE FROM `gym3`.`registro` WHERE `registro`.`IdRegistro` = 3;
DELETE FROM `gym3`.`registro` WHERE `registro`.`IdRegistro` = 4;
DELETE FROM `gym3`.`registro` WHERE `registro`.`IdRegistro` = 5;