USE [Gimnasio]
GO
/****** Object:  Index [indx_FechaDeNacimiento2]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Registro]') AND name = N'indx_FechaDeNacimiento2')
DROP INDEX [indx_FechaDeNacimiento2] ON [dbo].[Registro]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registro]') AND type in (N'U'))
DROP TABLE [dbo].[Registro]
GO
/****** Object:  Table [dbo].[Maquinas]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maquinas]') AND type in (N'U'))
DROP TABLE [dbo].[Maquinas]
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Coach]') AND type in (N'U'))
DROP TABLE [dbo].[Coach]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas]') AND type in (N'U'))
DROP TABLE [dbo].[Bebidas]
GO
USE [master]
GO
/****** Object:  Database [Gimnasio]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Gimnasio')
DROP DATABASE [Gimnasio]
GO
/****** Object:  Database [Gimnasio]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Gimnasio')
BEGIN
CREATE DATABASE [Gimnasio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gimnasio', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Gimnasio.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Gimnasio_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Gimnasio_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

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
ALTER DATABASE [Gimnasio] SET AUTO_CREATE_STATISTICS ON 
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
USE [Gimnasio]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 03/03/2020 07:37:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bebidas](
	[IdProducto] [varchar](50) NOT NULL,
	[NombreDeProducto] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaDeVencimiento] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 03/03/2020 07:37:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Horario] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[ApellidoPaterno])+'')+[ApellidoMaterno]),
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 03/03/2020 07:37:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Coach]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Coach](
	[IdCoach] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaDeNacimiento] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[ApellidoPaterno])+'')+[ApellidoMaterno]),
	[FechaDeNacimiento1] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdCoach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maquinas]    Script Date: 03/03/2020 07:37:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maquinas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Maquinas](
	[IdMaquina] [varchar](50) NOT NULL,
	[NumDeMaquina] [varchar](50) NOT NULL,
	[TipoDeMaquina] [varchar](50) NOT NULL,
	[TiempoDeDuracion] [varchar](50) NOT NULL,
	[FechaDeEntrega] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMaquina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 03/03/2020 07:37:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registro]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [indx_FechaDeNacimiento2]    Script Date: 03/03/2020 07:37:38 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Registro]') AND name = N'indx_FechaDeNacimiento2')
CREATE NONCLUSTERED INDEX [indx_FechaDeNacimiento2] ON [dbo].[Registro]
(
	[FechaDeNacimiento2] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Gimnasio] SET  READ_WRITE 
GO
