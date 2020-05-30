CREATE PROCEDURE `DarEmpleados` ( ) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT *
FROM empleados;

CREATE PROCEDURE `DarCoach` ( ) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT *
FROM coach;

CREATE PROCEDURE `Numeroderegistro` ( ) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT *
FROM registro;

CREATE PROCEDURE `Mostrarmaquina` ( ) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT *
FROM maquinas;

CREATE PROCEDURE `Queeres` ( ) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT *
FROM tipodeempleado;

CREATE TRIGGER nuevoregistro AFTER INSERT ON registro
FOR EACH ROW
UPDATE empleados SET Nombre = registro.IdRegistro WHERE IdRegistro = empleados.IdEmpleado

DELIMITER $$

CREATE FUNCTION NombreCompleto(Nombre varchar(50), ApellidoPaterno varchar(50), ApellidoMaterno varchar(50)) 
RETURNS VARCHAR(50)
BEGIN
DECLARE message varchar(50);
SET message = "Quepe";
RETURN CONCAT(message, Nombre, " ", ApellidoPaterno, " ", ApellidoMaterno)
END;

DELIMITER $$

DELIMITER $$

CREATE FUNCTION Suma(cantidad1 int, cantidad2 int) 
RETURNS int
BEGIN
DECLARE message varchar(50);
SET message = "Que paso master";
DECLARE resultado int;
SET resultado = cantidad1 + cantidad2;
RETURN CONCAT(message, cantidad1 "+", cantidad2, "=", resultado)
END;

DELIMITER $$
