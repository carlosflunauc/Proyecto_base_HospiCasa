USE [master]
GO
/****** Object:  Database [HospiEnCasaData]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE DATABASE [HospiEnCasaData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HospiEnCasaData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HospiEnCasaData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HospiEnCasaData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HospiEnCasaData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HospiEnCasaData] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HospiEnCasaData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HospiEnCasaData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET ARITHABORT OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HospiEnCasaData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HospiEnCasaData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HospiEnCasaData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HospiEnCasaData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HospiEnCasaData] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HospiEnCasaData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HospiEnCasaData] SET  MULTI_USER 
GO
ALTER DATABASE [HospiEnCasaData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HospiEnCasaData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HospiEnCasaData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HospiEnCasaData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HospiEnCasaData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HospiEnCasaData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HospiEnCasaData] SET QUERY_STORE = OFF
GO
USE [HospiEnCasaData]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/09/2021 11:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historias]    Script Date: 25/09/2021 11:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Diagnostico] [nvarchar](max) NULL,
	[Entorno] [nvarchar](max) NULL,
 CONSTRAINT [PK_Historias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 25/09/2021 11:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellidos] [nvarchar](max) NULL,
	[NumeroTelefono] [nvarchar](max) NULL,
	[Genero] [int] NOT NULL,
	[Ciudad] [nvarchar](max) NULL,
	[Codigo] [nvarchar](max) NULL,
	[Correo] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[EnfermeraId] [int] NULL,
	[Especialidad] [nvarchar](max) NULL,
	[FamiliarId] [int] NULL,
	[FechaNacimiento] [datetime2](7) NULL,
	[HistoriaId] [int] NULL,
	[HorasLaborales] [int] NULL,
	[Latitud] [real] NULL,
	[Longitud] [real] NULL,
	[MedicoId] [int] NULL,
	[Parentesco] [nvarchar](max) NULL,
	[RegistroRethus] [nvarchar](max) NULL,
	[TarjetaProfesional] [nvarchar](max) NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignosVitales]    Script Date: 25/09/2021 11:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignosVitales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime2](7) NOT NULL,
	[Valor] [real] NOT NULL,
	[Signo] [int] NOT NULL,
	[PacienteId] [int] NULL,
 CONSTRAINT [PK_SignosVitales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SugerenciasCuidado]    Script Date: 25/09/2021 11:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SugerenciasCuidado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime2](7) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[HistoriaId] [int] NULL,
 CONSTRAINT [PK_SugerenciasCuidado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Personas_EnfermeraId]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Personas_EnfermeraId] ON [dbo].[Personas]
(
	[EnfermeraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personas_FamiliarId]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Personas_FamiliarId] ON [dbo].[Personas]
(
	[FamiliarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personas_HistoriaId]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Personas_HistoriaId] ON [dbo].[Personas]
(
	[HistoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personas_MedicoId]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Personas_MedicoId] ON [dbo].[Personas]
(
	[MedicoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SignosVitales_PacienteId]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_SignosVitales_PacienteId] ON [dbo].[SignosVitales]
(
	[PacienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SugerenciasCuidado_HistoriaId]    Script Date: 25/09/2021 11:50:03 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_SugerenciasCuidado_HistoriaId] ON [dbo].[SugerenciasCuidado]
(
	[HistoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Personas] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Historias_HistoriaId] FOREIGN KEY([HistoriaId])
REFERENCES [dbo].[Historias] ([Id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Historias_HistoriaId]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Personas_EnfermeraId] FOREIGN KEY([EnfermeraId])
REFERENCES [dbo].[Personas] ([Id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Personas_EnfermeraId]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Personas_FamiliarId] FOREIGN KEY([FamiliarId])
REFERENCES [dbo].[Personas] ([Id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Personas_FamiliarId]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Personas_MedicoId] FOREIGN KEY([MedicoId])
REFERENCES [dbo].[Personas] ([Id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Personas_MedicoId]
GO
ALTER TABLE [dbo].[SignosVitales]  WITH CHECK ADD  CONSTRAINT [FK_SignosVitales_Personas_PacienteId] FOREIGN KEY([PacienteId])
REFERENCES [dbo].[Personas] ([Id])
GO
ALTER TABLE [dbo].[SignosVitales] CHECK CONSTRAINT [FK_SignosVitales_Personas_PacienteId]
GO
ALTER TABLE [dbo].[SugerenciasCuidado]  WITH CHECK ADD  CONSTRAINT [FK_SugerenciasCuidado_Historias_HistoriaId] FOREIGN KEY([HistoriaId])
REFERENCES [dbo].[Historias] ([Id])
GO
ALTER TABLE [dbo].[SugerenciasCuidado] CHECK CONSTRAINT [FK_SugerenciasCuidado_Historias_HistoriaId]
GO
USE [master]
GO
ALTER DATABASE [HospiEnCasaData] SET  READ_WRITE 
GO
