USE [master]
GO
/****** Object:  Database [Prueba]    Script Date: 28/8/2022 08:11:45 ******/
CREATE DATABASE [Prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prueba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba', N'ON'
GO
ALTER DATABASE [Prueba] SET QUERY_STORE = OFF
GO
USE [Prueba]
GO
/****** Object:  Table [dbo].[IN04]    Script Date: 28/8/2022 08:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IN04](
	[CodigoProducto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Precio] [float] NOT NULL,
	[SaldoInventario] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioIngreso] [varchar](50) NOT NULL,
	[IDFamilia] [int] NOT NULL,
 CONSTRAINT [PK__IN04__785B009EC658DB2B] PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IN05]    Script Date: 28/8/2022 08:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IN05](
	[IDFamilia] [int] IDENTITY(1,1) NOT NULL,
	[NombreFamilia] [varchar](50) NOT NULL,
	[UsuarioIngreso] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IN04] ON 

INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (14, N'Stone', 122.11, 43, CAST(N'2021-09-10T00:00:00.000' AS DateTime), N'Christy', 117)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (15, N'Brass', 541.85, 44, CAST(N'2022-04-03T00:00:00.000' AS DateTime), N'Ambur', 177)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (19, N'Plexiglass', 585.76, 9, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'Dallas', 127)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (24, N'Stone', 438.36, 32, CAST(N'2022-01-05T00:00:00.000' AS DateTime), N'Aarika', 124)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (26, N'Plexiglass', 291.01, 18, CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'Monty', 133)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (27, N'Plastic', 458.18, 14, CAST(N'2021-06-10T00:00:00.000' AS DateTime), N'Raimund', 140)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (31, N'Rubber', 497.85, 27, CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'Trent', 112)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (32, N'Stone', 733.02, 12, CAST(N'2022-07-01T00:00:00.000' AS DateTime), N'Berny', 201)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (33, N'Brass', 69.32, 27, CAST(N'2021-07-10T00:00:00.000' AS DateTime), N'Ruperto', 155)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (34, N'Glass', 628.8, 27, CAST(N'2022-12-08T00:00:00.000' AS DateTime), N'Bernelle', 114)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (37, N'Granite', 897.01, 9, CAST(N'2022-04-04T00:00:00.000' AS DateTime), N'Shea', 160)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (39, N'Steel', 846.09, 13, CAST(N'2022-03-02T00:00:00.000' AS DateTime), N'Karin', 186)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (40, N'Wood', 252, 25, CAST(N'2021-08-09T00:00:00.000' AS DateTime), N'Annmarie', 154)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (44, N'Granite', 404.4, 41, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'Scott', 172)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (45, N'Granite', 800.11, 38, CAST(N'2021-07-09T00:00:00.000' AS DateTime), N'Townie', 187)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (49, N'Rubber', 101.62, 9, CAST(N'2022-08-05T00:00:00.000' AS DateTime), N'Gaye', 137)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (50, N'Wood', 429.77, 47, CAST(N'2022-10-08T00:00:00.000' AS DateTime), N'Karlee', 145)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (51, N'Plastic', 265.64, 47, CAST(N'2021-01-12T00:00:00.000' AS DateTime), N'Mildred', 170)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (52, N'Stone', 206.02, 2, CAST(N'2022-07-06T00:00:00.000' AS DateTime), N'Mayor', 178)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (53, N'Plexiglass', 362.25, 6, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'Kathryne', 199)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (58, N'Vinyl', 823.02, 49, CAST(N'2022-09-04T00:00:00.000' AS DateTime), N'Bucky', 115)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (60, N'Steel', 234, 7, CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'Vivienne', 191)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (64, N'Steel', 2.51, 26, CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'Mirabel', 120)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (67, N'Steel', 746.01, 20, CAST(N'2021-04-12T00:00:00.000' AS DateTime), N'Delcine', 127)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (78, N'Glass', 383.42, 21, CAST(N'2022-03-07T00:00:00.000' AS DateTime), N'Matilde', 143)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (79, N'Plexiglass', 818.55, 47, CAST(N'2021-11-09T00:00:00.000' AS DateTime), N'Shani', 117)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (83, N'Wood', 959.34, 35, CAST(N'2021-11-10T00:00:00.000' AS DateTime), N'Ruthanne', 173)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (86, N'Aluminum', 521.49, 31, CAST(N'2022-07-02T00:00:00.000' AS DateTime), N'Anthia', 158)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (89, N'Steel', 846.92, 26, CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'Grethel', 166)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (90, N'Vinyl', 841.26, 50, CAST(N'2022-11-05T00:00:00.000' AS DateTime), N'Ursala', 169)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (91, N'Vinyl', 895.62, 33, CAST(N'2021-02-09T00:00:00.000' AS DateTime), N'Armand', 166)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (95, N'Plastic', 327.74, 27, CAST(N'2021-04-12T00:00:00.000' AS DateTime), N'Lenna', 137)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (99, N'Plastic', 108.97, 11, CAST(N'2021-07-09T00:00:00.000' AS DateTime), N'Ilyse', 200)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (100, N'Plexiglass', 900.96, 24, CAST(N'2022-01-07T00:00:00.000' AS DateTime), N'Lavinie', 147)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (102, N'Brass', 372.41, 24, CAST(N'2021-09-09T00:00:00.000' AS DateTime), N'Caroline', 201)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (103, N'Brass', 145.02, 38, CAST(N'2022-10-04T00:00:00.000' AS DateTime), N'Rutherford', 158)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (104, N'Plexiglass', 550.15, 39, CAST(N'2021-04-09T00:00:00.000' AS DateTime), N'Gianna', 193)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (105, N'Plastic', 452.3, 4, CAST(N'2022-10-08T00:00:00.000' AS DateTime), N'Lezlie', 133)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (106, N'Steel', 491.18, 29, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Geordie', 190)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (111, N'Plastic', 220.16, 49, CAST(N'2022-05-03T00:00:00.000' AS DateTime), N'Cliff', 118)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (114, N'Stone', 122.11, 43, CAST(N'2021-09-10T00:00:00.000' AS DateTime), N'Christy', 117)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (115, N'Brass', 541.85, 44, CAST(N'2022-04-03T00:00:00.000' AS DateTime), N'Ambur', 177)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (119, N'Plexiglass', 585.76, 9, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'Dallas', 127)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (124, N'Stone', 438.36, 32, CAST(N'2022-01-05T00:00:00.000' AS DateTime), N'Aarika', 124)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (126, N'Plexiglass', 291.01, 18, CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'Monty', 133)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (127, N'Plastic', 458.18, 14, CAST(N'2021-06-10T00:00:00.000' AS DateTime), N'Raimund', 140)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (131, N'Rubber', 497.85, 27, CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'Trent', 112)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (132, N'Stone', 733.02, 12, CAST(N'2022-07-01T00:00:00.000' AS DateTime), N'Berny', 201)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (133, N'Brass', 69.32, 27, CAST(N'2021-07-10T00:00:00.000' AS DateTime), N'Ruperto', 155)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (134, N'Glass', 628.8, 27, CAST(N'2022-12-08T00:00:00.000' AS DateTime), N'Bernelle', 114)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (137, N'Granite', 897.01, 9, CAST(N'2022-04-04T00:00:00.000' AS DateTime), N'Shea', 160)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (139, N'Steel', 846.09, 13, CAST(N'2022-03-02T00:00:00.000' AS DateTime), N'Karin', 186)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (140, N'Wood', 252, 25, CAST(N'2021-08-09T00:00:00.000' AS DateTime), N'Annmarie', 154)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (144, N'Granite', 404.4, 41, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'Scott', 172)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (145, N'Granite', 800.11, 38, CAST(N'2021-07-09T00:00:00.000' AS DateTime), N'Townie', 187)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (149, N'Rubber', 101.62, 9, CAST(N'2022-08-05T00:00:00.000' AS DateTime), N'Gaye', 137)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (150, N'Wood', 429.77, 47, CAST(N'2022-10-08T00:00:00.000' AS DateTime), N'Karlee', 145)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (151, N'Plastic', 265.64, 47, CAST(N'2021-01-12T00:00:00.000' AS DateTime), N'Mildred', 170)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (152, N'Stone', 206.02, 2, CAST(N'2022-07-06T00:00:00.000' AS DateTime), N'Mayor', 178)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (153, N'Plexiglass', 362.25, 6, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'Kathryne', 199)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (158, N'Vinyl', 823.02, 49, CAST(N'2022-09-04T00:00:00.000' AS DateTime), N'Bucky', 115)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (160, N'Steel', 234, 7, CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'Vivienne', 191)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (164, N'Steel', 2.51, 26, CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'Mirabel', 120)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (167, N'Steel', 746.01, 20, CAST(N'2021-04-12T00:00:00.000' AS DateTime), N'Delcine', 127)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (178, N'Glass', 383.42, 21, CAST(N'2022-03-07T00:00:00.000' AS DateTime), N'Matilde', 143)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (179, N'Plexiglass', 818.55, 47, CAST(N'2021-11-09T00:00:00.000' AS DateTime), N'Shani', 117)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (183, N'Wood', 959.34, 35, CAST(N'2021-11-10T00:00:00.000' AS DateTime), N'Ruthanne', 173)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (186, N'Aluminum', 521.49, 31, CAST(N'2022-07-02T00:00:00.000' AS DateTime), N'Anthia', 158)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (189, N'Steel', 846.92, 26, CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'Grethel', 166)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (190, N'Vinyl', 841.26, 50, CAST(N'2022-11-05T00:00:00.000' AS DateTime), N'Ursala', 169)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (191, N'Vinyl', 895.62, 33, CAST(N'2021-02-09T00:00:00.000' AS DateTime), N'Armand', 166)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (195, N'Plastic', 327.74, 27, CAST(N'2021-04-12T00:00:00.000' AS DateTime), N'Lenna', 137)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (199, N'Plastic', 108.97, 11, CAST(N'2021-07-09T00:00:00.000' AS DateTime), N'Ilyse', 200)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (200, N'Plexiglass', 900.96, 24, CAST(N'2022-01-07T00:00:00.000' AS DateTime), N'Lavinie', 147)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (202, N'Brass', 372.41, 24, CAST(N'2021-09-09T00:00:00.000' AS DateTime), N'Caroline', 201)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (203, N'Brass', 145.02, 38, CAST(N'2022-10-04T00:00:00.000' AS DateTime), N'Rutherford', 158)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (204, N'Plexiglass', 550.15, 39, CAST(N'2021-04-09T00:00:00.000' AS DateTime), N'Gianna', 193)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (205, N'Plastic', 452.3, 4, CAST(N'2022-10-08T00:00:00.000' AS DateTime), N'Lezlie', 133)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (206, N'Steel', 491.18, 29, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Geordie', 190)
INSERT [dbo].[IN04] ([CodigoProducto], [Descripcion], [Precio], [SaldoInventario], [FechaIngreso], [UsuarioIngreso], [IDFamilia]) VALUES (211, N'Plastic', 220.16, 49, CAST(N'2022-05-03T00:00:00.000' AS DateTime), N'Cliff', 118)
SET IDENTITY_INSERT [dbo].[IN04] OFF
GO
SET IDENTITY_INSERT [dbo].[IN05] ON 

INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (106, N'Cervus duvauceli', N'Ban', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (107, N'Pseudalopex gymnocercus', N'Kimmi', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (108, N'Eolophus roseicapillus', N'Boony', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (109, N'Tayassu pecari', N'Colly', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (110, N'Dendrocitta vagabunda', N'Say', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (111, N'Meles meles', N'Albertina', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (112, N'unavailable', N'Betsey', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (113, N'Odocoilenaus virginianus', N'Larissa', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (114, N'Naja haje', N'Valene', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (115, N'Lama pacos', N'Yolande', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (116, N'Ratufa indica', N'Onofredo', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (117, N'Zosterops pallidus', N'Rudolfo', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (118, N'Anser caerulescens', N'Horst', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (119, N'Anastomus oscitans', N'Robbie', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (120, N'Sylvicapra grimma', N'Janelle', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (121, N'Connochaetus taurinus', N'Melisande', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (122, N'Nasua nasua', N'Connie', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (123, N'Bassariscus astutus', N'Lenard', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (124, N'Alcelaphus buselaphus cokii', N'Petronille', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (125, N'Himantopus himantopus', N'Dorris', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (126, N'Uraeginthus granatina', N'Ezri', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (127, N'Redunca redunca', N'Rania', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (128, N'Macropus parryi', N'Luke', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (129, N'Cacatua tenuirostris', N'Mart', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (130, N'Kobus defassa', N'Vernon', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (131, N'Galictis vittata', N'Bobbye', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (132, N'Helogale undulata', N'Johan', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (133, N'Erethizon dorsatum', N'Jo ann', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (134, N'Callipepla gambelii', N'Matelda', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (135, N'Coluber constrictor foxii', N'Wilek', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (136, N'Macaca radiata', N'Ernesta', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (137, N'Spermophilus richardsonii', N'Nobe', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (138, N'Ceryle rudis', N'Dewitt', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (139, N'Plegadis ridgwayi', N'Greer', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (140, N'Pycnonotus nigricans', N'Cass', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (141, N'Conolophus subcristatus', N'Sibyl', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (142, N'Madoqua kirkii', N'Ludovico', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (143, N'Semnopithecus entellus', N'Suzanna', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (144, N'Agkistrodon piscivorus', N'Tiena', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (145, N'Lepus townsendii', N'Ophelie', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (146, N'Spermophilus lateralis', N'Darnell', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (147, N'Bassariscus astutus', N'Davidson', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (148, N'Chionis alba', N'Marisa', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (149, N'Iguana iguana', N'Barrie', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (150, N'Crotaphytus collaris', N'Aristotle', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (151, N'Nyctea scandiaca', N'Morey', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (152, N'Macropus eugenii', N'Randolf', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (153, N'Cervus canadensis', N'Walton', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (154, N'Uraeginthus granatina', N'Amalea', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (155, N'Uraeginthus granatina', N'Sydney', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (156, N'Epicrates cenchria maurus', N'Hedwiga', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (157, N'Cercatetus concinnus', N'Mathian', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (158, N'Lutra canadensis', N'Shea', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (159, N'Oryx gazella callotis', N'Glad', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (160, N'Manouria emys', N'Addison', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (161, N'Canis aureus', N'Grace', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (162, N'Macropus rufus', N'Carl', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (163, N'Nucifraga columbiana', N'Kippie', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (164, N'Notechis semmiannulatus', N'Adriena', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (165, N'Crotalus adamanteus', N'Amory', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (166, N'Orcinus orca', N'Lois', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (167, N'Meleagris gallopavo', N'Wilton', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (168, N'Chauna torquata', N'Andrew', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (169, N'Bettongia penicillata', N'Taber', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (170, N'unavailable', N'Wilhelmine', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (171, N'Ctenophorus ornatus', N'Robenia', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (172, N'Ramphastos tucanus', N'Carl', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (173, N'Eremophila alpestris', N'Petrina', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (174, N'Colobus guerza', N'Gran', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (175, N'Camelus dromedarius', N'Barnett', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (176, N'Spilogale gracilis', N'Mil', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (177, N'Bison bison', N'Teddi', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (178, N'Acridotheres tristis', N'Lila', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (179, N'Dipodomys deserti', N'Heather', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (180, N'Corvus albicollis', N'Barnabas', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (181, N'Catharacta skua', N'Dana', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (182, N'Cordylus giganteus', N'Keenan', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (183, N'Ictonyx striatus', N'Camile', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (184, N'Caiman crocodilus', N'Susanna', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (185, N'Aegypius tracheliotus', N'Levon', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (186, N'Plegadis ridgwayi', N'Delano', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (187, N'Pituophis melanaleucus', N'Teressa', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (188, N'Phasianus colchicus', N'Lissie', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (189, N'Funambulus pennati', N'Robbert', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (190, N'Porphyrio porphyrio', N'Mandi', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (191, N'Sarkidornis melanotos', N'Blair', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (192, N'Phascolarctos cinereus', N'Glen', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (193, N'Tyto novaehollandiae', N'Reginauld', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (194, N'Butorides striatus', N'Bonnee', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (195, N'Colobus guerza', N'Kennith', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (196, N'Gyps bengalensis', N'Aindrea', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (197, N'Ratufa indica', N'Dennison', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (198, N'Pseudalopex gymnocercus', N'Gale', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (199, N'Ephippiorhynchus mycteria', N'Adan', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (200, N'Ephippiorhynchus mycteria', N'Findlay', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (201, N'Felis silvestris lybica', N'Emmy', 0)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (202, N'Phalacrocorax varius', N'Mychal', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (203, N'Otaria flavescens', N'Jordain', 1)
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (204, N'Tayassu tajacu', N'August', 1)
GO
INSERT [dbo].[IN05] ([IDFamilia], [NombreFamilia], [UsuarioIngreso], [Estado]) VALUES (205, N'Rana sp.', N'Burlie', 0)
SET IDENTITY_INSERT [dbo].[IN05] OFF
GO
ALTER TABLE [dbo].[IN04]  WITH CHECK ADD  CONSTRAINT [IDFamilia] FOREIGN KEY([IDFamilia])
REFERENCES [dbo].[IN05] ([IDFamilia])
GO
ALTER TABLE [dbo].[IN04] CHECK CONSTRAINT [IDFamilia]
GO
/****** Object:  StoredProcedure [dbo].[insertFamily]    Script Date: 28/8/2022 08:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertFamily] @nombre varchar(50), @usuario varchar(50), @estado int
as
	insert into IN05 values (@nombre, @usuario, @estado)
GO
/****** Object:  StoredProcedure [dbo].[insertProducts]    Script Date: 28/8/2022 08:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertProducts] @descripcion varchar(50), 
@precio float, @saldo float, @fecha datetime, @usuario varchar(50), @idFamilia int
as
	insert into IN04 values(@descripcion, @precio, @saldo, @fecha, @usuario, @idFamilia)
GO
USE [master]
GO
ALTER DATABASE [Prueba] SET  READ_WRITE 
GO
