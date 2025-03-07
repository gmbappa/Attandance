USE [master]
GO
/****** Object:  Database [TestHR]    Script Date: 3/7/2025 4:55:01 PM ******/
CREATE DATABASE [TestHR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestHR', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.SQL2022\MSSQL\DATA\TestHR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestHR_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.SQL2022\MSSQL\DATA\TestHR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TestHR] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestHR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestHR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestHR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestHR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestHR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestHR] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestHR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestHR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestHR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestHR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestHR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestHR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestHR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestHR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestHR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestHR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestHR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestHR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestHR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestHR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestHR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestHR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestHR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestHR] SET RECOVERY FULL 
GO
ALTER DATABASE [TestHR] SET  MULTI_USER 
GO
ALTER DATABASE [TestHR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestHR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestHR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestHR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestHR] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestHR] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestHR', N'ON'
GO
ALTER DATABASE [TestHR] SET QUERY_STORE = ON
GO
ALTER DATABASE [TestHR] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TestHR]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/7/2025 4:55:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [nvarchar](20) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePunches]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePunches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [nvarchar](20) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[PunchTime] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaxPunch]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaxPunch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaxPunchRange] [int] NOT NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.32')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250306083617_init', N'6.0.32')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250306090917_init2', N'6.0.32')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([Id], [EmployeeId], [Name], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'101', N'Mostafa', N'1', CAST(N'2025-03-07T11:26:57.373' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[Employee] ([Id], [EmployeeId], [Name], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'102', N'Bappa', N'1', CAST(N'2025-03-07T11:26:57.373' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[Employee] ([Id], [EmployeeId], [Name], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'103', N'Anwar', N'1', CAST(N'2025-03-07T11:26:57.373' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[Employee] ([Id], [EmployeeId], [Name], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'104', N'Arif', N'1', CAST(N'2025-03-07T16:22:00.000' AS DateTime), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeePunches] ON 
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T09:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:20:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T11:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T13:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T14:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T15:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (7, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T16:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (8, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T17:30:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (9, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T18:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (10, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T19:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (11, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T20:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (12, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:20:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (13, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:20:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (14, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:20:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (15, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:20:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (16, N'101', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:45:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (17, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T09:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (18, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:35:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (19, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T11:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (20, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T13:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (21, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T14:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (22, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T15:30:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (23, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T16:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (24, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T17:45:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (25, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T18:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (26, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T19:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (27, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T20:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (28, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:35:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (29, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:35:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (30, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:35:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (31, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:35:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (32, N'101', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T11:00:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (33, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T09:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (34, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:30:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (35, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T11:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (36, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T13:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (37, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T14:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (38, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T15:25:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (39, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T16:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (40, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T17:40:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (41, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T18:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (42, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T19:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (43, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T20:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (44, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:30:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (45, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:30:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (46, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:30:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (47, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:30:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (48, N'101', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (49, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T09:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (50, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:25:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (51, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T11:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (52, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T13:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (53, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T14:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (54, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T15:20:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (55, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T16:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (56, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T17:35:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (57, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T18:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (58, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T19:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (59, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T20:05:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (60, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:25:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (61, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:25:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (62, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:25:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (63, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:25:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (64, N'101', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:50:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (241, N'102', CAST(N'2025-03-07T16:43:00.0000000' AS DateTime2), CAST(N'2025-03-07T16:43:00.000' AS DateTime), N'102', CAST(N'2025-03-07T16:43:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (242, N'103', CAST(N'2025-03-07T16:43:00.0000000' AS DateTime2), CAST(N'2025-03-07T16:43:00.000' AS DateTime), NULL, CAST(N'2025-03-07T16:44:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (243, N'102', CAST(N'2025-03-08T08:26:00.0000000' AS DateTime2), CAST(N'2025-03-08T16:44:00.000' AS DateTime), NULL, CAST(N'2025-03-08T16:45:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (244, N'103', CAST(N'2025-03-09T16:45:00.0000000' AS DateTime2), CAST(N'2025-03-09T08:50:00.000' AS DateTime), NULL, CAST(N'2025-03-07T16:49:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (245, N'101', CAST(N'2025-03-08T04:46:00.0000000' AS DateTime2), CAST(N'2025-03-08T09:50:00.000' AS DateTime), NULL, CAST(N'2025-03-07T16:51:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (246, N'102', CAST(N'2025-03-07T16:47:00.0000000' AS DateTime2), CAST(N'2025-03-07T20:50:00.000' AS DateTime), NULL, CAST(N'2025-03-07T19:47:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (247, N'102', CAST(N'2025-03-10T16:48:00.0000000' AS DateTime2), CAST(N'2025-03-10T20:51:00.000' AS DateTime), NULL, CAST(N'2025-03-07T16:52:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (248, N'103', CAST(N'2025-03-10T16:48:00.0000000' AS DateTime2), CAST(N'2025-03-10T07:51:00.000' AS DateTime), NULL, CAST(N'2025-03-07T18:48:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (249, N'101', CAST(N'2025-03-09T16:49:00.0000000' AS DateTime2), CAST(N'2025-03-09T09:52:00.000' AS DateTime), NULL, CAST(N'2025-03-07T19:49:00.000' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (65, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T08:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (66, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (67, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (68, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T12:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (69, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T13:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (70, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T15:10:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (71, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T15:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (72, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T17:25:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (73, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T17:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (74, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T18:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (75, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T19:55:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (76, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (77, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:15:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (78, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:15:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (79, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:15:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (80, N'101', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:40:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (81, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T09:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (82, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:26:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (83, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T11:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (84, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T13:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (85, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T14:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (86, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T15:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (87, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T16:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (88, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T17:36:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (89, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T18:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (90, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T19:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (91, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T20:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (92, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:26:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (93, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:26:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (94, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:26:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (95, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:26:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (96, N'102', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:51:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (97, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T09:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (98, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:41:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (99, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T11:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (100, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T13:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (101, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T14:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (102, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T15:36:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (103, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T16:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (104, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T17:51:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (105, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T18:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (106, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T19:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (107, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T20:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (108, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:41:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (109, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:41:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (110, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:41:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (111, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:41:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (112, N'102', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T11:06:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (113, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T09:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (114, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:36:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (115, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T11:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (116, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T13:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (117, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T14:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (118, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T15:31:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (119, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T16:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (120, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T17:46:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (121, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T18:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (122, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T19:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (123, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T20:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (124, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:36:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (125, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:36:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (126, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:36:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (127, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:36:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (128, N'102', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T11:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (129, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T09:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (130, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:31:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (131, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T11:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (132, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T13:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (133, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T14:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (134, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T15:26:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (135, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T16:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (136, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T17:41:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (137, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T18:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (138, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T19:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (139, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T20:11:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (140, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:31:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (141, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:31:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (142, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:31:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (143, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:31:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (144, N'102', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:56:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (145, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T09:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (146, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (147, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T11:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (148, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T13:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (149, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T14:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (150, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T15:16:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (151, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T16:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (152, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T17:31:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (153, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T18:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (154, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T19:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (155, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T20:01:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (156, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (157, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:21:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (158, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:21:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (159, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:21:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (160, N'102', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:46:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (161, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T09:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (162, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:29:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (163, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T11:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (164, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T13:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (165, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T14:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (166, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T15:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (167, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T16:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (168, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T17:39:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (169, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T18:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (170, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T19:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (171, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T20:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (172, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:29:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (173, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:29:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (174, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:29:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (175, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:29:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (176, N'103', CAST(N'2025-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-07T10:54:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (177, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T09:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (178, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:44:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (179, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T11:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (180, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T13:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (181, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T14:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (182, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T15:39:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (183, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T16:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (184, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T17:54:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (185, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T18:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (186, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T19:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (187, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T20:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (188, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:44:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (189, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:44:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (190, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:44:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (191, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T10:44:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (192, N'103', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-08T11:09:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (193, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T09:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (194, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:39:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (195, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T11:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (196, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T13:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (197, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T14:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (198, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T15:34:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (199, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T16:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (200, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T17:49:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (201, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T18:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (202, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T19:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (203, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T20:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (204, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:39:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (205, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:39:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (206, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:39:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (207, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T10:39:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (208, N'103', CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T11:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (209, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T09:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (210, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:34:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (211, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T11:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (212, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T13:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (213, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T14:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (214, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T15:29:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (215, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T16:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (216, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T17:44:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (217, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T18:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (218, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T19:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (219, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T20:14:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (220, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:34:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (221, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:34:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (222, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:34:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (223, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:34:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (224, N'103', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T10:59:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (225, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T09:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (226, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (227, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T11:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (228, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T13:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (229, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T14:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (230, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T15:19:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (231, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T16:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (232, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T17:34:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (233, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T18:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (234, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T19:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (235, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T20:04:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:27:04.553' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (236, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (237, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:24:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (238, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:24:01.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (239, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:24:02.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
INSERT [dbo].[EmployeePunches] ([Id], [EmployeeId], [Date], [PunchTime], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (240, N'103', CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T10:49:00.000' AS DateTime), NULL, CAST(N'2025-03-07T11:30:15.037' AS DateTime), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[EmployeePunches] OFF
GO
SET IDENTITY_INSERT [dbo].[MaxPunch] ON 
GO
INSERT [dbo].[MaxPunch] ([Id], [MaxPunchRange], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, 5, N'101', CAST(N'2025-03-07T12:22:59.840' AS DateTime), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[MaxPunch] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/7/2025 4:55:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[EmployeePunches] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeePunches] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MaxPunch] ADD  DEFAULT ((5)) FOR [MaxPunchRange]
GO
ALTER TABLE [dbo].[MaxPunch] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MaxPunch] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[EmployeePunches]  WITH CHECK ADD  CONSTRAINT [FK_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeePunches] CHECK CONSTRAINT [FK_Employee]
GO

/****** Object:  StoredProcedure [dbo].[SP_EmployeeTimeCard]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---- EXEC SP_EmployeeTimeCard @EmployeeID = '101', @Date = '2025-03-07';

CREATE PROC [dbo].[SP_EmployeeTimeCard](
    @EmployeeID [nvarchar](20),
	@Date datetime2 )
AS
BEGIN

Declare @MaxPunchRange [int]=(Select MaxPunchRange From MaxPunch Where Id=1);

    -- Filter punches for the given EmployeeID and Date
    WITH FilteredPunches AS (
        SELECT 
            Id,
            EmployeeID,
            [Date],
            PunchTime,
            LAG(PunchTime) OVER (PARTITION BY EmployeeID ORDER BY PunchTime) AS PreviousPunch
        FROM EmployeePunches
        WHERE EmployeeID = @EmployeeID AND CAST([Date] AS DATE) = CAST(@Date AS DATE)
		--WHERE EmployeeID = '101' AND CAST([Date] AS DATE) = CAST('2025-03-07' AS DATE)
    ),
    DistinctPunches AS (
        SELECT 
            Id,
            EmployeeID,
            [Date],
            PunchTime
        FROM FilteredPunches
        WHERE 
            PreviousPunch IS NULL -- First punch for the employee
            OR DATEDIFF(SECOND, PreviousPunch, PunchTime) > @MaxPunchRange -- Max Punch range check Within 5 seconds
    )
    -- insert the distinct punches into a temporary table
    SELECT * INTO #DistinctPunches
    FROM DistinctPunches
    ORDER BY EmployeeID, PunchTime;

	--Select * from #DistinctPunches;

    -- Pair consecutive punches to calculate intervals
    WITH PairedPunches AS (
        SELECT 
            EmployeeID, [Date],
            PunchTime AS CheckInTime,
            LEAD(PunchTime) OVER (PARTITION BY EmployeeID ORDER BY PunchTime) AS CheckOutTime
        FROM #DistinctPunches
    ),
	---select * from PairedPunches
    Calculations AS (
        SELECT 
            EmployeeID, [Date],
            CheckInTime,
            CheckOutTime,
            DATEDIFF(MINUTE, CheckInTime, CheckOutTime) AS IntervalMinutes,
            CASE 
                WHEN ROW_NUMBER() OVER (PARTITION BY EmployeeID ORDER BY CheckInTime) = 1 THEN 'Office' -- Assume first punch is entering office
                ELSE 
                    CASE 
                        WHEN (ROW_NUMBER() OVER (PARTITION BY EmployeeID ORDER BY CheckInTime)) % 2 = 1 THEN 'Office'
                        ELSE 'OutOfOffice'
                    END
            END AS IntervalType
        FROM PairedPunches
        WHERE CheckOutTime IS NOT NULL
    )   
	---select * from Calculations
    SELECT 
        emp.EmployeeID, emp.[Name], FORMAT([Date],'yyyy-MMM-dd') AS [Date],
        CheckInTime AS InTime,
        CheckOutTime AS OutTime,
        CASE WHEN IntervalType = 'Office' THEN IntervalMinutes ELSE 0 END AS WorkingMinutes,
        CASE WHEN IntervalType = 'OutOfOffice' THEN IntervalMinutes ELSE 0 END AS OutOfOfficeMinutes
    FROM Calculations cal
	Join Employee emp on emp.EmployeeID=cal.EmployeeID
    ORDER BY EmployeeID, InTime;



    
    DROP TABLE #DistinctPunches;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployee]    Script Date: 3/7/2025 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[SP_GetEmployee]
AS
Begin
Select EmployeeId, concat(EmployeeId,' - ',Name)Name from [dbo].[Employee] where isDeleted=0;
END
GO
USE [master]
GO
ALTER DATABASE [TestHR] SET  READ_WRITE 
GO
