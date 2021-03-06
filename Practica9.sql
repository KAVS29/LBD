USE [master]
GO
/****** Object:  Database [Gimnasio]    Script Date: 29/05/2020 06:55:44 p. m. ******/
CREATE DATABASE [Gimnasio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gimnasio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Gimnasio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Gimnasio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Gimnasio_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gimnasio] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gimnasio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gimnasio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gimnasio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gimnasio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gimnasio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gimnasio] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gimnasio] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Gimnasio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gimnasio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gimnasio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gimnasio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gimnasio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gimnasio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gimnasio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gimnasio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gimnasio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Gimnasio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gimnasio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gimnasio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gimnasio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gimnasio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gimnasio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gimnasio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gimnasio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gimnasio] SET  MULTI_USER 
GO
ALTER DATABASE [Gimnasio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gimnasio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gimnasio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gimnasio] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Gimnasio] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Gimnasio', N'ON'
GO
ALTER DATABASE [Gimnasio] SET QUERY_STORE = OFF
GO
USE [Gimnasio]
GO
/****** Object:  Table [dbo].[Maquinas]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquinas](
	[IdMaquina] [varchar](50) NOT NULL,
	[NumDeMaquina] [varchar](50) NOT NULL,
	[TipoDeMaquina] [varchar](50) NOT NULL,
	[TiempoDeDuracion] [varchar](50) NOT NULL,
	[FechaDeEntrega] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMaquina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEW_CantidaDeMaquinasXtipo]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_CantidaDeMaquinasXtipo] AS
select  count(idMaquina) CantidaMaquinas, TipoDeMaquina from Maquinas Group by TipoDeMaquina

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[TipoDeEmpleado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEW_CantidaDeEmpleadosXtipo]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[VIEW_CantidaDeEmpleadosXtipo] AS
select  count(idEmpleado) CantidaEmpleados, TipoDeEmpleado from Empleados Group by TipoDeEmpleado

GO
/****** Object:  Table [dbo].[Coach]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[IdCoach] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaDeNacimiento] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[ApellidoPaterno])+'')+[ApellidoMaterno]),
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdCoach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEW_CantidaDeCoachXnombre]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[VIEW_CantidaDeCoachXnombre] AS
select  count(idCoach) CantidaCoach , Nombre from Coach Group by Nombre

GO
/****** Object:  Table [dbo].[Registro]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[IdCliente] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaDeNacimiento] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[ApellidoPaterno])+'')+[ApellidoMaterno]),
	[FechaDeNacimiento2] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEW_CantidaDeClientesXedad]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[VIEW_CantidaDeClientesXedad] AS
select  count(idCliente) CantidaClientes , Edad from Registro Group by Edad

GO
/****** Object:  Table [dbo].[tipodeempleado]    Script Date: 29/05/2020 06:55:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipodeempleado](
	[Idtipoempleo] [int] NULL,
	[Empleo] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Coach] ([IdCoach], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'1', N'Pedro', N'Gonzales', N'Perez', N'10/08/1990')
INSERT [dbo].[Coach] ([IdCoach], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'2', N'Roberto', N'Gomez', N'Bolillos', N'10/07/1990')
GO
/****** Object:  Index [indx_FechaDeNacimiento2]    Script Date: 29/05/2020 06:55:44 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_FechaDeNacimiento2] ON [dbo].[Registro]
(
	[FechaDeNacimiento2] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Gimnasio] SET  READ_WRITE 
GO
