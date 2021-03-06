USE [master]
GO
/****** Object:  Database [BakeOfArt]    Script Date: 05/21/2022 10:32:13 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 05/21/2022 10:32:14 ******/
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
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Bakeware')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Ingredient')
/****** Object:  Table [dbo].[Account]    Script Date: 05/21/2022 10:32:14 ******/
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
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (1, N'user', N'123456', N'User', N'Quang Ninh', N'user@gmail.com', N'01234567', N'USER')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (2, N'admin', N'123456', N'Admin', N'Ha Noi', N'admin@gmail.com', N'0829899484', N'ADMIN')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (3, N'linhthuyvu', N'27092002', N'Linh Thuy', N'Quang Ninh', N'acb@gmail.com', N'123', N'USER')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (4, N'marukochan', N'123456', N'Maruko', N'Ha Noi', N'maruko@gmail.com', N'09022123', N'USER')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Shipping]    Script Date: 05/21/2022 10:32:14 ******/
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
SET IDENTITY_INSERT [dbo].[Shipping] ON
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'ABC', N'0123', N'Quang Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'Nguyen Van A', N'088888888', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'Linh Thùy Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'Maruko', N'0904496419', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (13, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (14, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (15, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (16, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (17, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (18, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (20, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (21, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (22, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (23, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (24, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (25, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (26, N'Linh Vu', N'0829899484', N'Yen Nghia, Ha Dong, CT7G, KDT Duong Noi 2')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (27, N'Linh Vũ', N'0829899484', N'KTX nhà ông bà, Cụm 4, thôn 8, mặt đường lộ Cu Ba, QL21A, Thạch Hoà, Thạch Thất Hanoi, Vietnam')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
/****** Object:  Table [dbo].[Sub_Category]    Script Date: 05/21/2022 10:32:14 ******/
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
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (1, N'Silicone Bakeware', 1)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (2, N'Nonstick & Stin Bakeware', 1)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (3, N'Paper Bakeware', 1)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (4, N'Baking Tools', 1)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (5, N'Color Dusts & Flavours', 2)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (6, N'Baking Ingredients', 2)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (7, N'Chocolate Ingredients', 2)
INSERT [dbo].[Sub_Category] ([id], [name], [cat_id]) VALUES (8, N'Fondants & Gumpaste', 2)
/****** Object:  Table [dbo].[Orders]    Script Date: 05/21/2022 10:32:14 ******/
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
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (3, 1, 933, N'It''s ok', CAST(0xB2430B00 AS Date), 3)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (4, 1, 1415, N'Be careful', CAST(0xB2430B00 AS Date), 4)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (5, 1, 426, N'Please be quick', CAST(0xB2430B00 AS Date), 5)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (6, 1, 590, N'Be careful ok?', CAST(0xB4430B00 AS Date), 6)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (8, 4, 213, N'It''s ok', CAST(0xB5430B00 AS Date), 8)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (9, 4, 803, N'Be careful', CAST(0xB5430B00 AS Date), 9)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (10, 4, 508, N'Be careful', CAST(0xB6430B00 AS Date), 10)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (11, 2, 14750, N'Be careful', CAST(0xB6430B00 AS Date), 11)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (12, 2, 295, N'It''s ok', CAST(0xB6430B00 AS Date), 12)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (13, 2, 213, N'Be careful', CAST(0xB6430B00 AS Date), 13)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (14, 2, 7375, N'Be careful', CAST(0xB6430B00 AS Date), 14)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (15, 2, 508, N'Please be quick', CAST(0xB6430B00 AS Date), 15)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (16, 2, 508, N'Be careful', CAST(0xB6430B00 AS Date), 16)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (17, 2, 1180, N'Be careful', CAST(0xB6430B00 AS Date), 17)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (20, 2, 7200, N'Be careful', CAST(0xB6430B00 AS Date), 20)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (21, 2, 426, N'It''s ok', CAST(0xB6430B00 AS Date), 21)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (22, 2, 1210, N'It''s ok', CAST(0xBA430B00 AS Date), 22)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (23, 2, 213, N'Be careful', CAST(0xBA430B00 AS Date), 23)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (24, 2, 525, N'Please be quick', CAST(0xBA430B00 AS Date), 24)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (25, 2, 5670, N'Please be quick', CAST(0xBA430B00 AS Date), 25)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (26, 2, 590, N'Please be quick', CAST(0xBB430B00 AS Date), 26)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (27, 2, 508, N'Be careful', CAST(0xBB430B00 AS Date), 27)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (35, 2, 123, N'VUTHUYLINH', CAST(0x8A430B00 AS Date), 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 05/21/2022 10:32:14 ******/
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
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (1, N'Pinata Cake Silicon Mould 3D Diamond Heart', 1, 2000, N'Pinata Cakes, the new favourite and buzzing trend in the cake world. Try it for yourself and surprise your loved ones. The flexible silicone material of the chocolate mould allows for quick and easy removal, retaining the original shape.', N'img/product/bakeware/1.jpeg', CAST(0x0000AE3B00000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (2, N'Cakesicle Mould 4 cavities', 15, 295, N'Make cute cakesicles for your little ones with this silicon bakeware set.', N'img/product/bakeware/2.jpg', CAST(0x0000ACE200000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (3, N'Silicone Bread Loaf Mould', 46, 213, N'This silicon bread loaf mold is the perfect solution for baking bread, cakes, meat loaf or other baked goods that require the standard rectangular shape. The silicon material allows even baking and browning of quick breads, loaves or pound cakes. ItÃ?Â¢??s non-stick patterned base ensures easy release. Go ahead and bake your own yummy, fresh breads.', N'img/product/bakeware/3.jpg', CAST(0x0000AD3F00000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (4, N'Silicone Chocolate Mould Heartsy 36 cavities', 103, 720, N'This mould is just perfect for making chocolates. The flexible silicone material of the baking mould allows for quick and easy removal, retaining the original shape.', N'img/product/bakeware/4.jpg', CAST(0x0000AE3B00000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (5, N'Silicon Chocolate Mould Heart', 10, 90, N'They are perfect for making chocolates. The flexible silicone material of the baking mould allows for quick and easy removal, retaining the original shape.', N'img/product/bakeware/5.jpg', CAST(0x0000ADAD00000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (6, N'Silicone Baking Mat – Rolling Dough Pastry Sheet -Silicone Fondant Liner Pad Mat', 5, 305, N'Measurements are marked clearly and these circular markings  make it ideal for preparing perfectly circular pie, pastry or a pizza base.', N'img/product/bakeware/6.jpg', CAST(0x0000AD3100000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (7, N'Silicone Baking Mat Baking Tray Liner 40cmX30cm', 18, 578, N'The mat is made of flexible silicone, which is nonstick, easy to clean, reusable and nonabsorbent. It has a gauze like pattern with bold silicon borders.', N'img/product/bakeware/7.jpg', CAST(0x0000ACEC00000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (8, N'Silicone Basting Brush – Transparent Handle – Mini', 10, 25, N'Basting brushes have become quite a staple now in Indian kitchens.This brush can be used to baste grilled vegetables or meats with dressing, baste glaze or syrup while cooking. The brush has silicone bristles and a good quality plastic handle with firm grip.', N'img/product/bakeware/8.jpg', CAST(0x0000AE2D00000000 AS DateTime), 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (9, N'Meyer Bakemaster Non-Stick 20cm Springform Cake Pan', 5, 1575, N'Revolutionary Honeycomb pattern base for exceptional non-stick performance. With this technology ensure better air flow and experience even baking and browning', N'img/product/bakeware/9.jpg', CAST(0x0000AD1300000000 AS DateTime), 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (10, N'Bread Loaf Pan – 13.5" X 5.5"', 17, 239, N'This teflon coated loaf pan is the perfect solution for baking bread, cakes, meat loaf or other baked goods that require the standard rectangular shape.', N'img/product/bakeware/10.jpg', CAST(0x0000AE4500000000 AS DateTime), 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (11, N'Nonstick Cake Mould – Heart Shape – Size 1', 16, 189, N'A romantic occasion round the corner, planning an anniversary party, or is it Valentine’s special?', N'img/product/bakeware/11.jpg', CAST(0x0000ADFF00000000 AS DateTime), 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (12, N'Nonstick Cupcake or Muffin Tray 6 Cups', 100, 289, N'The mould is made of aluminum alloy with non-stick coating that provides quick and even baking', N'img/product/bakeware/12.jpg', CAST(0x0000AD7100000000 AS DateTime), 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (13, N'Meyer Bakemaster Non-Stick 4-Cup 2-Tier Square Cake Pan', 4, 1325, N'Revolutionary Honeycomb pattern base for exceptional non-stick performance. With this technology ensure better air flow and experience even baking and browning', N'img/product/bakeware/13.png', CAST(0x0000ACAB00000000 AS DateTime), 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (14, N'Meyer Bakemaster Non-Stick 12-Cup Mini Muffin Pan', 5, 1210, N'Oven safe to 240 degree Celsius & Dishwasher safe', N'img/product/bakeware/14.jpg', CAST(0x0000ACAB00000000 AS DateTime), 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (15, N'Cupcake Paper Liners – Red and White Polka – 10.5cm – 100pcs', 10, 73, N'Standard Size. Base= 4.5cm, Slant Height = 3cm (Approximate measurements)', N'img/product/bakeware/15.jpg', CAST(0x0000AE2D00000000 AS DateTime), 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (16, N'Cupcake Paper Liners – Mickey Mouse – 10.5cm – 100 pcs', 13, 73, N'The mickey mouse print are cute indeed and perfect for kids’ party. Add that extra zing to your cake and cupcake display.', N'img/product/bakeware/16.jpg', CAST(0x0000ACDE00000000 AS DateTime), 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (17, N'Paper Baking Mould – Square Tray – 4 X 4 inches – 560pcs', 11, 25.2, N'A free-standing square paper baking mold excellent for baking purposes. Solid brown in color, the mould has a PET-Laminated interior for easy release.', N'img/product/bakeware/17.jpg', CAST(0x0000AD0E00000000 AS DateTime), 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (18, N'Cupcake Paper Liners – Dil Se – 12cm – 100 pcs', 5, 82, N'The heartsy print are cute indeed and perfect for a romantic theme. Add that extra panache to your cake and cupcake display.', N'img/product/bakeware/18.jpg', CAST(0x0000ACDB00000000 AS DateTime), 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (19, N'Cupcake Boxes 6 Cavities – Tangerine Boxed Stripes – 20 pcs', 9, 614, N'Gift Joy in a box. And what a stylish way to do so! Encase your cupcakes in absolute panache.', N'img/product/bakeware/19.jpg', CAST(0x0000AD3600000000 AS DateTime), 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (20, N'KitchenAid – Heavy Duty 6.9 L Bowl Lift Stand Mixer – White', 17, 7095, N'The professional 6.9 L Bowl Lift Stand Mixer is one of the most powerful and robust KitchenAid Stand Mixer in its class.', N'img/product/bakeware/20.jpg', CAST(0x0000AE0100000000 AS DateTime), 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (21, N'KitchenAid – Artisan Mini Stand Mixer – Dried Rose – 3.3L', 17, 3905, N'Mini footprint mighty power, wherein the mini stand mixer is 20% smaller and 25% lighter; It can make upto 5 dozen cookies in it’s 3.3 L stand mixer bowl compared to full sized tilt head stand mixer', N'img/product/bakeware/21.jpg', CAST(0x0000AE0100000000 AS DateTime), 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (22, N'Baking Combo Set – Type 6', 17, 224, N'Icing on the cake! Frosting and icing decorations on cakes, take cake decor to a whole new level. This convenient frosting tool kit makes decoration a cakewalk.', N'img/product/bakeware/22.jpg', CAST(0x0000AE0100000000 AS DateTime), 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (23, N'Croissant Roller Cutter – 25cm', 17, 2223, N'Croissant roller cutter; an efficient & effective way to manually cut dough in the shape of a croissant.', N'img/product/bakeware/23.jpg', CAST(0x0000AE0100000000 AS DateTime), 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (24, N'Pizza Cutter – 2.75 inches dia', 17, 91, N'A staple tool, especially if you love pizzas and pies. ', N'img/product/bakeware/24.jpg', CAST(0x0000AE0100000000 AS DateTime), 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (25, N'Chefmaster – Gel Color – Royal Blue – 20g', 17, 175, N'Chefmaster’s Liqua-Gel is a premium food coloring or food dye specially made for baking and cake decoration. Liqua-Gel food colorings take on the form of a highly concentrated and vibrant color gel that mix easily and provide consistent tones without altering the texture of the product.', N'img/product/ingredient/25.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (26, N'Chefmaster – Gel Color – Buckeye Brown – 20g', 16, 175, N'Chefmaster’s Liqua-Gel is a premium food coloring or food dye specially made for baking and cake decoration. Liqua-Gel food colorings take on the form of a highly concentrated and vibrant color gel that mix easily and provide consistent tones without altering the texture of the product.', N'img/product/ingredient/26.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (27, N'Chefmaster – Gel Color – Leaf Green – 20g', 16, 175, N'Chefmaster’s Liqua-Gel is a premium food coloring or food dye specially made for baking and cake decoration. Liqua-Gel food colorings take on the form of a highly concentrated and vibrant color gel that mix easily and provide consistent tones without altering the texture of the product.', N'img/product/ingredient/27.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (28, N'Chefmaster – Gel Color – Golden Yellow – 20g', 16, 175, N'Chefmaster’s Liqua-Gel is a premium food coloring or food dye specially made for baking and cake decoration. Liqua-Gel food colorings take on the form of a highly concentrated and vibrant color gel that mix easily and provide consistent tones without altering the texture of the product.', N'img/product/ingredient/28.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (31, N'Chefmaster – Gel Color – Rose Pink – 20g', 17, 175, N'Chefmaster’s Liqua-Gel is a premium food coloring or food dye specially made for baking and cake decoration. Liqua-Gel food colorings take on the form of a highly concentrated and vibrant color gel that mix easily and provide consistent tones without altering the texture of the product.', N'img/product/ingredient/31.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (32, N'Cream Cheese – Fab Premium Food Essence or Oil Soluble Flavour', 17, 375, N'Highly concentrated food flavor or essence with perfect taste and smell. The strong aroma of the essence re-affirms the quality of this product.', N'img/product/ingredient/32.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (33, N'Alphonso Mango – Fab Premium Food Essence or Oil Soluble Flavour', 17, 375, N'Highly concentrated food flavor or essence with perfect taste and smell. The strong aroma of the essence re-affirms the quality of this product.', N'img/product/ingredient/33.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (34, N'Orange Rind – Fab Premium Food Essence or Oil Soluble Flavour', 17, 375, N'Highly concentrated food flavor or essence with perfect taste and smell. The strong aroma of the essence re-affirms the quality of this product.', N'img/product/ingredient/34.jpg', CAST(0x0000AE0100000000 AS DateTime), 5)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (35, N'Weissmill – Agar Agar Powder – 30g', 20, 114, N'Packet Contains 30g of Agar Agar, China Grass Powder.', N'img/product/ingredient/35.jpg', CAST(0x0000ADAC00000000 AS DateTime), 6)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (36, N'Weissmill – Seasoning Herbs – Rosemary – 250g', 18, 128, N'Brand: Weissmill – Premium Grade Baking ingredients.', N'img/product/ingredient/36.jpg', CAST(0x0000ACE200000000 AS DateTime), 6)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (37, N'Weissmill – Corn Starch – 200g', 16, 59, N'Usage: As per the recipe requirement.Used in baking to increase the crumb strength and the tenderness.', N'img/product/ingredient/37.jpg', CAST(0x0000AD3F00000000 AS DateTime), 6)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (38, N'Golden Crown – Penne Rigate – 500g', 16, 65, N'Pasta type: Penne Rigate', N'img/product/ingredient/38.jpg', CAST(0x0000AE3B00000000 AS DateTime), 6)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (39, N'BakersWhip Meringue Powder – Eggless – 450g', 6, 181, N'The Meringue Powder Mix makes the most perefect meringues and speciality icings. It is an ideal substitute in any recipe calling for egg white meringue.', N'img/product/ingredient/39.jpg', CAST(0x0000ADAD00000000 AS DateTime), 6)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (40, N'Muffin Premix – 750g', 10, 248, N'Muffin Premix', N'img/product/ingredient/40.jpg', CAST(0x0000AD3100000000 AS DateTime), 6)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (41, N'Morde White Compound Slab – 400 grams', 18, 186, N'PLEASE NOTE: DUE TO THE CURRENT WEATHER CONDITIONS, THE COMPOUND SLABS MAY MELT, WHILE IN TRANSIT. PLEASE REFRIGERATE BEFORE USE AND ALLOW IT TO SOLIDIFY AND ONLY THEN UNPACK. WE ASSURE YOU THE QUALITY AND TASTE OF THE PRODUCT WOULD REMAIN UNAFFECTED OR UNALTERED.', N'img/product/ingredient/41.jpg', CAST(0x0000ACEC00000000 AS DateTime), 7)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (42, N'Van Houten – Dark Chocolate Slab – 46.5 Percent – 1kg', 10, 454, N'Van Houten Professional 46.5% Chocolate, offering a perfect balance between bitterness & sweetness.', N'img/product/ingredient/42.jpg', CAST(0x0000AE2D00000000 AS DateTime), 7)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (43, N'Denali – Premium Dark Couverture Slab – 400g', 10, 413, N'Denali Dark Compound, Ideal for toppings, coverings, fillings, chocolates and a variety of decorations', N'img/product/ingredient/43.jpg', CAST(0x0000AD3100000000 AS DateTime), 7)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (44, N'Byond – Cocoa Powder – 150g', 10, 238, N'A staple ingredient for baking, desserts, smoothies, hot chocolate and more.', N'img/product/ingredient/44.jpg', CAST(0x0000AD3100000000 AS DateTime), 7)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (45, N'Weissmill – Rice Crispies – 200g', 10, 90, N'Rice crispies are used to enhance chocolates, gourmet-dipped pretzels, barks, clusters, etc.', N'img/product/ingredient/45.jpg', CAST(0x0000AD3100000000 AS DateTime), 7)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (46, N'Bakels Pettinice White Icing Fondant- 1kg', 10, 248, N'Vizyon Sugar paste is a popular choice amongst bakers. It need to be kneaded until it reaches perfect consistency. It is spread with a roller and used for coating of cakes, also to make roses and figurines used for cake decoration.', N'img/product/ingredient/46.jpg', CAST(0x0000ADB000000000 AS DateTime), 8)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (47, N'Vizyon- Red Sugar Paste or Fondant – 1 Kg', 10, 540, N'Premium quality icing(fondant) for cake decorating and moulding. Available across 5 continents and in more than 130 countries Pettinice is trusted all over the world to deliver a professional look to your cake decorating inspiration', N'img/product/ingredient/47.jpg', CAST(0x0000ADB000000000 AS DateTime), 8)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (48, N'Vizyon – Black Sugar Paste or Fondant – 1 Kg', 10, 540, N'Vizyon Sugar paste is a popular choice amongst bakers. It need to be kneaded until it reaches perfect consistency. It is spread with a roller and used for coating of cakes, also to make roses and figurines used for cake decoration.', N'img/product/ingredient/48.jpg', CAST(0x0000ADB000000000 AS DateTime), 8)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (49, N'Vizyon- Orange Sugar Paste or Fondant – 1 Kg', 10, 540, N'Vizyon Sugar paste is a popular choice amongst bakers. It need to be kneaded until it reaches perfect consistency. It is spread with a roller and used for coating of cakes, also to make roses and figurines used for cake decoration.', N'img/product/ingredient/49.jpg', CAST(0x0000ADB000000000 AS DateTime), 8)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [description], [imageURL], [created_time], [sub_id]) VALUES (50, N'Vizyon Pink Sugar Paste or Fondant 1 Kg', 10, 540, N'Vizyon Sugar paste is a popular choice amongst bakers. It need to be kneaded until it reaches perfect consistency. It is spread with a roller and used for coating of cakes, also to make roses and figurines used for cake decoration.', N'img/product/ingredient/50.jpg', CAST(0x0000ADB000000000 AS DateTime), 8)
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/21/2022 10:32:14 ******/
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
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (2, 26, 2)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (2, 27, 1)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (3, 27, 1)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (5, 25, 2)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (6, 25, 1)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (13, 25, 3)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (14, 25, 1)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (26, 24, 1)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (27, 24, 1)
INSERT [dbo].[OrderDetail] ([product_id], [order_id], [quantity]) VALUES (28, 24, 1)
/****** Object:  Default [DF_Orders_created_date]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  ForeignKey [FK__Sub_Categ__cat_i__0519C6AF]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[Sub_Category]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[Category] ([id])
GO
/****** Object:  ForeignKey [FK__Orders__account___2F10007B]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
/****** Object:  ForeignKey [FK__Orders__shipping__300424B4]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
/****** Object:  ForeignKey [FK_Products_Sub_Category]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sub_Category] FOREIGN KEY([sub_id])
REFERENCES [dbo].[Sub_Category] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sub_Category]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Orders]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Products]    Script Date: 05/21/2022 10:32:14 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products]
GO
