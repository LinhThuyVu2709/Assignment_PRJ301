USE [master]
GO
/****** Object:  Database [BakeOfArt]    Script Date: 03/24/2022 10:33:13 ******/
CREATE DATABASE [BakeOfArt] ON  PRIMARY 
( NAME = N'BakeOfArt', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BakeOfArt.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BakeOfArt_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BakeOfArt_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BakeOfArt] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BakeOfArt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BakeOfArt] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BakeOfArt] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BakeOfArt] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BakeOfArt] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BakeOfArt] SET ARITHABORT OFF
GO
ALTER DATABASE [BakeOfArt] SET AUTO_CLOSE ON
GO
ALTER DATABASE [BakeOfArt] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BakeOfArt] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BakeOfArt] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BakeOfArt] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BakeOfArt] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BakeOfArt] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BakeOfArt] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BakeOfArt] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BakeOfArt] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BakeOfArt] SET  ENABLE_BROKER
GO
ALTER DATABASE [BakeOfArt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BakeOfArt] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BakeOfArt] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BakeOfArt] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BakeOfArt] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BakeOfArt] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BakeOfArt] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BakeOfArt] SET  READ_WRITE
GO
ALTER DATABASE [BakeOfArt] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BakeOfArt] SET  MULTI_USER
GO
ALTER DATABASE [BakeOfArt] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BakeOfArt] SET DB_CHAINING OFF
GO
USE [BakeOfArt]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[role] [nvarchar](255) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sub_Category]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sub_Category](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[cat_id] [int] NULL,
 CONSTRAINT [PK_Sub_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] NOT NULL,
	[name] [varchar](200) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [varchar](500) NULL,
	[imageURL] [varchar](100) NULL,
	[created_time] [datetime] NULL,
	[sub_id] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/24/2022 10:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[product_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Orders_created_date]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  ForeignKey [FK__Sub_Categ__cat_i__0519C6AF]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[Sub_Category]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[Category] ([id])
GO
/****** Object:  ForeignKey [FK__Orders__account___2F10007B]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
/****** Object:  ForeignKey [FK__Orders__shipping__300424B4]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
/****** Object:  ForeignKey [FK_Products_Sub_Category]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sub_Category] FOREIGN KEY([sub_id])
REFERENCES [dbo].[Sub_Category] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sub_Category]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Orders]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Products]    Script Date: 03/24/2022 10:33:14 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products]
GO
