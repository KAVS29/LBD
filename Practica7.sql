SELECT * FROM `maquinas` WHERE 1
SELECT * FROM `coach` WHERE 1
SELECT * FROM `empleado` WHERE 1
SELECT * FROM `registro` WHERE 1
SELECT * FROM `tipodeempleado` WHERE 1

SELECT COUNT( idcoach ) , nombre
FROM coach
GROUP BY nombre
LIMIT 0 , 30

SELECT COUNT( idregistro ) , nombre
FROM registro
GROUP BY nombre
LIMIT 0 , 30

SELECT COUNT( idmaquina ) , tipodemaquina
FROM maquinas
GROUP BY tipodemaquina
LIMIT 0 , 30

SELECT COUNT( idmaquina ) , numdemaquina
FROM maquinas
GROUP BY numdemaquina
LIMIT 0 , 30

SELECT COUNT( idmaquina ) , fechadeentrega
FROM maquinas
GROUP BY fechadeentrega
LIMIT 0 , 30


SELECT COUNT( idmaquina ) , tipodemaquina
FROM maquinas
GROUP BY tipodemaquina
HAVING COUNT( idmaquina ) >0

SELECT COUNT( idmaquina ) , numdemaquina
FROM maquinas
GROUP BY numdemaquina
HAVING COUNT(idmaquina) , numdemaquina >0

SELECT COUNT( idmaquina ) , fechadeentrega
FROM maquinas
GROUP BY fechadeentrega
HAVING COUNT(idmaquina) , numdemaquina >0

SELECT COUNT( idcoach ) , nombre
FROM coach
GROUP BY nombre
HAVING COUNT(idcoach) , nombre >0

SELECT COUNT( idregistro ) , nombre
FROM registro
GROUP BY nombre
HAVING COUNT(idregistro) , nombre >0

SELECT TOP 1 * FROM empleados;
SELECT TOP 1 * FROM registro;
SELECT TOP 1 * FROM empleados;
SELECT TOP 1 * FROM coach;
SELECT TOP 1 * FROM tipodeempleado;
