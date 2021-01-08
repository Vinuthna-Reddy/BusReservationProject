USE [master]
GO
/****** Object:  Database [Bus_Project]    Script Date: 06-01-2021 02:13:16 PM ******/
CREATE DATABASE [Bus_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bus_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Bus_Project.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bus_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Bus_Project_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bus_Project] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bus_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bus_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bus_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bus_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bus_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bus_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bus_Project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Bus_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bus_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bus_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bus_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bus_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bus_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bus_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bus_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bus_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bus_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bus_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bus_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bus_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bus_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bus_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bus_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bus_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bus_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Bus_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bus_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bus_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bus_Project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Bus_Project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Bus_Project]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[Guest_Id] [int] NULL,
	[Travel_Id] [int] NULL,
	[coach_bus_id] [int] NULL,
	[booking_status] [varchar](10) NULL,
	[bus_id] [int] NULL,
 CONSTRAINT [pkbooking] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bus_Details]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bus_Details](
	[Bus_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bus_Type] [varchar](15) NULL,
	[Cost_Per_Seat] [money] NULL,
	[NO_of_Seats] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coach_bus]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coach_bus](
	[coach_bus_id] [int] IDENTITY(2000,1) NOT NULL,
	[Bus_type] [varchar](15) NULL,
	[No_of_seats] [int] NULL,
	[cost_per_day] [money] NULL,
	[driver_name] [varchar](20) NULL,
	[driver_license_id] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[coach_bus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Guest](
	[Guest_ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[email_id] [varchar](20) NULL,
	[phone_no] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Guest_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[payment]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[payment](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[guest_id] [int] NULL,
	[booking_id] [int] NULL,
	[total_price] [money] NULL,
	[payment_status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registered_User]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registered_User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](20) NOT NULL,
	[lname] [varchar](20) NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[phone_no] [decimal](10, 0) NULL,
	[wallet] [money] NULL,
	[email_id] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seats]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seats](
	[Seat_no] [int] NOT NULL,
	[Bus_ID] [int] NOT NULL,
	[seat_status] [varchar](10) NULL CONSTRAINT [df_seat_status]  DEFAULT ('open'),
	[passenger_name] [varchar](20) NULL,
	[booking_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seat_no] ASC,
	[Bus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Travel]    Script Date: 06-01-2021 02:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Travel](
	[Travel_ID] [int] IDENTITY(1,1) NOT NULL,
	[pickup_place] [varchar](20) NULL,
	[drop_place] [varchar](20) NULL,
	[Departure_Time] [datetime] NULL,
	[Arrival_Time] [datetime] NULL,
	[Bus_ID] [int] NULL,
	[no_of_days] [int] NULL,
	[coach_bus_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Travel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([admin_id], [username], [password]) VALUES (1, N'admin', N'8888')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([booking_id], [user_id], [Guest_Id], [Travel_Id], [coach_bus_id], [booking_status], [bus_id]) VALUES (1, 4, NULL, 1, NULL, N'success', 1)
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[Bus_Details] ON 

INSERT [dbo].[Bus_Details] ([Bus_ID], [Bus_Type], [Cost_Per_Seat], [NO_of_Seats]) VALUES (1, N'A/C', 650.0000, 30)
INSERT [dbo].[Bus_Details] ([Bus_ID], [Bus_Type], [Cost_Per_Seat], [NO_of_Seats]) VALUES (2, N'Non A/C', 540.0000, 40)
INSERT [dbo].[Bus_Details] ([Bus_ID], [Bus_Type], [Cost_Per_Seat], [NO_of_Seats]) VALUES (3, N'A/C', 870.0000, 25)
INSERT [dbo].[Bus_Details] ([Bus_ID], [Bus_Type], [Cost_Per_Seat], [NO_of_Seats]) VALUES (4, N'Non A/C', 420.0000, 35)
SET IDENTITY_INSERT [dbo].[Bus_Details] OFF
SET IDENTITY_INSERT [dbo].[Coach_bus] ON 

INSERT [dbo].[Coach_bus] ([coach_bus_id], [Bus_type], [No_of_seats], [cost_per_day], [driver_name], [driver_license_id]) VALUES (2000, N'A/C', 30, 30000.0000, NULL, NULL)
INSERT [dbo].[Coach_bus] ([coach_bus_id], [Bus_type], [No_of_seats], [cost_per_day], [driver_name], [driver_license_id]) VALUES (2001, N'A/C', 25, 27000.0000, N'Steve', N'1060547598')
INSERT [dbo].[Coach_bus] ([coach_bus_id], [Bus_type], [No_of_seats], [cost_per_day], [driver_name], [driver_license_id]) VALUES (2002, N'Non A/C', 45, 25000.0000, N'Ramesh', N'1045256871')
INSERT [dbo].[Coach_bus] ([coach_bus_id], [Bus_type], [No_of_seats], [cost_per_day], [driver_name], [driver_license_id]) VALUES (2003, N'Non A/C', 35, 20000.0000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Coach_bus] OFF
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([Guest_ID], [name], [email_id], [phone_no]) VALUES (1, N'vijay', N'vijay@gmail.com', CAST(9600554433 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[Guest] OFF
SET IDENTITY_INSERT [dbo].[payment] ON 

INSERT [dbo].[payment] ([transaction_id], [user_id], [guest_id], [booking_id], [total_price], [payment_status]) VALUES (1, 4, NULL, 1, 1300.0000, N'success')
SET IDENTITY_INSERT [dbo].[payment] OFF
SET IDENTITY_INSERT [dbo].[Registered_User] ON 

INSERT [dbo].[Registered_User] ([user_id], [fname], [lname], [username], [password], [phone_no], [wallet], [email_id]) VALUES (4, N'Kavinraj', N'Duraisamy', N'kavindurai', N'10673793', CAST(9629847329 AS Decimal(10, 0)), 1000.0000, N'kavinraj1998@gmail.com')
INSERT [dbo].[Registered_User] ([user_id], [fname], [lname], [username], [password], [phone_no], [wallet], [email_id]) VALUES (5, N'Cristiano', N'Ronaldo', N'CR7', N'cr7777', CAST(9898984878 AS Decimal(10, 0)), 2000.0000, N'cr7@gmail.com')
SET IDENTITY_INSERT [dbo].[Registered_User] OFF
INSERT [dbo].[Seats] ([Seat_no], [Bus_ID], [seat_status], [passenger_name], [booking_id]) VALUES (2, 1, N'booked', N'kavin', 1)
INSERT [dbo].[Seats] ([Seat_no], [Bus_ID], [seat_status], [passenger_name], [booking_id]) VALUES (3, 1, N'booked', N'ramu', 1)
SET IDENTITY_INSERT [dbo].[Travel] ON 

INSERT [dbo].[Travel] ([Travel_ID], [pickup_place], [drop_place], [Departure_Time], [Arrival_Time], [Bus_ID], [no_of_days], [coach_bus_id]) VALUES (1, N'Chennai', N'bangalore', CAST(N'2021-01-06 09:00:00.000' AS DateTime), CAST(N'2021-01-06 17:00:00.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Travel] ([Travel_ID], [pickup_place], [drop_place], [Departure_Time], [Arrival_Time], [Bus_ID], [no_of_days], [coach_bus_id]) VALUES (2, N'mumbai', N'pune', CAST(N'2021-01-06 11:30:00.000' AS DateTime), CAST(N'2021-01-06 15:50:00.000' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Travel] ([Travel_ID], [pickup_place], [drop_place], [Departure_Time], [Arrival_Time], [Bus_ID], [no_of_days], [coach_bus_id]) VALUES (3, N'Chennai', N'Chennai', CAST(N'2021-01-07 00:00:00.000' AS DateTime), CAST(N'2021-01-09 00:00:00.000' AS DateTime), NULL, 2, 2001)
SET IDENTITY_INSERT [dbo].[Travel] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Register__3FEF8767C2603C9F]    Script Date: 06-01-2021 02:13:17 PM ******/
ALTER TABLE [dbo].[Registered_User] ADD UNIQUE NONCLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([bus_id])
REFERENCES [dbo].[Bus_Details] ([Bus_ID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([coach_bus_id])
REFERENCES [dbo].[Coach_bus] ([coach_bus_id])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([Guest_Id])
REFERENCES [dbo].[Guest] ([Guest_ID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([Travel_Id])
REFERENCES [dbo].[Travel] ([Travel_ID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Registered_User] ([user_id])
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([booking_id])
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD FOREIGN KEY([guest_id])
REFERENCES [dbo].[Guest] ([Guest_ID])
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Registered_User] ([user_id])
GO
ALTER TABLE [dbo].[Seats]  WITH CHECK ADD FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([booking_id])
GO
ALTER TABLE [dbo].[Seats]  WITH CHECK ADD FOREIGN KEY([Bus_ID])
REFERENCES [dbo].[Bus_Details] ([Bus_ID])
GO
ALTER TABLE [dbo].[Travel]  WITH CHECK ADD FOREIGN KEY([Bus_ID])
REFERENCES [dbo].[Bus_Details] ([Bus_ID])
GO
ALTER TABLE [dbo].[Travel]  WITH CHECK ADD FOREIGN KEY([coach_bus_id])
REFERENCES [dbo].[Coach_bus] ([coach_bus_id])
GO
USE [master]
GO
ALTER DATABASE [Bus_Project] SET  READ_WRITE 
GO
