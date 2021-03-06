USE [master]
GO
/****** Object:  Database [RetailBank]    Script Date: 4/18/2018 3:39:52 PM ******/
CREATE DATABASE [RetailBank] ON  PRIMARY 
( NAME = N'RetailBank', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\RetailBank.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RetailBank_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\RetailBank_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RetailBank] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RetailBank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RetailBank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RetailBank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RetailBank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RetailBank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RetailBank] SET ARITHABORT OFF 
GO
ALTER DATABASE [RetailBank] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RetailBank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RetailBank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RetailBank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RetailBank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RetailBank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RetailBank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RetailBank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RetailBank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RetailBank] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RetailBank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RetailBank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RetailBank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RetailBank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RetailBank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RetailBank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RetailBank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RetailBank] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RetailBank] SET  MULTI_USER 
GO
ALTER DATABASE [RetailBank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RetailBank] SET DB_CHAINING OFF 
GO
USE [RetailBank]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[CustomerID] [bigint] NULL,
	[AccountID] [bigint] IDENTITY(100000000000,1) NOT NULL,
	[AccountType] [char](1) NULL,
	[Balance] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankTransaction]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankTransaction](
	[TransactionID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountID] [bigint] NULL,
	[TransactionType] [char](1) NULL,
	[TransactionAmount] [int] NULL,
	[BalanceBefore] [int] NULL,
	[BalanceAfter] [int] NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_BankTransaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[StateID] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[SSN] [bigint] NULL,
	[CustomerID] [bigint] IDENTITY(100000000,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[CityID] [int] NULL,
	[DOB] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginID] [int] IDENTITY(1000,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserRoleID] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[State] [varchar](50) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000000, 100000000000, N'S', 15000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000000, 100000000001, N'C', 15000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000001, 100000000002, N'S', 10000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000001, 100000000003, N'C', 15000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000002, 100000000004, N'S', 3000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000002, 100000000005, N'C', 1000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000003, 100000000006, N'S', 8000, 0)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000003, 100000000007, N'C', 10000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000004, 100000000008, N'S', 10000, 1)
INSERT [dbo].[Account] ([CustomerID], [AccountID], [AccountType], [Balance], [Status]) VALUES (100000004, 100000000009, N'C', 10000, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[BankTransaction] ON 

INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (1, 100000000000, N'C', 5000, 0, 5000, CAST(N'2018-04-18T15:24:04.607' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (2, 100000000001, N'C', 5000, 0, 5000, CAST(N'2018-04-18T15:24:12.203' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (3, 100000000002, N'C', 10000, 0, 10000, CAST(N'2018-04-18T15:24:24.727' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (4, 100000000003, N'C', 15000, 0, 15000, CAST(N'2018-04-18T15:24:37.937' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (5, 100000000004, N'C', 1000, 0, 1000, CAST(N'2018-04-18T15:24:59.477' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (6, 100000000005, N'C', 3000, 0, 3000, CAST(N'2018-04-18T15:25:05.720' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (7, 100000000006, N'C', 8000, 0, 8000, CAST(N'2018-04-18T15:25:23.423' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (8, 100000000007, N'C', 10000, 0, 10000, CAST(N'2018-04-18T15:25:30.727' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (9, 100000000008, N'C', 10000, 0, 10000, CAST(N'2018-04-18T15:25:42.217' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (10, 100000000009, N'C', 10000, 0, 10000, CAST(N'2018-04-18T15:25:45.650' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (11, 100000000000, N'C', 2000, 5000, 7000, CAST(N'2018-04-18T15:29:15.957' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (12, 100000000000, N'C', 3000, 5000, 8000, CAST(N'2018-04-18T15:29:39.320' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (13, 100000000001, N'C', 15000, 5000, 20000, CAST(N'2018-04-18T15:30:33.853' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (14, 100000000001, N'D', 5000, 20000, 15000, CAST(N'2018-04-18T15:31:26.217' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (15, 100000000000, N'C', 5000, 10000, 15000, CAST(N'2018-04-18T15:31:26.217' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (16, 100000000005, N'D', 2000, 3000, 1000, CAST(N'2018-04-18T15:32:27.730' AS DateTime))
INSERT [dbo].[BankTransaction] ([TransactionID], [AccountID], [TransactionType], [TransactionAmount], [BalanceBefore], [BalanceAfter], [Time]) VALUES (17, 100000000004, N'C', 2000, 1000, 3000, CAST(N'2018-04-18T15:32:27.733' AS DateTime))
SET IDENTITY_INSERT [dbo].[BankTransaction] OFF
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (1, N'City1', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (2, N'City2', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (3, N'City3', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (4, N'City4', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (5, N'City5', 5)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (6, N'City6', 6)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (7, N'City7', 7)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (8, N'City8', 8)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (9, N'City9', 9)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (10, N'City10', 10)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (11, N'City11', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (12, N'City12', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (13, N'City13', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (14, N'City14', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (15, N'City15', 5)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (16, N'City16', 6)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (17, N'City17', 7)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (18, N'City18', 8)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (19, N'City19', 9)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (20, N'City20', 10)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (21, N'City21', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (22, N'City22', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (23, N'City23', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (24, N'City24', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (25, N'City25', 5)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (26, N'City26', 6)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (27, N'City27', 7)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (28, N'City28', 8)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (29, N'City29', 9)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (30, N'City30', 10)
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([SSN], [CustomerID], [Name], [Address1], [Address2], [CityID], [DOB], [Status]) VALUES (123456781, 100000000, N'Heydev Sood', N'97, Model Gram', N'33B, Subhash Nagar', 8, CAST(N'1995-10-17' AS Date), 1)
INSERT [dbo].[Customer] ([SSN], [CustomerID], [Name], [Address1], [Address2], [CityID], [DOB], [Status]) VALUES (123456782, 100000001, N'Vipin Sood', N'100, Model Gram', N'1001,Model Town Nagar', 12, CAST(N'1965-12-18' AS Date), 1)
INSERT [dbo].[Customer] ([SSN], [CustomerID], [Name], [Address1], [Address2], [CityID], [DOB], [Status]) VALUES (123456783, 100000002, N'Shaveta Sood', N'987, Sita Gram', N'456,Model Town', 20, CAST(N'1974-12-27' AS Date), 1)
INSERT [dbo].[Customer] ([SSN], [CustomerID], [Name], [Address1], [Address2], [CityID], [DOB], [Status]) VALUES (123456784, 100000003, N'Vijay Laxmi Sood', N'852, Ram Gram', N'654,Model City', 15, CAST(N'1974-12-27' AS Date), 1)
INSERT [dbo].[Customer] ([SSN], [CustomerID], [Name], [Address1], [Address2], [CityID], [DOB], [Status]) VALUES (123456785, 100000004, N'Dipin Sood', N'97, Model Gram', N'654,Model City', 28, CAST(N'1995-10-17' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginID], [Username], [Password], [UserRoleID]) VALUES (1000, N'user1', N'user1', 1)
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [UserRoleID]) VALUES (1001, N'user2', N'user2', 2)
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [UserRoleID]) VALUES (1002, N'user3', N'user3', 1)
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [UserRoleID]) VALUES (1003, N'user4', N'user4', 2)
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [UserRoleID]) VALUES (1004, N'user5', N'user5', 1)
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateID], [State]) VALUES (1, N'State1')
INSERT [dbo].[State] ([StateID], [State]) VALUES (2, N'State2')
INSERT [dbo].[State] ([StateID], [State]) VALUES (3, N'State3')
INSERT [dbo].[State] ([StateID], [State]) VALUES (4, N'State4')
INSERT [dbo].[State] ([StateID], [State]) VALUES (5, N'State5')
INSERT [dbo].[State] ([StateID], [State]) VALUES (6, N'State6')
INSERT [dbo].[State] ([StateID], [State]) VALUES (7, N'State7')
INSERT [dbo].[State] ([StateID], [State]) VALUES (8, N'State8')
INSERT [dbo].[State] ([StateID], [State]) VALUES (9, N'State9')
INSERT [dbo].[State] ([StateID], [State]) VALUES (10, N'State10')
SET IDENTITY_INSERT [dbo].[State] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [TypeAccount]    Script Date: 4/18/2018 3:39:52 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [TypeAccount] UNIQUE NONCLUSTERED 
(
	[CustomerID] ASC,
	[AccountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customer]
GO
ALTER TABLE [dbo].[BankTransaction]  WITH CHECK ADD  CONSTRAINT [FK_BankTransaction_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[BankTransaction] CHECK CONSTRAINT [FK_BankTransaction_Account]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_City] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_City]
GO
/****** Object:  StoredProcedure [dbo].[account_details]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[account_details]
@customerid bigint,
@ssn bigint,
@accountid bigint
as
begin
select a.CustomerID,a.AccountID,a.AccountType,a.Balance,a.Status 
from Account a where a.AccountID = @accountid or (a.CustomerID = @customerid or a.CustomerID = (select CustomerID from Customer where SSN = @ssn)) 
end
GO
/****** Object:  StoredProcedure [dbo].[add_transaction]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[add_transaction]
@accountid bigint,
@type char(1),
@amount int,
@before int,
@after int,
@stamp datetime
as
begin
insert into BankTransaction(AccountID,TransactionType,TransactionAmount,BalanceBefore,BalanceAfter,Time) values(@accountid,@type,@amount,@before,@after,@stamp)
end
GO
/****** Object:  StoredProcedure [dbo].[city_display]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[city_display]
@state varchar(50)
as
begin
declare @stateid int
select @stateid = StateID from State where State = @state;
select CityName from City where StateID = @stateid;
end
GO
/****** Object:  StoredProcedure [dbo].[city_id]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[city_id]
@cityname varchar(50)
as
begin
select CityID from City where CityName = @cityname
end
GO
/****** Object:  StoredProcedure [dbo].[create_account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[create_account]
@customerid bigint,
@accounttype char(1),
@balance int

as
begin
insert into Account(CustomerID,AccountType,Balance,Status) values(@customerid,@accounttype,@balance,1)
select SCOPE_IDENTITY()
end
GO
/****** Object:  StoredProcedure [dbo].[create_customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[create_customer]
@ssn bigint,
@name varchar(50),
@address1 varchar(max),
@address2 varchar(max),
@cityid int,
@dob date,
@id bigint out
as
begin
insert into Customer(SSN,Name,Address1,Address2,CityID,DOB,Status) values(@ssn,@name,@address1,@address2,@cityid,@dob,1);
SET @id=SCOPE_IDENTITY()
      RETURN  @id
end
GO
/****** Object:  StoredProcedure [dbo].[delete_account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[delete_account]
@accountid bigint
as
begin
update Account set Status = 0 where AccountID = @accountid
end
GO
/****** Object:  StoredProcedure [dbo].[delete_customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[delete_customer]
@customerid bigint
as
begin
update Customer set Status = 0 where CustomerID = @customerid
end
GO
/****** Object:  StoredProcedure [dbo].[deposit]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deposit]
@amount int,
@accountid bigint
as
begin
update Account set Balance = Balance + @amount where AccountID = @accountid
end
GO
/****** Object:  StoredProcedure [dbo].[find_account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[find_account]
@customerid bigint
as
begin
select Status from Account where CustomerID = @customerid
end
GO
/****** Object:  StoredProcedure [dbo].[find_account_id]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[find_account_id]
@customerid bigint,
@accountid bigint
as
begin
select * from Account where AccountID = @accountid or CustomerID = @customerid
end
GO
/****** Object:  StoredProcedure [dbo].[find_customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[find_customer]
@ssn bigint,
@customerid bigint
as
begin
select * from Customer where SSN = @ssn or CustomerID = @customerid
end
GO
/****** Object:  StoredProcedure [dbo].[getlogin]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getlogin]
@username varchar(50),
@password varchar(50)
as
begin
select * from Login where Username = @username and Password = @password
end
GO
/****** Object:  StoredProcedure [dbo].[state_display]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[state_display]
as
begin
select State from State;
end
GO
/****** Object:  StoredProcedure [dbo].[statement_duration]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[statement_duration]
@start datetime,
@end datetime,
@accountid bigint
as
begin
select TransactionID,AccountID,CONVERT(varchar,(Select 'Debit' from BankTransaction where TransactionType = 'D' and TransactionID = B.TransactionID  union all Select 'Credit' from BankTransaction where TransactionType = 'C' and TransactionID = B.TransactionID)) as 'Transaction Type',TransactionAmount,Time from BankTransaction B where AccountID = @accountid and Time between @start and @end
end
GO
/****** Object:  StoredProcedure [dbo].[statement_n]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[statement_n]
@n int,
@accountid bigint
as
begin
select top(@n) TransactionID,AccountID,CONVERT(varchar,(Select 'Debit' from BankTransaction where TransactionType = 'D' and TransactionID = B.TransactionID  union all Select 'Credit' from BankTransaction where TransactionType = 'C' and TransactionID = B.TransactionID)) as 'Transaction Type',
TransactionAmount,Time from BankTransaction B where AccountID = @accountid 
end
GO
/****** Object:  StoredProcedure [dbo].[transfer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[transfer]
@source bigint,
@target bigint,
@amount int
as
begin
update Account set Balance = Balance - @amount where AccountID = @source;
update Account set Balance = Balance + @amount where AccountID = @target;
end
GO
/****** Object:  StoredProcedure [dbo].[update_customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_customer]
@ssn bigint,
@customerid bigint,
@name varchar(50),
@address1 varchar(max),
@address2 varchar(max),
@cityid int,
@dob date
as
begin
update Customer set Name = @name, Address1 = @address1, Address2 = @address2, CityID = @cityid, DOB = @dob where SSN = @ssn or CustomerID = @customerid
end
GO
/****** Object:  StoredProcedure [dbo].[view_account_accid]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[view_account_accid]
@accountid bigint
as
begin
select * from Account where AccountID = @accountid
end
GO
/****** Object:  StoredProcedure [dbo].[view_account_custid]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[view_account_custid]
@customerid bigint
as
begin
select * from Account where CustomerID = @customerid
end
GO
/****** Object:  StoredProcedure [dbo].[view_active_account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[view_active_account]
as
begin
select ROW_NUMBER() OVER (ORDER BY CustomerID) AS 'Sr. no',
AccountID,CustomerID, CONVERT(varchar,(select 'Current' from Account where AccountType = 'C' and AccountID = A.AccountID union all
select 'Saving' from Account where AccountType = 'S' and AccountID = A.AccountID)) as AccountType,
Balance,
CONVERT(varchar,(select 'Active' from Account where Status = 1 and AccountID = A.AccountID union all
select 'Inactive' from Account where Status = 0 and AccountID = A.AccountID)) as Status
 from Account A  where Status = 1
end
GO
/****** Object:  StoredProcedure [dbo].[view_active_customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[view_active_customer]
as
begin
select ROW_NUMBER() OVER (ORDER BY CustomerID) AS 'Sr. no',CustomerID,SSN,Name,DOB,
(select CONVERT(varchar,(Select Address1 from Customer where CustomerID = C.CustomerID))+'- '+
CONVERT(varchar,(select Address2 from Customer  where CustomerID = C.CustomerID))+'- '+
CONVERT(varchar,(select State from State where StateID = (select StateID from City where CityID = (select CityID from Customer  where CustomerID = C.CustomerID))))+'- '+
CONVERT(varchar,(select CityName from City where CityID = (select CityID from Customer  where CustomerID = C.CustomerID) ))) As Address,
CONVERT(varchar,(select 'Active' from Customer where Status = 1 and CustomerID = C.CustomerID union all
select 'Inactive' from Customer where Status = 0 and CustomerID = c.CustomerID)) as Status
 from Customer AS C where Status = 1
end
GO
/****** Object:  StoredProcedure [dbo].[view_all_account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[view_all_account]
as
begin
select ROW_NUMBER() OVER (ORDER BY CustomerID) AS 'Sr. no',AccountID,CustomerID, CONVERT(varchar,(select 'Current' from Account where AccountType = 'C' and AccountID = A.AccountID union all
select 'Saving' from Account where AccountType = 'S' and AccountID = A.AccountID)) as AccountType,
Balance,
CONVERT(varchar,(select 'Active' from Account where Status = 1 and AccountID = A.AccountID union all
select 'Inactive' from Account where Status = 0 and AccountID = A.AccountID)) as Status
 from Account A
end
GO
/****** Object:  StoredProcedure [dbo].[view_all_customers]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[view_all_customers]
as
begin
select ROW_NUMBER() OVER (ORDER BY CustomerID) AS 'Sr. no',CustomerID,SSN,Name,DOB,
(select CONVERT(varchar,(Select Address1 from Customer where CustomerID = C.CustomerID))+'- '+
CONVERT(varchar,(select Address2 from Customer  where CustomerID = C.CustomerID))+'- '+
CONVERT(varchar,(select State from State where StateID = (select StateID from City where CityID = (select CityID from Customer  where CustomerID = C.CustomerID))))+'- '+
CONVERT(varchar,(select CityName from City where CityID = (select CityID from Customer  where CustomerID = C.CustomerID) ))) As Address,
CONVERT(varchar,(select 'Active' from Customer where Status = 1 and CustomerID = C.CustomerID union all
select 'Inactive' from Customer where Status = 0 and CustomerID = c.CustomerID)) as Status
from Customer AS C
end
GO
/****** Object:  StoredProcedure [dbo].[view_custid_ssn]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[view_custid_ssn]
@ssn bigint
as
begin
select CustomerID from Customer where SSN = @ssn
end
GO
/****** Object:  StoredProcedure [dbo].[view_inactive_account]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[view_inactive_account]
as
begin
select ROW_NUMBER() OVER (ORDER BY CustomerID) AS 'Sr. no',
AccountID,CustomerID, CONVERT(varchar,(select 'Current' from Account where AccountType = 'C' and AccountID = A.AccountID union all
select 'Saving' from Account where AccountType = 'S' and AccountID = A.AccountID)) as AccountType,
Balance,
CONVERT(varchar,(select 'Active' from Account where Status = 1 and AccountID = A.AccountID union all
select 'Inactive' from Account where Status = 0 and AccountID = A.AccountID)) as Status
 from Account A where Status = 0
end
GO
/****** Object:  StoredProcedure [dbo].[view_inactive_customer]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[view_inactive_customer]
as
begin
select ROW_NUMBER() OVER (ORDER BY CustomerID) AS 'Sr. no',CustomerID,SSN,Name,DOB,
(select CONVERT(varchar,(Select Address1 from Customer where CustomerID = C.CustomerID))+'- '+
CONVERT(varchar,(select Address2 from Customer  where CustomerID = C.CustomerID))+'- '+
CONVERT(varchar,(select State from State where StateID = (select StateID from City where CityID = (select CityID from Customer  where CustomerID = C.CustomerID))))+'- '+
CONVERT(varchar,(select CityName from City where CityID = (select CityID from Customer  where CustomerID = C.CustomerID) ))) As Address,
CONVERT(varchar,(select 'Active' from Customer where Status = 1 and CustomerID = C.CustomerID union all
select 'Inactive' from Customer where Status = 0 and CustomerID = c.CustomerID)) as Status
 from Customer AS C where Status = 0
end
GO
/****** Object:  StoredProcedure [dbo].[withdraw]    Script Date: 4/18/2018 3:39:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[withdraw]
@amount int,
@accountid bigint
as
begin
update Account set Balance = Balance - @amount where AccountID = @accountid
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A customer has only one S and C' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'CONSTRAINT',@level2name=N'TypeAccount'
GO
USE [master]
GO
ALTER DATABASE [RetailBank] SET  READ_WRITE 
GO
