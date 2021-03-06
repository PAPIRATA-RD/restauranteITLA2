USE [master]
GO
/****** Object:  Database [restaurante_itla]    Script Date: 9/6/2020 8:00:09 PM ******/
CREATE DATABASE [restaurante_itla]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurante_itla', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\restaurante_itla.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restaurante_itla_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\restaurante_itla_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [restaurante_itla] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurante_itla].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurante_itla] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurante_itla] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurante_itla] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurante_itla] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurante_itla] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurante_itla] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [restaurante_itla] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurante_itla] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurante_itla] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurante_itla] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurante_itla] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurante_itla] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurante_itla] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurante_itla] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurante_itla] SET  ENABLE_BROKER 
GO
ALTER DATABASE [restaurante_itla] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurante_itla] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurante_itla] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurante_itla] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurante_itla] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurante_itla] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurante_itla] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurante_itla] SET RECOVERY FULL 
GO
ALTER DATABASE [restaurante_itla] SET  MULTI_USER 
GO
ALTER DATABASE [restaurante_itla] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurante_itla] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurante_itla] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurante_itla] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [restaurante_itla] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'restaurante_itla', N'ON'
GO
ALTER DATABASE [restaurante_itla] SET QUERY_STORE = OFF
GO
USE [restaurante_itla]
GO
/****** Object:  Schema [mesas]    Script Date: 9/6/2020 8:00:09 PM ******/
CREATE SCHEMA [mesas]
GO
/****** Object:  Table [dbo].[mesas]    Script Date: 9/6/2020 8:00:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mesas](
	[id_mesa] [int] NULL,
	[nombre_cliente] [varchar](20) NULL,
	[entrada] [varchar](30) NULL,
	[plato_fuerte] [varchar](30) NULL,
	[postre] [varchar](30) NULL,
	[bebida] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[platos_menu]    Script Date: 9/6/2020 8:00:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platos_menu](
	[id_plato] [int] IDENTITY(1,1) NOT NULL,
	[nombre_plato] [varchar](50) NULL,
	[tipo_plato] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_plato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pre_orden]    Script Date: 9/6/2020 8:00:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pre_orden](
	[id_mesa] [int] NULL,
	[nombre_cliente] [varchar](50) NULL,
	[entrada] [varchar](50) NULL,
	[plato_fuerte] [varchar](50) NULL,
	[postre] [varchar](50) NULL,
	[bebida] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_platos]    Script Date: 9/6/2020 8:00:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_platos](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[mesas] ([id_mesa], [nombre_cliente], [entrada], [plato_fuerte], [postre], [bebida]) VALUES (1, N'paco', N'Soupe à l’oignon', N'Soupe à l’oignon', N'Soupe à l’oignon', N'Soupe à l’oignon')
SET IDENTITY_INSERT [dbo].[platos_menu] ON 

INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (2, N'Espaguetti', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (3, N'Quiche Lorraine', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (4, N'Crepes', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (5, N'Soupe à l’oignon', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (6, N'Quesos', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (7, N'Bisque de Homard', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (8, N'Volau vent duchesse', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (9, N'Andouillete', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (10, N'Raclette', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (11, N'Tapenade', 1)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (12, N'Spaghetti a la boloñesa', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (13, N'Pizza de Pepperoni', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (14, N'Fettuccini Alfredo', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (15, N'Lasagna de carne molida', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (16, N'Pizza Margarita', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (17, N'Ravioles', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (18, N'Pollo a la parmigiana', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (19, N'Panettone', 2)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (20, N'Pastel de chocolate', 3)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (21, N'Agua', 4)
INSERT [dbo].[platos_menu] ([id_plato], [nombre_plato], [tipo_plato]) VALUES (22, N'Cerveza', 4)
SET IDENTITY_INSERT [dbo].[platos_menu] OFF
SET IDENTITY_INSERT [dbo].[tipos_platos] ON 

INSERT [dbo].[tipos_platos] ([id_tipo], [nombre_tipo]) VALUES (1, N'entrada')
INSERT [dbo].[tipos_platos] ([id_tipo], [nombre_tipo]) VALUES (2, N'Platos fuertes')
INSERT [dbo].[tipos_platos] ([id_tipo], [nombre_tipo]) VALUES (3, N'postre')
INSERT [dbo].[tipos_platos] ([id_tipo], [nombre_tipo]) VALUES (4, N'bebida')
SET IDENTITY_INSERT [dbo].[tipos_platos] OFF
ALTER TABLE [dbo].[platos_menu]  WITH CHECK ADD  CONSTRAINT [FK_CODIGO_TIPOPLATO] FOREIGN KEY([tipo_plato])
REFERENCES [dbo].[tipos_platos] ([id_tipo])
GO
ALTER TABLE [dbo].[platos_menu] CHECK CONSTRAINT [FK_CODIGO_TIPOPLATO]
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_platos]    Script Date: 9/6/2020 8:00:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertar_platos] @plato varchar(50), @tipo_plato int
as
begin
INSERT INTO platos_menu values(@plato,@tipo_plato)

end
GO
USE [master]
GO
ALTER DATABASE [restaurante_itla] SET  READ_WRITE 
GO
