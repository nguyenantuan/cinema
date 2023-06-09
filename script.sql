USE [master]
GO
/****** Object:  Database [PRJ301_BL5_FA22]    Script Date: 12/9/2022 5:40:16 PM ******/
CREATE DATABASE [PRJ301_BL5_FA22]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cinema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HELLO\MSSQL\DATA\cinema.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cinema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HELLO\MSSQL\DATA\cinema_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_BL5_FA22].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_BL5_FA22', N'ON'
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET QUERY_STORE = OFF
GO
USE [PRJ301_BL5_FA22]
GO
/****** Object:  Table [dbo].[booking_detail_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_detail_HE163512](
	[bookingId] [int] NOT NULL,
	[seatId] [int] NOT NULL,
 CONSTRAINT [PK_booking_detail] PRIMARY KEY CLUSTERED 
(
	[bookingId] ASC,
	[seatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_HE163512](
	[bookingId] [int] IDENTITY(1,1) NOT NULL,
	[showId] [int] NOT NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [PK_booking] PRIMARY KEY CLUSTERED 
(
	[bookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries_HE163512](
	[CountryCode] [nchar](3) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films_HE163512](
	[FilmID] [int] IDENTITY(1,1) NOT NULL,
	[GenreID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CountryCode] [nchar](3) NOT NULL,
	[img] [ntext] NULL,
	[premiere] [date] NULL,
	[actor] [nvarchar](300) NULL,
	[author] [nvarchar](100) NULL,
	[time] [int] NULL,
	[images_slide] [ntext] NULL,
	[description] [nvarchar](3000) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres_HE163512](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms_HE163512](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat_HE163512](
	[seatId] [int] IDENTITY(1,1) NOT NULL,
	[seatName] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[seatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Show_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show_HE163512](
	[showId] [int] IDENTITY(1,1) NOT NULL,
	[showDate] [date] NOT NULL,
	[slotId] [int] NOT NULL,
	[filmId] [int] NOT NULL,
	[roomId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED 
(
	[showId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot_HE163512](
	[slotId] [int] NOT NULL,
	[Time] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[slotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_HE163512]    Script Date: 12/9/2022 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_HE163512](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[address] [nvarchar](100) NULL,
	[role] [int] NULL,
	[DOB] [date] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (1, 12)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (1, 13)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (2, 15)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (2, 16)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (2, 18)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (3, 1)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (3, 2)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (4, 1)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (4, 2)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (4, 15)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (4, 16)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (5, 28)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (5, 29)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (6, 20)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (6, 21)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (7, 20)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (7, 21)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (7, 28)
INSERT [dbo].[booking_detail_HE163512] ([bookingId], [seatId]) VALUES (7, 29)
GO
SET IDENTITY_INSERT [dbo].[booking_HE163512] ON 

INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (1, 1, 3)
INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (2, 1, 1)
INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (3, 1, 1)
INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (4, 12, 1)
INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (5, 12, 3)
INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (6, 12, 3)
INSERT [dbo].[booking_HE163512] ([bookingId], [showId], [userId]) VALUES (7, 1, 3)
SET IDENTITY_INSERT [dbo].[booking_HE163512] OFF
GO
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ABW', N'Aruba')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AFG', N'Afghanistan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AGO', N'Angola')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AIA', N'Anguilla')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ALB', N'Albania')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AND', N'Andorra')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ANT', N'Netherlands Antilles')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ARE', N'United Arab Emirates')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ARG', N'Argentina')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ARM', N'Armenia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ASM', N'American Samoa')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ATA', N'Antarctica')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ATG', N'Antigua and Barbuda')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AUS', N'Australia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AUT', N'Austria')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'AZE', N'Azerbaijan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BDI', N'Burundi')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BEL', N'Belgium')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BEN', N'Benin')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BFA', N'Burkina Faso')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BGD', N'Bangladesh')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BGR', N'Bulgaria')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BHR', N'Bahrain')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BHS', N'Bahamas')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BIH', N'Bosnia and Herzegovina')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BLM', N'Saint Barthelemy')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BLR', N'Belarus')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BLZ', N'Belize')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BMU', N'Bermuda')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BOL', N'Bolivia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BRA', N'Brazil')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BRB', N'Barbados')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BRN', N'Brunei')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BTN', N'Bhutan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'BWA', N'Botswana')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CAF', N'Central African Republic')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CAN', N'Canada')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CCK', N'Cocos (Keeling) Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CHE', N'Switzerland')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CHL', N'Chile')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CHN', N'China')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CIV', N'Ivory Coast')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CMR', N'Cameroon')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'COD', N'Democratic Republic of the Congo')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'COG', N'Republic of the Congo')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'COK', N'Cook Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'COL', N'Colombia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'COM', N'Comoros')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CPV', N'Cape Verde')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CRC', N'Costa Rica')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CUB', N'Cuba')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CXR', N'Christmas Island')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CYM', N'Cayman Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CYP', N'Cyprus')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'CZE', N'Czech Republic')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'DEU', N'Germany')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'DJI', N'Djibouti')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'DMA', N'Dominica')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'DNK', N'Denmark')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'DOM', N'Dominican Republic')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'DZA', N'Algeria')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ECU', N'Ecuador')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'EGY', N'Egypt')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ERI', N'Eritrea')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ESH', N'Western Sahara')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ESP', N'Spain')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'EST', N'Estonia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ETH', N'Ethiopia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'FIN', N'Finland')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'FJI', N'Fiji')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'FLK', N'Falkland Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'FRA', N'France')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'FRO', N'Faroe Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'FSM', N'Micronesia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GAB', N'Gabon')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GBR', N'United Kingdom')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GEO', N'Georgia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GHA', N'Ghana')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GIB', N'Gibraltar')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GIN', N'Guinea')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GMB', N'Gambia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GNB', N'Guinea-Bissau')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GNQ', N'Equatorial Guinea')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GRC', N'Greece')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GRD', N'Grenada')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GRL', N'Greenland')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GTM', N'Guatemala')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GUM', N'Guam')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'GUY', N'Guyana')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'HKG', N'Hong Kong')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'HND', N'Honduras')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'HRV', N'Croatia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'HTI', N'Haiti')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'HUN', N'Hungary')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IDN', N'Indonesia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IMN', N'Isle of Man')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IND', N'India')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IOT', N'British Indian Ocean Territory')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IRL', N'Ireland')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IRN', N'Iran')
GO
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'IRQ', N'Iraq')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ISR', N'Israel')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ITA', N'Italy')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'JAM', N'Jamaica')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'JEY', N'Jersey')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'JOR', N'Jordan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'JPN', N'Japan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KAZ', N'Kazakhstan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KEN', N'Kenya')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KGZ', N'Kyrgyzstan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KHM', N'Cambodia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KIR', N'Kiribati')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KNA', N'Saint Kitts and Nevis')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KOR', N'South Korea')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'KWT', N'Kuwait')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LAO', N'Laos')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LBN', N'Lebanon')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LBR', N'Liberia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LBY', N'Libya')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LCA', N'Saint Lucia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LIE', N'Liechtenstein')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LKA', N'Sri Lanka')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LSO', N'Lesotho')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LTU', N'Lithuania')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LUX', N'Luxembourg')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'LVA', N'Latvia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MAC', N'Macau')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MAF', N'Saint Martin')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MAR', N'Morocco')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MCO', N'Monaco')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MDA', N'Moldova')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MDG', N'Madagascar')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MDV', N'Maldives')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MEX', N'Mexico')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MHL', N'Marshall Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MKD', N'Macedonia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MLI', N'Mali')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MLT', N'Malta')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MMR', N'Burma (Myanmar)')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MNE', N'Montenegro')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MNG', N'Mongolia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MNP', N'Northern Mariana Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MOZ', N'Mozambique')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MRT', N'Mauritania')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MSR', N'Montserrat')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MUS', N'Mauritius')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MWI', N'Malawi')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MYS', N'Malaysia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'MYT', N'Mayotte')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NAM', N'Namibia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NCL', N'New Caledonia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NER', N'Niger')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NFK', N'Norfolk Island')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NGA', N'Nigeria')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NIC', N'Nicaragua')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NIU', N'Niue')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NLD', N'Netherlands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NOR', N'Norway')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NPL', N'Nepal')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NRU', N'Nauru')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'NZL', N'New Zealand')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'OMN', N'Oman')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PAK', N'Pakistan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PAN', N'Panama')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PCN', N'Pitcairn Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PER', N'Peru')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PHL', N'Philippines')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PLW', N'Palau')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PNG', N'Papua New Guinea')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'POL', N'Poland')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PRI', N'Puerto Rico')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PRK', N'North Korea')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PRT', N'Portugal')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PRY', N'Paraguay')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'PYF', N'French Polynesia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'QAT', N'Qatar')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ROU', N'Romania')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'RUS', N'Russia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'RWA', N'Rwanda')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SAU', N'Saudi Arabia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SDN', N'Sudan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SEN', N'Senegal')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SGP', N'Singapore')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SHN', N'Saint Helena')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SJM', N'Svalbard')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SLB', N'Solomon Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SLE', N'Sierra Leone')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SLV', N'El Salvador')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SMR', N'San Marino')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SOM', N'Somalia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SPM', N'Saint Pierre and Miquelon')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SRB', N'Serbia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'STP', N'Sao Tome and Principe')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SUR', N'Suriname')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SVK', N'Slovakia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SVN', N'Slovenia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SWE', N'Sweden')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SWZ', N'Swaziland')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SYC', N'Seychelles')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'SYR', N'Syria')
GO
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TCA', N'Turks and Caicos Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TCD', N'Chad')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TGO', N'Togo')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'THA', N'Thailand')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TJK', N'Tajikistan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TKL', N'Tokelau')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TKM', N'Turkmenistan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TLS', N'Timor-Leste')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TON', N'Tonga')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TTO', N'Trinidad and Tobago')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TUN', N'Tunisia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TUR', N'Turkey')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TUV', N'Tuvalu')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TWN', N'Taiwan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'TZA', N'Tanzania')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'UGA', N'Uganda')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'UKR', N'Ukraine')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'URY', N'Uruguay')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'USA', N'United States')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'UZB', N'Uzbekistan')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VAT', N'Holy See (Vatican City)')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VCT', N'Saint Vincent and the Grenadines')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VEN', N'Venezuela')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VGB', N'British Virgin Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VIR', N'US Virgin Islands')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VNM', N'Vietnam')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'VUT', N'Vanuatu')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'WLF', N'Wallis and Futuna')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'WSM', N'Samoa')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'YEM', N'Yemen')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ZAF', N'South Africa')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ZMB', N'Zambia')
INSERT [dbo].[Countries_HE163512] ([CountryCode], [CountryName]) VALUES (N'ZWE', N'Zimbabwe')
GO
SET IDENTITY_INSERT [dbo].[Films_HE163512] ON 

INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (1, 4, N' Minions the rise of gru', N'USA', N'onesheet.jpg', CAST(N'2020-11-01' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 112, N'download.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp 
incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec 
condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet 
interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (2, 1, N'Thor: Love and Thunder', N'USA', N'bigsalad_genavailposter_pay1_presunrise_v3_lg.jpg', CAST(N'2022-05-10' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, N'Thor_Love_And_Thunder_logo.jpeg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (3, 9, N'Paws of Fury: The Legend of Hank', N'USA', N'MV5BMzkxMDI1ZGEtYmJmNS00NDhlLWEzMjEtYzNmNWQ2Njg2YTI4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', CAST(N'2021-06-06' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, N'maxresdefault.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (4, 1, N'God father II                                                                                       ', N'USA', N'71Tn5ZErDiL._RI_.jpg', CAST(N'2022-08-09' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, N'download (1).jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (7, 3, N'The Scraw', N'USA', N'./img/700-x-1000-px.jpg', CAST(N'2022-11-11' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (9, 4, N'Dragon ball', N'USA', N'./img/2._dbssh_poster_2.jpg', CAST(N'2022-01-23' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (10, 1, N'Avatar', N'USA', N'./img/avatar_2__teaser_poster_1__2.jpg', CAST(N'2022-08-15' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (11, 4, N'Pororo and friend', N'USA', N'./img/pororo_dinosaur_island_adventure-_vietnamese_poster_1_.jpg', CAST(N'2022-12-12' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (12, 9, N'Top Gun Maverick', N'ESP', N'./img/top_gun_maverick_-_poster_28.03_1__2.jpg', CAST(N'2022-09-12' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (13, 1, N'Black Adam', N'ESP', N'./img/poster_black_adam_1__2.jpg', CAST(N'2022-08-23' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (15, 4, N'Connan', N'ESP', N'./img/conan_movie_2022-_vnese_poster_1_.jpg', CAST(N'2022-09-10' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (17, 9, N'Mogadishu', N'ESP', N'./img/main_poster_tho_t_kh_i_mogadishu_1_.jpg', CAST(N'2022-09-30' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (23, 4, N'Bullet train', N'USA', N'./img/bt_poster_lk3_1080x1350_1_.jpg', CAST(N'2022-10-11' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (28, 3, N'Hello ae', N'VNM', NULL, CAST(N'2022-01-01' AS Date), N'abc', N'author', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 0)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (29, 3, N'1', N'BFA', N'1-514.jpg', CAST(N'2022-10-30' AS Date), N'test', N'test', 123, NULL, N'adavav asd', NULL)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (30, 3, N'1', N'BFA', N'1-514.jpg', CAST(N'2022-10-30' AS Date), N'test', N'test', 123, N'1-514.jpg', N'adavav asd', NULL)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (31, 1, N'test', N'URY', N'242060060_966846954047846_2694184242892673561_n.jpg', CAST(N'2022-01-01' AS Date), N'ad', N'aDA', 100, N'Mau-khung-vien-dep-2.jpg', N'test', NULL)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (32, 1, N'test', N'USA', N'null', CAST(N'2022-01-01' AS Date), N'ad', N'aDA', 100, N'test', NULL, 0)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (33, 9, N'da', N'BEN', N'Mau-khung-vien-dep-2.jpg', CAST(N'2022-11-18' AS Date), N'test', N'dasd', 112, N'1ca q sa', N'Mau-khung-vien-dep-2.jpg', 0)
INSERT [dbo].[Films_HE163512] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (34, 8, N'123', N'CYP', N'mooc3 w2.png', CAST(N'2022-11-01' AS Date), N'123', N'123', 123, N'123', NULL, 0)
SET IDENTITY_INSERT [dbo].[Films_HE163512] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres_HE163512] ON 

INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (1, N'Action')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (2, N'Adventure')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (3, N'Business ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (4, N'Children''s/Family  ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (5, N'Comedy ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (6, N'Comedy Drama ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (7, N'Crime    ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (8, N'Culture & Socienty    ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (9, N'Drama   ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (10, N'Education   ')
INSERT [dbo].[Genres_HE163512] ([GenreID], [Name]) VALUES (13, N'Historical Film ')
SET IDENTITY_INSERT [dbo].[Genres_HE163512] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms_HE163512] ON 

INSERT [dbo].[Rooms_HE163512] ([RoomID], [Name]) VALUES (1, N'Theatre A                                                                                           ')
INSERT [dbo].[Rooms_HE163512] ([RoomID], [Name]) VALUES (2, N'Theatre B                                                                                           ')
INSERT [dbo].[Rooms_HE163512] ([RoomID], [Name]) VALUES (3, N'Theatre C                                                                                           ')
SET IDENTITY_INSERT [dbo].[Rooms_HE163512] OFF
GO
SET IDENTITY_INSERT [dbo].[Seat_HE163512] ON 

INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (1, N'A1        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (2, N'A2        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (3, N'A3        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (4, N'A4        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (5, N'A5        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (6, N'A6        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (7, N'A7        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (8, N'A8        ')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (9, N'B1')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (10, N'B2')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (11, N'B3')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (12, N'B4')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (13, N'B5')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (14, N'B6')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (15, N'B7')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (16, N'B8')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (17, N'C1')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (18, N'C2')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (19, N'C3')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (20, N'C4')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (21, N'C5')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (22, N'C6')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (23, N'C7')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (24, N'C8')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (25, N'D1')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (26, N'D2')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (27, N'D3')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (28, N'D4')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (29, N'D5')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (30, N'D6')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (31, N'D7')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (32, N'D8')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (33, N'E1')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (34, N'E2')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (35, N'E3')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (36, N'E4')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (37, N'E5')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (38, N'E6')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (39, N'E7')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (40, N'E8')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (41, N'F1')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (42, N'F2')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (43, N'F3')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (44, N'F4')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (45, N'F5')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (46, N'F6')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (47, N'F7')
INSERT [dbo].[Seat_HE163512] ([seatId], [seatName]) VALUES (48, N'F8')
SET IDENTITY_INSERT [dbo].[Seat_HE163512] OFF
GO
SET IDENTITY_INSERT [dbo].[Show_HE163512] ON 

INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (1, CAST(N'2022-11-02' AS Date), 3, 1, 3, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (2, CAST(N'2022-11-03' AS Date), 1, 1, 3, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (3, CAST(N'2022-11-01' AS Date), 2, 10, 3, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (4, CAST(N'2022-08-08' AS Date), 3, 1, 3, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (5, CAST(N'2022-09-10' AS Date), 9, 1, 2, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (6, CAST(N'2022-10-25' AS Date), 2, 2, 1, NULL)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (7, CAST(N'2022-09-09' AS Date), 1, 1, 1, 0)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (8, CAST(N'2022-10-05' AS Date), 4, 4, 2, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (9, CAST(N'2022-10-12' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (10, CAST(N'2022-08-08' AS Date), 5, 1, 1, 0)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (11, CAST(N'2022-08-08' AS Date), 6, 1, 2, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (12, CAST(N'2022-11-04' AS Date), 2, 1, 2, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (13, CAST(N'2022-11-05' AS Date), 3, 1, 1, 0)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (14, CAST(N'2022-11-06' AS Date), 2, 10, 1, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (15, CAST(N'2022-11-03' AS Date), 6, 2, 2, 1)
INSERT [dbo].[Show_HE163512] ([showId], [showDate], [slotId], [filmId], [roomId], [status]) VALUES (16, CAST(N'2022-11-02' AS Date), 5, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Show_HE163512] OFF
GO
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (1, N'7:00 AM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (2, N'9:00 AM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (3, N'11:00 AM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (4, N'13:00 PM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (5, N'15:00 PM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (6, N'17:00 PM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (7, N'19: 00 PM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (8, N'21:00 PM')
INSERT [dbo].[Slot_HE163512] ([slotId], [Time]) VALUES (9, N'23:00 PM')
GO
SET IDENTITY_INSERT [dbo].[user_HE163512] ON 

INSERT [dbo].[user_HE163512] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (1, N'dinh quoc tung', N'tungdqhe160456@fpt.edu.vn', N'202cb962ac59075b964b07152d234b70', 0, N'123456009  ', N'....', 1, CAST(N'2002-08-03' AS Date))
INSERT [dbo].[user_HE163512] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (2, N'admin', N'admin@gmail.com', N'202cb962ac59075b964b07152d234b70', 1, N'0378387199 ', N'hong cho anh oi', 0, CAST(N'2001-08-08' AS Date))
INSERT [dbo].[user_HE163512] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (3, N'Nguyen Kiem Thong', N'test1@gmail.com', N'202cb962ac59075b964b07152d234b70', 0, N'0886969888 ', N'ko cho 123', 1, CAST(N'2001-08-14' AS Date))
INSERT [dbo].[user_HE163512] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (4, N'thong', N'thong2001', N'202cb962ac59075b964b07152d234b70', 1, N'0886969888 ', N'VietNam', 1, CAST(N'2001-08-08' AS Date))
SET IDENTITY_INSERT [dbo].[user_HE163512] OFF
GO
USE [master]
GO
ALTER DATABASE [PRJ301_BL5_FA22] SET  READ_WRITE 
GO
