SELECT TipoDeMaquina FROM maquinas left join registro on maquinas.TipoDeMaquina = registro.Nombre
SELECT TipoDeEmpleado FROM Empleados left join tipodeempleado on Emleados.Nombre = tipodeempeado.Empleo

SELECT TipoDeMaquina FROM maquinas right join registro on maquinas.TipoDeMaquina = registro.Nombre
SELECT TipoDeEmpleado FROM Empleados right join tipodeempleado on Emleados.Nombre = tipodeempeado.Empleo

SELECT TipoDeMaquina FROM maquinas inner join registro on maquinas.TipoDeMaquina = registro.Nombre
SELECT TipoDeEmpleado FROM Empleados inner join tipodeempleado on Emleados.Nombre = tipodeempeado.Empleo

SELECT TipoDeMaquina FROM maquinas cross join registro on maquinas.TipoDeMaquina = registro.Nombre
SELECT TipoDeEmpleado FROM Empleados cross join tipodeempleado on Emleados.Nombre = tipodeempeado.Empleo

SELECT * INTO registro1 FROM registro