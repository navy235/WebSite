USE [Maitonn]
GO
/****** Object:  Table [dbo].[Member_Action]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Action](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActionType] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[Description] [nvarchar](150) NULL,
	[IP] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Member_Action] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_Action] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_Action] ON
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (1, 6, 1, N'0250b48b-0a35-48f7-b233-478e1e0548d1', N'127.0.0.1', CAST(0x0000A1A4011ED560 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (2, 7, 1, N'', N'127.0.0.1', CAST(0x0000A1A40120A663 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (3, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1A4012135D1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Member_Action] OFF
/****** Object:  Table [dbo].[LinkManImg]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkManImg](
	[CompanyID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.LinkManImg] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[LinkManImg] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LinkManImg] ON
INSERT [dbo].[LinkManImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/18/75e0cd37-9db2-44cb-8922-e45d645d4677.JPG,/Upload/Normal/2013/4/18/6bf7e00b-9370-4c8d-ad9f-501fe0daad78.JPG', N'/Upload/Normal/2013/4/18/75e0cd37-9db2-44cb-8922-e45d645d4677.JPG')
SET IDENTITY_INSERT [dbo].[LinkManImg] OFF
/****** Object:  Table [dbo].[CompanyNotice]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyNotice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[Content] [nvarchar](2000) NULL,
	[Title] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyNotice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyNotice] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyMessage]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Content] [nvarchar](2000) NULL,
	[Title] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyMessage] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[CompanyMessage] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyLogoImg]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyLogoImg](
	[CompanyID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.CompanyLogoImg] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyLogoImg] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompanyLogoImg] ON
INSERT [dbo].[CompanyLogoImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/18/77708699-4a47-4694-bbdd-bbf38329ca61_small.jpg', N'/Upload/Normal/2013/4/18/77708699-4a47-4694-bbdd-bbf38329ca61_small.jpg')
SET IDENTITY_INSERT [dbo].[CompanyLogoImg] OFF
/****** Object:  Table [dbo].[CompanyImg]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyImg](
	[CompanyID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.CompanyImg] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyImg] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompanyImg] ON
INSERT [dbo].[CompanyImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/18/ec9e69ea-0f2d-4015-a416-911e5032eb37.JPG,/Upload/Normal/2013/4/18/f7f6ceca-db3a-40a6-a055-a83f6c592635.JPG', N'/Upload/Normal/2013/4/18/ec9e69ea-0f2d-4015-a416-911e5032eb37.JPG')
SET IDENTITY_INSERT [dbo].[CompanyImg] OFF
/****** Object:  Table [dbo].[CompanyCredentialsImg]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyCredentialsImg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrl] [nvarchar](200) NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.CompanyCredentialsImg] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyCredentialsImg] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyBannerImg]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyBannerImg](
	[CompanyID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.CompanyBannerImg] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyBannerImg] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member_Profile]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Profile](
	[MemberID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Borthday] [datetime] NOT NULL,
	[CityCode] [int] NOT NULL,
	[RealName] [nvarchar](20) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NULL,
	[QQ] [nvarchar](20) NULL,
	[MSN] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Lat] [float] NOT NULL,
	[Lng] [float] NOT NULL,
	[Description] [nvarchar](150) NULL,
	[VipStartTime] [datetime] NOT NULL,
	[VipEndTime] [datetime] NOT NULL,
	[VipLevel] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member_Profile] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityCode] ON [dbo].[Member_Profile] 
(
	[CityCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_Profile] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[MemberID] [int] NOT NULL,
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LinkMan] [nvarchar](50) NULL,
	[Sex] [bit] NOT NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[QQ] [nvarchar](50) NULL,
	[MSN] [nvarchar](50) NULL,
	[Lat] [float] NOT NULL,
	[Lng] [float] NOT NULL,
	[CityCode] [int] NOT NULL,
	[ScaleCode] [int] NOT NULL,
	[FundCode] [int] NOT NULL,
	[BussinessCode] [int] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[LastIP] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[AddIP] [nvarchar](50) NULL,
	[Description] [nvarchar](2000) NULL,
	[Unapprovedlog] [nvarchar](500) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Company] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BussinessCode] ON [dbo].[Company] 
(
	[BussinessCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityCode] ON [dbo].[Company] 
(
	[CityCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FundCode] ON [dbo].[Company] 
(
	[FundCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Company] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ScaleCode] ON [dbo].[Company] 
(
	[ScaleCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON
INSERT [dbo].[Company] ([MemberID], [CompanyID], [Name], [LinkMan], [Sex], [Address], [Phone], [Mobile], [Fax], [QQ], [MSN], [Lat], [Lng], [CityCode], [ScaleCode], [FundCode], [BussinessCode], [LastTime], [LastIP], [AddTime], [AddIP], [Description], [Unapprovedlog], [Status]) VALUES (1, 1, N'海城瑞驰广告传播中心', N'申先生', 0, N'海城市永安路', NULL, N'18321841288', NULL, NULL, NULL, 122.75682067871094, 40.846649169921875, 121, 435, 429, 424, CAST(0x0000A1A40120A61B AS DateTime), N'127.0.0.1', CAST(0x0000A1A40120A61A AS DateTime), N'127.0.0.1', N' 海城瑞驰广告是一家从事户外媒体开发、代理发布、大型户外广告工程制作、企业外部形象（vi）导入专业广告公司。
    本公司主要经营高速公路单立柱广告媒体。媒体范围在辽宁、吉林、河北等省，辽宁地区有沈阳-大连高速公路、北京-哈尔滨高速公路辽宁段；吉林省境内有四平-长春段及长春环城高速公路。媒体主要分布在：1、北京-沈阳高速公路广告媒体主要分布在辽宁段起点沈阳-万家收费站及葫芦岛、锦州、盘锦、辽中、沈阳等城市附近。2、沈阳-大连高速公路媒体主要分布在沈阳、辽阳、鞍山、营口、大连段沿线。3、其它路段有沈阳绕城高速、沈阳-毛家店、沈阳-丹东等高速公路沿线。吉林境内主要分布在四平-长春段和长春外环高速公路。
    多年来，我们只专注做高速媒体开发、制作、销售与整合，因为专注，所以专业，所以才有专业的品质，且秉承“专心、专业铸就高品质”的企业经营理念，始终贯彻“用心做人做事”的发展观，立足本地，辐射全国，整合全国各地媒体资源，为客户提供一站式服务。
    眼望未来，我们踌躇满志，决心力争打造一个集媒体开发、整合销售、执行于一体的专业户外广告商！', NULL, 2)
SET IDENTITY_INSERT [dbo].[Company] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](50) NULL,
	[PID] [int] NULL,
	[Length] [int] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[CategoryType] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PID] ON [dbo].[Category] 
(
	[PID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (1, N'北京', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (2, N'上海市', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (3, N'天津市', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (4, N'重庆市', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (5, N'河北省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (6, N'山西省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (7, N'内蒙古', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (8, N'辽宁省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (9, N'吉林省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (10, N'黑龙江省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (11, N'江苏省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (12, N'浙江省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (13, N'安徽省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (14, N'福建省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (15, N'江西省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (16, N'山东省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (17, N'河南省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (18, N'湖北省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (19, N'湖南省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (20, N'广东省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (21, N'广西', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (22, N'海南省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (23, N'四川省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (24, N'贵州省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (25, N'云南省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (26, N'西藏', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (27, N'陕西省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (28, N'甘肃省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (29, N'青海省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (30, N'宁夏', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (31, N'新疆', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (32, N'香港', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (33, N'澳门', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (34, N'台湾省', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (35, N'全国', NULL, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (36, N'东城区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (37, N'西城区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (38, N'朝阳区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (39, N'丰台区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (40, N'石景山区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (41, N'海淀区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (42, N'门头沟区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (43, N'房山区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (44, N'通州区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (45, N'顺义区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (46, N'昌平区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (47, N'大兴区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (48, N'怀柔区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (49, N'平谷区', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (50, N'密云县', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (51, N'延庆县', 1, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (52, N'和平区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (53, N'河东区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (54, N'河西区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (55, N'南开区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (56, N'河北区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (57, N'红桥区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (58, N'东丽区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (59, N'西青区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (60, N'津南区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (61, N'北辰区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (62, N'武清区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (63, N'宝坻区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (64, N'滨海新区', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (65, N'宁河县', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (66, N'静海县', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (67, N'蓟县县', 3, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (68, N'渝中区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (69, N'大渡口区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (70, N'江北区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (71, N'沙坪坝区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (72, N'九龙坡区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (73, N'南岸区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (74, N'北碚区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (75, N'渝北区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (76, N'巴南区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (77, N'万州区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (78, N'涪陵区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (79, N'黔江区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (80, N'长寿区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (81, N'江津区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (82, N'合川区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (83, N'永川区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (84, N'南川区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (85, N'綦江区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (86, N'大足区', 4, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (87, N'石家庄', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (88, N'唐山市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (89, N'秦皇岛', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (90, N'邯郸市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (91, N'邢台市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (92, N'张家口', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (93, N'保定市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (94, N'承德市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (95, N'沧州市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (96, N'廊坊市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (97, N'衡水市', 5, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (98, N'太原市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (99, N'大同市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (100, N'阳泉市', 6, 0, 0, N'Area')
GO
print 'Processed 100 total records'
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (101, N'长治市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (102, N'晋城市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (103, N'朔州市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (104, N'晋中市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (105, N'运城市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (106, N'忻州市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (107, N'临汾市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (108, N'吕梁市', 6, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (109, N'呼和浩特', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (110, N'包头市', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (111, N'乌海市', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (112, N'赤峰市', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (113, N'通辽市', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (114, N'鄂尔多斯', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (115, N'呼伦贝尔', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (116, N'巴彦淖尔', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (117, N'乌兰察布', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (118, N'兴安市', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (119, N'锡林郭勒', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (120, N'阿拉善', 7, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (121, N'沈阳市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (122, N'大连市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (123, N'鞍山市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (124, N'抚顺市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (125, N'本溪市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (126, N'丹东市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (127, N'锦州市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (128, N'营口市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (129, N'阜新市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (130, N'辽阳市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (131, N'盘锦市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (132, N'铁岭市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (133, N'朝阳市', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (134, N'葫芦岛', 8, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (135, N'长春市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (136, N'吉林市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (137, N'四平市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (138, N'辽源市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (139, N'通化市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (140, N'白山市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (141, N'松原市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (142, N'延边市', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (143, N'白城', 9, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (144, N'哈尔滨', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (145, N'齐齐哈尔', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (146, N'鸡西市', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (147, N'鹤岗市', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (148, N'双鸭山', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (149, N'大庆市', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (150, N'伊春市', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (151, N'佳木斯', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (152, N'七台河', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (153, N'牡丹江', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (154, N'黑河市', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (155, N'绥化市', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (156, N'大兴安岭', 10, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (157, N'南京市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (158, N'无锡市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (159, N'徐州市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (160, N'常州市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (161, N'苏州市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (162, N'南通市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (163, N'连云港', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (164, N'淮安市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (165, N'盐城市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (166, N'扬州市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (167, N'泰州市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (168, N'宿迁市', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (169, N'常熟', 11, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (170, N'杭州市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (171, N'宁波市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (172, N'温州市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (173, N'嘉兴市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (174, N'湖州市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (175, N'绍兴市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (176, N'金华市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (177, N'衢州市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (178, N'舟山市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (179, N'丽水市', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (180, N'乐清', 12, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (181, N'合肥市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (182, N'芜湖市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (183, N'蚌埠市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (184, N'淮南市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (185, N'马鞍山', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (186, N'淮北市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (187, N'铜陵市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (188, N'安庆市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (189, N'黄山市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (190, N'滁州市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (191, N'阜阳市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (192, N'宿州市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (193, N'巢湖市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (194, N'六安市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (195, N'毫州市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (196, N'池州市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (197, N'宣城市', 13, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (198, N'福州市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (199, N'厦门市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (200, N'莆田市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (201, N'三明市', 14, 0, 0, N'Area')
GO
print 'Processed 200 total records'
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (202, N'泉州市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (203, N'漳州市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (204, N'南平市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (205, N'龙岩市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (206, N'宁德市', 14, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (207, N'南昌', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (208, N'景德镇', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (209, N'萍乡', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (210, N'九江', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (211, N'新余', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (212, N'鹰潭', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (213, N'吉安', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (214, N'宜春', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (215, N'抚州', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (216, N'上饶', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (217, N'赣州', 15, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (218, N'济南', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (219, N'青岛', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (220, N'淄博', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (221, N'枣庄', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (222, N'东营', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (223, N'烟台', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (224, N'潍坊', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (225, N'威海', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (226, N'济宁', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (227, N'泰安', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (228, N'日照', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (229, N'莱芜', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (230, N'临沂', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (231, N'德州', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (232, N'聊城', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (233, N'滨州', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (234, N'菏泽', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (235, N'昌邑', 16, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (236, N'郑州', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (237, N'开封', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (238, N'洛阳', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (239, N'平顶山', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (240, N'焦作', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (241, N'鹤壁', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (242, N'新乡', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (243, N'安阳', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (244, N'濮阳', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (245, N'许昌', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (246, N'漯河', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (247, N'三门峡', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (248, N'南阳', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (249, N'商丘', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (250, N'信阳', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (251, N'周口', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (252, N'驻马店', 17, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (253, N'武汉', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (254, N'黄石', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (255, N'襄樊', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (256, N'十堰', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (257, N'荆州', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (258, N'宜昌', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (259, N'荆门', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (260, N'鄂州', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (261, N'孝感', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (262, N'黄冈', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (263, N'咸宁', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (264, N'随州', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (265, N'恩施', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (266, N'潜江', 18, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (267, N'长沙', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (268, N'株洲', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (269, N'湘潭', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (270, N'衡阳', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (271, N'邵阳', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (272, N'岳阳', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (273, N'常德', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (274, N'张家界', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (275, N'郴州', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (276, N'益阳', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (277, N'永州', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (278, N'怀化', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (279, N'娄底', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (280, N'湘西', 19, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (281, N'广州', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (282, N'深圳', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (283, N'珠海', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (284, N'汕头', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (285, N'韶关', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (286, N'佛山', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (287, N'江门', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (288, N'湛江', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (289, N'茂名', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (290, N'肇庆', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (291, N'惠州', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (292, N'梅州', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (293, N'汕尾', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (294, N'河源', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (295, N'阳江', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (296, N'清远', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (297, N'潮州', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (298, N'揭阳', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (299, N'云浮', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (300, N'东莞', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (301, N'中山', 20, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (302, N'南宁', 21, 0, 0, N'Area')
GO
print 'Processed 300 total records'
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (303, N'柳州', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (304, N'桂林', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (305, N'梧州', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (306, N'北海', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (307, N'防城港', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (308, N'钦州', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (309, N'贵港', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (310, N'玉林', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (311, N'百色', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (312, N'贺州', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (313, N'河池', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (314, N'来宾', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (315, N'崇左', 21, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (316, N'海口', 22, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (317, N'三亚', 22, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (318, N'成都', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (319, N'自贡', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (320, N'攀枝花', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (321, N'泸州', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (322, N'德阳', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (323, N'绵阳', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (324, N'广元', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (325, N'遂宁', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (326, N'内江', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (327, N'乐山', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (328, N'南充', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (329, N'宜宾', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (330, N'广安', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (331, N'达州', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (332, N'眉山', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (333, N'巴中', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (334, N'资阳', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (335, N'阿坝', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (336, N'甘孜', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (337, N'凉山', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (338, N'雅安', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (339, N'都江堰', 23, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (340, N'贵阳', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (341, N'六盘水', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (342, N'遵义', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (343, N'安顺', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (344, N'铜仁', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (345, N'毕节', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (346, N'黔西南', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (347, N'黔东南', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (348, N'黔南', 24, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (349, N'昆明', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (350, N'曲靖', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (351, N'玉溪', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (352, N'保山', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (353, N'昭通', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (354, N'普洱', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (355, N'丽江', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (356, N'临沧', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (357, N'文山', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (358, N'红河', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (359, N'西双版纳', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (360, N'楚雄', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (361, N'大理', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (362, N'德宏', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (363, N'怒江', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (364, N'迪庆', 25, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (365, N'拉萨', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (366, N'昌都', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (367, N'山南', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (368, N'日喀则', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (369, N'那曲', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (370, N'阿里', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (371, N'林芝', 26, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (372, N'西安', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (373, N'铜川', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (374, N'宝鸡', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (375, N'咸阳', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (376, N'渭南', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (377, N'延安', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (378, N'汉中', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (379, N'榆林', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (380, N'安康', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (381, N'商洛', 27, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (382, N'兰州', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (383, N'嘉峪关', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (384, N'金昌', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (385, N'白银', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (386, N'天水', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (387, N'武威', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (388, N'张掖', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (389, N'平凉', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (390, N'酒泉', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (391, N'庆阳', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (392, N'定西', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (393, N'陇南', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (394, N'临夏', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (395, N'甘南', 28, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (396, N'西宁', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (397, N'海东', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (398, N'海北', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (399, N'黄南', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (400, N'海南', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (401, N'果洛', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (402, N'玉树', 29, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (403, N'海西', 29, 0, 0, N'Area')
GO
print 'Processed 400 total records'
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (404, N'银川', 30, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (405, N'石嘴山', 30, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (406, N'吴忠', 30, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (407, N'固原', 30, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (408, N'中卫', 30, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (409, N'乌鲁木齐', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (410, N'克拉玛依', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (411, N'吐鲁番', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (412, N'哈密', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (413, N'和田', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (414, N'阿克苏', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (415, N'喀什', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (416, N'克孜勒苏柯尔克孜', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (417, N'巴音郭楞', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (418, N'蒙古', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (419, N'昌吉', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (420, N'博尔塔拉蒙古', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (421, N'伊犁哈萨克', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (422, N'塔城', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (423, N'阿勒泰', 31, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (424, N'买广告媒体', NULL, 0, 0, N'CompanyBussiness')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (425, N'卖广告媒体', NULL, 0, 0, N'CompanyBussiness')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (426, N'5万以下', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (427, N'5万-10万', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (428, N'10万-50万', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (429, N'50万-100万', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (430, N'100万-500万', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (431, N'500万-1000万', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (432, N'1000万-5000万', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (433, N'5000万以上', NULL, 0, 0, N'CompanyFund')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (434, N'20人以下', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (435, N'20-99人', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (436, N'100-499人', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (437, N'500-999人', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (438, N'1000-4999人', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (439, N'5000-9999人', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (440, N'10000人以上', NULL, 0, 0, N'CompanyScale')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (441, N'商住楼宇', NULL, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (442, N'社区网络', NULL, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (443, N'公共交通', NULL, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (444, N'机场媒体', NULL, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (445, N'公共场所', NULL, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (446, N'公路户外', NULL, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (447, N'喷绘/写真', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (448, N'喷画灯箱', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (449, N'LED灯箱', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (450, N'大型LED电视	', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (451, N'多面翻', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (452, N'电视', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (453, N'大型看板', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (454, N'门贴', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (455, N'车身喷画	', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (456, N'灯旗', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (457, N'椅套', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (458, N'包柱', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (459, N'拉手套 ', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (460, N'车贴', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (461, N'电梯看板	', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (462, N'墙体喷漆', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (463, N'窗贴', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (464, N'投光灯', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (465, N'堆头造型', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (466, N'平面媒体', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (467, N'空中汽艇', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (468, N'霓虹灯', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (469, N'其他', NULL, 0, 0, N'Format')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (470, N'一般代理', NULL, 0, 0, N'Owner')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (471, N'自有媒体', NULL, 0, 0, N'Owner')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (472, N'独家代理', NULL, 0, 0, N'Owner')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (473, N'行业代理', NULL, 0, 0, N'Owner')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (474, N'优势代理', NULL, 0, 0, N'Owner')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (475, N'一月', NULL, 0, 0, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (476, N'一季度', NULL, 0, 0, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (477, N'半年', NULL, 0, 0, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (478, N'一年', NULL, 0, 0, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (479, N'两年', NULL, 0, 0, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (480, N'两年以上', NULL, 0, 0, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (481, N'液晶电视', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (482, N'大厅海报', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (483, N'电梯看板', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (484, N'电梯门贴', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (485, N'地下停车场', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (486, N'公告栏', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (487, N'墙体大牌', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (488, N'楼顶大牌', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (489, N'大型LED', 441, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (490, N'普通住宅', 442, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (491, N'公寓住宅', 442, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (492, N'中档住宅', 442, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (493, N'高档住宅', 442, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (494, N'商住社区', 442, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (495, N'别墅住宅', 442, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (496, N'市内巴士', 443, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (497, N'的士', 443, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (498, N'省外大巴', 443, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (499, N'地铁', 443, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (500, N'列车', 443, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (501, N'船运', 443, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (502, N'机场高速', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (503, N'机场大牌', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (504, N'机场看板', 444, 0, 0, N'OutDoorMedia')
GO
print 'Processed 500 total records'
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (505, N'机场灯箱', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (506, N'机场包柱', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (507, N'机场电视', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (508, N'机场吊旗', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (509, N'廊桥广告', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (510, N'刷屏机', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (511, N'机翼广告', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (512, N'机票广告', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (513, N'飞机椅套', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (514, N'刊物', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (515, N'展架', 444, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (516, N'百货商场', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (517, N'超市', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (518, N'户外广场', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (519, N'医院', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (520, N'高校', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (521, N'高尔夫球场', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (522, N'艺术中心', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (523, N'加油站', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (524, N'边检站', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (525, N'健身会所', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (526, N'公园', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (527, N'景点', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (528, N'娱乐场', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (529, N'其它', 445, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (530, N'立柱', 446, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (531, N'立地大牌', 446, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (532, N'墙体', 446, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (533, N' 楼顶', 446, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (534, N'围挡', 446, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (535, N'包楼广告', 446, 0, 0, N'OutDoorMedia')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (536, N'黄浦区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (537, N'徐汇区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (538, N'长宁区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (539, N'静安区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (540, N'普陀区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (541, N'闸北区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (542, N'虹口区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (543, N'杨浦区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (544, N'闵行区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (545, N'宝山区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (546, N'嘉定区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (547, N'浦东新区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (548, N'金山区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (549, N'松江区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (550, N'青浦区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (551, N'奉贤区', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (552, N'崇明县', 2, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (553, N'香港', 32, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (554, N'澳门', 33, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (555, N'台湾', 34, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (556, N'全国', 35, 0, 0, N'Area')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (557, N'加盟我们', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (558, N'会员权益', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (559, N'帮助中心', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (560, N'使用指南', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (561, N'了解我们', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (562, N'服务条款', NULL, 0, 0, N'Article')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[NickName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[AvtarUrl] [nvarchar](500) NULL,
	[GroupID] [int] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[LastIP] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[OpenType] [int] NOT NULL,
	[OpenID] [nvarchar](50) NULL,
	[AddIP] [nvarchar](50) NULL,
	[LoginCount] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[Member] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GroupID] ON [dbo].[Member] 
(
	[GroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member] ON
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (1, NULL, N'shenhaijunmail@163.com', N'夜幕流浪', N'954a8069343989ba', NULL, 4, CAST(0x0000A1A4012135D1 AS DateTime), N'127.0.0.1', CAST(0x0000A1A4011C0496 AS DateTime), 2, N'2.007Gt8CC0J5WSa06a8ba417eWyoIlD', N'127.0.0.1', 2, 5)
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (2, NULL, N'56404908@qq.com', N'鹏飞', N'954a8069343989ba', NULL, 1, CAST(0x0000A1A40124861D AS DateTime), N'127.0.0.1', CAST(0x0000A1A40124861D AS DateTime), 1, N'867500BB0033503199D9DC514C44A18D', N'127.0.0.1', 1, 1)
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[Group]    Script Date: 04/18/2013 18:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Group] ON
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (1, N'基本会员', N'基本会员')
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (2, N'Backup Operators', N'备份操作员为了备份或还原文件可以替代安全限制')
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (3, N'Video Manager', N'视频监管,视频审核')
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (4, N'超级管理员', N'超级管理员')
SET IDENTITY_INSERT [dbo].[Group] OFF
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NVARCHAR(MAX),
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO
GO
/****** Object:  Table [dbo].[Department]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
	[Leader] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (2, N'销售部', N'负责软件的销售', N'郭富城')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (3, N'开发部', N'负责程序的开发和部署', N'刘德华')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (4, N'编辑部', N'负责日常新闻的采集，和发布', N'黎明')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (5, N'人力资源部', N'负责公司人员招聘录用', N'张祖贤')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (6, N'测试部', N'负责各种测试任务', N'张学友')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[WorkItem]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](64) NULL,
	[WorkerId] [nvarchar](64) NULL,
	[Started] [datetime] NOT NULL,
	[Completed] [datetime] NULL,
	[ExceptionInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WorkItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[WorkItem] ON
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (1, N'Lucene', N'45cc8f35-e497-4a0d-9517-273530134286', CAST(0x0000A1A4009727FE AS DateTime), CAST(0x0000A1A40099E79A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (2, N'Lucene', N'45cc8f35-e497-4a0d-9517-273530134286', CAST(0x0000A1A40099E7F5 AS DateTime), CAST(0x0000A1A4009CA739 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (3, N'Lucene', N'45cc8f35-e497-4a0d-9517-273530134286', CAST(0x0000A1A4009CA73B AS DateTime), CAST(0x0000A1A4009ECB53 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (4, N'Lucene', N'8bb5b866-cd02-48a5-bf1e-8715655103fa', CAST(0x0000A1A4009ECB9F AS DateTime), CAST(0x0000A1A400A18ACE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (5, N'Lucene', N'8bb5b866-cd02-48a5-bf1e-8715655103fa', CAST(0x0000A1A400A18ACF AS DateTime), CAST(0x0000A1A400A25935 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (6, N'Lucene', N'00c44406-0a62-4b79-9220-0e82e8e08ced', CAST(0x0000A1A400A25961 AS DateTime), CAST(0x0000A1A400A5188D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (7, N'Lucene', N'00c44406-0a62-4b79-9220-0e82e8e08ced', CAST(0x0000A1A400A5188E AS DateTime), CAST(0x0000A1A400A51896 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[WorkItem] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (2, N'权限管理', N'权限管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (3, N'角色管理', N'角色管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (4, N'用户群组管理', N'用户群组管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (5, N'部门管理', N'部门管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (6, N'后台登陆', N'后台登陆')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (7, N'用户管理', N'用户管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (8, N'基本会员', N'基本会员')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (9, N'数据字典管理', N'数据字典管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (10, N'企业信息审核', N'企业信息审核')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (11, N'户外信息审核', N'户外信息审核')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (12, N'文章管理', N'文章管理')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[AreaAtt]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaAtt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AreaAtt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AreaAtt] ON
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (1, N'餐厅')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (2, N'食堂')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (3, N'公交站')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (4, N'地铁站')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (5, N'码头')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (6, N'交通要道')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (7, N'经济区域')
INSERT [dbo].[AreaAtt] ([ID], [AttName]) VALUES (8, N'商业区域')
SET IDENTITY_INSERT [dbo].[AreaAtt] OFF
/****** Object:  Table [dbo].[OutDoor]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutDoor](
	[MediaID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PriceExten] [nvarchar](100) NULL,
	[Location] [nvarchar](100) NOT NULL,
	[Lng] [decimal](18, 2) NOT NULL,
	[Lat] [decimal](18, 2) NOT NULL,
	[HasLight] [bit] NOT NULL,
	[LightStrat] [nvarchar](50) NULL,
	[LightEnd] [nvarchar](50) NULL,
	[Wdith] [decimal](18, 2) NOT NULL,
	[Height] [decimal](18, 2) NOT NULL,
	[TotalFaces] [int] NOT NULL,
	[TrafficAuto] [int] NOT NULL,
	[TrafficPerson] [int] NOT NULL,
	[CityCode] [int] NOT NULL,
	[FormatCode] [int] NOT NULL,
	[MeidaCode] [int] NOT NULL,
	[PeriodCode] [int] NOT NULL,
	[OwnerCode] [int] NOT NULL,
	[Deadline] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](2500) NOT NULL,
	[Integrity] [int] NOT NULL,
	[Hit] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[Favorite] [int] NOT NULL,
	[Message] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[AddIP] [nvarchar](50) NULL,
	[AdminUser] [int] NOT NULL,
	[LastIP] [nvarchar](50) NULL,
	[Unapprovedlog] [nvarchar](500) NULL,
	[SeoTitle] [nvarchar](100) NULL,
	[SeoDes] [nvarchar](250) NULL,
	[Seokeywords] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.OutDoor] PRIMARY KEY CLUSTERED 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityCode] ON [dbo].[OutDoor] 
(
	[CityCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FormatCode] ON [dbo].[OutDoor] 
(
	[FormatCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MeidaCode] ON [dbo].[OutDoor] 
(
	[MeidaCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_OwnerCode] ON [dbo].[OutDoor] 
(
	[OwnerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PeriodCode] ON [dbo].[OutDoor] 
(
	[PeriodCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Roles]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Roles](
	[GroupID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Group_Roles] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GroupID] ON [dbo].[Group_Roles] 
(
	[GroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleID] ON [dbo].[Group_Roles] 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (3, 2)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 2)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 3)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (3, 4)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 4)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (2, 5)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 5)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 6)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 7)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (1, 8)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 8)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 9)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 10)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 11)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 12)
/****** Object:  Table [dbo].[Permissions]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
	[Controller] [nvarchar](50) NULL,
	[Action] [nvarchar](50) NULL,
	[Namespace] [nvarchar](50) NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DepartmentID] ON [dbo].[Permissions] 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (2, N'权限管理', N'权限管理（添加、编辑、删除）', N'permission', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (3, N'权限添加', N'权限添加', N'permission', N'create', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (4, N'权限编辑', N'权限编辑', N'permission', N'edit', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (5, N'权限删除', N'权限删除', N'permission', N'delete', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (6, N'角色管理', N'角色管理CURD', N'roles', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (7, N'角色添加', N'角色添加', N'roles', N'create', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (8, N'角色删除', N'角色删除', N'roles', N'delete', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (9, N'角色编辑', N'角色编辑', N'roles', N'edit', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (11, N'用户群组编辑', N'用户群组编辑', N'group', N'edit', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (12, N'用户群组添加', N'用户群组添加', N'group', N'create', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (13, N'用户群组管理', N'用户群组管理', N'group', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (14, N'用户管理', N'用户管理', N'member', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (15, N'部门管理', N'部门管理', N'department', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (16, N'用户群组删除', N'用户群组删除', N'group', N'delete', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (17, N'后台权限', N'后台权限', N'dashboard', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (18, N'基本会员', N'基本会员', N'home', N'controller', N'default', 6)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (19, N'媒体表现形式', N'媒体表现形式', N'formatcate', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (20, N'公司规模管理', N'公司规模管理', N'companyscale', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (21, N'公司注册资金管理', N'公司注册资金管理', N'companyfund', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (22, N'公司业务类型管理', N'公司业务类型管理', N'companybussiness', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (23, N'户外类型管理', N'户外类型管理', N'outdoormediacate', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (24, N'地区列表管理', N'地区列表', N'areas', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (25, N'区域属性管理', N'区域属性管理', N'areaatt', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (26, N'媒体购买周期管理', N'媒体购买周期管理', N'periodcate', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (27, N'媒体所有权管理', N'媒体所有权管理', N'ownercate', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (28, N'企业信息审核', N'企业信息审核', N'companyverify', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (29, N'户外信息审核', N'户外信息审核', N'outdoorverify', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (30, N'文章类别管理', N'文章类别管理', N'articlecate', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (31, N'文章管理', N'文章管理', N'article', N'controller', N'default', 3)
SET IDENTITY_INSERT [dbo].[Permissions] OFF
/****** Object:  Table [dbo].[StaticTemplate]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaticTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateKey] [nvarchar](50) NULL,
	[ProvinceCode] [int] NOT NULL,
	[Duration] [int] NOT NULL,
	[DurationDate] [datetime] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.StaticTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProvinceCode] ON [dbo].[StaticTemplate] 
(
	[ProvinceCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Content] [nvarchar](max) NULL,
	[ArticleCode] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[LastTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Article] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticleCode] ON [dbo].[Article] 
(
	[ArticleCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (1, N'关于我们', N'&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;网易保健品商城是网易公司旗下专营保健品及营养食品的平价垂直网销平台。平台主打高端保健营养产品，与国内外众多知名保健品厂商建立了直接合作关系，降低了消费者的购买成本。&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 全场包邮，全场所有商品免邮费，无最低起免金额，真正为您省钱！&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 保证正品，3维度产品筛选方式，保证知名品牌，保证厂家供货，保证正品！&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 专家服务，三家医院专业营养师为您提供建议，让您了解自己的身体状况，买适合自己的保健品。&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;我们秉承着“绿色、健康、关爱”的宗旨，立志成为中国最大的保健品垂直销售网站，让每一个用户都能买到安全放心的保健品。&lt;/p&gt;', 561, CAST(0x0000A1A401235D7A AS DateTime), CAST(0x0000A1A401235D7B AS DateTime))
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (2, N'商家加盟', N'&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;网易保健品全场100%正品，杜绝假货，欢迎国内外各大保健品厂家入驻合作。&lt;br /&gt;如有合作意向，欢迎您发送邮件至baojian@service.netease.com，我们会有专门的商务人员联系您。&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;请您在邮件内注明公司名称并附上公司的详细介绍（公司简介、公司网址、注册资本、供应商级别、商品及商品品牌简介），联系人及联系方式，您的每一封邮件我们都会详细审阅，并尽快给您答复。&lt;/p&gt;', 557, CAST(0x0000A1A4012389F4 AS DateTime), CAST(0x0000A1A4012389F4 AS DateTime))
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (3, N'使用流程', N'&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;1.注册账号/登陆&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;1）新用户注册：点击首页顶部“注册”进入注册页面后输入邮箱地址、用户名、密码及验证码，按照提示完成注册。&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;2）老用户登陆：请在"登陆网易通行证 "页面输入登陆账号、密码进行登陆。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy1.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;2.查找商品&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您可以通过在&lt;strong&gt;首页输入关键字&lt;/strong&gt;或者通过&lt;strong&gt;查看网易导航分类&lt;/strong&gt;两种方式找到您想要的商品。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy2.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;3.放入购物车&lt;/strong&gt;&lt;/p&gt;&lt;pre style="margin-top:0px;margin-bottom:0px;padding:0px;line-height:30px;"&gt;1）挑选商品后，您可以“立即购买”或者“放入购物车”
2）在购物车中，系统默认每件商品的订购数量为1件，如果您想购买多件商品，可修改购买数量。 
3）在购物车中，您可以将商品加入收藏夹，或是选择删除。&lt;/pre&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;4.提交订单&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;1）浏览要购买的商品，选择购买数量点击“立即购买”，直接结算。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy3.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;2）或者在购物车中，选择好商品及数量后“去结算”。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy4.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;3）填写购物人信息，收货信息、配送方式、支付方式、发票信息(根据个人需要填写)等。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy5.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy6.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy7.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;4）确认无误后点击“提交订单”，生成新订单并显示订单编号。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy8.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;5.支付货款&lt;/strong&gt;&lt;/p&gt;&lt;pre style="margin-top:0px;margin-bottom:0px;padding:0px;line-height:30px;"&gt;网易提供多种支付方式，订购过程中您可以选择：
1）网易宝支付
2）网上银行支付
3）手机充值卡支付
4）支付宝支付
&lt;/pre&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;6.查看订单状态&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您可进入“个人中心”→“我的订单”查看订单详细信息。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy9.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;&lt;strong&gt;7.收货后评价&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;收到商品之后，您可以对购买商品进行评价。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/buy10.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;pre style="margin-top:0px;margin-bottom:0px;padding:0px;line-height:30px;"&gt;&lt;strong&gt;开通网易宝&lt;/strong&gt;
点击链接，按照指示操作：&lt;a href="https://epay.163.com/servlet/controller?operation=main" style="text-decoration:none;color:#4b8400;" target="_blank"&gt;https://epay.163.com/servlet/controller?operation=main&lt;/a&gt;
&lt;strong&gt;网易宝充值&lt;/strong&gt;
点击后链接，按照指示操作：&lt;a href="https://epay.163.com/servlet/controller?operation=fillValueView" style="text-decoration:none;color:#4b8400;" target="_blank"&gt;https://epay.163.com/servlet/controller?operation=fillValueView&lt;/a&gt;
&lt;strong&gt;快递运输&lt;/strong&gt;
   1）网易保健品商城全场免邮费，当我们接到订单后，后争取让商家第一时间给您发货，以减少您的等待时间。
   2）通常情况下新疆、西藏地区的用户订单我们会通过EMS为您送达，在途时间可能稍长，请您耐心等待。
   3）港澳台地区的用户暂时不支持购买，请您见谅。
   4）网易保健品提供订单物流跟踪功能，所查询信息均来源于合作快递公司官网，部分官网需要输入验证码查询，为您带来的不便敬请谅解。
&lt;strong&gt;8.订单状态&lt;/strong&gt;
在“个人中心”→“我的订单”中您可以查看到您订单的状态。
   1）等待付款
当您提交订单但未支付货款时，订单状态将显示为等待付款。
   2）已发货
当您的订单已由库房发出，正由快递公司送货，“订单状态”将显示交易成功。
   3）交易成功
当您签收商品之后，也就是物流得到签收完成后，“订单状态”即显示交易成功。
   4）等待发货
当您的订单已经完成配货，正在等待发货时，订单状态将显示“等待发货”。
   5）订单关闭
当您的订单已被关闭，订单状态将显示“订单关闭”。        &lt;/pre&gt;', 560, CAST(0x0000A1A40123B102 AS DateTime), CAST(0x0000A1A40123B102 AS DateTime))
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (4, N'服务条款', N'&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;欢迎阅读新浪地产网服务条款协议 ( 下称“本协议” ) 。本协议阐述之条款和条件适用于您使用 dichan.com 网站所提供的各种信息和服务 ( 下称“服务” ) 。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;1.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;接受条款。&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;1.1 通过首页进入 dichan.com 网站即表示您同意自己已经与新浪地产网公订立本协议，且您将受本协议的条款和条件 ( “条款” ) 约束。新浪地产网可随时自行全权决定更改“条款”。如“条款”有任何变更，新浪地产网将其网站上刊载公告，通知予您。如您不同意相关变更，必须停止使用“服务”。经修订的“条款”一经在新浪地产网网站的公布后，立即自动生效。您登录或继续使用“服务”将表示您接受经修订的“条款”。除另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。除非经新浪地产网的授权高层管理人员签订书面协议，本协议不得另行作出修订。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;1.2 用户必须同意接受新浪地产网通过电子邮件或其他方式向用户发送商品促销或其他相关商业信息。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;2.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;谁可使用 dichan.com ？&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;“服务”仅供能够根据相关法律订立具有法律约束力的合约的个人或公司使用。因此，您的年龄必须在十八周岁或以上，才可使用本公司服务。如不符合本项条件，请勿使用“服务”。新浪地产网可随时自行全权决定拒绝向任何人士提供“服务”。“服务”不会提供给被暂时或永久中止资格的新浪地产网会员。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;3.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;收费。&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;本公司保留在根据第 1 条通知您后，收取“服务”费用的权利。您因进行交易、向本公司获取有偿服务或接触本公司服务器而发生的所有应纳税赋，以及一切硬件、软件、服务及其他方面的费用均由您负责支付。本公司保留在无须发出通知的情况下，暂时或永久地更改或停止部份或全部“服务”的权利。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;4.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;您授予本公司的许可使用权。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您授予本公司独家的、全球通用的、永久的、免费的许可使用权利 ( 并有权在多个层面对该权利进行再授权 ) ，使本公司有权 ( 全部或部份地 ) 使用、复制、修订、改写、发布、翻译、分发、执行和展示“您的资料”或制作其派生作品，和 / 或以现在已知或日后开发的任何形式、媒体或技术，将“您的资料”纳入其他作品内。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;5.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;隐私。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;新浪地产网将仅根据本公司的隐私声明使用“您的资料”。本公司隐私声明的全部条款属于本协议的一部份，因此，您必须仔细阅读。请注意，您一旦自愿地在新浪地产网交易地点披露“您的资料”，该等资料即可能被其他人士获取和使用。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;6.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;终止或访问限制。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您同意，新浪地产网可自行全权决定以任何理由 ( 包括但不限于新浪地产网认为您已违反本协议的字面意义和精神，或以不符合本协议的字面意义和精神的方式行事，或您在超过 90 天的时间内未以您的帐号及密码登录网站 ) 终止您的“服务”密码、帐户 ( 或其任何部份 ) 或您对“服务”的使用，并删除和丢弃您在使用“服务”中提交的的“您的资料”。新浪地产网同时可自行全权决定，在发出通知或不发出通知的情况下，随时停止提供“服务”或其任何部份。您同意，根据本协议的任何规定终止您使用“服务”之措施可在不发出事先通知的情况下实施，并承认和同意，新浪地产网可立即使您的帐户无效，或撤销您的帐户以及在您的帐户内的所有相关资料和档案，和 / 或禁止您进一步接入该等档案或“服务”。帐号终止后，新浪地产网没有义务为您保留原帐号中或与之相关的任何信息，或转发任何未曾阅读或发送的信息给您或第三方。此外，您同意，新浪地产网不会就终止您接入“服务”而对您或任何第三者承担任何责任。第 8 、 9 、 10 和 18各条应在本协议终止后继续有效。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;7.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;违反规则会有什么后果？&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;在不限制其他补救措施的前提下，发生下述任一情况，本公司可立即发出警告，暂时中止、永久中止或终止您的会员资格，删除您的任何现有产品信息，以及您在网站上展示的任何其他资料： (i) 您违反本协议； (ii) 本公司无法核实或鉴定您向本公司提供的任何资料；或 (iii) 本公司相信您的行为可能会使您、本公司用户或通过本公司或本公司网站提供服务的第三者服务供应商发生任何法律责任。在不限制任何其他补救措施的前提下，倘若发现您从事涉及本公司网站的诈骗活动，新浪地产网可暂停或终止您的帐户。 &amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;8.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;服务“按现状”提供。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;本公司会尽一切努力使您在使用新浪地产网网站的过程中得到乐趣。遗憾的是，本公司不能随时预见到任何技术上的问题或其他困难。该等困难可能会导致数据损失或其他服务中断。为此，您明确理解和同意，您使用“服务”的风险由您自行承担。“服务”以“按现状”和“按可得到”的基础提供。新浪地产网明确声明不作出任何种类的所有明示或暗示的保证，包括但不限于关於适销性、适用於某一特定用途和无侵权行为等方面的保证。新浪地产网对下述内容不作保证： (i) “服务”会符合您的要求； (ii) “服务”不会中断，且适时、安全和不带任何错误； (iii) 通过使用“服务”而可能获取的结果将是准确或可信赖的；及 (iv) 您通过“服务”而购买或获取的任何产品、服务、资料或其他材料的质量将符合您的预期。通过使用“服务”而下载或以其他形式获取任何材料是由您自行全权决定进行的，且与此有关的风险由您自行承担，对于因您下载任何该等材料而发生的您的电脑系统的任何损毁或任何数据损失，您将自行承担责任。您从新浪地产网或通过或从“服务”获取的任何口头或书面意见或资料，均不产生未在本协议内明确载明的任何保证。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;9.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;责任范围。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您明确理解和同意，新浪地产网不对因下述任一情况而发生的任何损害赔偿承担责任，包括但不限於利润、商誉、使用、数据等方面的损失或其他无形损失的损害赔偿 ( 无论新浪地产网是否已被告知该等损害赔偿的可能性 ) ： (i) 使用或未能使用“服务”； (ii) 因通过或从“服务”购买或获取任何货物、样品、数据、资料或服务，或通过或从“服务”接收任何信息或缔结任何交易所产生的获取替代货物和服务的费用； (iii) 未经批准接入或更改您的传输资料或数据； (iv) 任何第三者对“服务”的声明或关於“服务”的行为；或 (v) 因任何原因而引起的与“服务”有关的任何其他事宜，包括疏忽。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;10.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;赔偿。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您同意，因您违反本协议或经在此提及而纳入本协议的其他文件，或因您违反了法律或侵害了第三方的权利，而使第三方对新浪地产网及其子公司、分公司、董事、职员、代理人提出索赔要求（包括司法费用和其他专业人士的费用），您必须赔偿给新浪地产网及其子公司、分公司、董事、职员、代理人，使其等免遭损失。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;11.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;遵守法律。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您应遵守与您使用“服务”，以及与您竞买、购买和销售任何物品以及提供商贸信息有关的所有相关的法律、法规、条例和规章。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;12.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;无代理关系。&lt;/strong&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您与新浪地产网仅为独立订约人关系。本协议无意结成或创设任何代理、合伙、合营、雇用与被雇用或特许权授予与被授予关系。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;13.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;广告和金融服务。&lt;/strong&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;您与在“服务”上或通过“服务”物色的刊登广告人士通讯或进行业务往来或参与其推广活动，包括就相关货物或服务付款和交付相关货物或服务，以及与该等业务往来相关的任何其他条款、条件、保证或声明，仅限于在您和该刊登广告人士之间发生。您同意，对于因任何该等业务往来或因在“服务”上出现该等刊登广告人士而发生的任何种类的任何损失或损毁，新浪地产网无需负责或承担任何责任。您如打算通过“服务”创设或参与与任何公司、股票行情、投资或证券有关的任何服务，或通过“服务”收取或要求与任何公司、股票行情、投资或证券有关的任何新闻信息、警戒性信息或其他资料，敬请注意，新浪地产网不会就通过“服务”传送的任何该等资料的准确性、有用性或可用性、可获利性负责或承担任何责任，且不会对根据该等资料而作出的任何交易或投资决策负责或承担任何责任。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;14.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;链接。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;“服务”或第三者均可提供与其他万维网网站或资源的链接。由于新浪地产网并不控制该等网站和资源，您承认并同意，新浪地产网并不对该等外在网站或资源的可用性负责，且不认可该等网站或资源上或可从该等网站或资源获取的任何内容、宣传、产品、服务或其他材料，也不对其等负责或承担任何责任。您进一步承认和同意，对于任何因使用或信赖从此类网站或资源上获取的此类内容、宣传、产品、服务或其他材料而造成（或声称造成）的任何直接或间接损失，新浪地产网均不承担责任。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;15.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;通知。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;除非另有明确规定，任何通知应以电子邮件形式发送， ( 就新浪地产网而言 ) 电子邮件地址为 service@dichan.com ，或 ( 就您而言 ) 发送到您在登记过程中向新浪地产网提供的电子邮件地址，或有关方指明的该等其他地址。在电子邮件发出二十四 (24) 小时后，通知应被视为已送达，除非发送人被告知相关电子邮件地址已作废。或者，本公司可通过邮资预付挂号邮件并要求回执的方式，将通知发到您在登记过程中向新浪地产网提供的地址。在该情况下，在付邮当日三 (3) 天后通知被视为已送达。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;16.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;不可抗力。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;对于因本公司合理控制范围以外的原因，包括但不限於自然灾害、罢工或骚乱、物质短缺或定量配给、暴动、战争行为、政府行为、通讯或其他设施故障或严重伤亡事故等，致使本公司延迟或未能履约的，新浪地产网不对您承担任何责任。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;17.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;转让。&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;新浪地产网转让本协议无需经您同意。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;18.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;其他规定。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;本协议构成您和新浪地产网之间的全部协议，规定了您对“服务”的使用，并取代您和新浪地产网先前订立的任何书面或口头协议。本协议各方面应受中华人民共和国大陆地区法律的管辖。倘若本协议任何规定被裁定为无效或不可强制执行，该项规定应被撤销，而其余规定应予执行。条款标题仅为方便参阅而设，并不以任何方式界定、限制、解释或描述该条款的范围或限度。本公司未就您或其他人士的某项违约行为采取行动，并不表明本公司撤回就任何继后或类似的违约事件采取行动的权利。&amp;nbsp;&lt;/span&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;19.&amp;nbsp;&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;仲裁。&lt;/strong&gt;&lt;strong style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;"&gt;&amp;nbsp;&lt;/strong&gt;&lt;br style="margin:0px;padding:0px;border:0px;color:#333333;font-family:Simsun;line-height:26px;" /&gt;&lt;span style="color:#333333;font-family:Simsun;line-height:26px;"&gt;因本协议或本公司服务所引起或与其有关的任何争议应提交中国上海市仲裁委员会并根据其适用的仲裁规则进行仲裁裁决。任何该等争议应单独地仲裁，不得与任何其他方的争议在任何仲裁中合并处理。仲裁应在中国上海市进行，而仲裁裁决可提交对其有管辖权的任何法院予以强制执行。您或新浪地产网在仲裁进行期间，可向中国上海地区内具有管辖权的法院寻求为保护您或新浪地产网的权利或财产所需的任何临时或初步补救措施，包括但不限于财产保全或证据保全措施 &amp;nbsp;&lt;/span&gt;', 562, CAST(0x0000A1A401240770 AS DateTime), CAST(0x0000A1A401240770 AS DateTime))
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (5, N'常见问题', N'&lt;strong style="font-family:arial, 宋体;line-height:30px;"&gt;1.订单已提交成功，什么时候可以发货？&lt;/strong&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您好！订单提交成功后我们会尽快发货。欲查询详细进度，您可进入“个人中心—我的订单-订单详情”，可实时查看。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help1.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;h3 style="margin:0px;padding:20px 0px 5px;font-size:12px;font-family:arial, 宋体;line-height:30px;"&gt;2.买到的商品有质量问题，如何换货？&lt;/h3&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您好！当您所购商品遇到问题需要换货的时候，请按照如下步骤操作：&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;Step1：先登录到网易保健品的“个人中心”，查看“我的订单”。找到相应的商品，点击“申请换货”。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help2.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;Step2：发起换货申请后，请您保持自己预留的联系方式通信畅通，我们的客服人员会通过您在个人中心留下的联系方式尽快联系您，并为您处理相关的换货事宜。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help3.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;Step3：如您长时间没有收到我们客服的联系，请注意查看自己“个人中心”的通知，或在我们页面顶部的“意见薄”留言。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help4.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;h3 style="margin:0px;padding:20px 0px 5px;font-size:12px;font-family:arial, 宋体;line-height:30px;"&gt;3.买到的商品有质量问题，如何退货？&lt;/h3&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您好！当您所购商品遇到问题需要退货的时候，请按照如下步骤操作：&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;Step1：请您先登录到网易保健品的“个人中心”，在“我的订单”内找到相应订单，点击“申请退货”。特别提示：形同的商品同时购买多件，必须同时退回。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help5.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help6.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;Step2：发起换货申请后，请您保持自己预留的联系方式通信畅通，我们的客服人员会通过您在个人中心留下的联系方式尽快联系您，并为您处理相关的退货事宜。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help7.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;Step3：如您长时间没有收到我们客服的联系，请注意查看自己“个人中心”的通知，或在我们页面顶部的“意见薄”留言。&lt;/p&gt;&lt;h3 style="margin:0px;padding:20px 0px 5px;font-size:12px;font-family:arial, 宋体;line-height:30px;"&gt;4.怎么查看退换货的进度和详情？&lt;/h3&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您好！当您已经申请退换货后，登录到网易保健品的“个人中心”并查看我的订单，在我的退换货里面可以查看你的退换货进度和详情。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help8.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;h3 style="margin:0px;padding:20px 0px 5px;font-size:12px;font-family:arial, 宋体;line-height:30px;"&gt;5.网站上面显示商品已售完请问什么时候可以在到货？&lt;/h3&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您好！有关无货商品，我们会督促供应商尽快到货，您可以通过商品页面的“到货通知”功能获得商品到货提醒。&lt;/p&gt;&lt;p class="tc" style="margin-bottom:0px;padding-right:0px;padding-left:0px;text-align:center;font-family:arial, 宋体;line-height:30px;background-image:none;"&gt;&lt;img src="http://img3.126.net/health/images/help/help9.jpg?20121122" style="border:0px;vertical-align:middle;" width="550" /&gt;&lt;/p&gt;&lt;h3 style="margin:0px;padding:20px 0px 5px;font-size:12px;font-family:arial, 宋体;line-height:30px;"&gt;6.快递运输覆盖范围及收费标准？&lt;/h3&gt;&lt;p style="margin-bottom:0px;padding-right:0px;padding-left:0px;font-family:arial, 宋体;line-height:30px;"&gt;您好！网易保健品商城全场免邮费，新疆、西藏等偏远地区我们会安排EMS等快递送达，但时间可能稍长，请耐心等待。港澳台地区的用户暂时不支持购买，请您见谅。&lt;/p&gt;', 559, CAST(0x0000A1A4012428A2 AS DateTime), CAST(0x0000A1A4012428A2 AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF
/****** Object:  Table [dbo].[TopBase]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopBase](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MediaID] [int] NOT NULL,
	[TopStart] [datetime] NOT NULL,
	[TopEnd] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TopBase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[TopBase] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleBase]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleBase](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MediaID] [int] NOT NULL,
	[SaleStart] [datetime] NOT NULL,
	[SaleEnd] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SaleBase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[SaleBase] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutDoor_AreaAtt]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutDoor_AreaAtt](
	[OutDoorID] [int] NOT NULL,
	[AreaAttID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OutDoor_AreaAtt] PRIMARY KEY CLUSTERED 
(
	[OutDoorID] ASC,
	[AreaAttID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AreaAttID] ON [dbo].[OutDoor_AreaAtt] 
(
	[AreaAttID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_OutDoorID] ON [dbo].[OutDoor_AreaAtt] 
(
	[OutDoorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Permissions]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Permissions](
	[RoleID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Role_Permissions] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PermissionID] ON [dbo].[Role_Permissions] 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleID] ON [dbo].[Role_Permissions] 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (2, 2)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (2, 3)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (2, 4)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (2, 5)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (3, 6)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (3, 7)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (3, 8)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (3, 9)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (4, 11)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (4, 12)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (4, 13)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (7, 14)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (5, 15)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (4, 16)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (6, 17)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (8, 18)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 19)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 20)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 21)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 22)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 23)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 24)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 25)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 26)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 27)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (10, 28)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (11, 29)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (9, 30)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (12, 31)
/****** Object:  Table [dbo].[MediaImg]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaImg](
	[MediaID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.MediaImg] PRIMARY KEY CLUSTERED 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[MediaImg] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MapImg]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapImg](
	[MediaID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.MapImg] PRIMARY KEY CLUSTERED 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[MapImg] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CredentialsImg]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CredentialsImg](
	[MediaID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ImgUrls] [nvarchar](2000) NOT NULL,
	[FocusImgUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.CredentialsImg] PRIMARY KEY CLUSTERED 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[CredentialsImg] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuctionCalendar]    Script Date: 04/18/2013 18:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionCalendar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[MediaID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AuctionCalendar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[AuctionCalendar] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Action_dbo.Member_MemberID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Member_Action]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Action] CHECK CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.LinkManImg_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[LinkManImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[LinkManImg] CHECK CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyNotice_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyNotice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyNotice_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyNotice] CHECK CONSTRAINT [FK_dbo.CompanyNotice_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyMessage_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyMessage_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyMessage] CHECK CONSTRAINT [FK_dbo.CompanyMessage_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyMessage_dbo.Member_MemberID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyMessage_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyMessage] CHECK CONSTRAINT [FK_dbo.CompanyMessage_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyLogoImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyLogoImg] CHECK CONSTRAINT [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyImg_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyImg] CHECK CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyCredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyCredentialsImg] CHECK CONSTRAINT [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[CompanyBannerImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyBannerImg] CHECK CONSTRAINT [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Category_CityCode]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Member_MemberID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_BussinessCode]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode] FOREIGN KEY([BussinessCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_CityCode]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_FundCode]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode] FOREIGN KEY([FundCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_ScaleCode]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode] FOREIGN KEY([ScaleCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Member_MemberID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Category_dbo.Category_PID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Category_dbo.Category_PID] FOREIGN KEY([PID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_dbo.Category_dbo.Category_PID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Company_CompanyID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Group_GroupID]    Script Date: 04/18/2013 18:08:10 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_CityCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_FormatCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode] FOREIGN KEY([FormatCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_MeidaCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode] FOREIGN KEY([MeidaCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_OwnerCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode] FOREIGN KEY([OwnerCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_PeriodCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode] FOREIGN KEY([PeriodCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Group_GroupID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Roles_RoleID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.Permissions_dbo.Department_DepartmentID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID]
GO
/****** Object:  ForeignKey [FK_dbo.StaticTemplate_dbo.Category_ProvinceCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[StaticTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StaticTemplate_dbo.Category_ProvinceCode] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[StaticTemplate] CHECK CONSTRAINT [FK_dbo.StaticTemplate_dbo.Category_ProvinceCode]
GO
/****** Object:  ForeignKey [FK_dbo.Article_dbo.Category_ArticleCode]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Article_dbo.Category_ArticleCode] FOREIGN KEY([ArticleCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_dbo.Article_dbo.Category_ArticleCode]
GO
/****** Object:  ForeignKey [FK_dbo.TopBase_dbo.OutDoor_MediaID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[TopBase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TopBase_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TopBase] CHECK CONSTRAINT [FK_dbo.TopBase_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.SaleBase_dbo.OutDoor_MediaID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[SaleBase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleBase_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleBase] CHECK CONSTRAINT [FK_dbo.SaleBase_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID] FOREIGN KEY([AreaAttID])
REFERENCES [dbo].[AreaAtt] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID] FOREIGN KEY([OutDoorID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Roles_RoleID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.MediaImg_dbo.OutDoor_MediaID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[MediaImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MediaImg] CHECK CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.MapImg_dbo.OutDoor_MediaID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[MapImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MapImg] CHECK CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[CredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[CredentialsImg] CHECK CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]    Script Date: 04/18/2013 18:08:18 ******/
ALTER TABLE [dbo].[AuctionCalendar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuctionCalendar] CHECK CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]
GO
