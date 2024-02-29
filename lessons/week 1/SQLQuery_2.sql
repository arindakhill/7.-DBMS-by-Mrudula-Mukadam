USE [master]
GO

CREATE DATABASE [DreamHome]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DreamHome', FILENAME = N'/var/opt/mssql/data/DreamHome.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DreamHome_log', FILENAME = N'/var/opt/mssql/data/DreamHome_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DreamHome] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DreamHome].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DreamHome] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DreamHome] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DreamHome] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DreamHome] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DreamHome] SET ARITHABORT OFF 
GO
ALTER DATABASE [DreamHome] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DreamHome] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DreamHome] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DreamHome] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DreamHome] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DreamHome] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DreamHome] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DreamHome] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DreamHome] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DreamHome] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DreamHome] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DreamHome] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DreamHome] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DreamHome] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DreamHome] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DreamHome] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DreamHome] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DreamHome] SET RECOVERY FULL 
GO
ALTER DATABASE [DreamHome] SET  MULTI_USER 
GO
ALTER DATABASE [DreamHome] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DreamHome] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DreamHome] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DreamHome] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DreamHome] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DreamHome', N'ON'
GO
ALTER DATABASE [DreamHome] SET QUERY_STORE = OFF
GO
USE [DreamHome]
GO
/****** Object:  Table [dbo].[Branch]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[branchNo] [varchar](10) NOT NULL,
	[street] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[postcode] [varchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[branchNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[clientNo] [varchar](10) NOT NULL,
	[fName] [varchar](50) NULL,
	[lName] [varchar](50) NULL,
	[telNo] [varchar](50) NULL,
	[prefType] [varchar](10) NULL,
	[maxRent] [float] NULL,
	[eMail] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyForRent]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyForRent](
	[propertyNo] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[postcode] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[rooms] [int] NULL,
	[rent] [int] NULL,
	[ownerNo] [varchar](50) NULL,
	[staffNo] [varchar](50) NULL,
	[branchNo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyForRent1]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyForRent1](
	[propertyNo] [char](4) NOT NULL,
	[city] [varchar](30) NOT NULL,
	[pType] [varchar](10) NOT NULL,
	[rent] [float] NOT NULL,
	[staffNo] [varchar](50) NULL,
	[branchNo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[propertyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyForRent2]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyForRent2](
	[propertyNo] [char](4) NOT NULL,
	[city] [varchar](30) NOT NULL,
	[pType] [varchar](10) NOT NULL,
	[rent] [float] NOT NULL,
	[staffNo] [varchar](50) NULL,
	[branchNo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[propertyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffNo] [varchar](50) NOT NULL,
	[fName] [varchar](50) NULL,
	[lName] [varchar](50) NULL,
	[position] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[DOB] [smalldatetime] NULL,
	[salary] [float] NULL,
	[branchNo] [varchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[staffNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viewing]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viewing](
	[clientNo] [varchar](50) NULL,
	[propertyNo] [varchar](50) NULL,
	[viewDate] [smalldatetime] NULL,
	[comment] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Branch] ([branchNo], [street], [city], [postcode]) VALUES (N'B002', N'56 Clover Dr', N'London', N'NW10 6EU')
GO
INSERT [dbo].[Branch] ([branchNo], [street], [city], [postcode]) VALUES (N'B003', N'163 Main St', N'Glasgow', N'G11 9QX')
GO
INSERT [dbo].[Branch] ([branchNo], [street], [city], [postcode]) VALUES (N'B004', N'32 Manse Rd', N'Bristol', N'BS99 1NZ')
GO
INSERT [dbo].[Branch] ([branchNo], [street], [city], [postcode]) VALUES (N'B005', N'22 Deer Rd', N'London', N'SW1 4EH')
GO
INSERT [dbo].[Branch] ([branchNo], [street], [city], [postcode]) VALUES (N'B007', N'16 Argyll St', N'Aberdeen', N'AB2 3SU')
GO
INSERT [dbo].[Client] ([clientNo], [fName], [lName], [telNo], [prefType], [maxRent], [eMail]) VALUES (N'CR76', N'John', N'Kay', N'0207-774-5632', N'Flat', 425, N'john.kay@gmail.com')
GO
INSERT [dbo].[Client] ([clientNo], [fName], [lName], [telNo], [prefType], [maxRent], [eMail]) VALUES (N'CR56', N'Aline', N'Stewart', N'0141-848-1825', N'Flat', 350, N'astewart@hotmail.com')
GO
INSERT [dbo].[Client] ([clientNo], [fName], [lName], [telNo], [prefType], [maxRent], [eMail]) VALUES (N'CR74', N'Mike', N'Ritchie', N'01475-392178', N'House', 750, N'mritchie01@yahoo.co.uk')
GO
INSERT [dbo].[Client] ([clientNo], [fName], [lName], [telNo], [prefType], [maxRent], [eMail]) VALUES (N'CR62', N'Mary', N'Tregear', N'01224-196720', N'Flat', 600, N'maryt@hotmail.co.uk')
GO
INSERT [dbo].[PropertyForRent] ([propertyNo], [street], [city], [postcode], [type], [rooms], [rent], [ownerNo], [staffNo], [branchNo]) VALUES (N'PA14', N'16 Holhead', N'Aberdeen', N'AB7 5SU', N'House', 6, 650, N'CO46', N'SA9', N'B007')
GO
INSERT [dbo].[PropertyForRent] ([propertyNo], [street], [city], [postcode], [type], [rooms], [rent], [ownerNo], [staffNo], [branchNo]) VALUES (N'PL94', N'6 Argyll St', N'London', N'NW2', N'Flat', 4, 400, N'CO87', N'SL41', N'B005')
GO
INSERT [dbo].[PropertyForRent] ([propertyNo], [street], [city], [postcode], [type], [rooms], [rent], [ownerNo], [staffNo], [branchNo]) VALUES (N'PG4', N'6 Lawrence St', N'Glasgow', N'G11 9QX', N'Flat', 3, 350, N'CO40', NULL, N'B003')
GO
INSERT [dbo].[PropertyForRent] ([propertyNo], [street], [city], [postcode], [type], [rooms], [rent], [ownerNo], [staffNo], [branchNo]) VALUES (N'PG36', N'2 Manor Rd', N'Glasgow', N'G32 4QX', N'Flat', 3, 375, N'CO93', N'SG37', N'B003')
GO
INSERT [dbo].[PropertyForRent] ([propertyNo], [street], [city], [postcode], [type], [rooms], [rent], [ownerNo], [staffNo], [branchNo]) VALUES (N'PG21', N'18 Dale Rd', N'Glasgow', N'G12', N'House', 5, 600, N'CO87', N'SG37', N'B003')
GO
INSERT [dbo].[PropertyForRent] ([propertyNo], [street], [city], [postcode], [type], [rooms], [rent], [ownerNo], [staffNo], [branchNo]) VALUES (N'PG16', N'5 Novar Dr', N'Glasgow', N'G12 9AX', N'Flat', 4, 450, N'CO93', N'SG14', N'B003')
GO
INSERT [dbo].[Staff] ([staffNo], [fName], [lName], [position], [sex], [DOB], [salary], [branchNo]) VALUES (N'SA9', N'Mary', N'Howe', N'Assistant', N'F', CAST(N'1970-02-19T00:00:00' AS SmallDateTime), 9200, N'B007')
GO
INSERT [dbo].[Staff] ([staffNo], [fName], [lName], [position], [sex], [DOB], [salary], [branchNo]) VALUES (N'SG14', N'David', N'Ford', N'Supervisor', N'M', CAST(N'1958-03-24T00:00:00' AS SmallDateTime), 18200, N'B003')
GO
INSERT [dbo].[Staff] ([staffNo], [fName], [lName], [position], [sex], [DOB], [salary], [branchNo]) VALUES (N'SG37', N'Ann', N'Beeach', N'Assistant', N'F', CAST(N'1960-11-10T00:00:00' AS SmallDateTime), 18200, N'B003')
GO
INSERT [dbo].[Staff] ([staffNo], [fName], [lName], [position], [sex], [DOB], [salary], [branchNo]) VALUES (N'SG5', N'Susan', N'Brand', N'Manager', N'F', CAST(N'1940-06-03T00:00:00' AS SmallDateTime), 24200, N'B003')
GO
INSERT [dbo].[Staff] ([staffNo], [fName], [lName], [position], [sex], [DOB], [salary], [branchNo]) VALUES (N'SL21', N'John', N'White', N'Manager', N'M', CAST(N'1945-10-01T00:00:00' AS SmallDateTime), 30200, N'B005')
GO
INSERT [dbo].[Staff] ([staffNo], [fName], [lName], [position], [sex], [DOB], [salary], [branchNo]) VALUES (N'SL41', N'Julie', N'Lee', N'Assistant', N'F', CAST(N'1965-06-13T00:00:00' AS SmallDateTime), 9200, N'B005')
GO
INSERT [dbo].[Viewing] ([clientNo], [propertyNo], [viewDate], [comment]) VALUES (N'CR56', N'PA14', CAST(N'2013-05-24T00:00:00' AS SmallDateTime), N'too small')
GO
INSERT [dbo].[Viewing] ([clientNo], [propertyNo], [viewDate], [comment]) VALUES (N'CR76', N'PG4', CAST(N'2013-04-20T00:00:00' AS SmallDateTime), N'too remote')
GO
INSERT [dbo].[Viewing] ([clientNo], [propertyNo], [viewDate], [comment]) VALUES (N'CR56', N'PG4', CAST(N'2013-05-26T00:00:00' AS SmallDateTime), NULL)
GO
INSERT [dbo].[Viewing] ([clientNo], [propertyNo], [viewDate], [comment]) VALUES (N'CR62', N'PA14', CAST(N'2013-05-14T00:00:00' AS SmallDateTime), N'no dining room')
GO
INSERT [dbo].[Viewing] ([clientNo], [propertyNo], [viewDate], [comment]) VALUES (N'CR56', N'PG36', CAST(N'2013-04-28T00:00:00' AS SmallDateTime), NULL)
GO
ALTER TABLE [dbo].[PropertyForRent1] ADD  DEFAULT ('Flat') FOR [pType]
GO
ALTER TABLE [dbo].[PropertyForRent1] ADD  DEFAULT ((600)) FOR [rent]
GO
ALTER TABLE [dbo].[PropertyForRent2] ADD  DEFAULT ('Flat') FOR [pType]
GO
ALTER TABLE [dbo].[PropertyForRent2] ADD  DEFAULT ((600)) FOR [rent]
GO
ALTER TABLE [dbo].[PropertyForRent1]  WITH CHECK ADD FOREIGN KEY([branchNo])
REFERENCES [dbo].[Branch] ([branchNo])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PropertyForRent1]  WITH CHECK ADD FOREIGN KEY([staffNo])
REFERENCES [dbo].[Staff] ([staffNo])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[PropertyForRent2]  WITH CHECK ADD FOREIGN KEY([branchNo])
REFERENCES [dbo].[Branch] ([branchNo])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PropertyForRent2]  WITH CHECK ADD FOREIGN KEY([staffNo])
REFERENCES [dbo].[Staff] ([staffNo])
ON UPDATE CASCADE
ON DELETE SET NULL
GO

USE [master]
GO
ALTER DATABASE [DreamHome] SET  READ_WRITE 
GO