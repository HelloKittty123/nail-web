USE [ERECEIPT_DEV]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/29/2024 7:21:50 PM ******/
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
/****** Object:  Table [dbo].[Calendars]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendars](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](2000) NOT NULL,
	[Start] [datetime2](7) NOT NULL,
	[End] [datetime2](7) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CustomerName] [nvarchar](255) NOT NULL,
	[CustomerPhone] [nvarchar](63) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerEmail] [nvarchar](127) NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Calendars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Time] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryGroupId] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryCalendars]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryCalendars](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[CalendarId] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CategoryCalendars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryGroups]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CategoryGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[BookingDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galleries]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galleries](
	[Id] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Url] [nvarchar](200) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[SubTitle] [nvarchar](200) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Galleries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/29/2024 7:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Role] [int] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Position] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsRootAdmin] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240829143311_1.0.0', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240829144414_1.0.1', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240829144620_1.0.2', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240910143322_1.0.3', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240919025411_1.0.4', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240925084010_1.0.5', N'8.0.8')
GO
INSERT [dbo].[Calendars] ([Id], [Name], [Start], [End], [UserId], [CustomerName], [CustomerPhone], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [CustomerEmail], [CustomerId], [Status]) VALUES (N'c068d455-e98d-4d96-8be1-ba649caa048f', N'16:00 - 17:15 Veronica Aaron', CAST(N'2024-09-29T16:00:00.0000000' AS DateTime2), CAST(N'2024-09-29T17:15:00.0000000' AS DateTime2), N'0333fcfd-40c7-445a-8409-0dab248750ba', N'Micheal Scofield', N'0775.331.777', CAST(N'2024-09-29T19:20:27.4326290' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', CAST(N'2024-09-29T19:20:27.4326302' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0, N'mike@gmail.com', NULL, 0)
GO
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'0f40d109-9ce0-44a5-80bf-1fceb213d4ec', N'Gel Manicure', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), N'6be009bc-a56e-42bb-9dd0-742f719a1066', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'b14e8c32-7dc4-4726-b1f2-257b2613e386', N'Evening Makeup', CAST(75.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), N'75b33886-4478-4a4f-9d8c-e33a7f980682', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'5f5ec5f4-ce87-424d-b8c3-2ba92282972a', N'French Pedicure', CAST(50.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), N'f2b519ac-2c9f-4363-8bf4-b835d0669b4d', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'66374936-7ccd-4ccd-8cb2-31e1f1dc93a5', N'Nail Maintenance Add On', CAST(15.00 AS Decimal(18, 2)), CAST(8.60 AS Decimal(18, 2)), N'75c613cf-f375-411f-a3c5-9dfef26a8d0f', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'07ac78b5-74ec-4a58-95de-323b0856139d', N'Hot Stone Massage', CAST(90.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), N'abbdcfc3-f7a8-4a9d-af1a-8c530d866b54', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'59b66c92-a23f-4409-a59b-5ff6362664a6', N'Classic Facial', CAST(60.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), N'0dcb3723-7b1b-4541-b556-4bb0c1c8abb4', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'761f8c0a-27de-42c0-95fd-614e16e12aa6', N'Bridal Makeup', CAST(90.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), N'75b33886-4478-4a4f-9d8c-e33a7f980682', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'1dbffac2-c9fc-4692-bb01-7ecddbfa82ef', N'Leg Waxing', CAST(45.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'aee566bb-3f2e-4f89-9782-53047b1758d5', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'219858c8-4b85-4bc5-ba93-85e1184c30c4', N'Gel Polish Add On', CAST(15.00 AS Decimal(18, 2)), CAST(6.60 AS Decimal(18, 2)), N'75c613cf-f375-411f-a3c5-9dfef26a8d0f', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'151d905d-3860-410f-bfb8-8a1033ab98d7', N'Eyebrow Waxing', CAST(15.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), N'aee566bb-3f2e-4f89-9782-53047b1758d5', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'b15bbdfc-a960-410c-a99f-8a6a2ce466ae', N'Full Body Waxing', CAST(90.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), N'aee566bb-3f2e-4f89-9782-53047b1758d5', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'8034cc96-9ffe-423f-b453-9850111ca605', N'Classic Manicure', CAST(30.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), N'6be009bc-a56e-42bb-9dd0-742f719a1066', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'93e68178-e70b-48bc-822f-988050b7d648', N'Classic Pedicure', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), N'f2b519ac-2c9f-4363-8bf4-b835d0669b4d', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'3d42f969-2d92-4820-8ec0-9a475abb43b2', N'Gel Pedicure', CAST(60.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'f2b519ac-2c9f-4363-8bf4-b835d0669b4d', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'f8d15f13-e0e9-4cfa-800c-a18a5524e675', N'Brow Lamination', CAST(45.00 AS Decimal(18, 2)), CAST(37.60 AS Decimal(18, 2)), N'7327a176-1804-47be-be45-820256ecaef7', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'e0f167f7-1532-4df2-b34a-ad556cb0797e', N'Brow Lam Lash Lift and Tint Combo', CAST(75.00 AS Decimal(18, 2)), CAST(70.60 AS Decimal(18, 2)), N'7327a176-1804-47be-be45-820256ecaef7', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'28e5d982-1177-4f47-a3dd-bd22aa6630ff', N'Daytime Makeup', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'75b33886-4478-4a4f-9d8c-e33a7f980682', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'2fe5a636-7486-4570-b895-df1c2b324128', N'Brow Wax & Tint', CAST(30.00 AS Decimal(18, 2)), CAST(28.10 AS Decimal(18, 2)), N'7327a176-1804-47be-be45-820256ecaef7', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'b3511900-0507-4fce-a7f5-df3f56084388', N'French Manicure', CAST(40.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'6be009bc-a56e-42bb-9dd0-742f719a1066', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'4ee06a68-3e24-4ed6-b023-e8e1be0ed81f', N'Hydrating Facial', CAST(75.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), N'0dcb3723-7b1b-4541-b556-4bb0c1c8abb4', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'ae1565a7-59c4-4748-9ccc-ee7490e145a2', N'Anti-Aging Facial', CAST(90.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), N'0dcb3723-7b1b-4541-b556-4bb0c1c8abb4', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'fba1c9df-327e-4f69-9e44-f7655f653113', N'Swedish Massage', CAST(60.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), N'abbdcfc3-f7a8-4a9d-af1a-8c530d866b54', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Time], [Price], [CategoryGroupId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'7ce9614d-3262-4f22-b3c0-fcba6a3dd6c7', N'Deep Tissue Massage', CAST(75.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), N'abbdcfc3-f7a8-4a9d-af1a-8c530d866b54', CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:19.7133333' AS DateTime2), NULL, 0, NULL)
GO
INSERT [dbo].[CategoryCalendars] ([Id], [CategoryId], [CalendarId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'8c9aa3b2-c534-44f3-80f0-4124ca5d0611', N'0f40d109-9ce0-44a5-80bf-1fceb213d4ec', N'c068d455-e98d-4d96-8be1-ba649caa048f', CAST(N'2024-09-29T19:20:27.4777266' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', CAST(N'2024-09-29T19:20:27.4777284' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0)
INSERT [dbo].[CategoryCalendars] ([Id], [CategoryId], [CalendarId], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'e4ad1e98-3385-49b7-b81f-e7f5132b5ff6', N'8034cc96-9ffe-423f-b453-9850111ca605', N'c068d455-e98d-4d96-8be1-ba649caa048f', CAST(N'2024-09-29T19:20:27.4777291' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', CAST(N'2024-09-29T19:20:27.4777291' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0)
GO
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'0dcb3723-7b1b-4541-b556-4bb0c1c8abb4', N'Facials', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Comprehensive facial skincare treatments')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'aee566bb-3f2e-4f89-9782-53047b1758d5', N'Waxing', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Professional hair removal services')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'6be009bc-a56e-42bb-9dd0-742f719a1066', N'Manicures', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Professional hand and nail care services')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'7327a176-1804-47be-be45-820256ecaef7', N'Brows', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Brow care and shaping services')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'abbdcfc3-f7a8-4a9d-af1a-8c530d866b54', N'Massage', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Relaxation and therapeutic massage services')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'75c613cf-f375-411f-a3c5-9dfef26a8d0f', N'Addon', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Additional services for nail care procedures')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'f2b519ac-2c9f-4363-8bf4-b835d0669b4d', N'Pedicures', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Relaxing foot care services')
INSERT [dbo].[CategoryGroups] ([Id], [Name], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [Description]) VALUES (N'75b33886-4478-4a4f-9d8c-e33a7f980682', N'Makeup', CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, CAST(N'2024-08-29T21:52:13.0166667' AS DateTime2), NULL, 0, N'Makeup services for all occasions')
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted], [BookingDate]) VALUES (N'95b9de15-4952-44f9-8cfd-d46fc07f39d4', N'Micheal Scofield', N'0775.331.777', N'mike@gmail.com', CAST(N'2024-09-29T19:20:27.5093003' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', CAST(N'2024-09-29T19:20:27.5093016' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0, CAST(N'2024-09-29T19:20:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'38260b55-116e-48ed-abf8-88276f5bab64', 1, N'Seventh', N'files/gallery/e71e7d5b4d604c9fb602f320458cb0a3.jpg', N'Title 01', N'Subtitle 01', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'938dde78-c78a-47c3-9e44-8a659fed3811', 2, N'Panel', N'files/gallery/bdfdf9c86b134e6895a4703bcf123814.jpg', N'welcome111', N'welcome222', CAST(N'2024-09-22T23:13:38.3266667' AS DateTime2), NULL, CAST(N'2024-09-22T23:13:38.3266667' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'eb5a9637-28fc-445a-86cf-93e045d27762', 1, N'Third', N'files/gallery/31615168cd444cc5ae158fbd08cb38bc.jpg', N'Title 01 2', N'Subtitle 01 2', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'b81dba4e-47d8-433f-b2c4-ba60c9611e80', 1, N'Fifth', N'files/gallery/26c9480a121445358aa581ea479dff32.jpg', N'Title 01 2', N'Subtitle 01 2', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'102292a1-cbbf-4d18-abd2-c1571ec5463e', 1, N'Second', N'files/gallery/bbbf1614adb540ba939d04a58aa3a5b1.jpg', N'Title 01', N'Subtitle 01', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'b72e19a5-4385-49d6-b7d3-d7529d56c93a', 1, N'First', N'files/gallery/bfe5ef5153394a6d8271da5b95889a75.jpg', N'Title 001', N'Subtitle 001', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'177c4d24-32b0-43b9-8fac-efceb7b1f577', 1, N'Sixth', N'files/gallery/4491e8bfa0df4191ab5b00f32db0ead9.jpg', N'Title 01', N'Subtitle 01', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'2d55600a-d5bb-4a65-a773-f18ea534dec3', 1, N'Fourth', N'files/gallery/7c842a1fabc740b08d37c185a1a36549.jpg', N'Title 01', N'Subtitle 01', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
INSERT [dbo].[Galleries] ([Id], [Order], [Name], [Url], [Title], [SubTitle], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'2d55600a-d5bb-4a65-a773-f18ea535dec3', 1, N'Eighth', N'files/gallery/1ba8651cba1043e39ff144add8f19dbb.jpg', N'Title 01', N'Subtitle 01', CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, CAST(N'2024-09-19T22:27:36.0200000' AS DateTime2), NULL, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'edb5d1d3-c1f3-49fb-82e4-05a66086dcbf', N'Elijah Rodriguez', 1, N'elijah.rodriguez', N'BARBER', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-3.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'0333fcfd-40c7-445a-8409-0dab248750ba', N'Veronica Aaron', 1, N'veronica.aaron', N'NAIL TECH', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-1.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'a8fc8ef4-b708-48fb-848e-25271e25cb45', N'Charlotte Wilson', 1, N'', N'ARTIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/33217be8a6714916b8146684048d06a1.jpg', 0, CAST(N'2024-09-29T19:19:32.9475789' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', CAST(N'2024-09-29T19:19:32.9476425' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'00be98c2-588a-4f25-a832-4d340dddcdaf', N'Noah Williams', 1, N'noah.williams', N'MAKEUP ARTIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-6.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'34e7afad-0f32-4576-a8b3-4d64bf4b1804', N'Isabella Garcia', 1, N'isabella.garcia', N'HAIR COLORIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-2.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'1f481eb4-1212-43c7-9e51-4fcc4cc5321a', N'Amelia Anderson', 1, N'amelia.anderson', N'ESTHETICIAN', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-5.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'2acc6869-b2aa-450a-8ca9-7d56a5c0eadb', N'Mia Jones', 1, N'mia.jones', N'MASSAGE THERAPIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-7.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'f56ab81f-c373-4845-a227-8c270b692511', N'Manager', 0, N'admin', N'Manager', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/790ab4e83c4140dcb4c474739f380721.jpg', 1, CAST(N'2024-08-31T20:50:50.0366667' AS DateTime2), NULL, CAST(N'2024-09-17T00:40:10.5942993' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'50c643ed-43da-4ac7-adc4-8ec53fd4d122', N'Ava Martinezu 3', 1, N'ava.martinez', N'NAIL TECH', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'http://cms.nhanpt.tech/http://cms.nhanpt.tech/http://cms.nhanpt.tech/files/avatar/84449b77fcd44876b94cfd7f03e99e1d.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-09-23T17:07:43.0306005' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 1)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'122de983-cb3d-4e0f-a9f8-9e2c21adf3ff', N'Olivia Smith', 1, N'olivia.smith', N'SPA THERAPIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/6aa462a51ea6469fb2297165a18d6848.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-09-29T18:59:55.0398438' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'8d8b8b37-3aed-4c10-bbbe-a0c4f3a36f97', N'Sophia Brown', 1, N'sophia.brown', N'NAIL ARTIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-2.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-09-23T21:31:17.7805035' AS DateTime2), N'f56ab81f-c373-4845-a227-8c270b692511', 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'81b4f466-b569-4f2b-b7a6-a4d7244ce2c1', N'Liam Johnson', 1, N'liam.johnson', N'NAIL TECH', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-5.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
INSERT [dbo].[Users] ([Id], [Name], [Role], [UserName], [Position], [Password], [Avatar], [IsRootAdmin], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [IsDeleted]) VALUES (N'78264e3e-fbe1-40bb-abb2-c28d885d40d8', N'Emma Davis', 1, N'emma.davis', N'HAIR STYLIST', N'cs80krLdOzJuOkLfDeo4h6uG6CS7dErnbCkhpuBFNkk=', N'files/avatar/team-4.jpg', 0, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, CAST(N'2024-08-29T21:58:55.1066667' AS DateTime2), NULL, 0)
GO
ALTER TABLE [dbo].[Calendars] ADD  DEFAULT (N'') FOR [CustomerEmail]
GO
ALTER TABLE [dbo].[Calendars] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[CategoryGroups] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [BookingDate]
GO
ALTER TABLE [dbo].[Calendars]  WITH CHECK ADD  CONSTRAINT [FK_Calendars_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Calendars] CHECK CONSTRAINT [FK_Calendars_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Calendars]  WITH CHECK ADD  CONSTRAINT [FK_Calendars_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calendars] CHECK CONSTRAINT [FK_Calendars_Users_UserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_CategoryGroups_CategoryGroupId] FOREIGN KEY([CategoryGroupId])
REFERENCES [dbo].[CategoryGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_CategoryGroups_CategoryGroupId]
GO
ALTER TABLE [dbo].[CategoryCalendars]  WITH CHECK ADD  CONSTRAINT [FK_CategoryCalendars_Calendars_CalendarId] FOREIGN KEY([CalendarId])
REFERENCES [dbo].[Calendars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryCalendars] CHECK CONSTRAINT [FK_CategoryCalendars_Calendars_CalendarId]
GO
ALTER TABLE [dbo].[CategoryCalendars]  WITH CHECK ADD  CONSTRAINT [FK_CategoryCalendars_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryCalendars] CHECK CONSTRAINT [FK_CategoryCalendars_Categories_CategoryId]
GO
