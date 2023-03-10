USE [master]
GO
/****** Object:  Database [Web]    Script Date: 11/13/2022 6:13:10 PM ******/
CREATE DATABASE [Web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DUNG\MSSQL\DATA\Web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DUNG\MSSQL\DATA\Web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web] SET RECOVERY FULL 
GO
ALTER DATABASE [Web] SET  MULTI_USER 
GO
ALTER DATABASE [Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Web] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Web] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Web', N'ON'
GO
ALTER DATABASE [Web] SET QUERY_STORE = OFF
GO
USE [Web]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](30) NULL,
	[lastname] [varchar](30) NULL,
	[email] [varchar](250) NULL,
	[phone_number] [varchar](20) NULL,
	[subject_name] [varchar](350) NULL,
	[note] [varchar](1000) NULL,
	[status] [varchar](15) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galery]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[thumbnail] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [int] NULL,
	[num] [int] NULL,
	[total_money] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[fullname] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[phone_number] [varchar](20) NULL,
	[address] [varchar](200) NULL,
	[note] [varchar](1000) NULL,
	[order_date] [datetime] NULL,
	[status] [varchar](15) NULL,
	[total_money] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[title] [varchar](250) NULL,
	[price] [int] NULL,
	[discount] [int] NULL,
	[thumbnail] [varchar](500) NULL,
	[description] [varchar](1000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/13/2022 6:13:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[phone_number] [varchar](20) NULL,
	[address] [varchar](200) NULL,
	[password] [varchar](32) NULL,
	[role_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (12345, N'Electronics')
INSERT [dbo].[Category] ([id], [name]) VALUES (12563, N'Women Fashion')
INSERT [dbo].[Category] ([id], [name]) VALUES (22345, N'Software')
INSERT [dbo].[Category] ([id], [name]) VALUES (22357, N'Home And Kitchen')
INSERT [dbo].[Category] ([id], [name]) VALUES (22365, N'Men Fashion')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (123456789, N'John', N'Smith', N'js@gmail.com', N'0988 234 456', N'Shipper', N'Bad', N'Processed', CAST(N'1900-01-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (333445555, N'Franklin', N'Wong', N'fw@gmail.com', N'0988 412 688', N'Goods', N'Bad', N'Processing', CAST(N'1900-01-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (453453453, N'Joyce', N'English', N'je@gmail.com', N'0988 666 999', N'Goods', N'Bad', N'Processed', CAST(N'1900-01-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (666884444, N'Ramesh', N'Narayan', N'rn@gmail.com', N'0988 888 888', N'Goods', N'Good', N'Processed', CAST(N'1900-04-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (987654321, N'Jennifer', N'Wallace', N'JW@gmail.com', N'0988 666 888', N'Goods', N'Excellent', N'Processed', CAST(N'1900-02-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (987987987, N'Ahmad', N'Jabbar', N'aj@gmail.com', N'0988 123 123', N'Goods', N'Bad', N'Processed', CAST(N'1900-01-26T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([id], [firstname], [lastname], [email], [phone_number], [subject_name], [note], [status], [created_at], [updated_at]) VALUES (999887777, N'Alicia', N'Zelaya', N'az@gmail.com', N'0988 888 888', N'Goods', N'Good', N'Processed', CAST(N'1900-04-02T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[Galery] ON 

INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (1, 316, N'racer02_black_f_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (2, 317, N'roadster_black_large.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (3, 318, N'julianax_r_02_blue_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (4, 319, N'roadster_red_f_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (5, 320, N'julianax_r_02_yellow_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (6, 321, N'frame_yellow_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (7, 322, N'mb_tires_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (8, 323, N'silver_pedal_small.gif')
INSERT [dbo].[Galery] ([id], [product_id], [thumbnail]) VALUES (9, 324, N'fork_small.gif')
SET IDENTITY_INSERT [dbo].[Galery] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1000, 10100, 316, 29, 2, 58)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1001, 10101, 316, 29, 1, 29)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1002, 10101, 317, 45, 1, 45)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1003, 10103, 318, 29, 2, 58)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1004, 10104, 318, 29, 2, 58)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1005, 10105, 319, 21, 1, 21)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1006, 10105, 320, 99, 1, 99)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1007, 10107, 320, 99, 1, 99)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1008, 10108, 316, 29, 1, 29)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1009, 10108, 320, 99, 1, 99)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1010, 10110, 322, 69, 2, 138)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (1011, 10111, 323, 22, 2, 44)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10100, 11000, N'Jon Yang', N'jy@gmail.com', N'0988 222 333', N'Rockhampton', N'Difficult to negotiate with customer. We need more marketing materials', CAST(N'1905-07-07T00:00:00.000' AS DateTime), N'Shipped', 58)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10101, 11022, N'Ethan Zhang', N'ez@gmail.com', N'0988 888 333', N'Bellingham', NULL, CAST(N'1905-07-04T00:00:00.000' AS DateTime), N'Shipped', 74)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10103, 11032, N'Denise Stone', N'ds@gmail.com', N'0988 111 888', N'Melbourne', N'Check on availability.', CAST(N'1905-06-25T00:00:00.000' AS DateTime), N'Shipping', 58)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10104, 123456789, N'John Smith', N'js@gmail.com', N'0988 234 456', N'Warrnambool', NULL, CAST(N'1905-06-18T00:00:00.000' AS DateTime), N'Shipped', 58)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10105, 333445555, N'Franklin Wong', N'fw@gmail.com', N'0988 412 688', N'Warrnambool', N'Can we renegotiate this one?', CAST(N'1905-06-22T00:00:00.000' AS DateTime), N'Shipped', 120)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10107, 453453453, N'Joyce English', N'je@gmail.com', N'0988 666 999', N'Lebanon', N'Order was mistakenly placed. The warehouse noticed the lack of documentation.', CAST(N'1905-07-02T00:00:00.000' AS DateTime), N'Cancelled', 99)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10108, 666884444, N'Ramesh Narayan', N'rn@gmail.com', N'0988 888 888', N'East Brisbane', NULL, CAST(N'1905-07-04T00:00:00.000' AS DateTime), N'Shipped', 128)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10110, 987654321, N'Jennifer Wallace', N'JW@gmail.com', N'0988 666 888', N'Hervey Bay', NULL, CAST(N'1905-06-21T00:00:00.000' AS DateTime), N'Shipped', 138)
INSERT [dbo].[Orders] ([id], [user_id], [fullname], [email], [phone_number], [address], [note], [order_date], [status], [total_money]) VALUES (10111, 987987987, N'Ahmad Jabbar', N'aj@gmail.com', N'0988 123 123', N'North Ryde', N'Customer requested that DHL is used for this shipping', CAST(N'1905-07-05T00:00:00.000' AS DateTime), N'Shipped', 44)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (316, 12345, N'SOAR NCAA True Wireless Earbuds', 29, NULL, N'racer02_black_f_small.gif', N'Portable, Lightweight with premium stereo sound - Bluetooth 5.0 Technology Wirelessly connects to all Bluetooth Enabled Devices such as Smartphones, Tablets and more', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (317, 12345, N'JBL Vibe 200TWS True Wireless Earbuds - Black', 45, 5, N'roadster_black_large.gif', N'JBL Deep Bass Sound: Music just sounds better with JBL. And your day too. Feel the sound with the deep bass powered by the 8mm drivers and add fun to your routine.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (318, 22365, N'Legendary Whitetails Men Buck Camp Flannel Shirt', 29, 10, N'julianax_r_02_blue_small.gif', N'Our original single pocket flannel - The Buck Camp Flannel Shirt is the perfect weight to wear alone or layered over a t-shirt or under a shirt jacket.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (319, 22365, N'Gildan Men Crew T-Shirts, Multipack, Style G1100', 21, NULL, N'roadster_red_f_small.gif', N'Gildan is one of the world largest vertically integrated manufacturers of apparel and socks.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (320, 12563, N'UGG Women Tasman Slipper', 99, 15, N'julianax_r_02_yellow_small.gif', N'Slipper. Footwear Sizing Guide - If you are unsure which shoe size to purchase, please follow the following steps', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (321, 12563, N'Gildan Men Crew T-Shirts, Multipack, Style G1100', 21, NULL, N'frame_yellow_small.gif', N'Gildan is one of the world largest vertically integrated manufacturers of apparel and socks.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (322, 22345, N'TurboTax Deluxe 2022 Tax Software', 69, NULL, N'mb_tires_small.gif', N'It searches for hundreds of deductions and credits and handles even the toughest tax situations, so you can be confident you’re getting every dollar you deserve.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (323, 22357, N'Veken Non Slip Rug Pad Gripper', 22, 20, N'silver_pedal_small.gif', N'Non-slip protection: Our pad signature grip will keep rugs in place and prevent them from bunching and sliding during normal daily use.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [discount], [thumbnail], [description], [created_at], [updated_at], [deleted]) VALUES (324, 22357, N'Marpac Dohm Classic The Original White', 46, NULL, N'fork_small.gif', N'The sleep-inducing magic of a Yogasleep sound machine makes falling asleep as easy as pushing a button.', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (2113, N'alicia')
INSERT [dbo].[Role] ([id], [name]) VALUES (3000, N'denise')
INSERT [dbo].[Role] ([id], [name]) VALUES (3198, N'john')
INSERT [dbo].[Role] ([id], [name]) VALUES (98225, N'ethan')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (11000, N'Jon Yang', N'jy@gmail.com', N'0988 222 333', N'Rockhampton', N'AW00011000', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (11022, N'Ethan Zhang', N'ez@gmail.com', N'0988 888 333', N'Bellingham', N'AW00011022', 98225, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (11032, N'Denise Stone', N'ds@gmail.com', N'0988 111 888', N'Melbourne', N'AW00011032', 3000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (11033, N'THANH DUONG NGUYEN', N'td@gmail.com', N'0985 670 285', N'Pho Co', N'AW00011254', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (123456789, N'John Smith', N'js@gmail.com', N'0988 234 456', N'Warrnambool', N'AW00011001', 3198, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (333445555, N'Franklin Wong', N'fw@gmail.com', N'0988 412 688', N'Warrnambool', N'AW00011002', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (453453453, N'Joyce English', N'je@gmail.com', N'0988 666 999', N'Lebanon', N'AW00011006', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (666884444, N'Ramesh Narayan', N'rn@gmail.com', N'0988 888 888', N'East Brisbane', N'AW00011005', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (987654321, N'Jennifer Wallace', N'JW@gmail.com', N'0988 666 888', N'Hervey Bay', N'AW00011004', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (987987987, N'Ahmad Jabbar', N'aj@gmail.com', N'0988 123 123', N'North Ryde', N'AW00011007', NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [email], [phone_number], [address], [password], [role_id], [created_at], [updated_at], [deleted]) VALUES (999887777, N'Alicia Zelaya', N'az@gmail.com', N'0988 888 888', N'Rockhampton', N'AW00011003', 2113, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Galery]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
USE [master]
GO
ALTER DATABASE [Web] SET  READ_WRITE 
GO
