USE [MasterBlogger]
GO
/****** Object:  Table [dbo].[ArticleCategories]    Script Date: 4/14/2020 10:39:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ArticleCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 4/14/2020 10:39:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[ArticleCategoryId] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/14/2020 10:39:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ArticleCategories] ON 

INSERT [dbo].[ArticleCategories] ([Id], [Title], [IsDeleted], [CreationDate]) VALUES (1, N'Safari', 0, CAST(N'2020-04-01T14:22:46.163' AS DateTime))
INSERT [dbo].[ArticleCategories] ([Id], [Title], [IsDeleted], [CreationDate]) VALUES (2, N'Software Architecture1', 1, CAST(N'2020-04-01T14:23:54.330' AS DateTime))
SET IDENTITY_INSERT [dbo].[ArticleCategories] OFF
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([Id], [Title], [ShortDescription], [Image], [Content], [IsDeleted], [ArticleCategoryId], [CreationDate]) VALUES (1, N'Onion Architecture in action', N'This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. ', N'https://localhost:5001/img/blog-post-1.jpeg', N'This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. This article is about implementing Onion Architecture. ', 0, 2, CAST(N'2020-04-02T18:04:32.283' AS DateTime))
INSERT [dbo].[Articles] ([Id], [Title], [ShortDescription], [Image], [Content], [IsDeleted], [ArticleCategoryId], [CreationDate]) VALUES (2, N'Asp.net Core MVC Razor Pages', N'Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. ', N'https://localhost:5001/img/blog-post-2.jpg', N'Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. Teaching Asp.net Core MVC Razor Pages From Zero To Hero. ', 0, 2, CAST(N'2020-04-02T18:05:53.783' AS DateTime))
SET IDENTITY_INSERT [dbo].[Articles] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Name], [Email], [Message], [Status], [ArticleId], [CreationDate]) VALUES (1, N'Test', N'test@atriya.com', N'Test', 1, 1, CAST(N'2020-04-03T17:33:49.847' AS DateTime))
INSERT [dbo].[Comments] ([Id], [Name], [Email], [Message], [Status], [ArticleId], [CreationDate]) VALUES (2, N'Hossein', N'hossein@atriya.com', N'salam', 2, 2, CAST(N'2020-04-03T18:14:06.630' AS DateTime))
INSERT [dbo].[Comments] ([Id], [Name], [Email], [Message], [Status], [ArticleId], [CreationDate]) VALUES (3, N'great', N'hossein@atriya.com', N'great article', 1, 1, CAST(N'2020-04-03T18:28:26.197' AS DateTime))
INSERT [dbo].[Comments] ([Id], [Name], [Email], [Message], [Status], [ArticleId], [CreationDate]) VALUES (4, N'test1', N'hossein.abbasabadi@outlook.com', N'test 1', 0, 2, CAST(N'2020-04-07T15:12:16.553' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comments] OFF
