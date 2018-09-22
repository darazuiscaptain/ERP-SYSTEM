USE [master]
GO
/****** Object:  Database [TepisiBaza-2018]    Script Date: 22/09/2018 21:21:19 ******/
CREATE DATABASE [TepisiBaza-2018]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TepisiBaza-2018', FILENAME = N'C:\Users\Ilhan Kalac\TepisiBaza-2018.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TepisiBaza-2018_log', FILENAME = N'C:\Users\Ilhan Kalac\TepisiBaza-2018_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TepisiBaza-2018] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TepisiBaza-2018].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TepisiBaza-2018] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET ARITHABORT OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TepisiBaza-2018] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TepisiBaza-2018] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TepisiBaza-2018] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TepisiBaza-2018] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TepisiBaza-2018] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TepisiBaza-2018] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TepisiBaza-2018] SET  MULTI_USER 
GO
ALTER DATABASE [TepisiBaza-2018] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TepisiBaza-2018] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TepisiBaza-2018] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TepisiBaza-2018] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TepisiBaza-2018] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TepisiBaza-2018] SET QUERY_STORE = OFF
GO
USE [TepisiBaza-2018]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [TepisiBaza-2018]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/09/2018 21:21:20 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Broj]    Script Date: 22/09/2018 21:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Broj](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Broj] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musterijas]    Script Date: 22/09/2018 21:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musterijas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImePrezime] [nvarchar](max) NULL,
	[BrojTepiha] [smallint] NULL,
	[BrojTelefona] [nchar](10) NULL,
	[Adresa] [nvarchar](max) NULL,
	[VremeKreiranjaMusterije] [datetime] NULL,
 CONSTRAINT [PK_Musterijas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Racuni]    Script Date: 22/09/2018 21:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racuni](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Racun] [float] NULL,
	[MusterijaId] [int] NULL,
	[KreiranjeRacuna] [datetime] NULL,
	[Placen] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tepisi]    Script Date: 22/09/2018 21:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tepisi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Duzina] [float] NOT NULL,
	[Kvadratura] [real] NOT NULL,
	[RacunId] [int] NOT NULL,
	[Sirina] [float] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180515201519_Initial-Migration', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180515202013_SeedDatabase', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180515215906_InitialMigration', N'2.0.3-rtm-10026')
SET IDENTITY_INSERT [dbo].[Broj] ON 

INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (1, 1)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (2, 2)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (3, 3)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (4, 4)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (5, 5)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (6, 6)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (7, 7)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (8, 8)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (9, 9)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (10, 10)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (11, 11)
INSERT [dbo].[Broj] ([Id], [Broj]) VALUES (12, 12)
SET IDENTITY_INSERT [dbo].[Broj] OFF
SET IDENTITY_INSERT [dbo].[Musterijas] ON 

INSERT [dbo].[Musterijas] ([Id], [ImePrezime], [BrojTepiha], [BrojTelefona], [Adresa], [VremeKreiranjaMusterije]) VALUES (1502, N'Etko Kalac', 0, N'123456    ', N'Neka', CAST(N'2018-09-06T01:20:32.993' AS DateTime))
INSERT [dbo].[Musterijas] ([Id], [ImePrezime], [BrojTepiha], [BrojTelefona], [Adresa], [VremeKreiranjaMusterije]) VALUES (1503, N'Ilhan', 0, N'32R432FDS ', N'FDSAFDSA', CAST(N'2018-09-22T20:14:48.403' AS DateTime))
SET IDENTITY_INSERT [dbo].[Musterijas] OFF
SET IDENTITY_INSERT [dbo].[Racuni] ON 

INSERT [dbo].[Racuni] ([Id], [Racun], [MusterijaId], [KreiranjeRacuna], [Placen]) VALUES (1048, 18, 1502, CAST(N'2018-09-06T01:20:33.000' AS DateTime), NULL)
INSERT [dbo].[Racuni] ([Id], [Racun], [MusterijaId], [KreiranjeRacuna], [Placen]) VALUES (1049, 0, 1503, CAST(N'2018-09-22T20:14:48.407' AS DateTime), NULL)
INSERT [dbo].[Racuni] ([Id], [Racun], [MusterijaId], [KreiranjeRacuna], [Placen]) VALUES (1050, 0, 1503, CAST(N'2018-09-22T20:39:53.993' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Racuni] OFF
SET IDENTITY_INSERT [dbo].[Tepisi] ON 

INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (17, 23, 69, 1048, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (3, 3, 12, 1048, 4)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (18, 2, 6, 1048, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (19, 2, 6, 1048, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (20, 2, 4, 1048, 2)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (21, 3, 9, 1048, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (22, 2, 6, 1048, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (23, 2, 6, 1050, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (25, 2, 6, 1050, 3)
INSERT [dbo].[Tepisi] ([Id], [Duzina], [Kvadratura], [RacunId], [Sirina]) VALUES (24, 3, 12, 1050, 4)
SET IDENTITY_INSERT [dbo].[Tepisi] OFF
ALTER TABLE [dbo].[Racuni]  WITH CHECK ADD FOREIGN KEY([MusterijaId])
REFERENCES [dbo].[Musterijas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tepisi]  WITH CHECK ADD FOREIGN KEY([RacunId])
REFERENCES [dbo].[Racuni] ([Id])
GO
USE [master]
GO
ALTER DATABASE [TepisiBaza-2018] SET  READ_WRITE 
GO
