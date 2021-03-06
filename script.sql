USE [master]
GO
/****** Object:  Database [s17guest60]    Script Date: 5/18/2017 6:36:18 PM ******/
CREATE DATABASE [s17guest60]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N's17guest60', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest60.mdf' , SIZE = 7232KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N's17guest60_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest60_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [s17guest60] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [s17guest60].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [s17guest60] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [s17guest60] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [s17guest60] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [s17guest60] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [s17guest60] SET ARITHABORT OFF 
GO
ALTER DATABASE [s17guest60] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [s17guest60] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [s17guest60] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest60] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [s17guest60] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [s17guest60] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [s17guest60] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [s17guest60] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [s17guest60] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [s17guest60] SET  ENABLE_BROKER 
GO
ALTER DATABASE [s17guest60] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [s17guest60] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [s17guest60] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [s17guest60] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [s17guest60] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [s17guest60] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [s17guest60] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [s17guest60] SET RECOVERY FULL 
GO
ALTER DATABASE [s17guest60] SET  MULTI_USER 
GO
ALTER DATABASE [s17guest60] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [s17guest60] SET DB_CHAINING OFF 
GO
ALTER DATABASE [s17guest60] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [s17guest60] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N's17guest60', N'ON'
GO
USE [s17guest60]
GO
/****** Object:  User [s17guest60]    Script Date: 5/18/2017 6:36:18 PM ******/
CREATE USER [s17guest60] FOR LOGIN [s17guest60] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest60]
GO
/****** Object:  Table [dbo].[City]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[cityId] [nvarchar](3) NOT NULL,
	[cityName] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[classId] [nvarchar](10) NOT NULL,
	[eventId] [int] NOT NULL,
	[classTitle] [nvarchar](25) NULL,
	[classDescription] [nvarchar](100) NULL,
	[classDifficultyId] [int] NOT NULL,
	[classDuration] [int] NOT NULL,
	[personId] [int] NOT NULL,
	[trackId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[classId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassAttendee]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassAttendee](
	[personFirst] [nvarchar](25) NOT NULL,
	[personLast] [nvarchar](25) NOT NULL,
	[classId] [nvarchar](10) NOT NULL,
	[personEmail] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassDifficulty]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassDifficulty](
	[classDifficultyId] [int] IDENTITY(1,1) NOT NULL,
	[difficultyDescription] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[classDifficultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[countryId] [nvarchar](2) NOT NULL,
	[countryName] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[eventId] [int] IDENTITY(1,1) NOT NULL,
	[eventDescription] [nvarchar](75) NOT NULL,
	[eventDate] [date] NOT NULL,
	[locationId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[locationId] [int] IDENTITY(1,1) NOT NULL,
	[locationAddress] [nvarchar](60) NOT NULL,
	[locationZip] [nvarchar](20) NULL,
	[cityId] [int] NOT NULL,
	[stateId] [nvarchar](3) NOT NULL,
	[countryId] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[locationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[personId] [int] IDENTITY(1,1) NOT NULL,
	[personLast] [nvarchar](25) NOT NULL,
	[personFirst] [nvarchar](25) NOT NULL,
	[personEmail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[personId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonRole]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonRole](
	[roleId] [int] NOT NULL,
	[personId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Presentation]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentation](
	[presentationId] [int] IDENTITY(1,1) NOT NULL,
	[presentationTitle] [nvarchar](75) NOT NULL,
	[presentationSpeaker] [nvarchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[presentationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Raffle]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raffle](
	[raffleId] [int] IDENTITY(1,1) NOT NULL,
	[eventId] [int] NOT NULL,
	[personId] [int] NOT NULL,
	[vendorId] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[raffleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleDescription] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomId] [int] IDENTITY(1,1) NOT NULL,
	[eventId] [int] NULL,
	[occupancy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[roomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[scheduleId] [int] IDENTITY(1,1) NOT NULL,
	[eventId] [int] NOT NULL,
	[classId] [nvarchar](10) NULL,
	[roomId] [int] NOT NULL,
	[scheduleTime] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sponsor]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[sponsorId] [int] IDENTITY(1,1) NOT NULL,
	[sponsorName] [varchar](50) NOT NULL,
	[sponsorLevelId] [int] NOT NULL,
	[eventId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sponsorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SponsorLevel]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SponsorLevel](
	[sponsorLevelId] [int] IDENTITY(1,1) NOT NULL,
	[sponsorLevelDescription] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sponsorLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[stateId] [nvarchar](3) NOT NULL,
	[stateName] [nvarchar](25) NOT NULL,
	[countryId] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Track]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[trackId] [int] IDENTITY(1,1) NOT NULL,
	[trackDescription] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[trackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[vendorId] [nvarchar](15) NOT NULL,
	[vendorDesciption] [nvarchar](50) NOT NULL,
	[personId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorTable]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorTable](
	[tableId] [int] NOT NULL,
	[eventId] [int] NOT NULL,
	[vendorId] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'1', N'	Baltimore	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'10', N'	Burbank	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'100', N'	Yakima	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'101', N'	New York City	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'102', N'	Philadelphia	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'103', N'	Budapest	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'104', N'	Bogota	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'105', N'	Kyiv	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'106', N'	Brisbane	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'107', N'	Plovdiv	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'11', N'	Burbank	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'12', N'	Burien	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'13', N'	Burien	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'14', N'	Bellingham	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'15', N'	Bellingham	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'16', N'	Bury	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'17', N'	Calgary	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'18', N'	Cambridge	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'19', N'	Chula Vista	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'2', N'	Bellflower	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'20', N'	Cincinnati	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'21', N'	Coffs Harbour	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'22', N'	Coffs Harbour	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'23', N'	Colma	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'24', N'	Colma	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'25', N'	Colma	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'26', N'	Concord	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'27', N'	Corvallis	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'28', N'	El Cajon	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'29', N'	Everett	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'3', N'	Burlingame	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'30', N'	Gateshead	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'31', N'	Haney	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'32', N'	Haney	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'33', N'	Hervey Bay	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'34', N'	Hervey Bay	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'35', N'	Issaquah	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'36', N'	Kirkland	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'37', N'	Lake Oswego	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'38', N'	Lane Cove	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'39', N'	Langley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'4', N'	Berkeley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'40', N'	Langley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'41', N'	Lebanon	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'42', N'	Lebanon	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'43', N'	Lebanon	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'44', N'	Lebanon	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'45', N'	Leeds	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'46', N'	London	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'47', N'	London	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'48', N'	London	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'49', N'	London	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'5', N'	Berkeley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'50', N'	Los Angeles	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'51', N'	Lynnwood	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'52', N'	Matraville	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'53', N'	Marysville	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'54', N'	Metchosin	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'55', N'	Mill Valley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'56', N'	Milsons Point	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'57', N'	Milton Keynes	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'58', N'	N. Vancouver	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'59', N'	Newcastle	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'6', N'	Berkeley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'60', N'	Newton	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'61', N'	North Ryde	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'62', N'	North Sydney	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'63', N'	Oak Bay	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'64', N'	Oakland	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'65', N'	Olympia	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'66', N'	Oregon City	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'67', N'	Oregon City	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'68', N'	Oxford	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'69', N'	Peterborough	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'7', N'	Bremerton	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'70', N'	Port Macquarie	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'71', N'	Port Macquarie	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'72', N'	Port Macquarie	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'73', N'	Port Orchard	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'74', N'	Portland	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'75', N'	Puyallup	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'76', N'	Redmond	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'77', N'	Rhodes	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'78', N'	San Diego	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'79', N'	Santa Cruz	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'8', N'	Bremerton	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'80', N'	Santa Monica	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'81', N'	Seattle	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'82', N'	Sedro Woolley	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'83', N'	Shawnee	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'84', N'	Silverwater	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'85', N'	South Melbourne	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'86', N'	Springwood	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'87', N'	Stoke-on-Trent	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'88', N'	Stoke-on-Trent	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'89', N'	Torrance	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'9', N'	Burbank	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'90', N'	Torrance	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'91', N'	Townsville	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'92', N'	Townsville	 ')
GO
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'93', N'	Townsville	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'94', N'	Walla Walla	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'95', N'	Warrnambool	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'96', N'	West Covina	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'97', N'	Wollongong	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'98', N'	Woodland Hills	 ')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (N'99', N'	Woodland Hills	 ')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__ClassDif__484405E75D79E5FC]    Script Date: 5/18/2017 6:36:18 PM ******/
ALTER TABLE [dbo].[ClassDifficulty] ADD UNIQUE NONCLUSTERED 
(
	[difficultyDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Role__4F238673812CDD0A]    Script Date: 5/18/2017 6:36:18 PM ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[roleDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Schedule__DB040253C5DC11CD]    Script Date: 5/18/2017 6:36:18 PM ******/
ALTER TABLE [dbo].[Schedule] ADD UNIQUE NONCLUSTERED 
(
	[eventId] ASC,
	[roomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__SponsorL__F3B78F345AA54400]    Script Date: 5/18/2017 6:36:18 PM ******/
ALTER TABLE [dbo].[SponsorLevel] ADD UNIQUE NONCLUSTERED 
(
	[sponsorLevelDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Track__E3C7021EBDF2366E]    Script Date: 5/18/2017 6:36:18 PM ******/
ALTER TABLE [dbo].[Track] ADD UNIQUE NONCLUSTERED 
(
	[trackDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([classDifficultyId])
REFERENCES [dbo].[ClassDifficulty] ([classDifficultyId])
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([eventId])
REFERENCES [dbo].[Event] ([eventId])
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([personId])
REFERENCES [dbo].[Person] ([personId])
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([trackId])
REFERENCES [dbo].[Track] ([trackId])
GO
ALTER TABLE [dbo].[ClassAttendee]  WITH CHECK ADD FOREIGN KEY([classId])
REFERENCES [dbo].[Class] ([classId])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([locationId])
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD FOREIGN KEY([countryId])
REFERENCES [dbo].[Country] ([countryId])
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD FOREIGN KEY([countryId])
REFERENCES [dbo].[Country] ([countryId])
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD FOREIGN KEY([stateId])
REFERENCES [dbo].[State] ([stateId])
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD FOREIGN KEY([stateId])
REFERENCES [dbo].[State] ([stateId])
GO
ALTER TABLE [dbo].[PersonRole]  WITH CHECK ADD FOREIGN KEY([personId])
REFERENCES [dbo].[Person] ([personId])
GO
ALTER TABLE [dbo].[PersonRole]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Raffle]  WITH CHECK ADD FOREIGN KEY([eventId])
REFERENCES [dbo].[Event] ([eventId])
GO
ALTER TABLE [dbo].[Raffle]  WITH CHECK ADD FOREIGN KEY([personId])
REFERENCES [dbo].[Person] ([personId])
GO
ALTER TABLE [dbo].[Raffle]  WITH CHECK ADD FOREIGN KEY([vendorId])
REFERENCES [dbo].[Vendor] ([vendorId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([classId])
REFERENCES [dbo].[Class] ([classId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([eventId])
REFERENCES [dbo].[Event] ([eventId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
ALTER TABLE [dbo].[Sponsor]  WITH CHECK ADD FOREIGN KEY([eventId])
REFERENCES [dbo].[Event] ([eventId])
GO
ALTER TABLE [dbo].[Sponsor]  WITH CHECK ADD FOREIGN KEY([sponsorLevelId])
REFERENCES [dbo].[SponsorLevel] ([sponsorLevelId])
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD FOREIGN KEY([countryId])
REFERENCES [dbo].[Country] ([countryId])
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([personId])
REFERENCES [dbo].[Person] ([personId])
GO
ALTER TABLE [dbo].[VendorTable]  WITH CHECK ADD FOREIGN KEY([eventId])
REFERENCES [dbo].[Event] ([eventId])
GO
ALTER TABLE [dbo].[VendorTable]  WITH CHECK ADD FOREIGN KEY([vendorId])
REFERENCES [dbo].[Vendor] ([vendorId])
GO
/****** Object:  StoredProcedure [dbo].[insertCity]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertCity]
  AS
  BEGIN
    BEGIN TRY
  INSERT INTO City VALUES	(	1	,	 '	Baltimore	 '	)	;
 INSERT INTO City VALUES	(	2	,	 '	Bellflower	 '	)	;
 INSERT INTO City VALUES	(	3	,	 '	Burlingame	 '	)	;
 INSERT INTO City VALUES	(	4	,	 '	Berkeley	 '	)	;
 INSERT INTO City VALUES	(	5	,	 '	Berkeley	 '	)	;
 INSERT INTO City VALUES	(	6	,	 '	Berkeley	 '	)	;
 INSERT INTO City VALUES	(	7	,	 '	Bremerton	 '	)	;
 INSERT INTO City VALUES	(	8	,	 '	Bremerton	 '	)	;
 INSERT INTO City VALUES	(	9	,	 '	Burbank	 '	)	;
 INSERT INTO City VALUES	(	10	,	 '	Burbank	 '	)	;
 INSERT INTO City VALUES	(	11	,	 '	Burbank	 '	)	;
 INSERT INTO City VALUES	(	12	,	 '	Burien	 '	)	;
 INSERT INTO City VALUES	(	13	,	 '	Burien	 '	)	;
 INSERT INTO City VALUES	(	14	,	 '	Bellingham	 '	)	;
 INSERT INTO City VALUES	(	15	,	 '	Bellingham	 '	)	;
 INSERT INTO City VALUES	(	16	,	 '	Bury	 '	)	;
 INSERT INTO City VALUES	(	17	,	 '	Calgary	 '	)	;
 INSERT INTO City VALUES	(	18	,	 '	Cambridge	 '	)	;
 INSERT INTO City VALUES	(	19	,	 '	Chula Vista	 '	)	;
 INSERT INTO City VALUES	(	20	,	 '	Cincinnati	 '	)	;
 INSERT INTO City VALUES	(	21	,	 '	Coffs Harbour	 '	)	;
 INSERT INTO City VALUES	(	22	,	 '	Coffs Harbour	 '	)	;
 INSERT INTO City VALUES	(	23	,	 '	Colma	 '	)	;
 INSERT INTO City VALUES	(	24	,	 '	Colma	 '	)	;
 INSERT INTO City VALUES	(	25	,	 '	Colma	 '	)	;
 INSERT INTO City VALUES	(	26	,	 '	Concord	 '	)	;
 INSERT INTO City VALUES	(	27	,	 '	Corvallis	 '	)	;
 INSERT INTO City VALUES	(	28	,	 '	El Cajon	 '	)	;
 INSERT INTO City VALUES	(	29	,	 '	Everett	 '	)	;
 INSERT INTO City VALUES	(	30	,	 '	Gateshead	 '	)	;
 INSERT INTO City VALUES	(	31	,	 '	Haney	 '	)	;
 INSERT INTO City VALUES	(	32	,	 '	Haney	 '	)	;
 INSERT INTO City VALUES	(	33	,	 '	Hervey Bay	 '	)	;
 INSERT INTO City VALUES	(	34	,	 '	Hervey Bay	 '	)	;
 INSERT INTO City VALUES	(	35	,	 '	Issaquah	 '	)	;
 INSERT INTO City VALUES	(	36	,	 '	Kirkland	 '	)	;
 INSERT INTO City VALUES	(	37	,	 '	Lake Oswego	 '	)	;
 INSERT INTO City VALUES	(	38	,	 '	Lane Cove	 '	)	;
 INSERT INTO City VALUES	(	39	,	 '	Langley	 '	)	;
 INSERT INTO City VALUES	(	40	,	 '	Langley	 '	)	;
 INSERT INTO City VALUES	(	41	,	 '	Lebanon	 '	)	;
 INSERT INTO City VALUES	(	42	,	 '	Lebanon	 '	)	;
 INSERT INTO City VALUES	(	43	,	 '	Lebanon	 '	)	;
 INSERT INTO City VALUES	(	44	,	 '	Lebanon	 '	)	;
 INSERT INTO City VALUES	(	45	,	 '	Leeds	 '	)	;
 INSERT INTO City VALUES	(	46	,	 '	London	 '	)	;
 INSERT INTO City VALUES	(	47	,	 '	London	 '	)	;
 INSERT INTO City VALUES	(	48	,	 '	London	 '	)	;
 INSERT INTO City VALUES	(	49	,	 '	London	 '	)	;
 INSERT INTO City VALUES	(	50	,	 '	Los Angeles	 '	)	;
 INSERT INTO City VALUES	(	51	,	 '	Lynnwood	 '	)	;
 INSERT INTO City VALUES	(	52	,	 '	Matraville	 '	)	;
 INSERT INTO City VALUES	(	53	,	 '	Marysville	 '	)	;
 INSERT INTO City VALUES	(	54	,	 '	Metchosin	 '	)	;
 INSERT INTO City VALUES	(	55	,	 '	Mill Valley	 '	)	;
 INSERT INTO City VALUES	(	56	,	 '	Milsons Point	 '	)	;
 INSERT INTO City VALUES	(	57	,	 '	Milton Keynes	 '	)	;
 INSERT INTO City VALUES	(	58	,	 '	N. Vancouver	 '	)	;
 INSERT INTO City VALUES	(	59	,	 '	Newcastle	 '	)	;
 INSERT INTO City VALUES	(	60	,	 '	Newton	 '	)	;
 INSERT INTO City VALUES	(	61	,	 '	North Ryde	 '	)	;
 INSERT INTO City VALUES	(	62	,	 '	North Sydney	 '	)	;
 INSERT INTO City VALUES	(	63	,	 '	Oak Bay	 '	)	;
 INSERT INTO City VALUES	(	64	,	 '	Oakland	 '	)	;
 INSERT INTO City VALUES	(	65	,	 '	Olympia	 '	)	;
 INSERT INTO City VALUES	(	66	,	 '	Oregon City	 '	)	;
 INSERT INTO City VALUES	(	67	,	 '	Oregon City	 '	)	;
 INSERT INTO City VALUES	(	68	,	 '	Oxford	 '	)	;
 INSERT INTO City VALUES	(	69	,	 '	Peterborough	 '	)	;
 INSERT INTO City VALUES	(	70	,	 '	Port Macquarie	 '	)	;
 INSERT INTO City VALUES	(	71	,	 '	Port Macquarie	 '	)	;
 INSERT INTO City VALUES	(	72	,	 '	Port Macquarie	 '	)	;
 INSERT INTO City VALUES	(	73	,	 '	Port Orchard	 '	)	;
 INSERT INTO City VALUES	(	74	,	 '	Portland	 '	)	;
 INSERT INTO City VALUES	(	75	,	 '	Puyallup	 '	)	;
 INSERT INTO City VALUES	(	76	,	 '	Redmond	 '	)	;
 INSERT INTO City VALUES	(	77	,	 '	Rhodes	 '	)	;
 INSERT INTO City VALUES	(	78	,	 '	San Diego	 '	)	;
 INSERT INTO City VALUES	(	79	,	 '	Santa Cruz	 '	)	;
 INSERT INTO City VALUES	(	80	,	 '	Santa Monica	 '	)	;
 INSERT INTO City VALUES	(	81	,	 '	Seattle	 '	)	;
 INSERT INTO City VALUES	(	82	,	 '	Sedro Woolley	 '	)	;
 INSERT INTO City VALUES	(	83	,	 '	Shawnee	 '	)	;
 INSERT INTO City VALUES	(	84	,	 '	Silverwater	 '	)	;
 INSERT INTO City VALUES	(	85	,	 '	South Melbourne	 '	)	;
 INSERT INTO City VALUES	(	86	,	 '	Springwood	 '	)	;
 INSERT INTO City VALUES	(	87	,	 '	Stoke-on-Trent	 '	)	;
 INSERT INTO City VALUES	(	88	,	 '	Stoke-on-Trent	 '	)	;
 INSERT INTO City VALUES	(	89	,	 '	Torrance	 '	)	;
 INSERT INTO City VALUES	(	90	,	 '	Torrance	 '	)	;
 INSERT INTO City VALUES	(	91	,	 '	Townsville	 '	)	;
 INSERT INTO City VALUES	(	92	,	 '	Townsville	 '	)	;
 INSERT INTO City VALUES	(	93	,	 '	Townsville	 '	)	;
 INSERT INTO City VALUES	(	94	,	 '	Walla Walla	 '	)	;
 INSERT INTO City VALUES	(	95	,	 '	Warrnambool	 '	)	;
 INSERT INTO City VALUES	(	96	,	 '	West Covina	 '	)	;
 INSERT INTO City VALUES	(	97	,	 '	Wollongong	 '	)	;
 INSERT INTO City VALUES	(	98	,	 '	Woodland Hills	 '	)	;
 INSERT INTO City VALUES	(	99	,	 '	Woodland Hills	 '	)	;
 INSERT INTO City VALUES	(	100	,	 '	Yakima	 '	)	;
 INSERT INTO City VALUES	(	101	,	 '	New York City	 '	)	;
 INSERT INTO City VALUES	(	102	,	 '	Philadelphia	 '	)	;
 INSERT INTO City VALUES	(	103	,	 '	Budapest	 '	)	;
 INSERT INTO City VALUES	(	104	,	 '	Bogota	 '	)	;
 INSERT INTO City VALUES	(	105	,	 '	Kyiv	 '	)	;
 INSERT INTO City VALUES	(	106	,	 '	Brisbane	 '	)	;
 INSERT INTO City VALUES	(	107	,	 '	Plovdiv	 '	)	;

END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertClass]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[insertClass]
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO Class VALUES	(	57	,	1	,	 'DBS 101'	,	 '	ETL not ELT! Common mistakes and misconceptions about SSIS	 '	,	3	,	90	,	110	,	1	)	;
 INSERT INTO Class VALUES	(	99	,	1	,	 'DBS 101'	,	 '	Partitioning as a design pattern	 '	,	3	,	90	,	119	,	1	)	;
 INSERT INTO Class VALUES	(	146	,	1	,	 'DBS 101'	,	 '	Using Extended Events in SQL Server	 '	,	3	,	90	,	130	,	1	)	;
 INSERT INTO Class VALUES	(	12	,	4	,	 'DBS 101'	,	 '	Automating Execution Plan Analysis	 '	,	3	,	90	,	140	,	1	)	;
 INSERT INTO Class VALUES	(	49	,	4	,	 'DBS 101'	,	 '	Did You Vote Today? A DBAs Guide to Cluster Quorum	 '	,	3	,	90	,	152	,	1	)	;
 INSERT INTO Class VALUES	(	111	,	4	,	 'DBS 101'	,	 '	Replicaton Technologies	 '	,	3	,	90	,	166	,	1	)	;
 INSERT INTO Class VALUES	(	113	,	4	,	 'DBS 101'	,	 '	Scaling with SQL Server Service Broker	 '	,	3	,	90	,	168	,	1	)	;
 INSERT INTO Class VALUES	(	114	,	4	,	 'DBS 101'	,	 '	Scaling with SQL Server Service Broker	 '	,	3	,	90	,	169	,	1	)	;
 INSERT INTO Class VALUES	(	118	,	4	,	 'DBS 101'	,	 '	SQL anti patterns	 '	,	3	,	90	,	173	,	1	)	;
 INSERT INTO Class VALUES	(	125	,	4	,	 'DBS 101'	,	 '	SQL Server Compression and what it can do for you	 '	,	3	,	90	,	180	,	1	)	;
 INSERT INTO Class VALUES	(	130	,	4	,	 'DBS 101'	,	 '	SQL Server Storage internals: Looking under the hood.	 '	,	3	,	90	,	185	,	1	)	;
 INSERT INTO Class VALUES	(	133	,	4	,	 'DBS 101'	,	 '	Stress testing SQL Server	 '	,	3	,	90	,	187	,	1	)	;
 INSERT INTO Class VALUES	(	8	,	5	,	 'DBS 101'	,	 '	Autogenerating a process data warehouse	 '	,	3	,	90	,	194	,	1	)	;
 INSERT INTO Class VALUES	(	13	,	5	,	 'DBS 101'	,	 '	Automating Execution Plan Analysis	 '	,	3	,	90	,	196	,	1	)	;
 INSERT INTO Class VALUES	(	27	,	5	,	 'DBS 101'	,	 '	Bulk load and minimal logged inserts	 '	,	3	,	90	,	204	,	1	)	;
 INSERT INTO Class VALUES	(	4	,	1	,	 'DBS 101'	,	 '	Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)	 '	,	1	,	90	,	101	,	1	)	;
 INSERT INTO Class VALUES	(	19	,	1	,	 'DBS 101'	,	 '	Become a BI Independent Consultant!	 '	,	1	,	90	,	104	,	1	)	;
 INSERT INTO Class VALUES	(	46	,	1	,	 'DBS 101'	,	 '	DBA FOR DUMMIES	 '	,	1	,	90	,	108	,	1	)	;
 INSERT INTO Class VALUES	(	61	,	1	,	 'DBS 101'	,	 '	Full Text Indexing Basics	 '	,	1	,	90	,	111	,	1	)	;
 INSERT INTO Class VALUES	(	66	,	1	,	 'DBS 101'	,	 '	Hacking the SSIS 2012 Catalog	 '	,	1	,	90	,	112	,	1	)	;
 INSERT INTO Class VALUES	(	74	,	1	,	 'DBS 101'	,	 '	Inroduction to Triggers	 '	,	1	,	90	,	116	,	1	)	;
 INSERT INTO Class VALUES	(	137	,	1	,	 'DBS 101'	,	 '	The Quest for the Golden Record:MDM Best Practices	 '	,	1	,	90	,	121	,	1	)	;
 INSERT INTO Class VALUES	(	139	,	1	,	 'DBS 101'	,	 '	The Spy Who Loathed Me - An Intro to SQL Security	 '	,	1	,	90	,	123	,	1	)	;
 INSERT INTO Class VALUES	(	142	,	1	,	 'DBS 101'	,	 '	Tricks that have saved my bacon	 '	,	1	,	90	,	126	,	1	)	;
 INSERT INTO Class VALUES	(	143	,	1	,	 'DBS 101'	,	 '	T-SQL : Bad Habits & Best Practices	 '	,	1	,	90	,	127	,	1	)	;
 INSERT INTO Class VALUES	(	149	,	1	,	 'DBS 101'	,	 '	What exactly is big data and why should I care?	 '	,	1	,	90	,	133	,	1	)	;
 INSERT INTO Class VALUES	(	150	,	1	,	 'DBS 101'	,	 '	What is it like to work for Microsoft?	 '	,	1	,	90	,	134	,	2	)	;
 INSERT INTO Class VALUES	(	18	,	4	,	 'DBS 101'	,	 '	Basic Database Programming	 '	,	1	,	90	,	141	,	2	)	;
 INSERT INTO Class VALUES	(	20	,	4	,	 'DBS 101'	,	 '	Becoming a Top DBA--Learning Automation in SQL Server	 '	,	1	,	90	,	142	,	2	)	;
 INSERT INTO Class VALUES	(	31	,	4	,	 'DBS 101'	,	 '	Changing Your Habits to Improve the Performance of Your T-SQL	 '	,	1	,	90	,	144	,	2	)	;
 INSERT INTO Class VALUES	(	32	,	4	,	 'DBS 101'	,	 '	Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments	 '	,	1	,	90	,	145	,	2	)	;
 INSERT INTO Class VALUES	(	35	,	4	,	 'DBS 101'	,	 '	Creating A Performance Health Repository - using MDW	 '	,	1	,	90	,	147	,	2	)	;
 INSERT INTO Class VALUES	(	47	,	4	,	 'DBS 101'	,	 '	Dealing With Difficult People	 '	,	1	,	90	,	150	,	2	)	;
 INSERT INTO Class VALUES	(	53	,	4	,	 'DBS 101'	,	 '	Dynamic SQL: Writing Efficient Queries on the Fly	 '	,	1	,	90	,	154	,	2	)	;
 INSERT INTO Class VALUES	(	102	,	4	,	 'DBS 101'	,	 '	PowerShell Basics for SQLServer	 '	,	1	,	90	,	159	,	2	)	;
 INSERT INTO Class VALUES	(	103	,	4	,	 'DBS 101'	,	 '	PowerShell for the Reluctant DBA / Developer	 '	,	1	,	90	,	160	,	2	)	;
 INSERT INTO Class VALUES	(	104	,	4	,	 'DBS 101'	,	 '	Prevent Recovery Amnesia – Forget the Backups	 '	,	1	,	90	,	161	,	2	)	;
 INSERT INTO Class VALUES	(	105	,	4	,	 'DBS 101'	,	 '	Query Optimization Crash Course	 '	,	1	,	90	,	162	,	2	)	;
 INSERT INTO Class VALUES	(	108	,	4	,	 'DBS 101'	,	 '	Recovery and Backup for Beginners	 '	,	1	,	90	,	164	,	2	)	;
 INSERT INTO Class VALUES	(	115	,	4	,	 'DBS 101'	,	 '	Self-Service Data Integration with Power Query	 '	,	1	,	90	,	170	,	2	)	;
 INSERT INTO Class VALUES	(	116	,	4	,	 'DBS 101'	,	 '	Shortcuts to Building SSIS in .Net	 '	,	1	,	90	,	171	,	2	)	;
 INSERT INTO Class VALUES	(	117	,	4	,	 'DBS 101'	,	 '	So You Want To Be A Consultant?	 '	,	1	,	90	,	172	,	2	)	;
 INSERT INTO Class VALUES	(	123	,	4	,	 'DBS 101'	,	 '	SQL Server AlwaysOn Availability Groups	 '	,	1	,	90	,	178	,	2	)	;
 INSERT INTO Class VALUES	(	124	,	4	,	 'DBS 101'	,	 '	SQL Server and the Cloud	 '	,	1	,	90	,	179	,	2	)	;
 INSERT INTO Class VALUES	(	131	,	4	,	 'DBS 101'	,	 '	SSIS 2014 Data Flow Tuning Tips and Tricks	 '	,	1	,	90	,	186	,	2	)	;
 INSERT INTO Class VALUES	(	134	,	4	,	 'DBS 101'	,	 '	Table partitioning for Azure SQL Databases	 '	,	1	,	90	,	188	,	2	)	;
 INSERT INTO Class VALUES	(	135	,	4	,	 'DBS 101'	,	 '	Testing	 '	,	1	,	90	,	189	,	2	)	;
 INSERT INTO Class VALUES	(	136	,	4	,	 'DBS 101'	,	 '	The future of the data professional	 '	,	1	,	90	,	190	,	2	)	;
 INSERT INTO Class VALUES	(	5	,	5	,	 'DBS 101'	,	 '	AlwaysOn: Improve reliability and reporting performance with one cool tech	 '	,	1	,	90	,	192	,	2	)	;
 INSERT INTO Class VALUES	(	7	,	5	,	 'DBS 101'	,	 '	An Introduction to Database Design	 '	,	1	,	90	,	193	,	2	)	;
 INSERT INTO Class VALUES	(	16	,	5	,	 'DBS 101'	,	 '	Baselines and Performance Monitoring with PAL	 '	,	1	,	90	,	198	,	2	)	;
 INSERT INTO Class VALUES	(	17	,	5	,	 'DBS 101'	,	 '	Basic Database Design	 '	,	1	,	90	,	199	,	2	)	;
 INSERT INTO Class VALUES	(	22	,	5	,	 'DBS 101'	,	 '	Best Practices for Efficient SSRS Report Creation	 '	,	1	,	90	,	200	,	2	)	;
 INSERT INTO Class VALUES	(	25	,	5	,	 'DBS 101'	,	 '	Building an Effective Data Warehouse Architecture	 '	,	1	,	90	,	202	,	2	)	;
 INSERT INTO Class VALUES	(	26	,	5	,	 'DBS 101'	,	 '	Building an Effective Data Warehouse Architecture with the cloud and MPP	 '	,	1	,	90	,	203	,	2	)	;
 INSERT INTO Class VALUES	(	42	,	5	,	 'DBS 101'	,	 '	Database Design: Solving Problems Before they Start!	 '	,	1	,	90	,	212	,	2	)	;
 INSERT INTO Class VALUES	(	55	,	5	,	 'DBS 101'	,	 '	Enhancing your career: Building your personal brand	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	69	,	5	,	 'DBS 101'	,	 '	How to Make a LOT More Money as a Consultant	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	77	,	5	,	 'DBS 101'	,	 '	Introducing Power BI	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	78	,	5	,	 'DBS 101'	,	 '	Introduction to Database Recovery	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	79	,	5	,	 'DBS 101'	,	 '	Introduction to High Availability with SQL Server	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	80	,	5	,	 'DBS 101'	,	 '	Introduction to Powershell for DBA''s	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	81	,	5	,	 'DBS 101'	,	 '	Introduction to SQL Server - Part 1	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	82	,	5	,	 'DBS 101'	,	 '	Introduction to SQL Server - Part 2	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	90	,	5	,	 'DBS 101'	,	 '	Modern Data Warehousing	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	92	,	5	,	 'DBS 101'	,	 '	Monitoring SQL Server using Extended Events	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	95	,	5	,	 'DBS 101'	,	 '	Never Have to Say "Mayday!!!" Again	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	100	,	5	,	 'DBS 101'	,	 '	Power BI Components in Microsoft''s Self-Service BI Suite	 '	,	1	,	90	,	217	,	2	)	;
 INSERT INTO Class VALUES	(	9	,	1	,	 'DBS 101'	,	 '	Automate your daily checklist with PBM and CMS	 '	,	2	,	90	,	102	,	2	)	;
 INSERT INTO Class VALUES	(	15	,	1	,	 'DBS 101'	,	 '	Balanced Scorecards using SSRS	 '	,	2	,	90	,	103	,	2	)	;
 INSERT INTO Class VALUES	(	24	,	1	,	 'DBS 101'	,	 '	Building a BI Solution in the Cloud	 '	,	2	,	90	,	105	,	2	)	;
 INSERT INTO Class VALUES	(	40	,	1	,	 'DBS 101'	,	 '	Database design for mere developers	 '	,	2	,	90	,	107	,	2	)	;
 INSERT INTO Class VALUES	(	51	,	1	,	 'DBS 101'	,	 '	Dimensional Modeling Design Patterns: Beyond Basics	 '	,	2	,	90	,	109	,	2	)	;
 INSERT INTO Class VALUES	(	71	,	1	,	 'DBS 101'	,	 '	Hybrid Cloud Scenarios with SQL Server 2014	 '	,	2	,	90	,	113	,	2	)	;
 INSERT INTO Class VALUES	(	72	,	1	,	 'DBS 101'	,	 '	Hybrid Solutions: The Future of SQL Server Disaster Recovery	 '	,	2	,	90	,	114	,	2	)	;
 INSERT INTO Class VALUES	(	73	,	1	,	 'DBS 101'	,	 '	Implementing Data Warehouse Patterns with the Microsoft BI Tools	 '	,	2	,	90	,	115	,	2	)	;
 INSERT INTO Class VALUES	(	98	,	1	,	 'DBS 101'	,	 '	Optimizing Protected Indexes	 '	,	2	,	90	,	118	,	2	)	;
 INSERT INTO Class VALUES	(	132	,	1	,	 'DBS 101'	,	 '	Standalone to High-Availability Clusters over Lunch—with Time to Spare	 '	,	2	,	90	,	120	,	2	)	;
 INSERT INTO Class VALUES	(	138	,	1	,	 'DBS 101'	,	 '	The Quest to Find Bad Data With Data Profiling	 '	,	2	,	90	,	122	,	2	)	;
 INSERT INTO Class VALUES	(	140	,	1	,	 'DBS 101'	,	 '	Tired of the CRUD? Automate it!	 '	,	2	,	90	,	124	,	2	)	;
 INSERT INTO Class VALUES	(	141	,	1	,	 'DBS 101'	,	 '	Top 5 Ways to Improve Your triggers	 '	,	2	,	90	,	125	,	2	)	;
 INSERT INTO Class VALUES	(	144	,	1	,	 'DBS 101'	,	 '	T-SQL for Application Developers - Attendees chose	 '	,	2	,	90	,	128	,	2	)	;
 INSERT INTO Class VALUES	(	145	,	1	,	 'DBS 101'	,	 '	Tune Queries By Fixing Bad Parameter Sniffing	 '	,	2	,	90	,	129	,	2	)	;
 INSERT INTO Class VALUES	(	147	,	1	,	 'DBS 101'	,	 '	Watch Brent Tune Queries	 '	,	2	,	90	,	131	,	2	)	;
 INSERT INTO Class VALUES	(	148	,	1	,	 'DBS 101'	,	 '	What every SQL Server DBA needs to know about Windows Server 10 Technical Preview	 '	,	2	,	90	,	132	,	2	)	;
 INSERT INTO Class VALUES	(	151	,	1	,	 'DBS 101'	,	 '	What’s new in SQL Server Integration Services 2012	 '	,	2	,	90	,	135	,	2	)	;
 INSERT INTO Class VALUES	(	152	,	1	,	 'DBS 101'	,	 '	Why do we shun using tools for DBA job?	 '	,	2	,	90	,	136	,	2	)	;
 INSERT INTO Class VALUES	(	153	,	1	,	 'DBS 101'	,	 '	Why OLAP? Building SSAS cubes and benefits of OLAP	 '	,	2	,	90	,	137	,	2	)	;
 INSERT INTO Class VALUES	(	154	,	1	,	 'DBS 101'	,	 '	You''re Doing It Wrong!!	 '	,	2	,	90	,	138	,	2	)	;
 INSERT INTO Class VALUES	(	11	,	4	,	 'DBS 101'	,	 '	Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters	 '	,	2	,	90	,	139	,	2	)	;
 INSERT INTO Class VALUES	(	21	,	4	,	 'DBS 101'	,	 '	Best Practices Document	 '	,	2	,	90	,	143	,	2	)	;
 INSERT INTO Class VALUES	(	36	,	4	,	 'DBS 101'	,	 '	Creating efficient and effective SSRS BI Solutions	 '	,	2	,	90	,	148	,	2	)	;
 INSERT INTO Class VALUES	(	45	,	4	,	 'DBS 101'	,	 '	DAX and the tabular model	 '	,	2	,	90	,	149	,	3	)	;
 INSERT INTO Class VALUES	(	48	,	4	,	 'DBS 101'	,	 '	Development Lifecycle with SQL Server Data Tools and DACFx	 '	,	2	,	90	,	151	,	3	)	;
 INSERT INTO Class VALUES	(	50	,	4	,	 'DBS 101'	,	 '	Dimensional Modeling Design Patterns: Beyond Basics	 '	,	2	,	90	,	153	,	3	)	;
 INSERT INTO Class VALUES	(	2	,	4	,	 'DBS 101'	,	 '	A Dynamic World Demands Dynamic SQL	 '	,	2	,	90	,	155	,	3	)	;
 INSERT INTO Class VALUES	(	3	,	4	,	 'DBS 101'	,	 '	A Dynamic World Demands Dynamic SQL	 '	,	2	,	90	,	156	,	3	)	;
 INSERT INTO Class VALUES	(	6	,	4	,	 'DBS 101'	,	 '	An introduction to Data Mining	 '	,	2	,	90	,	157	,	3	)	;
 INSERT INTO Class VALUES	(	101	,	4	,	 'DBS 101'	,	 '	Power to the people!!	 '	,	2	,	90	,	158	,	4	)	;
 INSERT INTO Class VALUES	(	107	,	4	,	 'DBS 101'	,	 '	Rapid Application Development with Master Data Services	 '	,	2	,	90	,	163	,	4	)	;
 INSERT INTO Class VALUES	(	109	,	4	,	 'DBS 101'	,	 '	Reduce, Reuse, Recycle: Automating Your BI Framework	 '	,	2	,	90	,	165	,	4	)	;
 INSERT INTO Class VALUES	(	112	,	4	,	 'DBS 101'	,	 '	Reporting Services for Mere DBAs	 '	,	2	,	90	,	167	,	4	)	;
 INSERT INTO Class VALUES	(	119	,	4	,	 'DBS 101'	,	 '	SQL Server 2012/2014 Columnstore index	 '	,	2	,	90	,	174	,	4	)	;
 INSERT INTO Class VALUES	(	120	,	4	,	 'DBS 101'	,	 '	SQL Server 2012/2014 Performance Tuning All Up	 '	,	2	,	90	,	175	,	4	)	;
 INSERT INTO Class VALUES	(	121	,	4	,	 'DBS 101'	,	 '	SQL Server 2014 Data Access Layers	 '	,	2	,	90	,	176	,	4	)	;
 INSERT INTO Class VALUES	(	122	,	4	,	 'DBS 101'	,	 '	SQL Server 2014 New Features	 '	,	2	,	90	,	177	,	4	)	;
 INSERT INTO Class VALUES	(	126	,	4	,	 'DBS 101'	,	 '	SQL Server Reporting Services 2014 on Steroids!!	 '	,	2	,	90	,	181	,	4	)	;
 INSERT INTO Class VALUES	(	127	,	4	,	 'DBS 101'	,	 '	SQL Server Reporting Services Best Practices	 '	,	2	,	90	,	182	,	4	)	;
 INSERT INTO Class VALUES	(	128	,	4	,	 'DBS 101'	,	 '	SQL Server Reporting Services, attendees choose	 '	,	2	,	90	,	183	,	4	)	;
 INSERT INTO Class VALUES	(	129	,	4	,	 'DBS 101'	,	 '	SQL Server Storage Engine under the hood	 '	,	2	,	90	,	184	,	4	)	;
 INSERT INTO Class VALUES	(	1	,	5	,	 'DBS 101'	,	 '	A dive into Data Quality Services	 '	,	2	,	90	,	191	,	4	)	;
 INSERT INTO Class VALUES	(	10	,	5	,	 'DBS 101'	,	 '	Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters	 '	,	2	,	90	,	195	,	4	)	;
 INSERT INTO Class VALUES	(	14	,	5	,	 'DBS 101'	,	 '	Automating SQL Server using PowerShell	 '	,	2	,	90	,	197	,	4	)	;
 INSERT INTO Class VALUES	(	23	,	5	,	 'DBS 101'	,	 '	Biggest Loser: Database Edition	 '	,	2	,	90	,	201	,	4	)	;
 INSERT INTO Class VALUES	(	28	,	5	,	 'DBS 101'	,	 '	Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask	 '	,	2	,	90	,	205	,	4	)	;
 INSERT INTO Class VALUES	(	29	,	5	,	 'DBS 101'	,	 '	Challenges to designing financial warehouses, lessons learnt	 '	,	2	,	90	,	206	,	4	)	;
 INSERT INTO Class VALUES	(	30	,	5	,	 'DBS 101'	,	 '	Change Data Capture in SQL Server 2008/2012	 '	,	2	,	90	,	207	,	4	)	;
 INSERT INTO Class VALUES	(	37	,	5	,	 'DBS 101'	,	 '	Creating efficient and effective SSRS BI Solutions	 '	,	2	,	90	,	208	,	4	)	;
 INSERT INTO Class VALUES	(	38	,	5	,	 'DBS 101'	,	 '	Data Partitioning	 '	,	2	,	90	,	209	,	4	)	;
 INSERT INTO Class VALUES	(	39	,	5	,	 'DBS 101'	,	 '	Data Tier Application Testing with NUnit and Distributed Replay	 '	,	2	,	90	,	210	,	4	)	;
 INSERT INTO Class VALUES	(	41	,	5	,	 'DBS 101'	,	 '	Database design for mere developers	 '	,	2	,	90	,	211	,	4	)	;
 INSERT INTO Class VALUES	(	43	,	5	,	 'DBS 101'	,	 '	Database Modeling and Design	 '	,	2	,	90	,	213	,	4	)	;
 INSERT INTO Class VALUES	(	44	,	5	,	 'DBS 101'	,	 '	Database Virtualization and Drinking out of the Fire Hose	 '	,	2	,	90	,	214	,	4	)	;
 INSERT INTO Class VALUES	(	52	,	5	,	 'DBS 101'	,	 '	Diving Into Query Execution Plans	 '	,	2	,	90	,	215	,	4	)	;
 INSERT INTO Class VALUES	(	54	,	5	,	 'DBS 101'	,	 '	Easy Architecture Design for HA and DR	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	56	,	5	,	 'DBS 101'	,	 '	Establishing a SLA	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	59	,	5	,	 'DBS 101'	,	 '	Execution Plans: What Can You Do With Them?	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	60	,	5	,	 'DBS 101'	,	 '	Faster, Better Decisions with Self Service Business Analytics	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	62	,	5	,	 'DBS 101'	,	 '	Get your Mining Model Predictions out to all	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	64	,	5	,	 'DBS 101'	,	 '	Graph Databases for SQL Server Professionals	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	65	,	5	,	 'DBS 101'	,	 '	Hacking Exposé - Using SSL to Protect SQL Connections	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	67	,	5	,	 'DBS 101'	,	 '	Hidden in plain sight: master your tools	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	68	,	5	,	 'DBS 101'	,	 '	Highly Available SQL Server in Windows Azure IaaS	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	70	,	5	,	 'DBS 101'	,	 '	How to Think Like the Engine	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	75	,	5	,	 'DBS 101'	,	 '	Integrating Reporting Services with SharePoint	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	76	,	5	,	 'DBS 101'	,	 '	Integration Services (SSIS) for the DBA	'	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	83	,	5	,	 'DBS 101'	,	 '	Is That A Failover Cluster On Your Laptop/Desktop?	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	84	,	5	,	 'DBS 101'	,	 '	Leaving the Windows Open	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	87	,	5	,	 'DBS 101'	,	 '	Master Data Services Best Practices	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	88	,	5	,	 'DBS 101'	,	 '	Master Data Services Disaster Recovery	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	89	,	5	,	 'DBS 101'	,	 '	Mind your language!! Cursors are a dirty word	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	91	,	5	,	 'DBS 101'	,	 '	Monitoring Server health via Reporting Services dashboards	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	93	,	5	,	 'DBS 101'	,	 '	Multidimensional vs Tabular - May the Best Model Win	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	94	,	5	,	 'DBS 101'	,	 '	Murder They Wrote	 '	,	2	,	90	,	216	,	4	)	;
 INSERT INTO Class VALUES	(	96	,	5	,	 'DBS 101'	,	 '	Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.	 '	,	2	,	90	,	216	,	5	)	;
 INSERT INTO Class VALUES	(	34	,	1	,	 'DBS 101'	,	 '	Coffee Break	 '	,	4	,	90	,	106	,	5	)	;
 INSERT INTO Class VALUES	(	97	,	1	,	 'DBS 101'	,	 '	Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server	 '	,	4	,	90	,	117	,	5	)	;
 INSERT INTO Class VALUES	(	33	,	4	,	 'DBS 101'	,	 '	Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments	 '	,	4	,	90	,	146	,	5	)	;
 INSERT INTO Class VALUES	(	58	,	5	,	 'DBS 101'	,	 '	Event Kickoff and Networking	 '	,	4	,	90	,	146	,	5	)	;
 INSERT INTO Class VALUES	(	63	,	5	,	 'DBS 101'	,	 '	Getting a job with Microsoft	 '	,	4	,	90	,	146	,	5	)	;
 INSERT INTO Class VALUES	(	85	,	5	,	 'DBS 101'	,	 '	Lunch Break	 ',	4	,	90	,	146	,	5	)	;
 INSERT INTO Class VALUES	(	86	,	5	,	 'DBS 101'	,	 '	Lunchtime Keynote	 '	,	4	,	90	,	146	,	5	)	;
 INSERT INTO Class VALUES	(	106	,	5	,	 'DBS 101'	,	 '	Raffle	 '	,	4	,	90	,	146	,	5	)	;
 INSERT INTO Class VALUES	(	110	,	5	,	 'DBS 101'	,	'Registrations'	 	,	4	,	90	,	146	,	5	)	;

	END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertClassDifficulty]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertClassDifficulty]
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO ClassDifficulty VALUES ('Beginner');
      INSERT INTO ClassDifficulty VALUES ('Intermediate');
      INSERT INTO ClassDifficulty VALUES ('Advanced');
      INSERT INTO ClassDifficulty VALUES ('Non_Technical');
    END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertClassDifficulty

GO
/****** Object:  StoredProcedure [dbo].[insertCountry]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[insertCountry]
  AS
  BEGIN
    BEGIN TRY
	  INSERT INTO Country VALUES ('AU','AUSTRALIA');
	  INSERT INTO Country VALUES ('CA','CANADA');
	  INSERT INTO Country VALUES ('UK','UNITED KINGDOM');
	  INSERT INTO Country VALUES ('US','UNITED STATES');
	  INSERT INTO Country VALUES ('HU','HUNGARY');
	  INSERT INTO Country VALUES ('UA','UKRAINE');
	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertCountry
GO
/****** Object:  StoredProcedure [dbo].[insertEvents]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertEvents]
  AS
  BEGIN
    BEGIN TRY
	INSERT INTO Event VALUES ('SQLSaturday #626 - Budapest 2017'	, '6-May-17', 76	);
	INSERT INTO Event VALUES ('SQLSaturday #615 - Baltimore 2017', '6-May-17', 1	);
	INSERT INTO Event VALUES ('SQLSaturday #608 - Bogota 2017'	, '13-May-17', 77	);
	INSERT INTO Event VALUES ('SQLSaturday #616 - Kyiv 2017'	, '20-May-17', 78	);
	INSERT INTO Event VALUES ('SQLSaturday #588 - New York City 2017'	, '20-May-17', 74	);
	INSERT INTO Event VALUES ('SQLSaturday #630 - Brisbane 2017'	, '27-May-17', 79	);
	INSERT INTO Event VALUES ('SQLSaturday #599 - Plovdiv 2017'	, '27-May-17', 80	);
	INSERT INTO Event VALUES ('SQLSaturday #638 - Philadelphia 2017'	, '3-Jun-17', 75	);

	END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertLocation]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertLocation]
  AS
  BEGIN
    BEGIN TRY
 INSERT INTO Location VALUES ( '10 Napa Ct. ', '97355 ',29, 'AL ', 'US ');
 INSERT INTO Location VALUES ( '1000 Bidweld Street ', 'V2W 1W2 ',22, 'BC ', 'CA ');
 INSERT INTO Location VALUES ( '1002 N. Spoonwood Court ', '4655 ',23, 'BC ', 'AU ');
 INSERT INTO Location VALUES ( '1003 Matterhorn Ct ', '97355 ',29, 'BC ', 'US ');
 INSERT INTO Location VALUES ( '1005 Matterhorn Ct. ', 'CB4 4BZ ',12, 'BC ', 'UK ');
 INSERT INTO Location VALUES ( '1005 Matterhorn Ct. ', '94941 ',36, 'BC ', 'US ');
 INSERT INTO Location VALUES ( '1005 Tanager Court ', '97330 ',18, 'BC ', 'US ');
 INSERT INTO Location VALUES ( '1005 Tanager Court ', '2061 ',37, 'BC ', 'AU ');
 INSERT INTO Location VALUES ( '1006 Deercreek Ln ', '90706 ',2, 'BC ', 'US ');
 INSERT INTO Location VALUES ( '1006 Deercreek Ln ', '90505 ',66, 'BC ', 'US ');
 INSERT INTO Location VALUES ( '101 Adobe Dr ', '2450 ',15, 'CA ', 'AU ');
 INSERT INTO Location VALUES ( '101 Adobe Dr ', '98371 ',53, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '101, avenue de la Gare ', 'PB12 ',49, 'CA ', 'UK ');
 INSERT INTO Location VALUES ( '1010 Maple ', '21201 ',1, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1011 Yolanda Circle ', '94704 ',4, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1011 Yolanda Circle ', 'V7L 4J4 ',39, 'CA ', 'CA ');
 INSERT INTO Location VALUES ( '1013 Holiday Hills Dr. ', '98312 ',6, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1013 Holiday Hills Dr. ', 'GA10 ',21, 'CA ', 'UK ');
 INSERT INTO Location VALUES ( '1015 Lynwood Drive ', 'V9 ',35, 'CA ', 'CA ');
 INSERT INTO Location VALUES ( '1019 Carletto Drive ', '94704 ',4, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1019 Mt. Davidson Court ', '98168 ',8, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1019 Mt. Davidson Court ', 'SW8 4BG ',31, 'CA ', 'UK ');
 INSERT INTO Location VALUES ( '102 Vista Place ', '90401 ',58, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1020 Book Road ', '98312 ',6, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1020 Carletto Drive ', '2036 ',34, 'CA ', 'AU ');
 INSERT INTO Location VALUES ( '1020 Carletto Drive ', '95062 ',57, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1023 Hawkins Street ', '97355 ',29, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1024 Walnut Blvd. ', '94014 ',16, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1025 Holly Oak Drive ', 'LE18 ',30, 'CA ', 'UK ');
 INSERT INTO Location VALUES ( '1025 R St. ', '98033 ',25, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1025 Yosemite Dr. ', '97045 ',47, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1028 Green View Court ', '91910 ',13, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1028 Green View Court ', '97045 ',47, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '1037 Hayes Court ', 'AS23 ',65, 'CA ', 'UK ');
 INSERT INTO Location VALUES ( '1039 Adelaide St. ', '91791 ',70, 'CA ', 'US ');
 INSERT INTO Location VALUES ( '104 Hilltop Dr. ', '2777 ',64, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '104 Kaski Ln. ', '97205 ',52, 'ENG ', 'US ');
 INSERT INTO Location VALUES ( '1040 Greenbush Drive ', '2264 ',62, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '1040 Northridge Road ', 'W1X3SE ',31, 'ENG ', 'UK ');
 INSERT INTO Location VALUES ( '1044 San Carlos ', '45202 ',14, 'ENG ', 'US ');
 INSERT INTO Location VALUES ( '1045 Lolita Drive ', '90505 ',66, 'ENG ', 'US ');
 INSERT INTO Location VALUES ( '1045 Lolita Drive ', '4810 ',67, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '1047 Las Quebradas Lane ', '2055 ',43, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '1048 Burwood Way ', '4655 ',23, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '1048 Las Quebradas Lane ', '99362 ',68, 'ENG ', 'US ');
 INSERT INTO Location VALUES ( '1048 Las Quebradas Lane ', '2500 ',71, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '105 Clark Creek Lane ', '2444 ',50, 'ENG ', 'AU ');
 INSERT INTO Location VALUES ( '105 Woodruff Ln. ', '98225 ',9, 'ENG ', 'US ');
 INSERT INTO Location VALUES ( '1050 Creed Ave ', 'W10 6BL ',31, 'MD ', 'UK ');
 INSERT INTO Location VALUES ( '081, boulevard du Montparnasse ', '98104 ',59, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1 Smiling Tree Court ', '90012 ',32, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '100, rue des Rosiers ', '98201 ',20, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1002 N. Spoonwood Court ', '94704 ',4, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1005 Fremont Street ', '94014 ',16, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1005 Valley Oak Plaza ', 'V3A 4R2 ',28, 'NSW ', 'CA ');
 INSERT INTO Location VALUES ( '1005 Valley Oak Plaza ', 'SW6 SBY ',31, 'NSW ', 'UK ');
 INSERT INTO Location VALUES ( '1007 Cardinet Dr. ', '92020 ',19, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1008 Lydia Lane ', '91502 ',7, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '101 CAdy Rd. ', '98052 ',54, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1011 Green St. ', '98225 ',9, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1013 Buchanan Rd ', '2444 ',50, 'NSW ', 'AU ');
 INSERT INTO Location VALUES ( '1013 Buchanan Rd ', '98901 ',73, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1016 Park Avenue ', '91502 ',7, 'NSW ', 'US ');
 INSERT INTO Location VALUES ( '1019 Book Road ', '2138 ',55, 'NSW ', 'AU ');
 INSERT INTO Location VALUES ( '1019 Buchanan Road ', '91364 ',72, 'OH ', 'US ');
 INSERT INTO Location VALUES ( '1019 CAdy Rd. ', '2450 ',15, 'OR ', 'AU ');
 INSERT INTO Location VALUES ( '1019 Chance Drive ', '98284 ',60, 'OR ', 'US ');
 INSERT INTO Location VALUES ( '1019 Kenwal Rd. ', '97034 ',26, 'OR ', 'US ');
 INSERT INTO Location VALUES ( '1019 Pennsylvania Blvd ', '98270 ',34, 'OR ', 'US ');
 INSERT INTO Location VALUES ( '102 Vista Place ', 'MK8 8DF ',38, 'OR ', 'UK ');
 INSERT INTO Location VALUES ( '10203 Acorn Avenue ', 'T2P 2G8 ',11, 'OR ', 'CA ');
 INSERT INTO Location VALUES ( '1023 Hawkins Street ', '4810 ',67, 'OR ', 'AU ');
 INSERT INTO Location VALUES ( '1023 Riveria Way ', '91502 ',7, 'OR ', 'US ');
 INSERT INTO Location VALUES ( '1023 Riviera Way ', 'OX1 ',48, 'OR ', 'UK ');
 INSERT INTO Location VALUES ( '1025 Yosemite Dr. ', '4810 ',67, 'QLD ', 'AU ');
 INSERT INTO Location VALUES ( '1026 Mt. Wilson Pl. ', '98036 ',33, 'QLD ', 'US ');
 INSERT INTO Location VALUES ( '1026 Mt. Wilson Pl. ', '3205 ',63, 'QLD ', 'AU ');
 INSERT INTO Location VALUES ( '1028 Indigo Ct. ', '98027 ',24, 'QLD ', 'US ');
 INSERT INTO Location VALUES ( '1028 Indigo Ct. ', '3280 ',69, 'QLD ', 'AU ');
 INSERT INTO Location VALUES ( '1028 Royal Oak Rd. ', '94010 ',3, 'VIC ', 'US ');
 INSERT INTO Location VALUES ( '1029 Birchwood Dr ', '98168 ',8, 'VIC ', 'US ');
 INSERT INTO Location VALUES ( '1029 Birchwood Dr ', '98501 ',46, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1030 Ambush Dr. ', 'PE17 ',10, 'WA ', 'UK ');
 INSERT INTO Location VALUES ( '1032 Buena Vista ', '2113 ',42, 'WA ', 'AU ');
 INSERT INTO Location VALUES ( '1032 Coats Road ', 'AS23 ',65, 'WA ', 'UK ');
 INSERT INTO Location VALUES ( '1035 Arguello Blvd. ', '92102 ',56, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1036 Mason Dr ', '98366 ',51, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1039 Adelaide St. ', '2444 ',50, 'WA ', 'AU ');
 INSERT INTO Location VALUES ( '104 Hilltop Dr. ', '94519 ',17, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1040 Greenbush Drive ', 'V2L3W8 ',41, 'WA ', 'CA ');
 INSERT INTO Location VALUES ( '1040 Northridge Road ', '91364 ',72, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1042 Hooftrail Way ', '2300 ',40, 'WA ', 'AU ');
 INSERT INTO Location VALUES ( '1046 Cloverleaf Circle ', 'V8Z 4N5 ',61, 'WA ', 'CA ');
 INSERT INTO Location VALUES ( '1046 San Carlos Avenue ', '94014 ',16, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1047 Las Quebradas Lane ', 'V8P ',44, 'WA ', 'CA ');
 INSERT INTO Location VALUES ( '1048 Burwood Way ', 'V2W 1W2 ',22, 'WA ', 'CA ');
 INSERT INTO Location VALUES ( '105 Woodruff Ln. ', '94611 ',45, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1050 Creed Ave ', '97355 ',29, 'WA ', 'US ');
 INSERT INTO Location VALUES ( '1050 Greenhills Circle ', '1597 ',27, 'WA ', 'AU ');
 INSERT INTO Location VALUES ( '1050 Greenhills Circle ', 'V3A 4R2 ',28, 'WA ', 'CA ');


END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertPersonRole]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertPersonRole]
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO PersonRole VALUES (	1	,	101	);
	 INSERT INTO PersonRole VALUES (	1	,	102	);
	 INSERT INTO PersonRole VALUES (	1	,	103	);
	 INSERT INTO PersonRole VALUES (	1	,	104	);
	 INSERT INTO PersonRole VALUES (	1	,	105	);
	 INSERT INTO PersonRole VALUES (	1	,	106	);
	 INSERT INTO PersonRole VALUES (	1	,	107	);
	 INSERT INTO PersonRole VALUES (	1	,	108	);
	 INSERT INTO PersonRole VALUES (	1	,	109	);
	 INSERT INTO PersonRole VALUES (	1	,	110	);
	 INSERT INTO PersonRole VALUES (	1	,	111	);
	 INSERT INTO PersonRole VALUES (	1	,	112	);
	 INSERT INTO PersonRole VALUES (	1	,	113	);
	 INSERT INTO PersonRole VALUES (	1	,	114	);
	 INSERT INTO PersonRole VALUES (	1	,	115	);
	 INSERT INTO PersonRole VALUES (	1	,	116	);
	 INSERT INTO PersonRole VALUES (	1	,	117	);
	 INSERT INTO PersonRole VALUES (	1	,	118	);
	 INSERT INTO PersonRole VALUES (	1	,	119	);
	 INSERT INTO PersonRole VALUES (	1	,	120	);
	 INSERT INTO PersonRole VALUES (	1	,	121	);
	 INSERT INTO PersonRole VALUES (	1	,	122	);
	 INSERT INTO PersonRole VALUES (	1	,	123	);
	 INSERT INTO PersonRole VALUES (	1	,	124	);
	 INSERT INTO PersonRole VALUES (	1	,	125	);
	 INSERT INTO PersonRole VALUES (	1	,	126	);
	 INSERT INTO PersonRole VALUES (	1	,	127	);
	 INSERT INTO PersonRole VALUES (	1	,	128	);
	 INSERT INTO PersonRole VALUES (	1	,	129	);
	 INSERT INTO PersonRole VALUES (	1	,	130	);
	 INSERT INTO PersonRole VALUES (	1	,	131	);
	 INSERT INTO PersonRole VALUES (	1	,	132	);
	 INSERT INTO PersonRole VALUES (	1	,	133	);
	 INSERT INTO PersonRole VALUES (	1	,	134	);
	 INSERT INTO PersonRole VALUES (	1	,	135	);
	 INSERT INTO PersonRole VALUES (	1	,	136	);
	 INSERT INTO PersonRole VALUES (	1	,	137	);
	 INSERT INTO PersonRole VALUES (	1	,	138	);
	 INSERT INTO PersonRole VALUES (	1	,	139	);
	 INSERT INTO PersonRole VALUES (	1	,	140	);
	 INSERT INTO PersonRole VALUES (	1	,	141	);
	 INSERT INTO PersonRole VALUES (	1	,	142	);
	 INSERT INTO PersonRole VALUES (	1	,	143	);
	 INSERT INTO PersonRole VALUES (	1	,	144	);
	 INSERT INTO PersonRole VALUES (	1	,	145	);
	 INSERT INTO PersonRole VALUES (	1	,	146	);
	 INSERT INTO PersonRole VALUES (	1	,	147	);
	 INSERT INTO PersonRole VALUES (	1	,	148	);
	 INSERT INTO PersonRole VALUES (	1	,	149	);
	 INSERT INTO PersonRole VALUES (	1	,	150	);
	 INSERT INTO PersonRole VALUES (	1	,	151	);
	 INSERT INTO PersonRole VALUES (	1	,	152	);
	 INSERT INTO PersonRole VALUES (	1	,	153	);
	 INSERT INTO PersonRole VALUES (	1	,	154	);
	 INSERT INTO PersonRole VALUES (	1	,	155	);
	 INSERT INTO PersonRole VALUES (	1	,	156	);
	 INSERT INTO PersonRole VALUES (	1	,	157	);
	 INSERT INTO PersonRole VALUES (	1	,	158	);
	 INSERT INTO PersonRole VALUES (	1	,	159	);
	 INSERT INTO PersonRole VALUES (	1	,	160	);
	 INSERT INTO PersonRole VALUES (	1	,	161	);
	 INSERT INTO PersonRole VALUES (	1	,	162	);
	 INSERT INTO PersonRole VALUES (	1	,	163	);
	 INSERT INTO PersonRole VALUES (	1	,	164	);
	 INSERT INTO PersonRole VALUES (	1	,	165	);
	 INSERT INTO PersonRole VALUES (	1	,	166	);
	 INSERT INTO PersonRole VALUES (	1	,	167	);
	 INSERT INTO PersonRole VALUES (	1	,	168	);
	 INSERT INTO PersonRole VALUES (	1	,	169	);
	 INSERT INTO PersonRole VALUES (	1	,	170	);
	 INSERT INTO PersonRole VALUES (	1	,	171	);
	 INSERT INTO PersonRole VALUES (	1	,	172	);
	 INSERT INTO PersonRole VALUES (	1	,	173	);
	 INSERT INTO PersonRole VALUES (	1	,	174	);
	 INSERT INTO PersonRole VALUES (	1	,	175	);
	 INSERT INTO PersonRole VALUES (	1	,	176	);
	 INSERT INTO PersonRole VALUES (	1	,	177	);
	 INSERT INTO PersonRole VALUES (	1	,	178	);
	 INSERT INTO PersonRole VALUES (	1	,	179	);
	 INSERT INTO PersonRole VALUES (	1	,	180	);
	 INSERT INTO PersonRole VALUES (	1	,	181	);
	 INSERT INTO PersonRole VALUES (	1	,	182	);
	 INSERT INTO PersonRole VALUES (	1	,	183	);
	 INSERT INTO PersonRole VALUES (	1	,	184	);
	 INSERT INTO PersonRole VALUES (	1	,	185	);
	 INSERT INTO PersonRole VALUES (	1	,	186	);
	 INSERT INTO PersonRole VALUES (	1	,	187	);
	 INSERT INTO PersonRole VALUES (	1	,	188	);
	 INSERT INTO PersonRole VALUES (	1	,	189	);
	 INSERT INTO PersonRole VALUES (	1	,	190	);
	 INSERT INTO PersonRole VALUES (	1	,	191	);
	 INSERT INTO PersonRole VALUES (	1	,	192	);
	 INSERT INTO PersonRole VALUES (	1	,	193	);
	 INSERT INTO PersonRole VALUES (	1	,	194	);
	 INSERT INTO PersonRole VALUES (	1	,	195	);
	 INSERT INTO PersonRole VALUES (	1	,	196	);
	 INSERT INTO PersonRole VALUES (	1	,	197	);
	 INSERT INTO PersonRole VALUES (	1	,	198	);
	 INSERT INTO PersonRole VALUES (	1	,	199	);
	 INSERT INTO PersonRole VALUES (	1	,	200	);
	 INSERT INTO PersonRole VALUES (	1	,	201	);
	 INSERT INTO PersonRole VALUES (	1	,	202	);
	 INSERT INTO PersonRole VALUES (	1	,	203	);
	 INSERT INTO PersonRole VALUES (	1	,	204	);
	 INSERT INTO PersonRole VALUES (	1	,	205	);
	 INSERT INTO PersonRole VALUES (	1	,	206	);
	 INSERT INTO PersonRole VALUES (	1	,	207	);
	 INSERT INTO PersonRole VALUES (	1	,	208	);
	 INSERT INTO PersonRole VALUES (	1	,	209	);
	 INSERT INTO PersonRole VALUES (	1	,	210	);
	 INSERT INTO PersonRole VALUES (	1	,	211	);
	 INSERT INTO PersonRole VALUES (	1	,	212	);
	 INSERT INTO PersonRole VALUES (	1	,	213	);
	 INSERT INTO PersonRole VALUES (	1	,	214	);
	 INSERT INTO PersonRole VALUES (	1	,	215	);
	 INSERT INTO PersonRole VALUES (	1	,	216	);
	 INSERT INTO PersonRole VALUES (	1	,	217	);
	 INSERT INTO PersonRole VALUES (	2	,	1	);
	 INSERT INTO PersonRole VALUES (	2	,	2	);
	 INSERT INTO PersonRole VALUES (	2	,	3	);
	 INSERT INTO PersonRole VALUES (	2	,	4	);
	 INSERT INTO PersonRole VALUES (	2	,	5	);
	 INSERT INTO PersonRole VALUES (	2	,	6	);
	 INSERT INTO PersonRole VALUES (	2	,	7	);
	 INSERT INTO PersonRole VALUES (	2	,	8	);
	 INSERT INTO PersonRole VALUES (	2	,	9	);
	 INSERT INTO PersonRole VALUES (	2	,	10	);
	 INSERT INTO PersonRole VALUES (	2	,	11	);
	 INSERT INTO PersonRole VALUES (	2	,	12	);
	 INSERT INTO PersonRole VALUES (	2	,	13	);
	 INSERT INTO PersonRole VALUES (	2	,	14	);
	 INSERT INTO PersonRole VALUES (	2	,	15	);
	 INSERT INTO PersonRole VALUES (	2	,	16	);
	 INSERT INTO PersonRole VALUES (	2	,	17	);
	 INSERT INTO PersonRole VALUES (	2	,	18	);
	 INSERT INTO PersonRole VALUES (	2	,	19	);
	 INSERT INTO PersonRole VALUES (	2	,	20	);
	 INSERT INTO PersonRole VALUES (	2	,	21	);
	 INSERT INTO PersonRole VALUES (	2	,	22	);
	 INSERT INTO PersonRole VALUES (	2	,	23	);
	 INSERT INTO PersonRole VALUES (	2	,	24	);
	 INSERT INTO PersonRole VALUES (	2	,	25	);
	 INSERT INTO PersonRole VALUES (	2	,	26	);
	 INSERT INTO PersonRole VALUES (	2	,	27	);
	 INSERT INTO PersonRole VALUES (	2	,	28	);
	 INSERT INTO PersonRole VALUES (	2	,	29	);
	 INSERT INTO PersonRole VALUES (	2	,	30	);
	 INSERT INTO PersonRole VALUES (	2	,	31	);
	 INSERT INTO PersonRole VALUES (	2	,	32	);
	 INSERT INTO PersonRole VALUES (	2	,	33	);
	 INSERT INTO PersonRole VALUES (	2	,	34	);
	 INSERT INTO PersonRole VALUES (	2	,	35	);
	 INSERT INTO PersonRole VALUES (	2	,	36	);
	 INSERT INTO PersonRole VALUES (	2	,	37	);
	 INSERT INTO PersonRole VALUES (	2	,	38	);
	 INSERT INTO PersonRole VALUES (	2	,	39	);
	 INSERT INTO PersonRole VALUES (	2	,	40	);
	 INSERT INTO PersonRole VALUES (	2	,	41	);
	 INSERT INTO PersonRole VALUES (	2	,	42	);
	 INSERT INTO PersonRole VALUES (	2	,	43	);
	 INSERT INTO PersonRole VALUES (	2	,	44	);
	 INSERT INTO PersonRole VALUES (	2	,	45	);
	 INSERT INTO PersonRole VALUES (	2	,	46	);
	 INSERT INTO PersonRole VALUES (	2	,	47	);
	 INSERT INTO PersonRole VALUES (	2	,	48	);
	 INSERT INTO PersonRole VALUES (	2	,	49	);
	 INSERT INTO PersonRole VALUES (	2	,	50	);
	 INSERT INTO PersonRole VALUES (	2	,	51	);
	 INSERT INTO PersonRole VALUES (	2	,	52	);
	 INSERT INTO PersonRole VALUES (	2	,	53	);
	 INSERT INTO PersonRole VALUES (	2	,	54	);
	 INSERT INTO PersonRole VALUES (	2	,	55	);
	 INSERT INTO PersonRole VALUES (	2	,	56	);
	 INSERT INTO PersonRole VALUES (	2	,	57	);
	 INSERT INTO PersonRole VALUES (	2	,	58	);
	 INSERT INTO PersonRole VALUES (	2	,	59	);
	 INSERT INTO PersonRole VALUES (	2	,	60	);
	 INSERT INTO PersonRole VALUES (	2	,	61	);
	 INSERT INTO PersonRole VALUES (	2	,	62	);
	 INSERT INTO PersonRole VALUES (	2	,	63	);
	 INSERT INTO PersonRole VALUES (	2	,	64	);
	 INSERT INTO PersonRole VALUES (	2	,	65	);
	 INSERT INTO PersonRole VALUES (	2	,	66	);
	 INSERT INTO PersonRole VALUES (	2	,	67	);
	 INSERT INTO PersonRole VALUES (	2	,	68	);
	 INSERT INTO PersonRole VALUES (	2	,	69	);
	 INSERT INTO PersonRole VALUES (	2	,	70	);
	 INSERT INTO PersonRole VALUES (	2	,	71	);
	 INSERT INTO PersonRole VALUES (	2	,	72	);
	 INSERT INTO PersonRole VALUES (	2	,	73	);
	 INSERT INTO PersonRole VALUES (	2	,	74	);
	 INSERT INTO PersonRole VALUES (	2	,	75	);
	 INSERT INTO PersonRole VALUES (	2	,	76	);
	 INSERT INTO PersonRole VALUES (	2	,	77	);
	 INSERT INTO PersonRole VALUES (	2	,	78	);
	 INSERT INTO PersonRole VALUES (	2	,	79	);
	 INSERT INTO PersonRole VALUES (	2	,	80	);
	 INSERT INTO PersonRole VALUES (	2	,	81	);
	 INSERT INTO PersonRole VALUES (	2	,	82	);
	 INSERT INTO PersonRole VALUES (	2	,	83	);
	 INSERT INTO PersonRole VALUES (	2	,	84	);
	 INSERT INTO PersonRole VALUES (	2	,	85	);
	 INSERT INTO PersonRole VALUES (	2	,	86	);
	 INSERT INTO PersonRole VALUES (	2	,	87	);
	 INSERT INTO PersonRole VALUES (	2	,	88	);
	 INSERT INTO PersonRole VALUES (	2	,	89	);
	 INSERT INTO PersonRole VALUES (	2	,	90	);
	 INSERT INTO PersonRole VALUES (	2	,	91	);
	 INSERT INTO PersonRole VALUES (	2	,	92	);
	 INSERT INTO PersonRole VALUES (	2	,	93	);
	 INSERT INTO PersonRole VALUES (	2	,	94	);
	 INSERT INTO PersonRole VALUES (	2	,	95	);
	 INSERT INTO PersonRole VALUES (	2	,	96	);
	 INSERT INTO PersonRole VALUES (	2	,	97	);
	 INSERT INTO PersonRole VALUES (	2	,	98	);
	 INSERT INTO PersonRole VALUES (	2	,	99	);
	 INSERT INTO PersonRole VALUES (	2	,	100	);
	 INSERT INTO PersonRole VALUES (	6	,	50	);
	 INSERT INTO PersonRole VALUES (	6	,	89	);
	 INSERT INTO PersonRole VALUES (	6	,	5	);
	 INSERT INTO PersonRole VALUES (	6	,	123	);
	 INSERT INTO PersonRole VALUES (	6	,	69	);
	 INSERT INTO PersonRole VALUES (	6	,	96	);
	 INSERT INTO PersonRole VALUES (	6	,	111	);
	 INSERT INTO PersonRole VALUES (	6	,	209	);
	 INSERT INTO PersonRole VALUES (	6	,	145	);
	 INSERT INTO PersonRole VALUES (	6	,	33	);
	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertPersonRole
  select * from PersonRole
GO
/****** Object:  StoredProcedure [dbo].[insertRaffle]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROC [dbo].[insertRaffle]
  AS
  BEGIN
    BEGIN TRY
	
 INSERT INTO Raffle VALUES	(4	,	1	,	1	)	;
INSERT INTO Raffle VALUES	(4	,	10	,	1	)	;
INSERT INTO Raffle VALUES	(4	,	15	,	4	)	;
INSERT INTO Raffle VALUES	(4	,	20	,	5	)	;
INSERT INTO Raffle VALUES	(4	,	11	,	6	)	;
	END TRY
    BEGIN CATCH
    END CATCH
  END

GO
/****** Object:  StoredProcedure [dbo].[insertRole]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROC [dbo].[insertRole]
  AS
  BEGIN
    BEGIN TRY
	  INSERT INTO Role VALUES ('Presenter');
      INSERT INTO Role VALUES ('Attendee');
      INSERT INTO Role VALUES ('Organizer');
      INSERT INTO Role VALUES ('Volunteer');
      INSERT INTO Role VALUES ('Sponsor');
	  INSERT INTO Role Values ('Vendor');
	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertRole
GO
/****** Object:  StoredProcedure [dbo].[insertRoom]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[insertRoom]
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO Room VALUES (	1	,	4	);
	 INSERT INTO Room VALUES (	2	,	4	);
	 INSERT INTO Room VALUES (	3	,	4	);
	 INSERT INTO Room VALUES (	4	,	4	);
	 INSERT INTO Room VALUES (	5	,	4	);
	 INSERT INTO Room VALUES (	6	,	4	);
	 INSERT INTO Room VALUES (	7	,	4	);
	 INSERT INTO Room VALUES (	8	,	4	);
	 INSERT INTO Room VALUES (	9	,	4	);
	 INSERT INTO Room VALUES (	10	,	4	);
	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertRoom
GO
/****** Object:  StoredProcedure [dbo].[insertSchedule]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertSchedule]
  AS
  BEGIN
    BEGIN TRY
 INSERT INTO Schedule VALUES	(	4	,	12	,	1	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	49	,	2	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	111	,	3	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	113	,	4	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	114	,	5	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	118	,	6	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	125	,	7	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	130	,	8	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	133	,	9	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	18	,	10	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	20	,	1	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	31	,	2	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	32	,	3	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	35	,	4	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	47	,	5	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	53	,	6	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	102	,	7	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	103	,	8	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	104	,	9	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	105	,	10	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	108	,	1	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	115	,	2	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	116	,	3	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	117	,	4	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	123	,	5	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	124	,	6	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	131	,	7	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	134	,	8	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	135	,	9	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	136	,	10	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	11	,	1	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	21	,	2	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	36	,	3	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	45	,	4	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	48	,	5	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	50	,	6	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	2	,	7	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	3	,	8	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	6	,	9	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	101	,	10	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	107	,	1	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	109	,	2	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	112	,	3	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	119	,	4	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	120	,	5	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	121	,	6	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	122	,	7	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	126	,	8	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	127	,	9	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	128	,	10	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	129	,	1	,	4	)	;
 INSERT INTO Schedule VALUES	(	4	,	33	,	2	,	4	)	;


 END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertSponsorLevel]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertSponsorLevel]
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO SponsorLevel VALUES ('Platinum');
      INSERT INTO SponsorLevel VALUES ('Gold');
      INSERT INTO SponsorLevel VALUES ('Silver');
      INSERT INTO SponsorLevel VALUES ('Bronze');
    END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertState]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertState]
  AS
  BEGIN
    BEGIN TRY
		INSERT INTO State VALUES (	'AL'	,	'Alberta'	,	'CA'	);
		INSERT INTO State VALUES (	'BC'	,	'British Columbia'	,	'CA'	);
		INSERT INTO State VALUES (	'CA'	,	'California'	,	'US'	);
		INSERT INTO State VALUES (	'ENG'	,	'England'	,	'UK'	);
		INSERT INTO State VALUES (	'MD'	,	'Maryland'	,	'US'	);
		INSERT INTO State VALUES (	'NSW'	,	'New South Wales'	,	'AU'	);
		INSERT INTO State VALUES (	'OH'	,	'Ohio'	,	'US'	);
		INSERT INTO State VALUES (	'OR'	,	'Oregon'	,	'US'	);
		INSERT INTO State VALUES (	'QLD'	,	'Queensland'	,	'AU'	);
		INSERT INTO State VALUES (	'VIC'	,	'Victoria'	,	'AU'	);
		INSERT INTO State VALUES (	'WA'	,	'Washington'	,	'US'	);

		END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertTracks]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertTracks]
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO Track VALUES ('Application And Database Development');
      INSERT INTO Track VALUES ('Analytics And Visualization');
      INSERT INTO Track VALUES ('Advanced Analysis Techniques');
      INSERT INTO Track VALUES ('Cloud Application Development');
      INSERT INTO Track VALUES ('Enterprise Database Administration');
    END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertTracks
GO
/****** Object:  StoredProcedure [dbo].[insertVendor]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[insertVendor]
  AS
  BEGIN
    BEGIN TRY
	INSERT INTO Vendor VALUES (	'MIS', 'Microsoft'	,	50	);
	INSERT INTO Vendor VALUES (	'ORC', 'Oracle'	,	89	);
	INSERT INTO Vendor VALUES (	'SAP', 'SAP'	,	5	);
	INSERT INTO Vendor VALUES (	'HP', 'HP'	,	123	);
	INSERT INTO Vendor VALUES (	'IBM', 'IBM'	,	69	);
	INSERT INTO Vendor VALUES (	'AMD', 'AMD'	,	96	);
	INSERT INTO Vendor VALUES (	'INT', 'Intel'	,	111	);
	INSERT INTO Vendor VALUES (	'WD','Western Digital'	,	209	);
	INSERT INTO Vendor VALUES (	'EPS', 'Epson'	,	145	);
	INSERT INTO Vendor VALUES (	'CIS', 'CISCO'	,	33	);


	END TRY
    BEGIN CATCH
    END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[insertVendorTable]    Script Date: 5/18/2017 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertVendorTable]
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO VendorTable VALUES (1, 4,	'MIS'	);
	 INSERT INTO VendorTable VALUES (2, 4,	'ORC'	);
	 INSERT INTO VendorTable VALUES (3, 4, 'SAP'	);
	 INSERT INTO VendorTable VALUES (4, 4,	'HP'	);
	 INSERT INTO VendorTable VALUES (5, 4,	'IBM'	);
	 INSERT INTO VendorTable VALUES (6, 4, 'AMD'	);
	 INSERT INTO VendorTable VALUES (7, 4,	'INT'	);
	 INSERT INTO VendorTable VALUES (8, 4, 'WD'	);
	 INSERT INTO VendorTable VALUES (9, 4,	'EPS'	);
	 INSERT INTO VendorTable VALUES (10, 4,	'CIS'	);

	END TRY
    BEGIN CATCH
    END CATCH
  END
GO
USE [master]
GO
ALTER DATABASE [s17guest60] SET  READ_WRITE 
GO
