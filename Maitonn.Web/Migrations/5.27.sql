USE [Maitonn]
GO
/****** Object:  Table [dbo].[AuctionCalendar]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[AuctionCalendar] ON
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (3, CAST(0x0000A1AC00000000 AS DateTime), CAST(0x0000A20C00000000 AS DateTime), 1)
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (5, CAST(0x0000A25400000000 AS DateTime), CAST(0x0000A26800000000 AS DateTime), 1)
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (7, CAST(0x0000A1B200000000 AS DateTime), CAST(0x0000A1CF00000000 AS DateTime), 18)
SET IDENTITY_INSERT [dbo].[AuctionCalendar] OFF
/****** Object:  Table [dbo].[CredentialsImg]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[CredentialsImg] ON
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/23/1fa5fcaa-e583-4c02-a274-db9a1e33256d.JPG,/Upload/Normal/2013/4/23/cf0b54de-1913-4992-92a1-e1db09d7f2de.JPG', N'/Upload/Normal/2013/4/23/1fa5fcaa-e583-4c02-a274-db9a1e33256d_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (2, 2, 1, N'/Upload/Normal/2013/4/26/77f2bf2e-d918-4428-9c3c-d385bb90cd4a.JPG', N'/Upload/Normal/2013/4/26/77f2bf2e-d918-4428-9c3c-d385bb90cd4a_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (3, 3, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (4, 4, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (5, 5, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (6, 6, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (7, 7, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (8, 8, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (9, 9, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (10, 10, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (11, 11, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (12, 12, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (13, 13, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (14, 14, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (15, 15, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (16, 16, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (17, 17, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (18, 18, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (19, 19, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (20, 20, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (21, 21, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (22, 22, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (23, 23, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (24, 24, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (25, 25, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (26, 26, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (27, 27, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (28, 28, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (29, 29, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (30, 30, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (31, 31, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (32, 32, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (33, 33, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (34, 34, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (35, 35, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (36, 36, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (37, 37, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (38, 38, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (39, 39, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (40, 40, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (41, 41, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (42, 42, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (43, 43, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (44, 44, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (45, 45, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (46, 46, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (47, 47, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (48, 48, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (49, 49, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (50, 50, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (51, 51, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (52, 52, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (53, 53, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (54, 54, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (55, 55, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (56, 56, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (57, 57, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (58, 58, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (59, 59, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (60, 60, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (61, 61, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (62, 62, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (63, 63, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (64, 64, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (65, 65, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (66, 66, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (67, 67, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (68, 68, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (69, 69, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (70, 70, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (71, 71, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (72, 72, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (73, 73, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (74, 74, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (75, 75, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (76, 76, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (77, 77, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (78, 78, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (79, 79, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (80, 80, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (81, 81, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (82, 82, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (83, 83, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (84, 84, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (85, 85, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (86, 86, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (87, 87, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (88, 88, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (89, 89, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (90, 90, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (91, 91, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (92, 92, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (93, 93, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (94, 94, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (95, 95, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (96, 96, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (97, 97, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (98, 98, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (99, 99, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (100, 100, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
GO
print 'Processed 100 total records'
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (101, 101, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (102, 102, 1, N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1.JPG', N'/Upload/Normal/2013/4/28/e583860c-6018-444f-be52-fea1c3537fa1_120.JPG')
SET IDENTITY_INSERT [dbo].[CredentialsImg] OFF
/****** Object:  Table [dbo].[CompanyNotice]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[CompanyNotice] ON
INSERT [dbo].[CompanyNotice] ([ID], [MemberID], [CompanyID], [Content], [Title], [AddTime], [Status]) VALUES (1, 1, 1, N'4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测', N'4月23号倩女幽魂2公测', CAST(0x0000A1A800B757A1 AS DateTime), 2)
INSERT [dbo].[CompanyNotice] ([ID], [MemberID], [CompanyID], [Content], [Title], [AddTime], [Status]) VALUES (2, 1, 1, N'阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家阿斯蒂芬建行卡家', N'阿斯蒂芬建行卡家', CAST(0x0000A1B8010354F4 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[CompanyNotice] OFF
/****** Object:  Table [dbo].[CompanyLogoImg]    Script Date: 05/27/2013 17:45:29 ******/
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
/****** Object:  Table [dbo].[CompanyImg]    Script Date: 05/27/2013 17:45:29 ******/
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
/****** Object:  Table [dbo].[CompanyCredentialsImg]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[CompanyCredentialsImg] ON
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/22/9df4e706-d0fc-4b3b-8588-8f71deac275e.JPG', N'营业执照')
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (2, 1, 1, N'/Upload/Normal/2013/4/22/bfb2c332-c685-40a7-9559-f073494fe219.JPG', N'组织机构代码证')
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (3, 1, 1, N'/Upload/Normal/2013/5/8/4a2dbb2f-104d-484e-90b2-0ea983c176c6.JPG', N'测试证书')
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (4, 1, 1, N'/Upload/Normal/2013/5/24/77d14bd2-813a-4464-bed8-b28d7e789b7e.JPG', N'原图测试')
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (7, 1, 1, N'/Upload/Normal/2013/5/24/8335ae49-e034-409b-8210-00115029e8ec.JPG', N'撒旦法斯蒂芬')
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (8, 1, 1, N'/Upload/Normal/2013/5/24/0bec31d8-1bdf-4ca2-91ca-94403f58a836.JPG', N'阿斯蒂芬11')
SET IDENTITY_INSERT [dbo].[CompanyCredentialsImg] OFF
/****** Object:  Table [dbo].[CompanyBannerImg]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[CompanyBannerImg] ON
INSERT [dbo].[CompanyBannerImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 0, N'/Upload/Normal/2013/4/22/1c6a81a9-2513-47a9-b9e6-c9fe33e352e5.JPG', N'/Upload/Normal/2013/4/22/1c6a81a9-2513-47a9-b9e6-c9fe33e352e5.JPG')
SET IDENTITY_INSERT [dbo].[CompanyBannerImg] OFF
/****** Object:  Table [dbo].[Member_VIP]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_VIP](
	[MemberID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[AddMemberID] [int] NOT NULL,
	[VipLevel] [int] NOT NULL,
	[PayTime] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_dbo.Member_VIP] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_VIP] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_VIP] ON
INSERT [dbo].[Member_VIP] ([MemberID], [ID], [StartTime], [EndTime], [AddTime], [AddMemberID], [VipLevel], [PayTime], [Description]) VALUES (1, 3, CAST(0x0000A1AC00AE53AD AS DateTime), CAST(0x0000A22701269A22 AS DateTime), CAST(0x0000A1AC00AE52EC AS DateTime), 0, 3, 4, N'广知通VIP')
INSERT [dbo].[Member_VIP] ([MemberID], [ID], [StartTime], [EndTime], [AddTime], [AddMemberID], [VipLevel], [PayTime], [Description]) VALUES (2, 7, CAST(0x0000A1AC00B901C5 AS DateTime), CAST(0x0000A227012983C5 AS DateTime), CAST(0x0000A1AC00B901C5 AS DateTime), 0, 3, 2, N'广知通VIP')
SET IDENTITY_INSERT [dbo].[Member_VIP] OFF
/****** Object:  Table [dbo].[Member_Scheme]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Scheme](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[AddTime] [datetime] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member_Scheme] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_Scheme] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_Scheme] ON
INSERT [dbo].[Member_Scheme] ([ID], [MemberID], [Name], [Description], [AddTime], [LastTime], [Status]) VALUES (7, 1, N'广告阿道夫阿斯蒂芬', N'广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬广告阿道夫阿斯蒂芬', CAST(0x0000A1C000F8DA0B AS DateTime), CAST(0x0000A1C000F8DA0B AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Member_Scheme] OFF
/****** Object:  Table [dbo].[Member_Favorite]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Favorite](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[MediaID] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member_Favorite] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_Favorite] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_Favorite] ON
INSERT [dbo].[Member_Favorite] ([ID], [MemberID], [MediaID], [AddTime], [Status]) VALUES (4, 1, 56, CAST(0x0000A1BE0108D07C AS DateTime), 0)
INSERT [dbo].[Member_Favorite] ([ID], [MemberID], [MediaID], [AddTime], [Status]) VALUES (5, 1, 96, CAST(0x0000A1BE01128283 AS DateTime), 0)
INSERT [dbo].[Member_Favorite] ([ID], [MemberID], [MediaID], [AddTime], [Status]) VALUES (6, 1, 1, CAST(0x0000A1BF00B0C28B AS DateTime), 0)
INSERT [dbo].[Member_Favorite] ([ID], [MemberID], [MediaID], [AddTime], [Status]) VALUES (7, 1, 53, CAST(0x0000A1C800BE92CB AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Member_Favorite] OFF
/****** Object:  Table [dbo].[Member_CreditIndex]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_CreditIndex](
	[MemberID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TotalCreditIndex] [int] NOT NULL,
	[CreditIndex00] [int] NOT NULL,
	[CreditIndex01] [int] NOT NULL,
	[CreditIndex02] [int] NOT NULL,
	[CreditIndex03] [int] NOT NULL,
	[CreditIndex04] [int] NOT NULL,
	[CreditIndex05] [int] NOT NULL,
	[CreditIndex06] [int] NOT NULL,
	[CreditIndex07] [int] NOT NULL,
	[CreditIndex08] [int] NOT NULL,
	[CreditIndex09] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member_CreditIndex] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_CreditIndex] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_CreditIndex] ON
INSERT [dbo].[Member_CreditIndex] ([MemberID], [ID], [TotalCreditIndex], [CreditIndex00], [CreditIndex01], [CreditIndex02], [CreditIndex03], [CreditIndex04], [CreditIndex05], [CreditIndex06], [CreditIndex07], [CreditIndex08], [CreditIndex09]) VALUES (1, 2, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Member_CreditIndex] ([MemberID], [ID], [TotalCreditIndex], [CreditIndex00], [CreditIndex01], [CreditIndex02], [CreditIndex03], [CreditIndex04], [CreditIndex05], [CreditIndex06], [CreditIndex07], [CreditIndex08], [CreditIndex09]) VALUES (23, 1, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Member_CreditIndex] OFF
/****** Object:  Table [dbo].[Member_Action]    Script Date: 05/27/2013 17:45:29 ******/
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
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (4, 3, 1, N'登录', NULL, CAST(0x0000A1A800B61C92 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (5, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1A900E7187E AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (6, 3, 1, N'登录', NULL, CAST(0x0000A1AA00BF5BE9 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (7, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1AB00FBE871 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (8, 3, 2, N'登录', NULL, CAST(0x0000A1AC00B63588 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (9, 3, 1, N'登录', NULL, CAST(0x0000A1AC00C169DD AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (10, 3, 1, N'登录', NULL, CAST(0x0000A1AD00B24640 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (11, 3, 1, N'登录', NULL, CAST(0x0000A1AD0103A12B AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (12, 3, 2, N'登录', NULL, CAST(0x0000A1AD0126CE6F AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (13, 3, 1, N'登录', NULL, CAST(0x0000A1AE00B17B5C AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (14, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1B200A37AFE AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (15, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1B200A37E18 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (16, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1B200A37E36 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (17, 3, 1, N'登录', NULL, CAST(0x0000A1B201219400 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (19, 3, 2, N'登录', NULL, CAST(0x0000A1B300F492B9 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (37, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1B701060937 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (38, 6, 23, N'b3b59637-79b2-4d71-9c92-243c0ab23c8f', N'127.0.0.1', CAST(0x0000A1B70110CF4E AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (39, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1B70116A694 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (40, 3, 23, N'登录', N'127.0.0.1', CAST(0x0000A1B800E603EA AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (41, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1B800E96DC6 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (42, 3, 23, N'登录', N'192.168.0.141', CAST(0x0000A1B8010EA85B AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (43, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1BA00AB3BD8 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (44, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1BD00F19839 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (45, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1BE00B16C11 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (46, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1BE0117B437 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (47, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1BF00AF6F4A AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (48, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1C000BFB90D AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (49, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1C400E543F7 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (50, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1C60107ADA5 AS DateTime))
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (51, 3, 1, N'登录', N'127.0.0.1', CAST(0x0000A1C800BE8DBF AS DateTime))
SET IDENTITY_INSERT [dbo].[Member_Action] OFF
/****** Object:  Table [dbo].[CompanyMessage]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[CompanyMessage] ON
INSERT [dbo].[CompanyMessage] ([ID], [MemberID], [CompanyID], [Status], [Content], [Title], [AddTime]) VALUES (1, 1, 1, 1, N'城瑞驰广告是一家从事户外媒体开发、代理发布、大型户外广告工程制作、企业外部形象（vi）导入专业广告公司。 本公司主要经营高速公路单立柱广告媒体。媒体范围在辽', N'广州户外广州大道南广告牌', CAST(0x0000A1BF00AFF34C AS DateTime))
INSERT [dbo].[CompanyMessage] ([ID], [MemberID], [CompanyID], [Status], [Content], [Title], [AddTime]) VALUES (2, 1, 1, 1, N'海城瑞驰广告是一家从事户外媒体开发、代理发布、大型户外广告工程制作、企业外部形象（vi）导入专业广告公司。 本公司主要经营高速公路单立柱广告媒体。媒体范围在辽宁、吉林、河北等省，辽宁地区有沈阳-大连高速公路、北京-哈尔滨高速公路...[详细]海城瑞驰广告是一家从事户外媒体开发、代理发布、大型户外广告工程制作、企业外部形象（vi）导入专业广告公司。 本公司主要经营高速公路单立柱广告媒体。媒体范围在辽宁', N'萨迪克龙卷风撒娇户外大牌', CAST(0x0000A1C800C266A8 AS DateTime))
SET IDENTITY_INSERT [dbo].[CompanyMessage] OFF
/****** Object:  Table [dbo].[MediaImg]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[MediaImg] ON
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/23/24893cfc-ad29-4d64-bc85-c45b6e07967a.JPG,/Upload/Normal/2013/4/23/36b0c178-1915-4bb4-89f0-c812132158d0.JPG,/Upload/Normal/2013/4/23/43905fe4-9b19-4bde-b31c-be7f15917008.JPG,/Upload/Normal/2013/4/23/db2b0a72-10c3-4fed-9726-b959f6232faa.JPG', N'/Upload/Normal/2013/4/23/24893cfc-ad29-4d64-bc85-c45b6e07967a_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (2, 2, 1, N'/Upload/Normal/2013/4/26/b9367ec4-b8ea-45a9-99b3-03fb56996fc0.JPG,/Upload/Normal/2013/4/26/8b7ca749-5281-45d0-86a9-ed69c0ef78c3.JPG,/Upload/Normal/2013/4/26/d102571c-1efb-4f68-8619-3a85fd258340.JPG,/Upload/Normal/2013/4/26/b356ae93-10f9-4594-98a3-f29a9fe464f2.JPG,/Upload/Normal/2013/4/26/b0a54e92-3b0a-47f1-b101-d499190c741b.JPG', N'/Upload/Normal/2013/4/26/b9367ec4-b8ea-45a9-99b3-03fb56996fc0_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (3, 3, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (4, 4, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (5, 5, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (6, 6, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (7, 7, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (8, 8, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (9, 9, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (10, 10, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (11, 11, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (12, 12, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (13, 13, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (14, 14, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (15, 15, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (16, 16, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (17, 17, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (18, 18, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (19, 19, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (20, 20, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (21, 21, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (22, 22, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (23, 23, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (24, 24, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (25, 25, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (26, 26, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (27, 27, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (28, 28, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (29, 29, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (30, 30, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (31, 31, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (32, 32, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (33, 33, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (34, 34, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (35, 35, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (36, 36, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (37, 37, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (38, 38, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (39, 39, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (40, 40, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (41, 41, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (42, 42, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (43, 43, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (44, 44, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (45, 45, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (46, 46, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (47, 47, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (48, 48, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (49, 49, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (50, 50, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (51, 51, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (52, 52, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (53, 53, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG,/Upload/Normal/2013/5/22/daae3e0a-14b1-4e08-b001-f648cac3db7c.JPG,/Upload/Normal/2013/5/22/8c951e67-d7ab-46d3-9b98-91b3b41fb1e7.JPG,/Upload/Normal/2013/5/22/6001ceeb-72eb-4c8e-afb8-72e46b7ed8c9.JPG,/Upload/Normal/2013/5/22/cd47318f-c856-4307-b106-d8b90e8a7a03.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (54, 54, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (55, 55, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (56, 56, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (57, 57, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (58, 58, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (59, 59, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (60, 60, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (61, 61, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (62, 62, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (63, 63, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (64, 64, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (65, 65, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (66, 66, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (67, 67, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (68, 68, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (69, 69, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (70, 70, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (71, 71, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (72, 72, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (73, 73, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (74, 74, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (75, 75, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (76, 76, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (77, 77, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (78, 78, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (79, 79, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (80, 80, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (81, 81, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (82, 82, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (83, 83, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (84, 84, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (85, 85, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (86, 86, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (87, 87, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (88, 88, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (89, 89, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (90, 90, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (91, 91, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (92, 92, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (93, 93, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (94, 94, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (95, 95, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (96, 96, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (97, 97, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (98, 98, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (99, 99, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (100, 100, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
GO
print 'Processed 100 total records'
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (101, 101, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (102, 102, 1, N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed.JPG,/Upload/Normal/2013/4/28/8c70c1ae-9812-43d6-b6e0-dcc0279bfc10.JPG', N'/Upload/Normal/2013/4/28/35df2c2c-bbe0-400e-a49f-affe1b834fed_120.JPG')
SET IDENTITY_INSERT [dbo].[MediaImg] OFF
/****** Object:  Table [dbo].[TopMedia]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopMedia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MediaID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[TopStart] [datetime] NOT NULL,
	[TopEnd] [datetime] NOT NULL,
	[IsQuanGuo] [bit] NOT NULL,
	[ProvinceCode] [int] NOT NULL,
	[CityCode] [int] NOT NULL,
	[IsByCategory] [bit] NOT NULL,
	[PCategoryCode] [int] NOT NULL,
	[CategoryCode] [int] NOT NULL,
	[IsByChildCategory] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TopMedia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MediaID] ON [dbo].[TopMedia] 
(
	[MediaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TopMedia] ON
INSERT [dbo].[TopMedia] ([ID], [MediaID], [MemberID], [TopStart], [TopEnd], [IsQuanGuo], [ProvinceCode], [CityCode], [IsByCategory], [PCategoryCode], [CategoryCode], [IsByChildCategory]) VALUES (1, 50, 1, CAST(0x0000A1AE00000000 AS DateTime), CAST(0x0000A1B300000000 AS DateTime), 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[TopMedia] ([ID], [MediaID], [MemberID], [TopStart], [TopEnd], [IsQuanGuo], [ProvinceCode], [CityCode], [IsByCategory], [PCategoryCode], [CategoryCode], [IsByChildCategory]) VALUES (2, 98, 1, CAST(0x0000A1B200000000 AS DateTime), CAST(0x0000A1B300000000 AS DateTime), 0, 1, 0, 1, 0, 493, 1)
INSERT [dbo].[TopMedia] ([ID], [MediaID], [MemberID], [TopStart], [TopEnd], [IsQuanGuo], [ProvinceCode], [CityCode], [IsByCategory], [PCategoryCode], [CategoryCode], [IsByChildCategory]) VALUES (3, 102, 1, CAST(0x0000A1BA00000000 AS DateTime), CAST(0x0000A1C400000000 AS DateTime), 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[TopMedia] ([ID], [MediaID], [MemberID], [TopStart], [TopEnd], [IsQuanGuo], [ProvinceCode], [CityCode], [IsByCategory], [PCategoryCode], [CategoryCode], [IsByChildCategory]) VALUES (4, 101, 1, CAST(0x0000A1BA00000000 AS DateTime), CAST(0x0000A1BD00000000 AS DateTime), 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[TopMedia] ([ID], [MediaID], [MemberID], [TopStart], [TopEnd], [IsQuanGuo], [ProvinceCode], [CityCode], [IsByCategory], [PCategoryCode], [CategoryCode], [IsByChildCategory]) VALUES (5, 2, 1, CAST(0x0000A1BA00000000 AS DateTime), CAST(0x0000A1BF00000000 AS DateTime), 1, 35, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[TopMedia] OFF
/****** Object:  Table [dbo].[TopCompany]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopCompany](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[TopStart] [datetime] NOT NULL,
	[TopEnd] [datetime] NOT NULL,
	[IsQuanGuo] [bit] NOT NULL,
	[ProvinceCode] [int] NOT NULL,
	[CityCode] [int] NOT NULL,
	[IsByCategory] [bit] NOT NULL,
	[PCategoryCode] [int] NOT NULL,
	[CategoryCode] [int] NOT NULL,
	[IsByChildCategory] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TopCompany] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[TopCompany] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TopCompany] ON
INSERT [dbo].[TopCompany] ([ID], [MemberID], [TopStart], [TopEnd], [IsQuanGuo], [ProvinceCode], [CityCode], [IsByCategory], [PCategoryCode], [CategoryCode], [IsByChildCategory]) VALUES (1, 1, CAST(0x0000A1BA00000000 AS DateTime), CAST(0x0000A1BD00000000 AS DateTime), 1, 1, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[TopCompany] OFF
/****** Object:  Table [dbo].[MapImg]    Script Date: 05/27/2013 17:45:29 ******/
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
/****** Object:  Table [dbo].[LinkManImg]    Script Date: 05/27/2013 17:45:29 ******/
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
/****** Object:  Table [dbo].[Member_Money]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Money](
	[MemberID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TotalMoney] [int] NOT NULL,
	[Money00] [int] NOT NULL,
	[Money01] [int] NOT NULL,
	[Money02] [int] NOT NULL,
	[Money03] [int] NOT NULL,
	[Money04] [int] NOT NULL,
	[Money05] [int] NOT NULL,
	[Money06] [int] NOT NULL,
	[Money07] [int] NOT NULL,
	[Money08] [int] NOT NULL,
	[Money09] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member_Money] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[Member_Money] 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_Money] ON
INSERT [dbo].[Member_Money] ([MemberID], [ID], [TotalMoney], [Money00], [Money01], [Money02], [Money03], [Money04], [Money05], [Money06], [Money07], [Money08], [Money09]) VALUES (1, 1, 404, 14, 452, 4320, 0, 0, 0, 0, -4382, 0, 0)
INSERT [dbo].[Member_Money] ([MemberID], [ID], [TotalMoney], [Money00], [Money01], [Money02], [Money03], [Money04], [Money05], [Money06], [Money07], [Money08], [Money09]) VALUES (2, 5, 3511, 0, 31, 3480, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Member_Money] ([MemberID], [ID], [TotalMoney], [Money00], [Money01], [Money02], [Money03], [Money04], [Money05], [Money06], [Money07], [Money08], [Money09]) VALUES (23, 6, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Member_Money] OFF
/****** Object:  Table [dbo].[Scheme_Media]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheme_Media](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MediaID] [int] NOT NULL,
	[SchemeID] [int] NOT NULL,
	[PeriodCode] [int] NOT NULL,
	[PeriodCount] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Scheme_Media] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SchemeID] ON [dbo].[Scheme_Media] 
(
	[SchemeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Scheme_Media] ON
INSERT [dbo].[Scheme_Media] ([ID], [MediaID], [SchemeID], [PeriodCode], [PeriodCount], [Price], [StartTime], [EndTime]) VALUES (4, 55, 7, 365, 1, CAST(240.00 AS Decimal(18, 2)), CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A4A200000000 AS DateTime))
INSERT [dbo].[Scheme_Media] ([ID], [MediaID], [SchemeID], [PeriodCode], [PeriodCount], [Price], [StartTime], [EndTime]) VALUES (5, 57, 7, 30, 8, CAST(78.90 AS Decimal(18, 2)), CAST(0x0000A1C000000000 AS DateTime), CAST(0x0000A2B000000000 AS DateTime))
INSERT [dbo].[Scheme_Media] ([ID], [MediaID], [SchemeID], [PeriodCode], [PeriodCount], [Price], [StartTime], [EndTime]) VALUES (6, 54, 7, 90, 1, CAST(29.59 AS Decimal(18, 2)), CAST(0x0000A1C000000000 AS DateTime), CAST(0x0000A21A00000000 AS DateTime))
INSERT [dbo].[Scheme_Media] ([ID], [MediaID], [SchemeID], [PeriodCode], [PeriodCount], [Price], [StartTime], [EndTime]) VALUES (7, 95, 7, 30, 1, CAST(9.86 AS Decimal(18, 2)), CAST(0x0000A1C000000000 AS DateTime), CAST(0x0000A1DE00000000 AS DateTime))
INSERT [dbo].[Scheme_Media] ([ID], [MediaID], [SchemeID], [PeriodCode], [PeriodCount], [Price], [StartTime], [EndTime]) VALUES (8, 96, 7, 180, 3, CAST(177.53 AS Decimal(18, 2)), CAST(0x0000A1C000000000 AS DateTime), CAST(0x0000A3DC00000000 AS DateTime))
INSERT [dbo].[Scheme_Media] ([ID], [MediaID], [SchemeID], [PeriodCode], [PeriodCount], [Price], [StartTime], [EndTime]) VALUES (9, 52, 7, 365, 5, CAST(600.00 AS Decimal(18, 2)), CAST(0x0000A1C600000000 AS DateTime), CAST(0x0000A8E700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Scheme_Media] OFF
/****** Object:  Table [dbo].[WorkItem]    Script Date: 05/27/2013 17:45:29 ******/
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
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (7, N'Lucene', N'00c44406-0a62-4b79-9220-0e82e8e08ced', CAST(0x0000A1A400A5188E AS DateTime), CAST(0x0000A1A400A7D7B8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (8, N'Lucene', N'00c44406-0a62-4b79-9220-0e82e8e08ced', CAST(0x0000A1A400A7D7B9 AS DateTime), CAST(0x0000A1A800320138 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (9, N'Lucene', N'878066e3-9253-4e15-b73c-8a971ea09082', CAST(0x0000A1A800320244 AS DateTime), CAST(0x0000A1A80034C22C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (10, N'Lucene', N'878066e3-9253-4e15-b73c-8a971ea09082', CAST(0x0000A1A80034C22D AS DateTime), CAST(0x0000A1A80084BFBD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (11, N'Lucene', N'47a34da4-b580-4a98-82c2-c7cf13e514b8', CAST(0x0000A1A80084C0BA AS DateTime), CAST(0x0000A1A80086130A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (12, N'Lucene', N'bcf34753-87a9-4400-8479-4e19e73feb96', CAST(0x0000A1A800861343 AS DateTime), CAST(0x0000A1A800879E5B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (13, N'Lucene', N'1845138e-21ff-4a36-8010-f4dd26459b60', CAST(0x0000A1A800879E72 AS DateTime), CAST(0x0000A1A800A439BF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (14, N'Lucene', N'09f99a3a-a472-45db-9229-6ccf4d78d19e', CAST(0x0000A1A800A43B19 AS DateTime), CAST(0x0000A1A800A55EAF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (15, N'Lucene', N'45d99666-201c-40ab-a05b-2825e316a55f', CAST(0x0000A1A800A55EED AS DateTime), CAST(0x0000A1A800A5FC15 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (16, N'Lucene', N'd5db31ca-32cb-4e75-ae0b-868f2b6d99e2', CAST(0x0000A1A800A5FC37 AS DateTime), CAST(0x0000A1A9001D4ADF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (17, N'Lucene', N'8e878254-6f14-4cc9-9f19-fbba195ac6ea', CAST(0x0000A1A9001D4B8B AS DateTime), CAST(0x0000A1A9001F9DC0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (18, N'Lucene', N'7d32722a-3df0-49e0-a60c-19d485deb5c8', CAST(0x0000A1A9001F9DD5 AS DateTime), CAST(0x0000A1A900225CFE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (19, N'Lucene', N'7d32722a-3df0-49e0-a60c-19d485deb5c8', CAST(0x0000A1A900225CFF AS DateTime), CAST(0x0000A1A900251B57 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (20, N'Lucene', N'aee77215-6eed-4589-b56b-42d3aa32dff7', CAST(0x0000A1A900251B6D AS DateTime), CAST(0x0000A1A900251B81 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (21, N'Lucene', N'ad86cc16-52cc-4907-b6e4-a978a7b96d71', CAST(0x0000A1A90025950B AS DateTime), CAST(0x0000A1A90026B357 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (22, N'Lucene', N'8321dfd1-2d14-4a44-8a4f-c66367e0d6a0', CAST(0x0000A1A90026B381 AS DateTime), CAST(0x0000A1A900297436 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (23, N'Lucene', N'8321dfd1-2d14-4a44-8a4f-c66367e0d6a0', CAST(0x0000A1A900297437 AS DateTime), CAST(0x0000A1A9002A1C2A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (24, N'Lucene', N'4fbac1b0-0212-4ce4-9c2e-0e598029b3cf', CAST(0x0000A1A9002A1CB0 AS DateTime), CAST(0x0000A1A9002CDDCE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (25, N'Lucene', N'4fbac1b0-0212-4ce4-9c2e-0e598029b3cf', CAST(0x0000A1A9002CDDCE AS DateTime), CAST(0x0000A1A9002F9CFD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (26, N'Lucene', N'4fbac1b0-0212-4ce4-9c2e-0e598029b3cf', CAST(0x0000A1A9002F9CFE AS DateTime), CAST(0x0000A1A9003E8DD2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (27, N'Lucene', N'd9e05541-22c5-4184-bb7d-1c09f3dfaa41', CAST(0x0000A1A9003E8E5E AS DateTime), CAST(0x0000A1A900414DAA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (28, N'Lucene', N'd9e05541-22c5-4184-bb7d-1c09f3dfaa41', CAST(0x0000A1A900414DAA AS DateTime), CAST(0x0000A1A900440CDD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (29, N'Lucene', N'd9e05541-22c5-4184-bb7d-1c09f3dfaa41', CAST(0x0000A1A900440CDE AS DateTime), CAST(0x0000A1A90062FE49 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (30, N'Lucene', N'74768c53-ee93-4d57-a22f-d7954982da39', CAST(0x0000A1A90062FF48 AS DateTime), CAST(0x0000A1A90065BEB5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (31, N'Lucene', N'74768c53-ee93-4d57-a22f-d7954982da39', CAST(0x0000A1A90065BEB6 AS DateTime), CAST(0x0000A1A900687E05 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (32, N'Lucene', N'74768c53-ee93-4d57-a22f-d7954982da39', CAST(0x0000A1A900687E06 AS DateTime), CAST(0x0000A1A9006B3D8C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (33, N'Lucene', N'74768c53-ee93-4d57-a22f-d7954982da39', CAST(0x0000A1A9006B3D8C AS DateTime), CAST(0x0000A1A90077D26F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (34, N'Lucene', N'20a7154d-0816-43f8-869a-69fc28f9fdbf', CAST(0x0000A1A90077D2D0 AS DateTime), CAST(0x0000A1A90078DA83 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (35, N'Lucene', N'f08ad0a9-3a65-4ba5-8b61-5560dd31b71e', CAST(0x0000A1A90078DA9C AS DateTime), CAST(0x0000A1A9007B9B41 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (36, N'Lucene', N'f08ad0a9-3a65-4ba5-8b61-5560dd31b71e', CAST(0x0000A1A9007B9B42 AS DateTime), CAST(0x0000A1A9007E5A86 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (37, N'Lucene', N'f08ad0a9-3a65-4ba5-8b61-5560dd31b71e', CAST(0x0000A1A9007E5A86 AS DateTime), CAST(0x0000A1A900811A00 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (38, N'Lucene', N'f08ad0a9-3a65-4ba5-8b61-5560dd31b71e', CAST(0x0000A1A900811A00 AS DateTime), CAST(0x0000A1A90083D938 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (39, N'Lucene', N'f08ad0a9-3a65-4ba5-8b61-5560dd31b71e', CAST(0x0000A1A90083D938 AS DateTime), CAST(0x0000A1A9008C640C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (40, N'Lucene', N'b39e1dd8-3a45-4327-b866-ce3e710af70c', CAST(0x0000A1A9008C6455 AS DateTime), CAST(0x0000A1A9008F238B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (41, N'Lucene', N'b39e1dd8-3a45-4327-b866-ce3e710af70c', CAST(0x0000A1A9008F238C AS DateTime), CAST(0x0000A1A90091E2B9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (42, N'Lucene', N'b39e1dd8-3a45-4327-b866-ce3e710af70c', CAST(0x0000A1A90091E2B9 AS DateTime), CAST(0x0000A1A900929915 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (43, N'Lucene', N'ad8188d4-c00d-4341-b1ed-2981c21eeae7', CAST(0x0000A1A900929934 AS DateTime), CAST(0x0000A1A900949DD3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (44, N'Lucene', N'2fd6a052-623f-44d9-a517-84fab9fb1947', CAST(0x0000A1A900949DEC AS DateTime), CAST(0x0000A1A900975D2B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (45, N'Lucene', N'2fd6a052-623f-44d9-a517-84fab9fb1947', CAST(0x0000A1A900975D2B AS DateTime), CAST(0x0000A1A9009A1C57 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (46, N'Lucene', N'2fd6a052-623f-44d9-a517-84fab9fb1947', CAST(0x0000A1A9009A1C57 AS DateTime), CAST(0x0000A1A9009CDB88 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (47, N'Lucene', N'2fd6a052-623f-44d9-a517-84fab9fb1947', CAST(0x0000A1A9009CDB89 AS DateTime), CAST(0x0000A1A9009F9B3D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (48, N'Lucene', N'2fd6a052-623f-44d9-a517-84fab9fb1947', CAST(0x0000A1A9009F9B3E AS DateTime), CAST(0x0000A1A900A5A5F8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (49, N'Lucene', N'aca61644-205c-4396-8eff-cd265c76b89e', CAST(0x0000A1A900A5A664 AS DateTime), CAST(0x0000A1AA001C28AE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (50, N'Lucene', N'd810505b-307f-405e-ab71-492196bdad10', CAST(0x0000A1AA001C2950 AS DateTime), CAST(0x0000A1AA001E8846 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (51, N'Lucene', N'eab6c3d1-6cf3-4353-9e22-66434bb9a56c', CAST(0x0000A1AA001E8862 AS DateTime), CAST(0x0000A1AA00214789 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (52, N'Lucene', N'eab6c3d1-6cf3-4353-9e22-66434bb9a56c', CAST(0x0000A1AA00214789 AS DateTime), CAST(0x0000A1AA002225AC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (53, N'Lucene', N'e3b42d25-72c7-49d9-af92-cba4e636c875', CAST(0x0000A1AA002225C3 AS DateTime), CAST(0x0000A1AA0024E4ED AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (54, N'Lucene', N'e3b42d25-72c7-49d9-af92-cba4e636c875', CAST(0x0000A1AA0024E4EE AS DateTime), CAST(0x0000A1AA0027A412 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (55, N'Lucene', N'e3b42d25-72c7-49d9-af92-cba4e636c875', CAST(0x0000A1AA0027A412 AS DateTime), CAST(0x0000A1AA002CD306 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (56, N'Lucene', N'fda662de-6bc4-4b7d-aff8-da57c1104e9b', CAST(0x0000A1AA002CD395 AS DateTime), CAST(0x0000A1AA002F9482 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (57, N'Lucene', N'fda662de-6bc4-4b7d-aff8-da57c1104e9b', CAST(0x0000A1AA002F9483 AS DateTime), CAST(0x0000A1AA003253C6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (58, N'Lucene', N'fda662de-6bc4-4b7d-aff8-da57c1104e9b', CAST(0x0000A1AA003253C6 AS DateTime), CAST(0x0000A1AA003B42D1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (59, N'Lucene', N'b8a584fc-aa90-41a7-ab37-7d1bc98fd070', CAST(0x0000A1AA003B4315 AS DateTime), CAST(0x0000A1AA003B4328 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (60, N'Lucene', N'b5f3a8d1-d319-4dfc-9f1d-58b532f1674d', CAST(0x0000A1AA003BC78F AS DateTime), CAST(0x0000A1AA006345E8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (61, N'Lucene', N'd912b01c-fb67-4ab0-a49b-b289dc54a2c9', CAST(0x0000A1AA0063470E AS DateTime), CAST(0x0000A1AA006425DC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (62, N'Lucene', N'cfdf9f05-e3aa-489a-aae1-8f001fd2bee0', CAST(0x0000A1AA006425FD AS DateTime), CAST(0x0000A1AA006FE446 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (63, N'Lucene', N'baa9806c-5781-40d9-8b35-b37a3dd917b8', CAST(0x0000A1AA006FE48C AS DateTime), CAST(0x0000A1AA00731951 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (64, N'Lucene', N'7410738e-9643-454c-b0d8-059224c9909b', CAST(0x0000A1AA00731967 AS DateTime), CAST(0x0000A1AA00868123 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (65, N'Lucene', N'af1274ef-4d29-4ab4-b7d8-9cd166cff1dd', CAST(0x0000A1AA00868160 AS DateTime), CAST(0x0000A1AA00915648 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (66, N'Lucene', N'c7517083-e2a4-4ce7-a503-8652629cec18', CAST(0x0000A1AA0091568C AS DateTime), CAST(0x0000A1AA00934E8C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (67, N'Lucene', N'7dde3321-bb8a-4a37-9c0f-1c16242d5844', CAST(0x0000A1AA00934EB9 AS DateTime), CAST(0x0000A1AA0094847D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (68, N'Lucene', N'eb4499e5-88f9-4b59-bfeb-69bb81200a10', CAST(0x0000A1AA00948494 AS DateTime), CAST(0x0000A1AA00967395 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (69, N'Lucene', N'ced708a5-4549-44a3-844f-f5ebd7c0f186', CAST(0x0000A1AA009673BC AS DateTime), CAST(0x0000A1AA0098119F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (70, N'Lucene', N'6f450052-42d5-4d89-a555-45c0e38c41ee', CAST(0x0000A1AA009811C7 AS DateTime), CAST(0x0000A1AA0098A768 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (71, N'Lucene', N'317ff2e3-64ff-4e7c-8be6-c38a6c212ee6', CAST(0x0000A1AA0098A79F AS DateTime), CAST(0x0000A1AA009B66FA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (72, N'Lucene', N'317ff2e3-64ff-4e7c-8be6-c38a6c212ee6', CAST(0x0000A1AA009B66FA AS DateTime), CAST(0x0000A1AA009B6705 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (73, N'Lucene', N'6043f5c3-5570-4fe4-8630-92005645a1af', CAST(0x0000A1AA009BE84C AS DateTime), CAST(0x0000A1AA009D220B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (74, N'Lucene', N'a67977b9-9ef1-4ea6-a034-66da782b5535', CAST(0x0000A1AA009D2223 AS DateTime), CAST(0x0000A1AA009E97D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (75, N'Lucene', N'b682221e-1c3b-4812-899e-787ff7b06db3', CAST(0x0000A1AA009E97EF AS DateTime), CAST(0x0000A1AA00A15714 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (76, N'Lucene', N'b682221e-1c3b-4812-899e-787ff7b06db3', CAST(0x0000A1AA00A15714 AS DateTime), CAST(0x0000A1AA00A41639 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (77, N'Lucene', N'b682221e-1c3b-4812-899e-787ff7b06db3', CAST(0x0000A1AA00A4163A AS DateTime), CAST(0x0000A1AB002C3CFF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (78, N'Lucene', N'2d53f94e-e862-4ae5-b870-51014b27e7ff', CAST(0x0000A1AB002C3E79 AS DateTime), CAST(0x0000A1AB002EFE78 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (79, N'Lucene', N'2d53f94e-e862-4ae5-b870-51014b27e7ff', CAST(0x0000A1AB002EFE79 AS DateTime), CAST(0x0000A1AB0031BD9E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (80, N'Lucene', N'2d53f94e-e862-4ae5-b870-51014b27e7ff', CAST(0x0000A1AB0031BD9E AS DateTime), CAST(0x0000A1AB0077E5DA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (81, N'Lucene', N'5c7ace4b-ce0a-46ba-8295-0259aff3c2f0', CAST(0x0000A1AB0077E784 AS DateTime), CAST(0x0000A1AB007AAF9D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (82, N'Lucene', N'f3aa7bcc-9b8f-44a3-aafe-eb0593e29bc5', CAST(0x0000A1AB007AAFC2 AS DateTime), CAST(0x0000A1AB007D6FDF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (83, N'Lucene', N'f3aa7bcc-9b8f-44a3-aafe-eb0593e29bc5', CAST(0x0000A1AB007D6FE1 AS DateTime), CAST(0x0000A1AB00802F1C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (84, N'Lucene', N'f3aa7bcc-9b8f-44a3-aafe-eb0593e29bc5', CAST(0x0000A1AB00802F1C AS DateTime), CAST(0x0000A1AB00812924 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (85, N'Lucene', N'ca740d3b-e224-44e4-8fd6-02e8848b0251', CAST(0x0000A1AB00812944 AS DateTime), CAST(0x0000A1AB0081DF25 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (86, N'Lucene', N'd6b13f85-2d05-45cf-9a72-3c91e4dbd8e8', CAST(0x0000A1AB0081DF51 AS DateTime), CAST(0x0000A1AB00832078 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (87, N'Lucene', N'083b647b-4efc-49a8-915f-e1737fc6f1fe', CAST(0x0000A1AB00832092 AS DateTime), CAST(0x0000A1AB0085DFBE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (88, N'Lucene', N'083b647b-4efc-49a8-915f-e1737fc6f1fe', CAST(0x0000A1AB0085DFBE AS DateTime), CAST(0x0000A1AB00889EE5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (89, N'Lucene', N'083b647b-4efc-49a8-915f-e1737fc6f1fe', CAST(0x0000A1AB00889EED AS DateTime), CAST(0x0000A1AB008A3B3D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (90, N'Lucene', N'113ca4ae-2aaf-4eae-8bdc-edae91f208e1', CAST(0x0000A1AB008A3B7A AS DateTime), CAST(0x0000A1AB008CFB71 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (91, N'Lucene', N'113ca4ae-2aaf-4eae-8bdc-edae91f208e1', CAST(0x0000A1AB008CFB72 AS DateTime), CAST(0x0000A1AB008FBA99 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (92, N'Lucene', N'113ca4ae-2aaf-4eae-8bdc-edae91f208e1', CAST(0x0000A1AB008FBA9A AS DateTime), CAST(0x0000A1AB009594EF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (93, N'Lucene', N'6f557b61-6e3e-47d9-ac34-d2d920ec09e3', CAST(0x0000A1AB00959574 AS DateTime), CAST(0x0000A1AB00959582 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (94, N'Lucene', N'04c6567e-ee6f-49cd-bcb6-b8870ec8e640', CAST(0x0000A1AB0095E697 AS DateTime), CAST(0x0000A1AB0098A611 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (95, N'Lucene', N'04c6567e-ee6f-49cd-bcb6-b8870ec8e640', CAST(0x0000A1AB0098A611 AS DateTime), CAST(0x0000A1AB0098A616 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (96, N'Lucene', N'ddc01f3b-a1d5-4cd3-9b59-468eccacfb68', CAST(0x0000A1AB0098E547 AS DateTime), CAST(0x0000A1AB0098E5D6 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (97, N'Lucene', N'2c4f7f24-5614-4fa3-b325-7752426f3019', CAST(0x0000A1AB0099653D AS DateTime), CAST(0x0000A1AB009C2480 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (98, N'Lucene', N'2c4f7f24-5614-4fa3-b325-7752426f3019', CAST(0x0000A1AB009C2481 AS DateTime), CAST(0x0000A1AB009C2486 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (99, N'Lucene', N'7aa1063a-95be-4361-9c0f-3fb62baacaee', CAST(0x0000A1AB009C96CF AS DateTime), CAST(0x0000A1AB009F5609 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (100, N'Lucene', N'7aa1063a-95be-4361-9c0f-3fb62baacaee', CAST(0x0000A1AB009F5609 AS DateTime), CAST(0x0000A1AB00AAAF37 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
GO
print 'Processed 100 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (101, N'Lucene', N'83a0e4dc-ff13-4248-b586-d91c98608a88', CAST(0x0000A1AB00AAAFF0 AS DateTime), CAST(0x0000A1AB00AAB042 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (102, N'Lucene', N'e764a15e-ac9c-4876-ba86-5bb1e39b4995', CAST(0x0000A1AB00AB2874 AS DateTime), CAST(0x0000A1AB00AB28C3 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (103, N'Lucene', N'edc8ca88-9596-435d-955a-44241e0b7b64', CAST(0x0000A1AB00AB7844 AS DateTime), CAST(0x0000A1AB00AB787C AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (104, N'Lucene', N'40b85ecd-7aee-4a82-b57b-8a2aa6676aa6', CAST(0x0000A1AB00ABF9CD AS DateTime), CAST(0x0000A1AC001BBF54 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (105, N'Lucene', N'88ed184f-6e5c-4c88-9322-30fe187b2c40', CAST(0x0000A1AC001BC029 AS DateTime), CAST(0x0000A1AC002507E8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (106, N'Lucene', N'09f0f339-d513-46de-8e6c-2dc02b9082ae', CAST(0x0000A1AC00250865 AS DateTime), CAST(0x0000A1AC0027C7AA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (107, N'Lucene', N'09f0f339-d513-46de-8e6c-2dc02b9082ae', CAST(0x0000A1AC0027C7AA AS DateTime), CAST(0x0000A1AC002A0312 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (108, N'Lucene', N'cafd44a3-c43e-4fb7-a282-79d2d2c46ac0', CAST(0x0000A1AC002A0329 AS DateTime), CAST(0x0000A1AC002CC25A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (109, N'Lucene', N'cafd44a3-c43e-4fb7-a282-79d2d2c46ac0', CAST(0x0000A1AC002CC25D AS DateTime), CAST(0x0000A1AC002EAC06 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (110, N'Lucene', N'aba64362-209a-484f-914e-0755747267ac', CAST(0x0000A1AC002EAC20 AS DateTime), CAST(0x0000A1AC003206CE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (111, N'Lucene', N'b8680407-6a64-4594-a6eb-75947281a1dc', CAST(0x0000A1AC003206EF AS DateTime), CAST(0x0000A1AC0033E40D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (112, N'Lucene', N'73a3c0ac-6d17-4fde-859d-54b984dc02f7', CAST(0x0000A1AC0033E427 AS DateTime), CAST(0x0000A1AC0034896E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (113, N'Lucene', N'f27d1af3-d63d-4e2d-b033-3a41755c7bab', CAST(0x0000A1AC0034898C AS DateTime), CAST(0x0000A1AC00351E9F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (114, N'Lucene', N'b1a3b818-ceb9-4b28-b524-bcb69bd821bf', CAST(0x0000A1AC00351EBD AS DateTime), CAST(0x0000A1AC00351EC7 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (115, N'Lucene', N'05e32f7a-4258-4f44-a550-0e3cea2b35e1', CAST(0x0000A1AC0035A341 AS DateTime), CAST(0x0000A1AC003CEBEC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (116, N'Lucene', N'c119cc89-b7c2-41a7-a572-6ed14fbf7b8e', CAST(0x0000A1AC003CEC2F AS DateTime), CAST(0x0000A1AC003FAB59 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (117, N'Lucene', N'c119cc89-b7c2-41a7-a572-6ed14fbf7b8e', CAST(0x0000A1AC003FAB5E AS DateTime), CAST(0x0000A1AC00426A85 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (118, N'Lucene', N'c119cc89-b7c2-41a7-a572-6ed14fbf7b8e', CAST(0x0000A1AC00426A88 AS DateTime), CAST(0x0000A1AC005A57E7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (119, N'Lucene', N'0a8c2504-6d73-4af5-801f-07e4dccd824b', CAST(0x0000A1AC005A5841 AS DateTime), CAST(0x0000A1AC005F2FC6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (120, N'Lucene', N'150b567f-a0f8-4993-8fbe-3f08494bb793', CAST(0x0000A1AC005F2FE4 AS DateTime), CAST(0x0000A1AC0061EF14 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (121, N'Lucene', N'150b567f-a0f8-4993-8fbe-3f08494bb793', CAST(0x0000A1AC0061EF15 AS DateTime), CAST(0x0000A1AC0064AE3A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (122, N'Lucene', N'150b567f-a0f8-4993-8fbe-3f08494bb793', CAST(0x0000A1AC0064AE3A AS DateTime), CAST(0x0000A1AC00663056 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (123, N'Lucene', N'2bf56d18-393e-45b9-947c-00a841b95898', CAST(0x0000A1AC00663098 AS DateTime), CAST(0x0000A1AC0066C368 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (124, N'Lucene', N'2b3d7f5d-37e4-4f02-989b-809d3540945f', CAST(0x0000A1AC0066C37F AS DateTime), CAST(0x0000A1AC006982A9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (125, N'Lucene', N'2b3d7f5d-37e4-4f02-989b-809d3540945f', CAST(0x0000A1AC006982AA AS DateTime), CAST(0x0000A1AC006C41CC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (126, N'Lucene', N'2b3d7f5d-37e4-4f02-989b-809d3540945f', CAST(0x0000A1AC006C41CC AS DateTime), CAST(0x0000A1AC0074E9B0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (127, N'Lucene', N'9c78e18f-2768-4429-babc-22377171bc00', CAST(0x0000A1AC0074E9F1 AS DateTime), CAST(0x0000A1AC0075AF39 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (128, N'Lucene', N'4e7b9a69-6ab1-4235-ac45-cab95ab7b137', CAST(0x0000A1AC0075AF5F AS DateTime), CAST(0x0000A1AC0075AF68 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (129, N'Lucene', N'7c67fa9f-1bd8-4b0d-816b-3e1b010a7e9a', CAST(0x0000A1AC0075CD32 AS DateTime), CAST(0x0000A1AC00768A59 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (130, N'Lucene', N'1dfa301f-e751-4fa2-b906-5191717c35a5', CAST(0x0000A1AC00768A71 AS DateTime), CAST(0x0000A1AC00768A7B AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (131, N'Lucene', N'1ad69a43-4b43-4e00-bd0b-80a237851900', CAST(0x0000A1AC0076D8F9 AS DateTime), CAST(0x0000A1AC0076DA19 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (132, N'Lucene', N'38604106-03f3-4e3c-95ec-c463ad8fc1fe', CAST(0x0000A1AC00770247 AS DateTime), CAST(0x0000A1AC0079C3AB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (133, N'Lucene', N'38604106-03f3-4e3c-95ec-c463ad8fc1fe', CAST(0x0000A1AC0079C3AC AS DateTime), CAST(0x0000A1AC0079C3B0 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (134, N'Lucene', N'b9547e28-2e95-464c-b768-39ca057e675d', CAST(0x0000A1AC007A3782 AS DateTime), CAST(0x0000A1AC007B0F4E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (135, N'Lucene', N'd31fbafd-4130-4ebe-b9ee-63dd12856f8d', CAST(0x0000A1AC007B0F75 AS DateTime), CAST(0x0000A1AC007B0FAA AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (136, N'Lucene', N'6b9d026f-48ef-475b-94bc-471a6ab58a89', CAST(0x0000A1AC007B5470 AS DateTime), CAST(0x0000A1AC007C1AA4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (137, N'Lucene', N'2223d76c-9d03-483a-892a-935395e093f4', CAST(0x0000A1AC007C1ABC AS DateTime), CAST(0x0000A1AC007CCA5A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (138, N'Lucene', N'6ec83c27-37a1-467a-ad58-632d260c39fd', CAST(0x0000A1AC007CCA82 AS DateTime), CAST(0x0000A1AC00814BAD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (139, N'Lucene', N'28bdbf29-bf53-4089-870b-70dffcebfa11', CAST(0x0000A1AC00814BC7 AS DateTime), CAST(0x0000A1AC00833E4C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (140, N'Lucene', N'178b5e92-a19f-4471-b2e0-7a15d6a12ada', CAST(0x0000A1AC00833E6B AS DateTime), CAST(0x0000A1AC00850BA1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (141, N'Lucene', N'9bb69309-c79e-4a37-9855-a01addb5ff8f', CAST(0x0000A1AC00850BB7 AS DateTime), CAST(0x0000A1AC0096E090 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (142, N'Lucene', N'8cc69a55-e9c1-429c-a0cf-41d635ce93a7', CAST(0x0000A1AC0096E140 AS DateTime), CAST(0x0000A1AC009829F0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (143, N'Lucene', N'09986ca5-5eaf-4cfd-8470-53083f2bcf18', CAST(0x0000A1AC00982A07 AS DateTime), CAST(0x0000A1AC0098C60A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (144, N'Lucene', N'8f4f2916-512a-4f20-8860-92c2330f9274', CAST(0x0000A1AC0098C626 AS DateTime), CAST(0x0000A1AC009A2590 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (145, N'Lucene', N'd99f07de-9dc6-4997-a6ad-603e9e188ef6', CAST(0x0000A1AC009A25B3 AS DateTime), CAST(0x0000A1AC009B0AB9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (146, N'Lucene', N'68bab29a-2aed-4d4a-8076-3dbd2260c69d', CAST(0x0000A1AC009B0AE2 AS DateTime), CAST(0x0000A1AC009B0B01 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (147, N'Lucene', N'eefa85ec-7a20-448d-845e-aa71014ba794', CAST(0x0000A1AC009B5A78 AS DateTime), CAST(0x0000A1AC009D15E6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (148, N'Lucene', N'3c8dc80f-bdd7-4ca9-99f5-b6c3a9dff6ae', CAST(0x0000A1AC009D160C AS DateTime), CAST(0x0000A1AC009FD579 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (149, N'Lucene', N'3c8dc80f-bdd7-4ca9-99f5-b6c3a9dff6ae', CAST(0x0000A1AC009FD582 AS DateTime), CAST(0x0000A1AC00A29502 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (150, N'Lucene', N'3c8dc80f-bdd7-4ca9-99f5-b6c3a9dff6ae', CAST(0x0000A1AC00A29503 AS DateTime), CAST(0x0000A1AC00A357EE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (151, N'Lucene', N'a1bf9cf6-a1e7-44d0-b498-50e58e2afb42', CAST(0x0000A1AC00A35850 AS DateTime), CAST(0x0000A1AC00A49E3E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (152, N'Lucene', N'251ed9a6-e475-4526-a47a-c13af6e1b2f8', CAST(0x0000A1AC00A49E69 AS DateTime), CAST(0x0000A1AC00A5B64A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (153, N'Lucene', N'f9194b50-edbe-479d-b61b-525570f2f3a2', CAST(0x0000A1AC00A5B671 AS DateTime), CAST(0x0000A1AD001B29D6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (154, N'Lucene', N'de9012ff-34a1-41e9-aedc-452695360bec', CAST(0x0000A1AD001B2AF8 AS DateTime), CAST(0x0000A1AD00288503 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (155, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD002885A5 AS DateTime), CAST(0x0000A1AD002B4525 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (156, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD002B4525 AS DateTime), CAST(0x0000A1AD002E0450 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (157, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD002E0451 AS DateTime), CAST(0x0000A1AD0030C37C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (158, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD0030C37C AS DateTime), CAST(0x0000A1AD003382A2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (159, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD003382A3 AS DateTime), CAST(0x0000A1AD003641CA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (160, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD003641CA AS DateTime), CAST(0x0000A1AD0039010F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (161, N'Lucene', N'97603f12-b146-46ed-843c-2b7efdc2c9d1', CAST(0x0000A1AD00390116 AS DateTime), CAST(0x0000A1AD00577DDC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (162, N'Lucene', N'70385a6a-1fe8-4307-a367-dbdee95828b8', CAST(0x0000A1AD00577F70 AS DateTime), CAST(0x0000A1AD0059B15F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (163, N'Lucene', N'c59fe9e4-afe0-4fdd-872e-b0d45e3e4832', CAST(0x0000A1AD0059B17B AS DateTime), CAST(0x0000A1AD005B4EEF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (164, N'Lucene', N'84a24f2b-b675-462d-b1d5-54b6d23dd1e9', CAST(0x0000A1AD005B4F09 AS DateTime), CAST(0x0000A1AD005B4F14 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (165, N'Lucene', N'516bb51a-2f6c-432b-87d2-4b24b9441ddc', CAST(0x0000A1AD005BABB0 AS DateTime), CAST(0x0000A1AD005D68D5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (166, N'Lucene', N'f5bd441d-03da-43de-8fad-8fc23cdfaee6', CAST(0x0000A1AD005D68EA AS DateTime), CAST(0x0000A1AD005FA1D1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (167, N'Lucene', N'262d4ea3-5fb0-4065-bdff-676c28c3cd42', CAST(0x0000A1AD005FA1F1 AS DateTime), CAST(0x0000A1AD00626119 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (168, N'Lucene', N'262d4ea3-5fb0-4065-bdff-676c28c3cd42', CAST(0x0000A1AD0062611A AS DateTime), CAST(0x0000A1AD00652040 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (169, N'Lucene', N'262d4ea3-5fb0-4065-bdff-676c28c3cd42', CAST(0x0000A1AD00652040 AS DateTime), CAST(0x0000A1AD00666EEE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (170, N'Lucene', N'6d49e0cd-a46a-4d2e-9424-52ea4a29c666', CAST(0x0000A1AD00666F0F AS DateTime), CAST(0x0000A1AD00692E3B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (171, N'Lucene', N'6d49e0cd-a46a-4d2e-9424-52ea4a29c666', CAST(0x0000A1AD00692E3B AS DateTime), CAST(0x0000A1AD006A7DBD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (172, N'Lucene', N'06c7444c-eec9-4b8b-b6e1-c01a7e02d256', CAST(0x0000A1AD006A7DE0 AS DateTime), CAST(0x0000A1AD006BFEF6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (173, N'Lucene', N'e8958d33-16af-43ef-9ecd-e313528e8c19', CAST(0x0000A1AD006BFF23 AS DateTime), CAST(0x0000A1AD006EBE56 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (174, N'Lucene', N'e8958d33-16af-43ef-9ecd-e313528e8c19', CAST(0x0000A1AD006EBE57 AS DateTime), CAST(0x0000A1AD00717D95 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (175, N'Lucene', N'e8958d33-16af-43ef-9ecd-e313528e8c19', CAST(0x0000A1AD00717D96 AS DateTime), CAST(0x0000A1AD00799E92 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (176, N'Lucene', N'6438bdf1-d5b3-41fd-b1f0-4206a6ae6f24', CAST(0x0000A1AD00799F70 AS DateTime), CAST(0x0000A1AD007C5EC3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (177, N'Lucene', N'6438bdf1-d5b3-41fd-b1f0-4206a6ae6f24', CAST(0x0000A1AD007C5EC3 AS DateTime), CAST(0x0000A1AD007F1DED AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (178, N'Lucene', N'6438bdf1-d5b3-41fd-b1f0-4206a6ae6f24', CAST(0x0000A1AD007F1DED AS DateTime), CAST(0x0000A1AD007F1DF2 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (179, N'Lucene', N'74edc28b-0999-4fcf-8756-cbc59d0717fa', CAST(0x0000A1AD007F6E00 AS DateTime), CAST(0x0000A1AD00806EE9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (180, N'Lucene', N'b2fa807d-a0de-43cd-96d2-32e70b22b6f4', CAST(0x0000A1AD00806F46 AS DateTime), CAST(0x0000A1AD00819B72 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (181, N'Lucene', N'd42e6c14-10a3-4c9f-aaac-66bd5afcf4e3', CAST(0x0000A1AD00819B90 AS DateTime), CAST(0x0000A1AD0082A1A0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (182, N'Lucene', N'7d52d6b8-0c4e-4b40-adf6-66110415a153', CAST(0x0000A1AD0082A1C0 AS DateTime), CAST(0x0000A1AD00840863 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (183, N'Lucene', N'2c582409-d485-489a-b313-c6f98b4ef187', CAST(0x0000A1AD00840880 AS DateTime), CAST(0x0000A1AD0084A0EF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (184, N'Lucene', N'ff5153b8-147b-4a95-9da6-442c9888dc11', CAST(0x0000A1AD0084A108 AS DateTime), CAST(0x0000A1AD0085C412 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (185, N'Lucene', N'dd95dd21-8edc-40db-a45a-f23e1a551a19', CAST(0x0000A1AD0085C437 AS DateTime), CAST(0x0000A1AD008866B3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (186, N'Lucene', N'29af2e96-f4eb-4442-9d25-32378887b573', CAST(0x0000A1AD008866D7 AS DateTime), CAST(0x0000A1AD008B260B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (187, N'Lucene', N'29af2e96-f4eb-4442-9d25-32378887b573', CAST(0x0000A1AD008B260B AS DateTime), CAST(0x0000A1AD008C84DC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (188, N'Lucene', N'b2dfc076-6e57-462a-89eb-345dbd010b67', CAST(0x0000A1AD008C84F0 AS DateTime), CAST(0x0000A1AD008E0377 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (189, N'Lucene', N'510f29af-ce39-4873-a845-f462694c2d0f', CAST(0x0000A1AD008E0391 AS DateTime), CAST(0x0000A1AD008F67D6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (190, N'Lucene', N'59f1bb56-9594-4928-b2a4-46ad9bbbe524', CAST(0x0000A1AD008F67F4 AS DateTime), CAST(0x0000A1AD00922723 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (191, N'Lucene', N'59f1bb56-9594-4928-b2a4-46ad9bbbe524', CAST(0x0000A1AD0092272D AS DateTime), CAST(0x0000A1AD0094E64F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (192, N'Lucene', N'59f1bb56-9594-4928-b2a4-46ad9bbbe524', CAST(0x0000A1AD0094E64F AS DateTime), CAST(0x0000A1AD00961F71 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (193, N'Lucene', N'1ac34029-f928-403f-bc17-12d258ae45fa', CAST(0x0000A1AD00961F90 AS DateTime), CAST(0x0000A1AD00978174 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (194, N'Lucene', N'f11f4625-ee37-4119-9f79-1603b0c8ed6f', CAST(0x0000A1AD00978190 AS DateTime), CAST(0x0000A1AD009A40BF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (195, N'Lucene', N'f11f4625-ee37-4119-9f79-1603b0c8ed6f', CAST(0x0000A1AD009A40BF AS DateTime), CAST(0x0000A1AD009B95CE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (196, N'Lucene', N'c8f527ac-aecb-445b-acc7-fe8e161eaa2e', CAST(0x0000A1AD009B95EB AS DateTime), CAST(0x0000A1AD009E5588 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (197, N'Lucene', N'c8f527ac-aecb-445b-acc7-fe8e161eaa2e', CAST(0x0000A1AD009E5588 AS DateTime), CAST(0x0000A1AD00A114AC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (198, N'Lucene', N'c8f527ac-aecb-445b-acc7-fe8e161eaa2e', CAST(0x0000A1AD00A114AC AS DateTime), CAST(0x0000A1AD00A3A8E6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (199, N'Lucene', N'82155602-3a39-4f99-b824-1f52a9bf88d3', CAST(0x0000A1AD00A3A902 AS DateTime), CAST(0x0000A1AD00A4DF29 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (200, N'Lucene', N'b7ccd02b-c2eb-449f-9db4-86ec6a1f3c04', CAST(0x0000A1AD00A4DF47 AS DateTime), CAST(0x0000A1AD00A4DF50 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (201, N'Lucene', N'd51180e9-b413-4610-970b-d2e551f03b5a', CAST(0x0000A1AD00A54DAB AS DateTime), CAST(0x0000A1AE002AF683 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
GO
print 'Processed 200 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (202, N'Lucene', N'968866b3-42ee-44e8-8bc3-65ad537df787', CAST(0x0000A1AE002AF7AE AS DateTime), CAST(0x0000A1AE002D4663 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (203, N'Lucene', N'efc71279-0b4f-470d-af87-7a2e14e9e8ba', CAST(0x0000A1AE002D4681 AS DateTime), CAST(0x0000A1AE002E6F3A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (204, N'Lucene', N'2040d28d-21f8-4ecb-973d-b313f62c3fb4', CAST(0x0000A1AE002E6F53 AS DateTime), CAST(0x0000A1AE00312F51 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (205, N'Lucene', N'2040d28d-21f8-4ecb-973d-b313f62c3fb4', CAST(0x0000A1AE00312F52 AS DateTime), CAST(0x0000A1AE0036237B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (206, N'Lucene', N'41e3f592-5101-4f8e-bb62-b8d6e157ae63', CAST(0x0000A1AE003623B4 AS DateTime), CAST(0x0000A1AE0038E3BB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (207, N'Lucene', N'41e3f592-5101-4f8e-bb62-b8d6e157ae63', CAST(0x0000A1AE0038E3BC AS DateTime), CAST(0x0000A1AE003DC149 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (208, N'Lucene', N'eef59677-c097-48d6-b744-9a833f3dea1d', CAST(0x0000A1AE003DC1DC AS DateTime), CAST(0x0000A1AE003DC2A1 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (209, N'Lucene', N'75841f25-cd06-404a-9c61-7ed8a140fb53', CAST(0x0000A1AE003E322B AS DateTime), CAST(0x0000A1AE003EC0C9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (210, N'Lucene', N'ccd6229b-8f2b-47a1-bbcc-e1b1fcb4bc48', CAST(0x0000A1AE003EC0E4 AS DateTime), CAST(0x0000A1AE00418099 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (211, N'Lucene', N'ccd6229b-8f2b-47a1-bbcc-e1b1fcb4bc48', CAST(0x0000A1AE00418099 AS DateTime), CAST(0x0000A1AE0044405D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (212, N'Lucene', N'ccd6229b-8f2b-47a1-bbcc-e1b1fcb4bc48', CAST(0x0000A1AE0044405D AS DateTime), CAST(0x0000A1AE00582B7E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (213, N'Lucene', N'f7f945b2-ef9a-4792-af2b-fa71f5e02b67', CAST(0x0000A1AE00582C4B AS DateTime), CAST(0x0000A1AE005AEC6A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (214, N'Lucene', N'f7f945b2-ef9a-4792-af2b-fa71f5e02b67', CAST(0x0000A1AE005AEC6A AS DateTime), CAST(0x0000A1AE005DAC1D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (215, N'Lucene', N'f7f945b2-ef9a-4792-af2b-fa71f5e02b67', CAST(0x0000A1AE005DAC1D AS DateTime), CAST(0x0000A1AE00606BBA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (216, N'Lucene', N'f7f945b2-ef9a-4792-af2b-fa71f5e02b67', CAST(0x0000A1AE00606BBA AS DateTime), CAST(0x0000A1AE0062E2B0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (217, N'Lucene', N'ef3197b5-5dc2-43f1-bd2f-a4875b236bd5', CAST(0x0000A1AE0062E2CE AS DateTime), CAST(0x0000A1AE0065A29E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (218, N'Lucene', N'ef3197b5-5dc2-43f1-bd2f-a4875b236bd5', CAST(0x0000A1AE0065A29F AS DateTime), CAST(0x0000A1AE00686248 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (219, N'Lucene', N'ef3197b5-5dc2-43f1-bd2f-a4875b236bd5', CAST(0x0000A1AE00686248 AS DateTime), CAST(0x0000A1AE0075519A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (220, N'Lucene', N'52c203d2-b6cc-465e-89e9-3df28cae785f', CAST(0x0000A1AE0075527F AS DateTime), CAST(0x0000A1AE0076F8F3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (221, N'Lucene', N'49e1ee36-e64d-4187-bfff-08d6380db814', CAST(0x0000A1AE0076F931 AS DateTime), CAST(0x0000A1AE007A036B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (222, N'Lucene', N'e406b9aa-bec8-41f4-807b-76a536c98469', CAST(0x0000A1AE007A0380 AS DateTime), CAST(0x0000A1AE007AC9A9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (223, N'Lucene', N'3f5fa1da-9e1a-4935-807a-cb07b4a19886', CAST(0x0000A1AE007AC9C9 AS DateTime), CAST(0x0000A1AE007BA49A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (224, N'Lucene', N'b07ec180-142a-4f53-a4dc-f8287fe29d9b', CAST(0x0000A1AE007BA4CC AS DateTime), CAST(0x0000A1AE007CF604 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (225, N'Lucene', N'd7845ffb-bf97-4711-8977-76f0b2a0e1b8', CAST(0x0000A1AE007CF626 AS DateTime), CAST(0x0000A1AE007CF77B AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (226, N'Lucene', N'e11a265e-0665-45a6-9ee2-cebc8f2aa622', CAST(0x0000A1AE007D76A1 AS DateTime), CAST(0x0000A1AE007F1CE9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (227, N'Lucene', N'3499b13f-c481-47ea-8760-561887cd992a', CAST(0x0000A1AE007F1D0E AS DateTime), CAST(0x0000A1AE008BEFBB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (228, N'Lucene', N'e9f5f878-6b84-4133-8a0d-55390dad881c', CAST(0x0000A1AE008BF027 AS DateTime), CAST(0x0000A1AE008EAFF3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (229, N'Lucene', N'e9f5f878-6b84-4133-8a0d-55390dad881c', CAST(0x0000A1AE008EAFF3 AS DateTime), CAST(0x0000A1B2001F49F7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (230, N'Lucene', N'39468c1f-95fd-4fd6-ab72-edfcd5d6a174', CAST(0x0000A1B2001F4A7B AS DateTime), CAST(0x0000A1B2002209D6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (231, N'Lucene', N'39468c1f-95fd-4fd6-ab72-edfcd5d6a174', CAST(0x0000A1B2002209D6 AS DateTime), CAST(0x0000A1B2009D685C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (232, N'Lucene', N'397b598f-9e31-4149-9c3f-eeb521a6a627', CAST(0x0000A1B2009D694A AS DateTime), CAST(0x0000A1B200A028BE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (233, N'Lucene', N'397b598f-9e31-4149-9c3f-eeb521a6a627', CAST(0x0000A1B200A028BF AS DateTime), CAST(0x0000A1B200A2E7E8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (234, N'Lucene', N'397b598f-9e31-4149-9c3f-eeb521a6a627', CAST(0x0000A1B200A2E7EA AS DateTime), CAST(0x0000A1B200A5A732 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (235, N'Lucene', N'397b598f-9e31-4149-9c3f-eeb521a6a627', CAST(0x0000A1B200A5A733 AS DateTime), CAST(0x0000A1B3006D7467 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (236, N'Lucene', N'edbfa7ae-fe09-43fb-8671-7192efaa6ac3', CAST(0x0000A1B3006D763D AS DateTime), CAST(0x0000A1B3007035AA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (237, N'Lucene', N'edbfa7ae-fe09-43fb-8671-7192efaa6ac3', CAST(0x0000A1B3007035AB AS DateTime), CAST(0x0000A1B30072F4E4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (238, N'Lucene', N'edbfa7ae-fe09-43fb-8671-7192efaa6ac3', CAST(0x0000A1B30072F4EA AS DateTime), CAST(0x0000A1B30075B42B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (239, N'Lucene', N'edbfa7ae-fe09-43fb-8671-7192efaa6ac3', CAST(0x0000A1B30075B42C AS DateTime), CAST(0x0000A1B300787369 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (240, N'Lucene', N'edbfa7ae-fe09-43fb-8671-7192efaa6ac3', CAST(0x0000A1B30078736A AS DateTime), CAST(0x0000A1B3007B32A2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (241, N'Lucene', N'edbfa7ae-fe09-43fb-8671-7192efaa6ac3', CAST(0x0000A1B3007B32A2 AS DateTime), CAST(0x0000A1B3007DC3B9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (242, N'Lucene', N'4ce76631-c338-4291-aef1-c2823ad6e2dd', CAST(0x0000A1B3007DC3D9 AS DateTime), CAST(0x0000A1B300808314 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (243, N'Lucene', N'4ce76631-c338-4291-aef1-c2823ad6e2dd', CAST(0x0000A1B300808314 AS DateTime), CAST(0x0000A1B300833EBB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (244, N'Lucene', N'c838cb52-a1b0-433a-8d21-a142f671132c', CAST(0x0000A1B300833EE3 AS DateTime), CAST(0x0000A1B30085FE23 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (245, N'Lucene', N'c838cb52-a1b0-433a-8d21-a142f671132c', CAST(0x0000A1B30085FE23 AS DateTime), CAST(0x0000A1B3008707ED AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (246, N'Lucene', N'112051c7-06ad-48df-90f4-6b7467b35487', CAST(0x0000A1B300870808 AS DateTime), CAST(0x0000A1B30087E7F4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (247, N'Lucene', N'a01ad9cf-e4ae-4345-83ec-1f45f0acff6e', CAST(0x0000A1B30087E813 AS DateTime), CAST(0x0000A1B3008AA737 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (248, N'Lucene', N'a01ad9cf-e4ae-4345-83ec-1f45f0acff6e', CAST(0x0000A1B3008AA737 AS DateTime), CAST(0x0000A1B3008D6659 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (249, N'Lucene', N'a01ad9cf-e4ae-4345-83ec-1f45f0acff6e', CAST(0x0000A1B3008D665A AS DateTime), CAST(0x0000A1B3008FBFE2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (250, N'Lucene', N'f520318b-faca-40f1-ad51-57061de41334', CAST(0x0000A1B3008FBFFB AS DateTime), CAST(0x0000A1B300911F09 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (251, N'Lucene', N'19b9a91e-1d99-430e-a1e8-0be8c0e7e4b8', CAST(0x0000A1B300911F28 AS DateTime), CAST(0x0000A1B300911F32 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (252, N'Lucene', N'e3b7ccac-0ce7-469f-81c2-be1fef28be89', CAST(0x0000A1B300914F2B AS DateTime), CAST(0x0000A1B300940E78 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (253, N'Lucene', N'e3b7ccac-0ce7-469f-81c2-be1fef28be89', CAST(0x0000A1B300940E78 AS DateTime), CAST(0x0000A1B30096E47F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (254, N'Lucene', N'e3b7ccac-0ce7-469f-81c2-be1fef28be89', CAST(0x0000A1B30096E482 AS DateTime), CAST(0x0000A1B300985960 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (255, N'Lucene', N'a80e8b9b-aee1-41db-b00c-87b7732c49d0', CAST(0x0000A1B300985977 AS DateTime), CAST(0x0000A1B30099C70E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (256, N'Lucene', N'67711f83-abbe-4aa8-a59f-de656805cf80', CAST(0x0000A1B30099C726 AS DateTime), CAST(0x0000A1B3009BD251 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (257, N'Lucene', N'13a716f8-6ab5-432a-a5fc-1fac552cdb65', CAST(0x0000A1B3009BD26A AS DateTime), CAST(0x0000A1B3009D9F5A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (258, N'Lucene', N'544d775e-9edb-421b-87e7-cc5e803adfcc', CAST(0x0000A1B3009D9F71 AS DateTime), CAST(0x0000A1B300A05F1F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (259, N'Lucene', N'544d775e-9edb-421b-87e7-cc5e803adfcc', CAST(0x0000A1B300A05F1F AS DateTime), CAST(0x0000A1B300A4AE8D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (260, N'Lucene', N'd9130ecb-69f9-4898-b7bd-d1fbea2b3e64', CAST(0x0000A1B300A4AEBB AS DateTime), CAST(0x0000A1B300A4AED3 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (261, N'Lucene', N'4e804f8e-1501-4bf9-9abf-297a00dbf2d7', CAST(0x0000A1B300A52CFC AS DateTime), CAST(0x0000A1B300A7EC3D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (262, N'Lucene', N'4e804f8e-1501-4bf9-9abf-297a00dbf2d7', CAST(0x0000A1B300A7EC3E AS DateTime), CAST(0x0000A1B60031D2A9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (263, N'Lucene', N'c52cbb48-b2ce-4a17-9b32-dd694ea2dfaf', CAST(0x0000A1B60031D3A3 AS DateTime), CAST(0x0000A1B6003325AE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (264, N'Lucene', N'74acc528-25ef-4383-bb34-065a4f45ed2c', CAST(0x0000A1B6003325E0 AS DateTime), CAST(0x0000A1B60035E628 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (265, N'Lucene', N'74acc528-25ef-4383-bb34-065a4f45ed2c', CAST(0x0000A1B60035E628 AS DateTime), CAST(0x0000A1B60038A556 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (266, N'Lucene', N'74acc528-25ef-4383-bb34-065a4f45ed2c', CAST(0x0000A1B60038A557 AS DateTime), CAST(0x0000A1B6003B6480 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (267, N'Lucene', N'74acc528-25ef-4383-bb34-065a4f45ed2c', CAST(0x0000A1B6003B6480 AS DateTime), CAST(0x0000A1B6003DCEF5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (268, N'Lucene', N'8abe1c96-24bd-4380-bdc0-6b8dbbfe3b17', CAST(0x0000A1B6003DCF0C AS DateTime), CAST(0x0000A1B600408E49 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (269, N'Lucene', N'8abe1c96-24bd-4380-bdc0-6b8dbbfe3b17', CAST(0x0000A1B600408E4A AS DateTime), CAST(0x0000A1B600434D6F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (270, N'Lucene', N'8abe1c96-24bd-4380-bdc0-6b8dbbfe3b17', CAST(0x0000A1B600434D6F AS DateTime), CAST(0x0000A1B6005D891D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (271, N'Lucene', N'd39deba4-6ac5-4bf3-837a-452c4167f151', CAST(0x0000A1B6005D8B25 AS DateTime), CAST(0x0000A1B600604A67 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (272, N'Lucene', N'd39deba4-6ac5-4bf3-837a-452c4167f151', CAST(0x0000A1B600604A67 AS DateTime), CAST(0x0000A1B600630991 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (273, N'Lucene', N'd39deba4-6ac5-4bf3-837a-452c4167f151', CAST(0x0000A1B600630991 AS DateTime), CAST(0x0000A1B60065C8C6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (274, N'Lucene', N'd39deba4-6ac5-4bf3-837a-452c4167f151', CAST(0x0000A1B60065C8CC AS DateTime), CAST(0x0000A1B600688818 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (275, N'Lucene', N'd39deba4-6ac5-4bf3-837a-452c4167f151', CAST(0x0000A1B600688818 AS DateTime), CAST(0x0000A1B6006BFE30 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (276, N'Lucene', N'a5628918-c6cc-4a71-965c-4c156191018b', CAST(0x0000A1B6006BFE70 AS DateTime), CAST(0x0000A1B600718659 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (277, N'Lucene', N'339be6cf-ccdc-4e67-a6dc-2eb6316bf3eb', CAST(0x0000A1B600718729 AS DateTime), CAST(0x0000A1B6007446E9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (278, N'Lucene', N'339be6cf-ccdc-4e67-a6dc-2eb6316bf3eb', CAST(0x0000A1B6007446EC AS DateTime), CAST(0x0000A1B600770613 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (279, N'Lucene', N'339be6cf-ccdc-4e67-a6dc-2eb6316bf3eb', CAST(0x0000A1B600770614 AS DateTime), CAST(0x0000A1B6007FDCA5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (280, N'Lucene', N'c3f5b05f-b6b7-4de9-b91c-dc8d254fe0ef', CAST(0x0000A1B6007FDCF7 AS DateTime), CAST(0x0000A1B60082AE70 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (281, N'Lucene', N'ff229ac4-0f5a-4344-9c73-536b42b7fb8f', CAST(0x0000A1B60082AE85 AS DateTime), CAST(0x0000A1B600856DB3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (282, N'Lucene', N'ff229ac4-0f5a-4344-9c73-536b42b7fb8f', CAST(0x0000A1B600856DB3 AS DateTime), CAST(0x0000A1B600882CD9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (283, N'Lucene', N'ff229ac4-0f5a-4344-9c73-536b42b7fb8f', CAST(0x0000A1B600882CD9 AS DateTime), CAST(0x0000A1B6008D23D2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (284, N'Lucene', N'84529fa5-07fe-46b9-910b-703c36a3caf4', CAST(0x0000A1B6008D2436 AS DateTime), CAST(0x0000A1B6008FE406 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (285, N'Lucene', N'84529fa5-07fe-46b9-910b-703c36a3caf4', CAST(0x0000A1B6008FE406 AS DateTime), CAST(0x0000A1B60092A32B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (286, N'Lucene', N'84529fa5-07fe-46b9-910b-703c36a3caf4', CAST(0x0000A1B60092A32C AS DateTime), CAST(0x0000A1B60095CB21 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (287, N'Lucene', N'231597ea-ecc5-4aaa-bc85-5b0ff3db44f6', CAST(0x0000A1B60095CB38 AS DateTime), CAST(0x0000A1B600988A6A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (288, N'Lucene', N'231597ea-ecc5-4aaa-bc85-5b0ff3db44f6', CAST(0x0000A1B600988A6A AS DateTime), CAST(0x0000A1B600993773 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (289, N'Lucene', N'9ed03f8c-7685-42fa-a54d-4fd9f37de6f9', CAST(0x0000A1B60099378D AS DateTime), CAST(0x0000A1B6009A19E9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (290, N'Lucene', N'6a9c9e39-59aa-4ff7-9249-e5823f2e15aa', CAST(0x0000A1B6009A1A05 AS DateTime), CAST(0x0000A1B6009C0F6A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (291, N'Lucene', N'6afae95b-5d9e-4a9e-9192-996a196da27d', CAST(0x0000A1B6009C0F83 AS DateTime), CAST(0x0000A1B6009ECFBE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (292, N'Lucene', N'6afae95b-5d9e-4a9e-9192-996a196da27d', CAST(0x0000A1B6009ECFC9 AS DateTime), CAST(0x0000A1B600A2C654 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (293, N'Lucene', N'6804dff6-de4f-4edc-8516-ad6d5983ebd4', CAST(0x0000A1B600A2C66C AS DateTime), CAST(0x0000A1B600A50621 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (294, N'Lucene', N'07d0a6b6-54a7-4e60-a73c-1a61c8c51886', CAST(0x0000A1B600A5065D AS DateTime), CAST(0x0000A1B600A7C682 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (295, N'Lucene', N'07d0a6b6-54a7-4e60-a73c-1a61c8c51886', CAST(0x0000A1B600A7C683 AS DateTime), CAST(0x0000A1B70056FD3A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (296, N'Lucene', N'1d5a0eb7-eb78-4225-9c7a-35d738e73d3d', CAST(0x0000A1B70056FE40 AS DateTime), CAST(0x0000A1B70059BDFD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (297, N'Lucene', N'1d5a0eb7-eb78-4225-9c7a-35d738e73d3d', CAST(0x0000A1B70059BE03 AS DateTime), CAST(0x0000A1B7005CAF6B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (298, N'Lucene', N'2919fef9-d6ec-4131-9f1e-cbb16af7af9a', CAST(0x0000A1B7005CAF95 AS DateTime), CAST(0x0000A1B7005F6EC7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (299, N'Lucene', N'2919fef9-d6ec-4131-9f1e-cbb16af7af9a', CAST(0x0000A1B7005F6ED3 AS DateTime), CAST(0x0000A1B700617E41 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (300, N'Lucene', N'c2dc2f67-22d8-4ca7-be0d-f477f467342d', CAST(0x0000A1B700617E5C AS DateTime), CAST(0x0000A1B700643E24 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (301, N'Lucene', N'c2dc2f67-22d8-4ca7-be0d-f477f467342d', CAST(0x0000A1B700643E25 AS DateTime), CAST(0x0000A1B70066FD5D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (302, N'Lucene', N'c2dc2f67-22d8-4ca7-be0d-f477f467342d', CAST(0x0000A1B70066FD5D AS DateTime), CAST(0x0000A1B70069BC86 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
GO
print 'Processed 300 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (303, N'Lucene', N'c2dc2f67-22d8-4ca7-be0d-f477f467342d', CAST(0x0000A1B70069BC86 AS DateTime), CAST(0x0000A1B7006C66C8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (304, N'Lucene', N'0c48df96-3952-40a9-977c-f04c5a9f5cbc', CAST(0x0000A1B7006C673E AS DateTime), CAST(0x0000A1B7006F2713 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (305, N'Lucene', N'0c48df96-3952-40a9-977c-f04c5a9f5cbc', CAST(0x0000A1B7006F2714 AS DateTime), CAST(0x0000A1B7007577D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (306, N'Lucene', N'465a8528-6366-4a04-94a8-aa512e4e8764', CAST(0x0000A1B70075782A AS DateTime), CAST(0x0000A1B7007578E3 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (307, N'Lucene', N'0bae0b38-e1a3-44b2-b3f7-d84aad6f115c', CAST(0x0000A1B70075CFDE AS DateTime), CAST(0x0000A1B7007805D3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (308, N'Lucene', N'9a37b548-6707-44bd-90f4-0b636b904e39', CAST(0x0000A1B700780600 AS DateTime), CAST(0x0000A1B7007B7AC4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (309, N'Lucene', N'820b9090-d1c4-44f1-80d5-93980a425103', CAST(0x0000A1B7007B7ADA AS DateTime), CAST(0x0000A1B7007E3A09 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (310, N'Lucene', N'820b9090-d1c4-44f1-80d5-93980a425103', CAST(0x0000A1B7007E3A0D AS DateTime), CAST(0x0000A1B7007FBC05 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (311, N'Lucene', N'46bc6368-0a68-4a8d-be57-fa3ad7a75e13', CAST(0x0000A1B7007FBC19 AS DateTime), CAST(0x0000A1B7008105FB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (312, N'Lucene', N'680ab56f-8bd3-4ea4-a650-628609169112', CAST(0x0000A1B700810617 AS DateTime), CAST(0x0000A1B70083DE0B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (313, N'Lucene', N'1f15ada8-d8ec-425f-86bd-c0621152de28', CAST(0x0000A1B70083DE31 AS DateTime), CAST(0x0000A1B700873746 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (314, N'Lucene', N'd7fcd92b-9b60-42e5-8bff-b7c3f0fa7120', CAST(0x0000A1B700873769 AS DateTime), CAST(0x0000A1B7008A3F9A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (315, N'Lucene', N'1f1b6e15-5167-40a3-8c48-deea14aa1872', CAST(0x0000A1B7008A3FAF AS DateTime), CAST(0x0000A1B7008CB0BE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (316, N'Lucene', N'13b13fad-9384-4776-85fa-5eb9359fa235', CAST(0x0000A1B7008CB0E6 AS DateTime), CAST(0x0000A1B7008F701B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (317, N'Lucene', N'13b13fad-9384-4776-85fa-5eb9359fa235', CAST(0x0000A1B7008F701B AS DateTime), CAST(0x0000A1B700914516 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (318, N'Lucene', N'248d51b8-4500-4d49-96b1-be5505c72e84', CAST(0x0000A1B700914531 AS DateTime), CAST(0x0000A1B70094069A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (319, N'Lucene', N'248d51b8-4500-4d49-96b1-be5505c72e84', CAST(0x0000A1B70094069B AS DateTime), CAST(0x0000A1B70096C5C6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (320, N'Lucene', N'248d51b8-4500-4d49-96b1-be5505c72e84', CAST(0x0000A1B70096C5CA AS DateTime), CAST(0x0000A1B70099850A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (321, N'Lucene', N'248d51b8-4500-4d49-96b1-be5505c72e84', CAST(0x0000A1B70099850A AS DateTime), CAST(0x0000A1B80061B802 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (322, N'Lucene', N'3e1c017e-6d0b-4f29-8909-cbd98c0c974f', CAST(0x0000A1B80061B899 AS DateTime), CAST(0x0000A1B8006477EC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (323, N'Lucene', N'3e1c017e-6d0b-4f29-8909-cbd98c0c974f', CAST(0x0000A1B8006477EC AS DateTime), CAST(0x0000A1B800673718 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (324, N'Lucene', N'3e1c017e-6d0b-4f29-8909-cbd98c0c974f', CAST(0x0000A1B80067371C AS DateTime), CAST(0x0000A1B80069F647 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (325, N'Lucene', N'3e1c017e-6d0b-4f29-8909-cbd98c0c974f', CAST(0x0000A1B80069F647 AS DateTime), CAST(0x0000A1B80075DD2B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (326, N'Lucene', N'45706b0c-382a-4b89-a701-89f764f477b9', CAST(0x0000A1B80075DDB1 AS DateTime), CAST(0x0000A1B800789CEC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (327, N'Lucene', N'45706b0c-382a-4b89-a701-89f764f477b9', CAST(0x0000A1B800789CFA AS DateTime), CAST(0x0000A1B8007B5C4F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (328, N'Lucene', N'45706b0c-382a-4b89-a701-89f764f477b9', CAST(0x0000A1B8007B5C4F AS DateTime), CAST(0x0000A1B8007E94A7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (329, N'Lucene', N'ce9c4f95-4bd9-40e0-a1f0-e6f2b66990d7', CAST(0x0000A1B8007E94EA AS DateTime), CAST(0x0000A1B80081561D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (330, N'Lucene', N'ce9c4f95-4bd9-40e0-a1f0-e6f2b66990d7', CAST(0x0000A1B80081561D AS DateTime), CAST(0x0000A1B800841546 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (331, N'Lucene', N'ce9c4f95-4bd9-40e0-a1f0-e6f2b66990d7', CAST(0x0000A1B800841546 AS DateTime), CAST(0x0000A1B80085DADC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (332, N'Lucene', N'8acdea51-1ccb-469f-a5fd-36ee5e359a52', CAST(0x0000A1B80085DAF1 AS DateTime), CAST(0x0000A1B8008850A6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (333, N'Lucene', N'9c4bf933-50d8-4a00-a344-e9931c283716', CAST(0x0000A1B8008850BC AS DateTime), CAST(0x0000A1B8008B0FE1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (334, N'Lucene', N'9c4bf933-50d8-4a00-a344-e9931c283716', CAST(0x0000A1B8008B0FE1 AS DateTime), CAST(0x0000A1B8008BE053 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (335, N'Lucene', N'f5dc70e0-3d66-4f8b-8c72-f61f978bba22', CAST(0x0000A1B8008BE065 AS DateTime), CAST(0x0000A1B8008BE06E AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (336, N'Lucene', N'e4cb3e84-3237-4e50-aed5-0ea698b6d6c3', CAST(0x0000A1B8008C57DC AS DateTime), CAST(0x0000A1B9002E23DB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (337, N'Lucene', N'b2909c3d-1969-4917-89d0-0d5ef176d554', CAST(0x0000A1B9002E2413 AS DateTime), CAST(0x0000A1B90030E346 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (338, N'Lucene', N'b2909c3d-1969-4917-89d0-0d5ef176d554', CAST(0x0000A1B90030E346 AS DateTime), CAST(0x0000A1B90033A26D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (339, N'Lucene', N'b2909c3d-1969-4917-89d0-0d5ef176d554', CAST(0x0000A1B90033A26D AS DateTime), CAST(0x0000A1B90061D489 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (340, N'Lucene', N'921b34d1-4024-4c23-9236-4fd484a62bf0', CAST(0x0000A1B90061D510 AS DateTime), CAST(0x0000A1B90064946D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (341, N'Lucene', N'921b34d1-4024-4c23-9236-4fd484a62bf0', CAST(0x0000A1B90064946E AS DateTime), CAST(0x0000A1B900675394 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (342, N'Lucene', N'921b34d1-4024-4c23-9236-4fd484a62bf0', CAST(0x0000A1B900675394 AS DateTime), CAST(0x0000A1B9006BAD31 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (343, N'Lucene', N'147dbcfa-3188-4c48-a4b2-3d0ca60cea69', CAST(0x0000A1B9006BAD70 AS DateTime), CAST(0x0000A1B9006FB5C5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (344, N'Lucene', N'0479c50f-a716-482e-a316-65c772e95b35', CAST(0x0000A1B9006FB5DA AS DateTime), CAST(0x0000A1B90074BBFC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (345, N'Lucene', N'eab9c06b-39fc-48f8-ac4a-9c21e66343d6', CAST(0x0000A1B90074BC0F AS DateTime), CAST(0x0000A1B90075FFEF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (346, N'Lucene', N'1bd6706e-5b6e-48da-a9c5-b3a1c3880ff1', CAST(0x0000A1B900760006 AS DateTime), CAST(0x0000A1B90076000D AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (347, N'Lucene', N'e8d3feed-1632-400d-8ea3-70fdad84ebd9', CAST(0x0000A1B900761BD6 AS DateTime), CAST(0x0000A1B90078DB15 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (348, N'Lucene', N'e8d3feed-1632-400d-8ea3-70fdad84ebd9', CAST(0x0000A1B90078DB19 AS DateTime), CAST(0x0000A1B9007B9A40 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (349, N'Lucene', N'e8d3feed-1632-400d-8ea3-70fdad84ebd9', CAST(0x0000A1B9007B9A47 AS DateTime), CAST(0x0000A1B900809D01 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (350, N'Lucene', N'69e1eedd-657a-4bf3-bb47-0378269f1807', CAST(0x0000A1B900809D6C AS DateTime), CAST(0x0000A1B900835DD9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (351, N'Lucene', N'69e1eedd-657a-4bf3-bb47-0378269f1807', CAST(0x0000A1B900835DDD AS DateTime), CAST(0x0000A1BA001D92B2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (352, N'Lucene', N'55b1184e-db15-4b6c-b79f-4137d66bf458', CAST(0x0000A1BA001D9369 AS DateTime), CAST(0x0000A1BA001D93A8 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (353, N'Lucene', N'd2ebfaba-8029-44b5-b248-24d8a9990d48', CAST(0x0000A1BA001E1064 AS DateTime), CAST(0x0000A1BA001EE262 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (354, N'Lucene', N'9d51b091-3913-4ff3-aaa5-1590f3381a4c', CAST(0x0000A1BA001EE27E AS DateTime), CAST(0x0000A1BA001EE292 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (355, N'Lucene', N'8f9eef20-cfa9-4fd8-a7af-6a85584d7b7f', CAST(0x0000A1BA001F1425 AS DateTime), CAST(0x0000A1BA001F144E AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (356, N'Lucene', N'ad5d2e48-6b5e-4831-af79-0cc0c7182753', CAST(0x0000A1BA001F9C1B AS DateTime), CAST(0x0000A1BA001F9C53 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (357, N'Lucene', N'76e9bc4b-d887-44a5-944d-45d436e87398', CAST(0x0000A1BA001FF40F AS DateTime), CAST(0x0000A1BA0022B34A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (358, N'Lucene', N'76e9bc4b-d887-44a5-944d-45d436e87398', CAST(0x0000A1BA0022B34F AS DateTime), CAST(0x0000A1BA00257283 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (359, N'Lucene', N'76e9bc4b-d887-44a5-944d-45d436e87398', CAST(0x0000A1BA00257287 AS DateTime), CAST(0x0000A1BA002831B2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (360, N'Lucene', N'76e9bc4b-d887-44a5-944d-45d436e87398', CAST(0x0000A1BA002831B4 AS DateTime), CAST(0x0000A1BA002831DB AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (361, N'Lucene', N'230135a9-0626-4325-a858-1cb184301d23', CAST(0x0000A1BA00286708 AS DateTime), CAST(0x0000A1BA002A790B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (362, N'Lucene', N'5c64c4c1-f621-42fe-aa29-e745951b6e93', CAST(0x0000A1BA002A7951 AS DateTime), CAST(0x0000A1BA002BE938 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (363, N'Lucene', N'64c446ec-461b-4be7-ba9c-1c33bd868d53', CAST(0x0000A1BA002BE956 AS DateTime), CAST(0x0000A1BA002E615C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (364, N'Lucene', N'0875ff95-427e-4a63-9a3c-1029d450de75', CAST(0x0000A1BA002E617A AS DateTime), CAST(0x0000A1BA002FF499 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (365, N'Lucene', N'27f74f4a-51fc-413e-9598-033c98a32e34', CAST(0x0000A1BA002FF4B4 AS DateTime), CAST(0x0000A1BA0032B3EE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (366, N'Lucene', N'27f74f4a-51fc-413e-9598-033c98a32e34', CAST(0x0000A1BA0032B3F7 AS DateTime), CAST(0x0000A1BA0035731D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (367, N'Lucene', N'27f74f4a-51fc-413e-9598-033c98a32e34', CAST(0x0000A1BA00357323 AS DateTime), CAST(0x0000A1BA0036492C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (368, N'Lucene', N'a9c8226c-436a-4be4-a8cb-7e77ee4007f3', CAST(0x0000A1BA00364983 AS DateTime), CAST(0x0000A1BA0037F4FE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (369, N'Lucene', N'ecbb7d9c-d381-4cc0-b250-edf72ad86b00', CAST(0x0000A1BA0037F515 AS DateTime), CAST(0x0000A1BA0038B325 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (370, N'Lucene', N'c8723646-255c-4751-bf14-e70a748838dc', CAST(0x0000A1BA0038B341 AS DateTime), CAST(0x0000A1BA003B7275 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (371, N'Lucene', N'c8723646-255c-4751-bf14-e70a748838dc', CAST(0x0000A1BA003B7276 AS DateTime), CAST(0x0000A1BA003C89CD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (372, N'Lucene', N'eb106908-969d-4c13-9849-8304ecf08d81', CAST(0x0000A1BA003C89ED AS DateTime), CAST(0x0000A1BA003F494D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (373, N'Lucene', N'eb106908-969d-4c13-9849-8304ecf08d81', CAST(0x0000A1BA003F494E AS DateTime), CAST(0x0000A1BA00420874 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (374, N'Lucene', N'eb106908-969d-4c13-9849-8304ecf08d81', CAST(0x0000A1BA00420874 AS DateTime), CAST(0x0000A1BA005A4FA3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (375, N'Lucene', N'd39c41eb-28f0-4904-b84c-17ad05849c77', CAST(0x0000A1BA005A4FE0 AS DateTime), CAST(0x0000A1BA005D0F10 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (376, N'Lucene', N'd39c41eb-28f0-4904-b84c-17ad05849c77', CAST(0x0000A1BA005D0F10 AS DateTime), CAST(0x0000A1BA005EB635 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (377, N'Lucene', N'69fd6d6a-9ee1-4157-a71f-e1ac533db453', CAST(0x0000A1BA005EB659 AS DateTime), CAST(0x0000A1BA005EB68C AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (378, N'Lucene', N'8a39edcb-9fd0-48f7-ae46-1c50969a2ebe', CAST(0x0000A1BA005EDEDF AS DateTime), CAST(0x0000A1BA00619E25 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (379, N'Lucene', N'8a39edcb-9fd0-48f7-ae46-1c50969a2ebe', CAST(0x0000A1BA00619E2A AS DateTime), CAST(0x0000A1BA0065C625 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (380, N'Lucene', N'7e87a435-e509-4bd8-91f7-f19ad9f1a011', CAST(0x0000A1BA0065C64C AS DateTime), CAST(0x0000A1BA00688683 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (381, N'Lucene', N'7e87a435-e509-4bd8-91f7-f19ad9f1a011', CAST(0x0000A1BA00688684 AS DateTime), CAST(0x0000A1BA00688689 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (382, N'Lucene', N'2c793ebf-086c-40a9-96c8-9740ab9013c2', CAST(0x0000A1BA00690EA5 AS DateTime), CAST(0x0000A1BA006BCDF9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (383, N'Lucene', N'2c793ebf-086c-40a9-96c8-9740ab9013c2', CAST(0x0000A1BA006BCE04 AS DateTime), CAST(0x0000A1BA006E8D3B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (384, N'Lucene', N'2c793ebf-086c-40a9-96c8-9740ab9013c2', CAST(0x0000A1BA006E8D3C AS DateTime), CAST(0x0000A1BA006F48BB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (385, N'Lucene', N'c74006e7-6ca8-423b-97bb-ac82091a6fdf', CAST(0x0000A1BA006F48F4 AS DateTime), CAST(0x0000A1BA007208F3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (386, N'Lucene', N'c74006e7-6ca8-423b-97bb-ac82091a6fdf', CAST(0x0000A1BA007208F4 AS DateTime), CAST(0x0000A1BA0072EE8E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (387, N'Lucene', N'6a99b394-69cb-4608-aa20-3447298506ba', CAST(0x0000A1BA0072EEB1 AS DateTime), CAST(0x0000A1BA0074EB69 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (388, N'Lucene', N'29e3c4d8-7cc2-4de7-ba27-34f030f4c2a8', CAST(0x0000A1BA0074EB98 AS DateTime), CAST(0x0000A1BA0077AAD4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (389, N'Lucene', N'29e3c4d8-7cc2-4de7-ba27-34f030f4c2a8', CAST(0x0000A1BA0077AAE5 AS DateTime), CAST(0x0000A1BA007A6A0D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (390, N'Lucene', N'29e3c4d8-7cc2-4de7-ba27-34f030f4c2a8', CAST(0x0000A1BA007A6A0D AS DateTime), CAST(0x0000A1BA007F33E5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (391, N'Lucene', N'0eab3a75-fbca-4dfd-a75c-280a4bc36056', CAST(0x0000A1BA007F344F AS DateTime), CAST(0x0000A1BA0081F3B1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (392, N'Lucene', N'0eab3a75-fbca-4dfd-a75c-280a4bc36056', CAST(0x0000A1BA0081F3B3 AS DateTime), CAST(0x0000A1BA0082BABB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (393, N'Lucene', N'ff149c4a-e0fa-4229-8156-c40230ed4715', CAST(0x0000A1BA0082BAE0 AS DateTime), CAST(0x0000A1BA0083C14D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (394, N'Lucene', N'52e1cb8a-a20e-4527-88be-16731f953d25', CAST(0x0000A1BA0083C167 AS DateTime), CAST(0x0000A1BA0086F03B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (395, N'Lucene', N'300a55e5-1ca2-4faf-aa1c-3fa75d7c0d04', CAST(0x0000A1BA0086F059 AS DateTime), CAST(0x0000A1BA0087CCD4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (396, N'Lucene', N'fb3a42fc-e5bb-4ad2-a30e-5f5892237e7b', CAST(0x0000A1BA0087CCEC AS DateTime), CAST(0x0000A1BA00888729 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (397, N'Lucene', N'841ec208-551b-481b-9260-0d232f0816c5', CAST(0x0000A1BA00888750 AS DateTime), CAST(0x0000A1BA00888759 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (398, N'Lucene', N'17b29cb6-cdec-4f3e-a4da-f379ee2fc253', CAST(0x0000A1BA0088A567 AS DateTime), CAST(0x0000A1BA0088A588 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (399, N'Lucene', N'f1399a8c-1c28-4c3c-a59f-cbcf8419b358', CAST(0x0000A1BA00890B6E AS DateTime), CAST(0x0000A1BA0089FF42 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (400, N'Lucene', N'8a4cfefc-466d-47a4-8f20-6cee12070b4f', CAST(0x0000A1BA0089FF5C AS DateTime), CAST(0x0000A1BA008AD5ED AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (401, N'Lucene', N'f6f3c4f5-3551-41a2-8d29-e6128a2dfb44', CAST(0x0000A1BA008AD602 AS DateTime), CAST(0x0000A1BA008D974A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (402, N'Lucene', N'f6f3c4f5-3551-41a2-8d29-e6128a2dfb44', CAST(0x0000A1BA008D974A AS DateTime), CAST(0x0000A1BA00905687 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (403, N'Lucene', N'f6f3c4f5-3551-41a2-8d29-e6128a2dfb44', CAST(0x0000A1BA00905687 AS DateTime), CAST(0x0000A1BA009AD9E9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
GO
print 'Processed 400 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (404, N'Lucene', N'6e525e20-3b8f-47a4-b91f-ebdff41f4848', CAST(0x0000A1BA009ADA34 AS DateTime), CAST(0x0000A1BA009D9B69 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (405, N'Lucene', N'6e525e20-3b8f-47a4-b91f-ebdff41f4848', CAST(0x0000A1BA009D9B69 AS DateTime), CAST(0x0000A1BA00A05A97 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (406, N'Lucene', N'6e525e20-3b8f-47a4-b91f-ebdff41f4848', CAST(0x0000A1BA00A05A98 AS DateTime), CAST(0x0000A1BD0068B84F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (407, N'Lucene', N'b1b28396-e70b-47b4-a488-0d0aea80d58f', CAST(0x0000A1BD0068B899 AS DateTime), CAST(0x0000A1BD006D2172 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (408, N'Lucene', N'fb709c7b-3e1e-49a3-a3da-66c18163492e', CAST(0x0000A1BD006D2188 AS DateTime), CAST(0x0000A1BD006FE0D4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (409, N'Lucene', N'fb709c7b-3e1e-49a3-a3da-66c18163492e', CAST(0x0000A1BD006FE0D5 AS DateTime), CAST(0x0000A1BD00729FFE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (410, N'Lucene', N'fb709c7b-3e1e-49a3-a3da-66c18163492e', CAST(0x0000A1BD0072A002 AS DateTime), CAST(0x0000A1BD0076ABEB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (411, N'Lucene', N'b385905b-32ec-45bb-a59b-ce75ab7531ff', CAST(0x0000A1BD0076AC2B AS DateTime), CAST(0x0000A1BD0076AC37 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (412, N'Lucene', N'8d71e7fd-af00-47c7-98a6-142e9412a877', CAST(0x0000A1BD0076CA30 AS DateTime), CAST(0x0000A1BD00775DCF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (413, N'Lucene', N'd371e435-f54e-4ba7-a63c-5ee8a0221d59', CAST(0x0000A1BD00775E03 AS DateTime), CAST(0x0000A1BD007964C1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (414, N'Lucene', N'bce3ad30-d54c-4842-89ea-3455d120ab39', CAST(0x0000A1BD007964D8 AS DateTime), CAST(0x0000A1BD007A32EA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (415, N'Lucene', N'e76d35ef-de62-4126-8997-f30410ba302c', CAST(0x0000A1BD007A3302 AS DateTime), CAST(0x0000A1BD007CF22F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (416, N'Lucene', N'e76d35ef-de62-4126-8997-f30410ba302c', CAST(0x0000A1BD007CF230 AS DateTime), CAST(0x0000A1BD007FB155 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (417, N'Lucene', N'e76d35ef-de62-4126-8997-f30410ba302c', CAST(0x0000A1BD007FB155 AS DateTime), CAST(0x0000A1BD00820CAB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (418, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD00820CE3 AS DateTime), CAST(0x0000A1BD0084CC15 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (419, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD0084CC16 AS DateTime), CAST(0x0000A1BD00878B3C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (420, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD00878B3C AS DateTime), CAST(0x0000A1BD008A4A61 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (421, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD008A4A62 AS DateTime), CAST(0x0000A1BD008D0987 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (422, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD008D0987 AS DateTime), CAST(0x0000A1BD008FC8B1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (423, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD008FC8B2 AS DateTime), CAST(0x0000A1BD009287D6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (424, N'Lucene', N'a23fb6ce-6fb5-4d70-b06f-2d9cdb611e3e', CAST(0x0000A1BD009287D6 AS DateTime), CAST(0x0000A1BD0094F3C2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (425, N'Lucene', N'4649ec74-229d-40d9-b760-ba40b609689c', CAST(0x0000A1BD0094F405 AS DateTime), CAST(0x0000A1BD0095B5C3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (426, N'Lucene', N'785cfd39-e5cf-4adf-963a-c1b3eb22ee69', CAST(0x0000A1BD0095B5DA AS DateTime), CAST(0x0000A1BD0098760A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (427, N'Lucene', N'785cfd39-e5cf-4adf-963a-c1b3eb22ee69', CAST(0x0000A1BD0098760C AS DateTime), CAST(0x0000A1BD009B3530 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (428, N'Lucene', N'785cfd39-e5cf-4adf-963a-c1b3eb22ee69', CAST(0x0000A1BD009B3530 AS DateTime), CAST(0x0000A1BD009DF455 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (429, N'Lucene', N'785cfd39-e5cf-4adf-963a-c1b3eb22ee69', CAST(0x0000A1BD009DF456 AS DateTime), CAST(0x0000A1BD00A0B764 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (430, N'Lucene', N'a0f30fd4-c78f-4891-a871-9f00f6a66016', CAST(0x0000A1BD00A0B77A AS DateTime), CAST(0x0000A1BD00A376AA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (431, N'Lucene', N'a0f30fd4-c78f-4891-a871-9f00f6a66016', CAST(0x0000A1BD00A376AA AS DateTime), CAST(0x0000A1BD00A635E0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (432, N'Lucene', N'a0f30fd4-c78f-4891-a871-9f00f6a66016', CAST(0x0000A1BD00A635E0 AS DateTime), CAST(0x0000A1BD00A747E3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (433, N'Lucene', N'9b98345a-a48a-4ba3-bf8d-f490042763d6', CAST(0x0000A1BD00A747FC AS DateTime), CAST(0x0000A1BE001E0113 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (434, N'Lucene', N'fa021740-d568-4121-9027-5bfe6e401c96', CAST(0x0000A1BE001E01C0 AS DateTime), CAST(0x0000A1BE0020C10D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (435, N'Lucene', N'fa021740-d568-4121-9027-5bfe6e401c96', CAST(0x0000A1BE0020C10E AS DateTime), CAST(0x0000A1BE00238035 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (436, N'Lucene', N'fa021740-d568-4121-9027-5bfe6e401c96', CAST(0x0000A1BE00238036 AS DateTime), CAST(0x0000A1BE002A508D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (437, N'Lucene', N'8d06ffd2-f981-4aef-9b28-15ede2d58ab9', CAST(0x0000A1BE002A50D5 AS DateTime), CAST(0x0000A1BE002D10C0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (438, N'Lucene', N'8d06ffd2-f981-4aef-9b28-15ede2d58ab9', CAST(0x0000A1BE002D10C9 AS DateTime), CAST(0x0000A1BE002FD00B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (439, N'Lucene', N'8d06ffd2-f981-4aef-9b28-15ede2d58ab9', CAST(0x0000A1BE002FD012 AS DateTime), CAST(0x0000A1BE00328F3D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (440, N'Lucene', N'8d06ffd2-f981-4aef-9b28-15ede2d58ab9', CAST(0x0000A1BE00328F3E AS DateTime), CAST(0x0000A1BE003342A4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (441, N'Lucene', N'227ae69a-7fe1-41a0-861e-92638dcb2f13', CAST(0x0000A1BE003342B9 AS DateTime), CAST(0x0000A1BE0035107D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (442, N'Lucene', N'fb8e8a75-7756-4a0e-afc4-9751198d22ba', CAST(0x0000A1BE00351098 AS DateTime), CAST(0x0000A1BE0037CFC9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (443, N'Lucene', N'fb8e8a75-7756-4a0e-afc4-9751198d22ba', CAST(0x0000A1BE0037CFC9 AS DateTime), CAST(0x0000A1BE003A8EFA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (444, N'Lucene', N'fb8e8a75-7756-4a0e-afc4-9751198d22ba', CAST(0x0000A1BE003A8EFA AS DateTime), CAST(0x0000A1BE005C634B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (445, N'Lucene', N'21032294-0f2f-4e73-b0fb-d9c10b89e9a0', CAST(0x0000A1BE005C63A5 AS DateTime), CAST(0x0000A1BE00643B83 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (446, N'Lucene', N'2fa352da-02fa-4f35-a3be-2d8723d080c7', CAST(0x0000A1BE00643BBF AS DateTime), CAST(0x0000A1BE0066FBC1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (447, N'Lucene', N'2fa352da-02fa-4f35-a3be-2d8723d080c7', CAST(0x0000A1BE0066FBC2 AS DateTime), CAST(0x0000A1BE00682C1F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (448, N'Lucene', N'1875f014-baca-4a53-be69-0320ed2651c8', CAST(0x0000A1BE00682C35 AS DateTime), CAST(0x0000A1BE00695943 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (449, N'Lucene', N'40928705-9654-48c4-8f99-4e5bf99108ad', CAST(0x0000A1BE0069596C AS DateTime), CAST(0x0000A1BE006C18E3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (450, N'Lucene', N'40928705-9654-48c4-8f99-4e5bf99108ad', CAST(0x0000A1BE006C18E3 AS DateTime), CAST(0x0000A1BE006ED80C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (451, N'Lucene', N'40928705-9654-48c4-8f99-4e5bf99108ad', CAST(0x0000A1BE006ED80C AS DateTime), CAST(0x0000A1BE00719731 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (452, N'Lucene', N'40928705-9654-48c4-8f99-4e5bf99108ad', CAST(0x0000A1BE00719732 AS DateTime), CAST(0x0000A1BE0073A2B8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (453, N'Lucene', N'50cb7113-9f01-4f37-91c4-ca602789aaf6', CAST(0x0000A1BE0073A333 AS DateTime), CAST(0x0000A1BE007663E0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (454, N'Lucene', N'50cb7113-9f01-4f37-91c4-ca602789aaf6', CAST(0x0000A1BE007663E8 AS DateTime), CAST(0x0000A1BE0079230C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (455, N'Lucene', N'50cb7113-9f01-4f37-91c4-ca602789aaf6', CAST(0x0000A1BE0079230C AS DateTime), CAST(0x0000A1BE007BE234 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (456, N'Lucene', N'50cb7113-9f01-4f37-91c4-ca602789aaf6', CAST(0x0000A1BE007BE235 AS DateTime), CAST(0x0000A1BE00817D24 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (457, N'Lucene', N'df806cba-21d6-4724-b38c-f1024878a845', CAST(0x0000A1BE00817D69 AS DateTime), CAST(0x0000A1BE00823F70 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (458, N'Lucene', N'182cc161-1b11-4389-9a19-da0fd8fdf994', CAST(0x0000A1BE00823F8C AS DateTime), CAST(0x0000A1BE0084F9E9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (459, N'Lucene', N'1e76b705-05ce-453f-9f51-b418cda2862a', CAST(0x0000A1BE0084FA04 AS DateTime), CAST(0x0000A1BE00864527 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (460, N'Lucene', N'a6ac22bf-3ece-4a8e-a2c2-76ec0b56477d', CAST(0x0000A1BE00864552 AS DateTime), CAST(0x0000A1BE00876AAF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (461, N'Lucene', N'3c4ed9dc-1ec3-449a-b813-fcd9f52b3757', CAST(0x0000A1BE00876AC6 AS DateTime), CAST(0x0000A1BE008A0352 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (462, N'Lucene', N'c639da0c-af7b-4518-b927-20f92dee6956', CAST(0x0000A1BE008A036D AS DateTime), CAST(0x0000A1BE008CC2A4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (463, N'Lucene', N'c639da0c-af7b-4518-b927-20f92dee6956', CAST(0x0000A1BE008CC2AC AS DateTime), CAST(0x0000A1BE008F81CE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (464, N'Lucene', N'c639da0c-af7b-4518-b927-20f92dee6956', CAST(0x0000A1BE008F81CF AS DateTime), CAST(0x0000A1BE009398A4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (465, N'Lucene', N'bb56dd4d-1310-449b-9f99-07bdc75f64c2', CAST(0x0000A1BE009398BF AS DateTime), CAST(0x0000A1BE009657E9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (466, N'Lucene', N'bb56dd4d-1310-449b-9f99-07bdc75f64c2', CAST(0x0000A1BE009657E9 AS DateTime), CAST(0x0000A1BE0099170D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (467, N'Lucene', N'bb56dd4d-1310-449b-9f99-07bdc75f64c2', CAST(0x0000A1BE0099170E AS DateTime), CAST(0x0000A1BE009BD630 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (468, N'Lucene', N'bb56dd4d-1310-449b-9f99-07bdc75f64c2', CAST(0x0000A1BE009BD639 AS DateTime), CAST(0x0000A1BF002A66F0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (469, N'Lucene', N'0357b8c3-e482-4377-89b3-cbe69a790778', CAST(0x0000A1BF002A682A AS DateTime), CAST(0x0000A1BF002D2785 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (470, N'Lucene', N'0357b8c3-e482-4377-89b3-cbe69a790778', CAST(0x0000A1BF002D2786 AS DateTime), CAST(0x0000A1BF002D278B AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (471, N'Lucene', N'4abd32c7-aac5-48a5-ac4b-a48de5c8321a', CAST(0x0000A1BF002D5D93 AS DateTime), CAST(0x0000A1BF00301CD5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (472, N'Lucene', N'4abd32c7-aac5-48a5-ac4b-a48de5c8321a', CAST(0x0000A1BF00301CD5 AS DateTime), CAST(0x0000A1BF0032DBFB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (473, N'Lucene', N'4abd32c7-aac5-48a5-ac4b-a48de5c8321a', CAST(0x0000A1BF0032DBFB AS DateTime), CAST(0x0000A1BF0033C977 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (474, N'Lucene', N'a5a07c22-d2e1-472b-bd4d-0b9e99b2cde4', CAST(0x0000A1BF0033C993 AS DateTime), CAST(0x0000A1BF0033C99E AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (475, N'Lucene', N'216dc721-dd08-44cd-a949-f640a3ecb22e', CAST(0x0000A1BF00344306 AS DateTime), CAST(0x0000A1BF003500DA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (476, N'Lucene', N'62e150ec-8c24-4e69-bc3f-bda861b8d5ea', CAST(0x0000A1BF003500F1 AS DateTime), CAST(0x0000A1BF0036D298 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (477, N'Lucene', N'8e91acb6-faf2-4f0b-93d8-e701142e9a20', CAST(0x0000A1BF0036D2C9 AS DateTime), CAST(0x0000A1BF00399224 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (478, N'Lucene', N'8e91acb6-faf2-4f0b-93d8-e701142e9a20', CAST(0x0000A1BF00399224 AS DateTime), CAST(0x0000A1BF003C514B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (479, N'Lucene', N'8e91acb6-faf2-4f0b-93d8-e701142e9a20', CAST(0x0000A1BF003C514C AS DateTime), CAST(0x0000A1BF003CF675 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (480, N'Lucene', N'e933beb1-b134-4550-9d74-66052d6745e4', CAST(0x0000A1BF003CF6BA AS DateTime), CAST(0x0000A1BF003F68EB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (481, N'Lucene', N'd96a636f-3de3-4560-aabc-a28e6e165a19', CAST(0x0000A1BF003F6920 AS DateTime), CAST(0x0000A1BF00422852 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (482, N'Lucene', N'd96a636f-3de3-4560-aabc-a28e6e165a19', CAST(0x0000A1BF00422852 AS DateTime), CAST(0x0000A1BF0044E77A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (483, N'Lucene', N'd96a636f-3de3-4560-aabc-a28e6e165a19', CAST(0x0000A1BF0044E77A AS DateTime), CAST(0x0000A1BF005D34F9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (484, N'Lucene', N'131dae30-c4c3-44e4-8e6e-85b8430b9a49', CAST(0x0000A1BF005D3538 AS DateTime), CAST(0x0000A1BF005FF501 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (485, N'Lucene', N'131dae30-c4c3-44e4-8e6e-85b8430b9a49', CAST(0x0000A1BF005FF502 AS DateTime), CAST(0x0000A1BF0061A1F8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (486, N'Lucene', N'c82e4fff-4baf-4737-be6b-a7fde35b13d8', CAST(0x0000A1BF0061A213 AS DateTime), CAST(0x0000A1BF00646141 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (487, N'Lucene', N'c82e4fff-4baf-4737-be6b-a7fde35b13d8', CAST(0x0000A1BF00646142 AS DateTime), CAST(0x0000A1BF0067206A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (488, N'Lucene', N'c82e4fff-4baf-4737-be6b-a7fde35b13d8', CAST(0x0000A1BF0067206A AS DateTime), CAST(0x0000A1BF0069DF8F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (489, N'Lucene', N'c82e4fff-4baf-4737-be6b-a7fde35b13d8', CAST(0x0000A1BF0069DF8F AS DateTime), CAST(0x0000A1BF006C9ECC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (490, N'Lucene', N'c82e4fff-4baf-4737-be6b-a7fde35b13d8', CAST(0x0000A1BF006C9ECD AS DateTime), CAST(0x0000A1BF006F5E38 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (491, N'Lucene', N'c82e4fff-4baf-4737-be6b-a7fde35b13d8', CAST(0x0000A1BF006F5E40 AS DateTime), CAST(0x0000A1BF007AC65B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (492, N'Lucene', N'63b97629-0697-4b0a-8c3f-ad11dd526e3c', CAST(0x0000A1BF007AC87F AS DateTime), CAST(0x0000A1BF007D8A9A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (493, N'Lucene', N'63b97629-0697-4b0a-8c3f-ad11dd526e3c', CAST(0x0000A1BF007D8A9D AS DateTime), CAST(0x0000A1BF008049CF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (494, N'Lucene', N'63b97629-0697-4b0a-8c3f-ad11dd526e3c', CAST(0x0000A1BF008049D3 AS DateTime), CAST(0x0000A1BF008308FA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (495, N'Lucene', N'63b97629-0697-4b0a-8c3f-ad11dd526e3c', CAST(0x0000A1BF0083090F AS DateTime), CAST(0x0000A1BF0085FAEE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (496, N'Lucene', N'e26b8cd5-9d88-44bd-adbd-73b8f1717421', CAST(0x0000A1BF0085FB04 AS DateTime), CAST(0x0000A1BF008A33B4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (497, N'Lucene', N'f7632927-7e30-448c-8ae5-db4110bdba04', CAST(0x0000A1BF008A33D5 AS DateTime), CAST(0x0000A1BF008CF326 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (498, N'Lucene', N'f7632927-7e30-448c-8ae5-db4110bdba04', CAST(0x0000A1BF008CF326 AS DateTime), CAST(0x0000A1BF008FB251 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (499, N'Lucene', N'f7632927-7e30-448c-8ae5-db4110bdba04', CAST(0x0000A1BF008FB252 AS DateTime), CAST(0x0000A1BF009763F9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (500, N'Lucene', N'65830d3f-b3a9-4652-b415-c5907cefa58c', CAST(0x0000A1BF00976453 AS DateTime), CAST(0x0000A1BF009A237F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (501, N'Lucene', N'65830d3f-b3a9-4652-b415-c5907cefa58c', CAST(0x0000A1BF009A237F AS DateTime), CAST(0x0000A1BF009CE2A4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (502, N'Lucene', N'65830d3f-b3a9-4652-b415-c5907cefa58c', CAST(0x0000A1BF009CE2A6 AS DateTime), CAST(0x0000A1BF009CE2AB AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (503, N'Lucene', N'18fb7b7b-aceb-4ce3-9dd1-7893b9ea879d', CAST(0x0000A1BF009D59D1 AS DateTime), CAST(0x0000A1BF00A01A17 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (504, N'Lucene', N'18fb7b7b-aceb-4ce3-9dd1-7893b9ea879d', CAST(0x0000A1BF00A01A17 AS DateTime), CAST(0x0000A1BF00A01A1C AS DateTime), NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (505, N'Lucene', N'd3f8aeb1-03ab-45aa-968c-2324cc946768', CAST(0x0000A1BF00A0A27A AS DateTime), CAST(0x0000A1BF00A3626A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (506, N'Lucene', N'd3f8aeb1-03ab-45aa-968c-2324cc946768', CAST(0x0000A1BF00A3626A AS DateTime), CAST(0x0000A1BF00A621BE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (507, N'Lucene', N'd3f8aeb1-03ab-45aa-968c-2324cc946768', CAST(0x0000A1BF00A621CE AS DateTime), CAST(0x0000A1BF00A62224 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (508, N'Lucene', N'4148d2a8-53ce-4024-8266-76e28dfc9860', CAST(0x0000A1BF00A6981C AS DateTime), CAST(0x0000A1C0003A8AC5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (509, N'Lucene', N'0ddf4cc9-fdbf-43df-8196-2a944c0bf2a7', CAST(0x0000A1C0003A8B9C AS DateTime), CAST(0x0000A1C0003D4B68 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (510, N'Lucene', N'0ddf4cc9-fdbf-43df-8196-2a944c0bf2a7', CAST(0x0000A1C0003D4B69 AS DateTime), CAST(0x0000A1C00059C6F0 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (511, N'Lucene', N'808f2b27-1573-4f25-9251-56f52b1360e9', CAST(0x0000A1C00059C72B AS DateTime), CAST(0x0000A1C00059C734 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (512, N'Lucene', N'c65ed904-ead9-40ad-a6f8-acfb3edca49e', CAST(0x0000A1C0005A0252 AS DateTime), CAST(0x0000A1C0005A0284 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (513, N'Lucene', N'ab15e313-019d-4822-b2a1-b6f7504ec4db', CAST(0x0000A1C0005A82A0 AS DateTime), CAST(0x0000A1C0005D41DA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (514, N'Lucene', N'ab15e313-019d-4822-b2a1-b6f7504ec4db', CAST(0x0000A1C0005D41DE AS DateTime), CAST(0x0000A1C00060C303 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (515, N'Lucene', N'cce2a7e5-0cd0-47a2-8122-ab6d02ed57aa', CAST(0x0000A1C00060C32E AS DateTime), CAST(0x0000A1C00060C4A6 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (516, N'Lucene', N'7891e4fc-3c10-4d07-b996-1b2e4e9b896a', CAST(0x0000A1C00060F422 AS DateTime), CAST(0x0000A1C00063B36C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (517, N'Lucene', N'7891e4fc-3c10-4d07-b996-1b2e4e9b896a', CAST(0x0000A1C00063B36D AS DateTime), CAST(0x0000A1C00066729A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (518, N'Lucene', N'7891e4fc-3c10-4d07-b996-1b2e4e9b896a', CAST(0x0000A1C00066729B AS DateTime), CAST(0x0000A1C0006931C1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (519, N'Lucene', N'7891e4fc-3c10-4d07-b996-1b2e4e9b896a', CAST(0x0000A1C0006931C2 AS DateTime), CAST(0x0000A1C0006A5CD9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (520, N'Lucene', N'405f773c-1b2a-45d0-901c-fdb28bc94117', CAST(0x0000A1C0006A5D1D AS DateTime), CAST(0x0000A1C0006D1D17 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (521, N'Lucene', N'405f773c-1b2a-45d0-901c-fdb28bc94117', CAST(0x0000A1C0006D1D17 AS DateTime), CAST(0x0000A1C0006FDC3B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (522, N'Lucene', N'405f773c-1b2a-45d0-901c-fdb28bc94117', CAST(0x0000A1C0006FDC3B AS DateTime), CAST(0x0000A1C00074BCA5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (523, N'Lucene', N'f3f10566-9a9d-425f-a417-09eb35b34326', CAST(0x0000A1C00074BD10 AS DateTime), CAST(0x0000A1C000777E49 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (524, N'Lucene', N'f3f10566-9a9d-425f-a417-09eb35b34326', CAST(0x0000A1C000777E4A AS DateTime), CAST(0x0000A1C0007A3D74 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (525, N'Lucene', N'f3f10566-9a9d-425f-a417-09eb35b34326', CAST(0x0000A1C0007A3D74 AS DateTime), CAST(0x0000A1C0007A3D79 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (526, N'Lucene', N'66bd4b07-be2d-4866-9965-5c6f53d6eec4', CAST(0x0000A1C0007A69B5 AS DateTime), CAST(0x0000A1C0007B4B98 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (527, N'Lucene', N'2bab6c26-ad19-4683-963c-b66fc02d734c', CAST(0x0000A1C0007B4BC0 AS DateTime), CAST(0x0000A1C0007E0B58 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (528, N'Lucene', N'2bab6c26-ad19-4683-963c-b66fc02d734c', CAST(0x0000A1C0007E0B58 AS DateTime), CAST(0x0000A1C00080CA7D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (529, N'Lucene', N'2bab6c26-ad19-4683-963c-b66fc02d734c', CAST(0x0000A1C00080CA7E AS DateTime), CAST(0x0000A1C000820185 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (530, N'Lucene', N'a38bff32-3722-4c0b-ae07-1c76363039ee', CAST(0x0000A1C0008201DD AS DateTime), CAST(0x0000A1C00082D816 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (531, N'Lucene', N'b21b96bd-b0ee-44b2-99f8-4b3196181df5', CAST(0x0000A1C00082D82A AS DateTime), CAST(0x0000A1C000847D5B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (532, N'Lucene', N'5d554737-664d-4d0a-be3c-bcdfdd0eed78', CAST(0x0000A1C000847D6F AS DateTime), CAST(0x0000A1C000847D83 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (533, N'Lucene', N'3e6c6b51-085e-4e38-b17e-a1c139cd8e0b', CAST(0x0000A1C00084FA8D AS DateTime), CAST(0x0000A1C00086627D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (534, N'Lucene', N'aa8b7a24-6d44-46f1-afb7-51508ab8b505', CAST(0x0000A1C00086629D AS DateTime), CAST(0x0000A1C0008705C2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (535, N'Lucene', N'c81c9cee-7ff2-41ab-9c30-d4207c64e4b3', CAST(0x0000A1C0008705DB AS DateTime), CAST(0x0000A1C00089C508 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (536, N'Lucene', N'c81c9cee-7ff2-41ab-9c30-d4207c64e4b3', CAST(0x0000A1C00089C508 AS DateTime), CAST(0x0000A1C0008C842B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (537, N'Lucene', N'c81c9cee-7ff2-41ab-9c30-d4207c64e4b3', CAST(0x0000A1C0008C842C AS DateTime), CAST(0x0000A1C0008F4350 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (538, N'Lucene', N'c81c9cee-7ff2-41ab-9c30-d4207c64e4b3', CAST(0x0000A1C0008F4350 AS DateTime), CAST(0x0000A1C00092029C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (539, N'Lucene', N'c81c9cee-7ff2-41ab-9c30-d4207c64e4b3', CAST(0x0000A1C0009202E9 AS DateTime), CAST(0x0000A1C00094C229 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (540, N'Lucene', N'c81c9cee-7ff2-41ab-9c30-d4207c64e4b3', CAST(0x0000A1C00094C22E AS DateTime), CAST(0x0000A1C00096712F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (541, N'Lucene', N'b242fd88-d082-4715-bcba-6667138fb5ff', CAST(0x0000A1C0009671C1 AS DateTime), CAST(0x0000A1C0009932F1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (542, N'Lucene', N'b242fd88-d082-4715-bcba-6667138fb5ff', CAST(0x0000A1C0009932F2 AS DateTime), CAST(0x0000A1C0009BF217 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (543, N'Lucene', N'b242fd88-d082-4715-bcba-6667138fb5ff', CAST(0x0000A1C0009BF217 AS DateTime), CAST(0x0000A1C0009E5DEA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (544, N'Lucene', N'df286092-45b0-43cc-895a-3420f15fd583', CAST(0x0000A1C0009E5E26 AS DateTime), CAST(0x0000A1C000A11E49 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (545, N'Lucene', N'df286092-45b0-43cc-895a-3420f15fd583', CAST(0x0000A1C000A11E4A AS DateTime), CAST(0x0000A1C000A3DD71 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (546, N'Lucene', N'df286092-45b0-43cc-895a-3420f15fd583', CAST(0x0000A1C000A3DD72 AS DateTime), CAST(0x0000A1C1008121F8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (547, N'Lucene', N'0db193b2-45dd-4654-8635-68f4d37820e5', CAST(0x0000A1C100812273 AS DateTime), CAST(0x0000A1C10083E20F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (548, N'Lucene', N'0db193b2-45dd-4654-8635-68f4d37820e5', CAST(0x0000A1C10083E213 AS DateTime), CAST(0x0000A1C10086A13F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (549, N'Lucene', N'0db193b2-45dd-4654-8635-68f4d37820e5', CAST(0x0000A1C10086A140 AS DateTime), CAST(0x0000A1C100930B22 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (550, N'Lucene', N'93c5be58-39bb-43bf-b451-9ce656a993ca', CAST(0x0000A1C100930B95 AS DateTime), CAST(0x0000A1C10095CB4F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (551, N'Lucene', N'93c5be58-39bb-43bf-b451-9ce656a993ca', CAST(0x0000A1C10095CB4F AS DateTime), CAST(0x0000A1C100988A7D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (552, N'Lucene', N'93c5be58-39bb-43bf-b451-9ce656a993ca', CAST(0x0000A1C100988A7D AS DateTime), CAST(0x0000A1C1009CF106 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (553, N'Lucene', N'c234dbb6-95ce-499a-9d14-c98050cd1714', CAST(0x0000A1C1009CF12C AS DateTime), CAST(0x0000A1C1009FB062 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (554, N'Lucene', N'c234dbb6-95ce-499a-9d14-c98050cd1714', CAST(0x0000A1C1009FB066 AS DateTime), CAST(0x0000A1C100A26FAD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (555, N'Lucene', N'c234dbb6-95ce-499a-9d14-c98050cd1714', CAST(0x0000A1C100A26FAD AS DateTime), CAST(0x0000A1C100A51EF3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (556, N'Lucene', N'9b6e5aa4-af54-47b8-8141-a1ec011042e8', CAST(0x0000A1C100A51F5C AS DateTime), CAST(0x0000A1C100A7DE9C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (557, N'Lucene', N'9b6e5aa4-af54-47b8-8141-a1ec011042e8', CAST(0x0000A1C100A7DEB8 AS DateTime), CAST(0x0000A1C4001DB16D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (558, N'Lucene', N'3c9a58d3-3a3a-4a84-8ebd-6ccff9d63ccb', CAST(0x0000A1C4001DB214 AS DateTime), CAST(0x0000A1C40020724E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (559, N'Lucene', N'3c9a58d3-3a3a-4a84-8ebd-6ccff9d63ccb', CAST(0x0000A1C40020724E AS DateTime), CAST(0x0000A1C400233180 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (560, N'Lucene', N'3c9a58d3-3a3a-4a84-8ebd-6ccff9d63ccb', CAST(0x0000A1C400233180 AS DateTime), CAST(0x0000A1C4003FEDFE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (561, N'Lucene', N'b53c6323-283d-45e2-a41e-b8aba96a1c0b', CAST(0x0000A1C4003FEEAC AS DateTime), CAST(0x0000A1C40042ADE4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (562, N'Lucene', N'b53c6323-283d-45e2-a41e-b8aba96a1c0b', CAST(0x0000A1C40042ADE4 AS DateTime), CAST(0x0000A1C400456D08 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (563, N'Lucene', N'b53c6323-283d-45e2-a41e-b8aba96a1c0b', CAST(0x0000A1C400456D08 AS DateTime), CAST(0x0000A1C4005BD7D6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (564, N'Lucene', N'5a6a0f28-eb6a-40a9-b119-533c7a8e5d8d', CAST(0x0000A1C4005BD829 AS DateTime), CAST(0x0000A1C4005E9811 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (565, N'Lucene', N'5a6a0f28-eb6a-40a9-b119-533c7a8e5d8d', CAST(0x0000A1C4005E9811 AS DateTime), CAST(0x0000A1C400615737 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (566, N'Lucene', N'5a6a0f28-eb6a-40a9-b119-533c7a8e5d8d', CAST(0x0000A1C400615737 AS DateTime), CAST(0x0000A1C400622253 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (567, N'Lucene', N'105657c1-8e6f-47d3-8a56-bc61e6599e94', CAST(0x0000A1C400622269 AS DateTime), CAST(0x0000A1C40064E192 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (568, N'Lucene', N'105657c1-8e6f-47d3-8a56-bc61e6599e94', CAST(0x0000A1C40064E192 AS DateTime), CAST(0x0000A1C40067A0B7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (569, N'Lucene', N'105657c1-8e6f-47d3-8a56-bc61e6599e94', CAST(0x0000A1C40067A0B7 AS DateTime), CAST(0x0000A1C400690BD5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (570, N'Lucene', N'4a24713f-cb00-482f-b368-aebb9559d3ae', CAST(0x0000A1C400690C16 AS DateTime), CAST(0x0000A1C4006BCC14 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (571, N'Lucene', N'4a24713f-cb00-482f-b368-aebb9559d3ae', CAST(0x0000A1C4006BCC15 AS DateTime), CAST(0x0000A1C4006E8B3A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (572, N'Lucene', N'4a24713f-cb00-482f-b368-aebb9559d3ae', CAST(0x0000A1C4006E8B3A AS DateTime), CAST(0x0000A1C4006F3799 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (573, N'Lucene', N'b8f88534-065e-49b3-a640-16fa064e7314', CAST(0x0000A1C4006F37CE AS DateTime), CAST(0x0000A1C40071F6FA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (574, N'Lucene', N'b8f88534-065e-49b3-a640-16fa064e7314', CAST(0x0000A1C40071F6FA AS DateTime), CAST(0x0000A1C40074B622 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (575, N'Lucene', N'b8f88534-065e-49b3-a640-16fa064e7314', CAST(0x0000A1C40074B622 AS DateTime), CAST(0x0000A1C40077755D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (576, N'Lucene', N'b8f88534-065e-49b3-a640-16fa064e7314', CAST(0x0000A1C40077755E AS DateTime), CAST(0x0000A1C400786A10 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (577, N'Lucene', N'67098905-8725-4e77-8f4e-2eaf6c18c067', CAST(0x0000A1C400786A60 AS DateTime), CAST(0x0000A1C4007A83B3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (578, N'Lucene', N'183cd02a-88ad-4759-8898-3a1690f1ff08', CAST(0x0000A1C4007A83CF AS DateTime), CAST(0x0000A1C4007D4300 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (579, N'Lucene', N'183cd02a-88ad-4759-8898-3a1690f1ff08', CAST(0x0000A1C4007D4301 AS DateTime), CAST(0x0000A1C40080022C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (580, N'Lucene', N'183cd02a-88ad-4759-8898-3a1690f1ff08', CAST(0x0000A1C40080022C AS DateTime), CAST(0x0000A1C4008348B3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (581, N'Lucene', N'40bec9d5-edbb-4e32-85ab-c141d84352e1', CAST(0x0000A1C4008348F3 AS DateTime), CAST(0x0000A1C400860A29 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (582, N'Lucene', N'40bec9d5-edbb-4e32-85ab-c141d84352e1', CAST(0x0000A1C400860A29 AS DateTime), CAST(0x0000A1C40087681F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (583, N'Lucene', N'173a4214-a483-4861-8cf8-e07aef20a404', CAST(0x0000A1C400876841 AS DateTime), CAST(0x0000A1C4008EEF92 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (584, N'Lucene', N'709aca71-15c6-4c72-a238-cabb43d5859d', CAST(0x0000A1C4008EEFD2 AS DateTime), CAST(0x0000A1C40091AF0C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (585, N'Lucene', N'709aca71-15c6-4c72-a238-cabb43d5859d', CAST(0x0000A1C40091AF0C AS DateTime), CAST(0x0000A1C400946E34 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (586, N'Lucene', N'709aca71-15c6-4c72-a238-cabb43d5859d', CAST(0x0000A1C400946E34 AS DateTime), CAST(0x0000A1C400972D5C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (587, N'Lucene', N'709aca71-15c6-4c72-a238-cabb43d5859d', CAST(0x0000A1C400972D5E AS DateTime), CAST(0x0000A1C40099EC8A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (588, N'Lucene', N'709aca71-15c6-4c72-a238-cabb43d5859d', CAST(0x0000A1C40099EC8B AS DateTime), CAST(0x0000A1C50089BD61 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (589, N'Lucene', N'235c022c-89dc-444c-807e-290397d15408', CAST(0x0000A1C50089BF7C AS DateTime), CAST(0x0000A1C5008C7F8E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (590, N'Lucene', N'235c022c-89dc-444c-807e-290397d15408', CAST(0x0000A1C5008C7F8E AS DateTime), CAST(0x0000A1C5008F3EB3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (591, N'Lucene', N'235c022c-89dc-444c-807e-290397d15408', CAST(0x0000A1C5008F3EB3 AS DateTime), CAST(0x0000A1C6003199D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (592, N'Lucene', N'e7308a89-5350-4350-905c-3dc8da9cd450', CAST(0x0000A1C600319B1F AS DateTime), CAST(0x0000A1C60032DB0D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (593, N'Lucene', N'c60facb6-00d4-49ba-87e8-748cbe05f0c9', CAST(0x0000A1C60032DB2D AS DateTime), CAST(0x0000A1C6003431DA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (594, N'Lucene', N'847b0f3c-b251-45fc-80ab-3d77c917f54d', CAST(0x0000A1C6003431F2 AS DateTime), CAST(0x0000A1C60036F122 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (595, N'Lucene', N'847b0f3c-b251-45fc-80ab-3d77c917f54d', CAST(0x0000A1C60036F122 AS DateTime), CAST(0x0000A1C60036F135 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (596, N'Lucene', N'18cf8e80-aa2c-4e71-b1be-c4d28e6cdaf8', CAST(0x0000A1C600375875 AS DateTime), CAST(0x0000A1C6003A1497 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (597, N'Lucene', N'00fd98e1-dd51-40a5-99ed-07e279851f5a', CAST(0x0000A1C6003A14B5 AS DateTime), CAST(0x0000A1C6003B13AC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (598, N'Lucene', N'e2e42569-d0c1-49f9-9b89-4eb9580df051', CAST(0x0000A1C6003B13C6 AS DateTime), CAST(0x0000A1C6003C5392 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (599, N'Lucene', N'878eb7bf-9482-4cc2-a564-3a5266b2bb42', CAST(0x0000A1C6003C53A9 AS DateTime), CAST(0x0000A1C6003F12DE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (600, N'Lucene', N'878eb7bf-9482-4cc2-a564-3a5266b2bb42', CAST(0x0000A1C6003F12E0 AS DateTime), CAST(0x0000A1C60041D209 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (601, N'Lucene', N'878eb7bf-9482-4cc2-a564-3a5266b2bb42', CAST(0x0000A1C60041D209 AS DateTime), CAST(0x0000A1C600449130 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (602, N'Lucene', N'878eb7bf-9482-4cc2-a564-3a5266b2bb42', CAST(0x0000A1C600449130 AS DateTime), CAST(0x0000A1C6005FC8C6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (603, N'Lucene', N'60692e94-a5c6-4f2b-ac91-074a90381a5e', CAST(0x0000A1C6005FC93C AS DateTime), CAST(0x0000A1C600628879 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (604, N'Lucene', N'60692e94-a5c6-4f2b-ac91-074a90381a5e', CAST(0x0000A1C600628879 AS DateTime), CAST(0x0000A1C600646B02 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (605, N'Lucene', N'ae21474a-50bc-4ce4-bbf9-dc12d2b7ac62', CAST(0x0000A1C600646B2F AS DateTime), CAST(0x0000A1C60066A332 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
GO
print 'Processed 600 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (606, N'Lucene', N'27471d02-2c51-45ae-ac4f-b482bb250095', CAST(0x0000A1C60066A379 AS DateTime), CAST(0x0000A1C60066A3D4 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (607, N'Lucene', N'd5f2b771-db0f-4d5f-9a70-c9e8c1d88609', CAST(0x0000A1C60066C63A AS DateTime), CAST(0x0000A1C600698586 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (608, N'Lucene', N'd5f2b771-db0f-4d5f-9a70-c9e8c1d88609', CAST(0x0000A1C600698586 AS DateTime), CAST(0x0000A1C6006C44AD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (609, N'Lucene', N'd5f2b771-db0f-4d5f-9a70-c9e8c1d88609', CAST(0x0000A1C6006C44B1 AS DateTime), CAST(0x0000A1C6006F03D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (610, N'Lucene', N'd5f2b771-db0f-4d5f-9a70-c9e8c1d88609', CAST(0x0000A1C6006F03D8 AS DateTime), CAST(0x0000A1C60071C301 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (611, N'Lucene', N'd5f2b771-db0f-4d5f-9a70-c9e8c1d88609', CAST(0x0000A1C60071C302 AS DateTime), CAST(0x0000A1C600748229 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (612, N'Lucene', N'd5f2b771-db0f-4d5f-9a70-c9e8c1d88609', CAST(0x0000A1C600748229 AS DateTime), CAST(0x0000A1C60074822F AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (613, N'Lucene', N'87552d1f-7135-41cc-ae79-331b11d0a4e8', CAST(0x0000A1C60074FDFE AS DateTime), CAST(0x0000A1C600760A7E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (614, N'Lucene', N'd736579e-7fb4-4e81-9d99-019f93f9f5c7', CAST(0x0000A1C600760A92 AS DateTime), CAST(0x0000A1C600760AA5 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (615, N'Lucene', N'7abe824c-403d-4446-a684-bb4a35941325', CAST(0x0000A1C600768718 AS DateTime), CAST(0x0000A1C60079465D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (616, N'Lucene', N'7abe824c-403d-4446-a684-bb4a35941325', CAST(0x0000A1C60079465D AS DateTime), CAST(0x0000A1C6007C0589 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (617, N'Lucene', N'7abe824c-403d-4446-a684-bb4a35941325', CAST(0x0000A1C6007C0589 AS DateTime), CAST(0x0000A1C6007FECE1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (618, N'Lucene', N'a658ade8-6acf-443a-be94-a8de3ec6d65a', CAST(0x0000A1C6007FED62 AS DateTime), CAST(0x0000A1C60082ADEC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (619, N'Lucene', N'a658ade8-6acf-443a-be94-a8de3ec6d65a', CAST(0x0000A1C60082ADF3 AS DateTime), CAST(0x0000A1C60084C534 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (620, N'Lucene', N'34f453f1-1ae8-4710-8a0d-2d7211455cf9', CAST(0x0000A1C60084C54C AS DateTime), CAST(0x0000A1C60087847B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (621, N'Lucene', N'34f453f1-1ae8-4710-8a0d-2d7211455cf9', CAST(0x0000A1C60087847B AS DateTime), CAST(0x0000A1C6008819CD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (622, N'Lucene', N'984a7a0a-c295-44f5-9248-5e020b6d4cdb', CAST(0x0000A1C600881A15 AS DateTime), CAST(0x0000A1C6008ADA1E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (623, N'Lucene', N'984a7a0a-c295-44f5-9248-5e020b6d4cdb', CAST(0x0000A1C6008ADA1F AS DateTime), CAST(0x0000A1C6008D9951 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (624, N'Lucene', N'984a7a0a-c295-44f5-9248-5e020b6d4cdb', CAST(0x0000A1C6008D9951 AS DateTime), CAST(0x0000A1C600905887 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (625, N'Lucene', N'984a7a0a-c295-44f5-9248-5e020b6d4cdb', CAST(0x0000A1C600905887 AS DateTime), CAST(0x0000A1C600921577 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (626, N'Lucene', N'0099200d-4f95-4c6c-87c5-43324f60f555', CAST(0x0000A1C6009215A2 AS DateTime), CAST(0x0000A1C600934047 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (627, N'Lucene', N'66815faf-871e-41ce-ad4f-cb7ab0d9f9cf', CAST(0x0000A1C600934084 AS DateTime), CAST(0x0000A1C600942435 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (628, N'Lucene', N'9e275ed3-d371-426e-8558-be6a36d5efe5', CAST(0x0000A1C600942467 AS DateTime), CAST(0x0000A1C60096E50E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (629, N'Lucene', N'9e275ed3-d371-426e-8558-be6a36d5efe5', CAST(0x0000A1C60096E50F AS DateTime), CAST(0x0000A1C60099A4A7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (630, N'Lucene', N'9e275ed3-d371-426e-8558-be6a36d5efe5', CAST(0x0000A1C60099A4AF AS DateTime), CAST(0x0000A1C600A228CA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (631, N'Lucene', N'6cb53edc-b3a3-4dac-9bfc-33e19895a131', CAST(0x0000A1C600A22987 AS DateTime), CAST(0x0000A1C600A2F106 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (632, N'Lucene', N'8108b5a9-a5e5-48e7-b77a-a3d2932434c8', CAST(0x0000A1C600A2F148 AS DateTime), CAST(0x0000A1C600A5B095 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (633, N'Lucene', N'8108b5a9-a5e5-48e7-b77a-a3d2932434c8', CAST(0x0000A1C600A5B095 AS DateTime), CAST(0x0000A1C600A86FD2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (634, N'Lucene', N'8108b5a9-a5e5-48e7-b77a-a3d2932434c8', CAST(0x0000A1C600A86FD3 AS DateTime), CAST(0x0000A1C7001C7C5D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (635, N'Lucene', N'fe4dcbbf-4942-4fcb-b6d4-364d1927ce6e', CAST(0x0000A1C7001C7D84 AS DateTime), CAST(0x0000A1C7001F3CCF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (636, N'Lucene', N'fe4dcbbf-4942-4fcb-b6d4-364d1927ce6e', CAST(0x0000A1C7001F3CCF AS DateTime), CAST(0x0000A1C7001F3CD5 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (637, N'Lucene', N'509a5157-3b85-4e23-8905-5d879cfd2b55', CAST(0x0000A1C7001F636C AS DateTime), CAST(0x0000A1C70020FA34 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (638, N'Lucene', N'9cf6e87a-78c3-40f9-86c9-2ac96eed0720', CAST(0x0000A1C70020FA50 AS DateTime), CAST(0x0000A1C70022921B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (639, N'Lucene', N'95b48fb8-0ee5-48ca-b732-01fa35686b2a', CAST(0x0000A1C70022923B AS DateTime), CAST(0x0000A1C700255172 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (640, N'Lucene', N'95b48fb8-0ee5-48ca-b732-01fa35686b2a', CAST(0x0000A1C700255174 AS DateTime), CAST(0x0000A1C70028109E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (641, N'Lucene', N'95b48fb8-0ee5-48ca-b732-01fa35686b2a', CAST(0x0000A1C7002810A9 AS DateTime), CAST(0x0000A1C70030A634 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (642, N'Lucene', N'73976645-8c6d-431f-9546-d6eb48b9a7d2', CAST(0x0000A1C70030A6C7 AS DateTime), CAST(0x0000A1C7003365F9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (643, N'Lucene', N'73976645-8c6d-431f-9546-d6eb48b9a7d2', CAST(0x0000A1C700336606 AS DateTime), CAST(0x0000A1C700362565 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (644, N'Lucene', N'73976645-8c6d-431f-9546-d6eb48b9a7d2', CAST(0x0000A1C700362569 AS DateTime), CAST(0x0000A1C7006F3AAD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (645, N'Lucene', N'4074694e-2ce7-4e21-94c2-5d3a5f45e52d', CAST(0x0000A1C7006F3B65 AS DateTime), CAST(0x0000A1C70071A8A8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (646, N'Lucene', N'f3dee9cb-ce35-4f55-b2ff-8f311e06061f', CAST(0x0000A1C70071A9C9 AS DateTime), CAST(0x0000A1C7007236D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (647, N'Lucene', N'aa18bbbf-30c5-4cb7-ab08-3ad127dab03b', CAST(0x0000A1C7007236F4 AS DateTime), CAST(0x0000A1C70074F62A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (648, N'Lucene', N'aa18bbbf-30c5-4cb7-ab08-3ad127dab03b', CAST(0x0000A1C70074F62B AS DateTime), CAST(0x0000A1C70077B585 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (649, N'Lucene', N'aa18bbbf-30c5-4cb7-ab08-3ad127dab03b', CAST(0x0000A1C70077B58B AS DateTime), CAST(0x0000A1C7007A750F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (650, N'Lucene', N'aa18bbbf-30c5-4cb7-ab08-3ad127dab03b', CAST(0x0000A1C7007A7510 AS DateTime), CAST(0x0000A1C7007CF92E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (651, N'Lucene', N'3dfef327-9d97-4311-a58a-c37740636770', CAST(0x0000A1C7007CF95A AS DateTime), CAST(0x0000A1C70092415F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (652, N'Lucene', N'd8b5c86c-7d7b-400e-a1e2-b4e6ff967f16', CAST(0x0000A1C700924230 AS DateTime), CAST(0x0000A1C700950182 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (653, N'Lucene', N'd8b5c86c-7d7b-400e-a1e2-b4e6ff967f16', CAST(0x0000A1C70095019D AS DateTime), CAST(0x0000A1C70097C11F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (654, N'Lucene', N'd8b5c86c-7d7b-400e-a1e2-b4e6ff967f16', CAST(0x0000A1C70097C121 AS DateTime), CAST(0x0000A1C7009E71F2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (655, N'Lucene', N'eca5325f-d147-4186-bccf-fb20069b2951', CAST(0x0000A1C7009E727B AS DateTime), CAST(0x0000A1C700A2250F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (656, N'Lucene', N'8c5cf597-cded-4303-bf67-896d7fd19f9d', CAST(0x0000A1C700A22547 AS DateTime), CAST(0x0000A1C700A4E481 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (657, N'Lucene', N'8c5cf597-cded-4303-bf67-896d7fd19f9d', CAST(0x0000A1C700A4E481 AS DateTime), CAST(0x0000A1C700A7540D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (658, N'Lucene', N'7ddc9465-aa3e-405c-97f2-d4a571b9d804', CAST(0x0000A1C700A75425 AS DateTime), CAST(0x0000A1C80032F08C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (659, N'Lucene', N'83dffb07-576e-4dcc-85ec-21308d8b5c8a', CAST(0x0000A1C80032F1E9 AS DateTime), CAST(0x0000A1C80035B143 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (660, N'Lucene', N'83dffb07-576e-4dcc-85ec-21308d8b5c8a', CAST(0x0000A1C80035B144 AS DateTime), CAST(0x0000A1C800387071 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (661, N'Lucene', N'83dffb07-576e-4dcc-85ec-21308d8b5c8a', CAST(0x0000A1C800387071 AS DateTime), CAST(0x0000A1C800398331 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (662, N'Lucene', N'83571f98-5cae-455e-b487-9277d8e5c114', CAST(0x0000A1C80039837A AS DateTime), CAST(0x0000A1C8003C436A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (663, N'Lucene', N'83571f98-5cae-455e-b487-9277d8e5c114', CAST(0x0000A1C8003C436B AS DateTime), CAST(0x0000A1C8003F0295 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (664, N'Lucene', N'83571f98-5cae-455e-b487-9277d8e5c114', CAST(0x0000A1C8003F0295 AS DateTime), CAST(0x0000A1C80041C1C7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (665, N'Lucene', N'83571f98-5cae-455e-b487-9277d8e5c114', CAST(0x0000A1C80041C1C7 AS DateTime), CAST(0x0000A1C8004480EE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (666, N'Lucene', N'83571f98-5cae-455e-b487-9277d8e5c114', CAST(0x0000A1C8004480EE AS DateTime), CAST(0x0000A1C800586CEC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (667, N'Lucene', N'b10c2b9a-3aea-4dd2-af10-31c85fa6f14f', CAST(0x0000A1C800586D70 AS DateTime), CAST(0x0000A1C8005B2D06 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (668, N'Lucene', N'b10c2b9a-3aea-4dd2-af10-31c85fa6f14f', CAST(0x0000A1C8005B2D07 AS DateTime), CAST(0x0000A1C8005DEC3F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (669, N'Lucene', N'b10c2b9a-3aea-4dd2-af10-31c85fa6f14f', CAST(0x0000A1C8005DEC3F AS DateTime), CAST(0x0000A1C80060AB68 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (670, N'Lucene', N'b10c2b9a-3aea-4dd2-af10-31c85fa6f14f', CAST(0x0000A1C80060AB69 AS DateTime), CAST(0x0000A1C800636A91 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (671, N'Lucene', N'b10c2b9a-3aea-4dd2-af10-31c85fa6f14f', CAST(0x0000A1C800636A91 AS DateTime), CAST(0x0000A1C8006629B7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (672, N'Lucene', N'b10c2b9a-3aea-4dd2-af10-31c85fa6f14f', CAST(0x0000A1C8006629B7 AS DateTime), CAST(0x0000A1C800687057 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (673, N'Lucene', N'49967253-fc35-4189-967b-c40f1b39ba42', CAST(0x0000A1C800687097 AS DateTime), CAST(0x0000A1C8006B308A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (674, N'Lucene', N'49967253-fc35-4189-967b-c40f1b39ba42', CAST(0x0000A1C8006B308B AS DateTime), CAST(0x0000A1C8006DEFB5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (675, N'Lucene', N'49967253-fc35-4189-967b-c40f1b39ba42', CAST(0x0000A1C8006DEFB5 AS DateTime), CAST(0x0000A1C8006DEFBB AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[WorkItem] OFF
/****** Object:  Table [dbo].[PayList]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayList](
	[Pay_No] [uniqueidentifier] NOT NULL,
	[MemberID] [int] NOT NULL,
	[Money] [decimal](18, 2) NULL,
	[VMoney] [int] NULL,
	[ProductType] [nvarchar](10) NULL,
	[Mode] [nvarchar](10) NULL,
	[Status] [nvarchar](10) NULL,
	[AddIP] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[Trade_No] [nvarchar](150) NULL,
	[Buy_ID] [nvarchar](50) NULL,
	[Buy_Email] [nvarchar](50) NULL,
	[EndTime] [datetime] NULL,
	[ServerID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PayList] PRIMARY KEY CLUSTERED 
(
	[Pay_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'00000000-0000-0000-0000-000000000000', 1, CAST(800.00 AS Decimal(18, 2)), 200, N'VIP1', N'VIPTest', N'Applying', NULL, CAST(0x0000A1AA00E7413D AS DateTime), NULL, NULL, NULL, CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'78a9f9a9-867b-4ab7-85cb-1e7eb10ddfa7', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'Applying', N'127.0.0.1', CAST(0x0000A1AC00FE75ED AS DateTime), NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'a4c458d3-4027-48bd-85ae-2690614a8d60', 2, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'Applying', N'127.0.0.1', CAST(0x0000A1AC00B74419 AS DateTime), NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'027e61e6-aedd-4635-a4dd-3064ee751d72', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00B297E6 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00B29D77 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'210bc1e4-cf70-4859-8430-3a702ad43744', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'Applying', N'127.0.0.1', CAST(0x0000A1AC00FE2C31 AS DateTime), NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'fe1d8cba-a176-4f6d-84c7-3c6218d87523', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00AE23DC AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00AE3860 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'11956d5e-42dd-4738-b505-4c1dbc4b727a', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00FF3B9A AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00FF3BAA AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'9ec11049-84a9-4344-a6e2-4e18d169a445', 2, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00B901B2 AS DateTime), N'29038423784523849573247856', N'2', N'56404908@qq.com', CAST(0x0000A1AC00B901C1 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'e2b19e23-230c-4b49-8c15-52e2dd213ea3', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00B1C061 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00B1C76D AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'e4f7fe16-9ac0-4d7c-9e9e-5a83c3228b9c', 1, CAST(1000.00 AS Decimal(18, 2)), 100, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD0110AA01 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AD0110AA23 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'9213422a-a8af-4ffd-adb7-66540496015e', 2, CAST(500.00 AS Decimal(18, 2)), NULL, N'GZBCZ', N'GZBCZ', N'Applying', N'127.0.0.1', CAST(0x0000A1AD0128C66A AS DateTime), NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'937c555b-6d79-45e4-94c1-6a4aa1476bdf', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00B23937 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00B24254 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'e05fd3df-7f0d-4ffa-a323-83733f739144', 2, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'Applying', N'127.0.0.1', CAST(0x0000A1AC00B7FEC4 AS DateTime), NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'dfa2b361-9db6-4314-b7ed-8f4522877d72', 2, CAST(1000.00 AS Decimal(18, 2)), 0, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD01297023 AS DateTime), N'29038423784523849573247856', N'2', N'56404908@qq.com', CAST(0x0000A1AD0129703C AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'84e9ce55-91bc-4ce0-989c-99f4847c8418', 2, CAST(1000.00 AS Decimal(18, 2)), 200, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD01299C23 AS DateTime), N'29038423784523849573247856', N'2', N'56404908@qq.com', CAST(0x0000A1AD01299C2E AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'46b9e789-cb15-4167-92f7-9f1f31abc296', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00FAF520 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00FAF530 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'da7c166e-de73-456d-97a8-ada189f41f64', 2, CAST(900.00 AS Decimal(18, 2)), NULL, N'广知通黄金VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD012983C0 AS DateTime), N'29038423784523849573247856', N'2', N'56404908@qq.com', CAST(0x0000A1AD012983C3 AS DateTime), 11)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'c76f8a5f-6232-4c8d-b747-b429be9484e1', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00FB75F4 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00FB9964 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'579f6f50-5b68-4298-b2db-b9d9bfa3c89f', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00A8FD24 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00A917B4 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'c9a08fcc-736e-4d0e-a731-bf4ee7b6ff41', 1, CAST(1000.00 AS Decimal(18, 2)), 100, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00FF56D3 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00FF56D9 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'ef04d354-755c-4bd0-9cd0-d14fc6cd28a3', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD00E17982 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AD00E17986 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'e719051c-7638-4d2b-8289-d34669f8bb74', 2, CAST(1000.00 AS Decimal(18, 2)), 100, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD012857FA AS DateTime), N'29038423784523849573247856', N'2', N'56404908@qq.com', CAST(0x0000A1AD0128580B AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'b457466a-4058-4963-a5e3-d434abdcf88d', 1, CAST(500.00 AS Decimal(18, 2)), 50, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00FF4CE4 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00FF4CE8 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'cd40ef9b-7952-43d7-b996-e70e926bab21', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00AA101E AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00AA2732 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'a6805b5d-9062-4c28-a57a-e8e4a5c39cb6', 1, CAST(800.00 AS Decimal(18, 2)), 200, N'VIP1', N'VIPTest', N'ApplyOk', NULL, CAST(0x0000A1AA00E7FC38 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'd05278fd-b6e1-4be3-82c8-eb51ffa68ce8', 1, CAST(1000.00 AS Decimal(18, 2)), 100, N'GZBCZ', N'GZBCZ', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00FA7727 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00FA774A AS DateTime), 0)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'46debb31-6f10-443c-88a8-f0377aef8b29', 1, CAST(900.00 AS Decimal(18, 2)), NULL, N'广知通黄金VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD01269A0D AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AD01269A1D AS DateTime), 11)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'4c2cfd89-3f31-44a1-b603-f3af49ce88be', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AC00B00CA0 AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AC00B00CA6 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'9732f391-201d-4a35-a6ad-f95258dc22f6', 1, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'ApplyOk', N'127.0.0.1', CAST(0x0000A1AD00E15BBB AS DateTime), N'29038423784523849573247856', N'1', N'shenhaijunmail@163.com', CAST(0x0000A1AD00E15BE2 AS DateTime), 2)
INSERT [dbo].[PayList] ([Pay_No], [MemberID], [Money], [VMoney], [ProductType], [Mode], [Status], [AddIP], [AddTime], [Trade_No], [Buy_ID], [Buy_Email], [EndTime], [ServerID]) VALUES (N'58039d03-1520-4916-8cff-fd277ca808e4', 2, CAST(380.00 AS Decimal(18, 2)), NULL, N'广知通VIP', N'VIPTest', N'Applying', N'127.0.0.1', CAST(0x0000A1AC00B87BDF AS DateTime), NULL, NULL, NULL, NULL, 2)
/****** Object:  Table [dbo].[Roles]    Script Date: 05/27/2013 17:45:29 ******/
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
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (13, N'广知币管理', N'广知币管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (14, N'增值服务管理', N'增值服务管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (15, N'首页轮播管理', N'首页轮播管理')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (16, N'用户信誉类型管理', N'用户信誉类型管理')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[Member_Message]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SenderID] [int] NOT NULL,
	[RecipientID] [int] NOT NULL,
	[Content] [nvarchar](4000) NULL,
	[MessageType] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[SenderStatus] [int] NOT NULL,
	[RecipienterStatus] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Member_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SliderImg]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SliderImg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImgUrl] [nvarchar](250) NOT NULL,
	[LinkUrl] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[ProvinceCode] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SliderImg] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SliderImg] ON
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (1, N'/Upload/Normal/2013/4/26/7be83740-c845-4934-80ee-a31a809a4eec_small.jpg', N'http://www.baidu.com', N'雅安地震义捐', 5, CAST(0x0000A1B70116BE8E AS DateTime), CAST(0x0000A1C200000000 AS DateTime), 35, 1, 2, CAST(0x0000A1AC00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (3, N'/Upload/Normal/2013/4/26/f5bc7156-9969-4fff-879d-5ba466a22b93_small.jpg', N'http://www.douban.com/', N'测试', 2, CAST(0x0000A1AC01261233 AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 2, 1, 2, CAST(0x0000A1AC00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (4, N'/Upload/Normal/2013/4/26/c8fe212e-e070-42b6-9902-93907a7f6e7d_small.jpg', N'http://www.163.com', N'区域置顶测试', 4, CAST(0x0000A1AC0127DFC0 AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 2, 1, 1, CAST(0x0000A1AC00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (5, N'/Upload/Normal/2013/4/27/23cbbdb9-ce7b-4e3f-a9a2-1ba71261c8bc_small.jpg', N'http://www.baidu.com', N'测试啊', 6, CAST(0x0000A1AD00E51C27 AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 1, 1, 2, CAST(0x0000A1AD00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (6, N'/Upload/Normal/2013/4/27/37d826c8-e2d6-46d4-844e-fd0389b9e270_small.jpg', N'http://www.baidu.com', N'恭喜神州广天有限公司入驻广知网', 0, CAST(0x0000A1B70116CCE1 AS DateTime), CAST(0x0000A1CB00000000 AS DateTime), 35, 1, 1, CAST(0x0000A1AD00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (9, N'/Upload/Normal/2013/4/27/f9d32fb4-8d2e-4f06-9629-ad8a8afa090d_small.jpg', N'http://www.dotaeye.com/dashboard', N'地方站首页轮播', 0, CAST(0x0000A1AD0110EAFE AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 35, 1, 1, CAST(0x0000A1AD00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[SliderImg] OFF
/****** Object:  Table [dbo].[ServerItem]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServerType] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ImgUrl] [nvarchar](max) NULL,
	[Description] [nvarchar](2000) NULL,
	[HelpUrl] [nvarchar](200) NULL,
	[Price] [int] NOT NULL,
	[IsPayByVMoney] [bit] NOT NULL,
	[Money] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[GiftMoney] [int] NOT NULL,
	[GiftMonth] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[MemberID] [int] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[VipDiscount] [decimal](18, 2) NOT NULL,
	[VipDiscount2] [decimal](18, 2) NOT NULL,
	[IsQuanGuo] [bit] NOT NULL,
	[IsByCategory] [bit] NOT NULL,
	[IsByChildCategory] [bit] NOT NULL,
	[TopType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ServerItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ServerItem] ON
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (1, 2, N'普通VIP三个月', N'/Upload/Normal/2013/4/24/5fcc6907-6e02-42a7-8cb3-117286cb8fb4_small.jpg', N'5月15日前购买知识通半年卡、年卡可延长一个月VIP会员权限1', N'http://www.dotaeye.com/help-7', 200, 0, 0, 3, 100, 0, CAST(0x0000A1AA01209EBE AS DateTime), CAST(0x0000A41300000000 AS DateTime), 1, CAST(0x0000A1AB01070C42 AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (2, 2, N'普通VIP六个月，5月15日前购买赠送一个月', N'/Upload/Normal/2013/4/24/92669ba7-8ad2-4954-851a-967a3e98b701_small.jpg', N'5月15日前购买知识通半年卡、年卡可延长一个月VIP会员权限', N'http://www.dotaeye.com/help-7', 380, 0, 60, 6, 200, 1, CAST(0x0000A1AA0121DE8F AS DateTime), CAST(0x0000A41300000000 AS DateTime), 1, CAST(0x0000A1AB010E5DBF AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (3, 1, N'全国站首页轮播', N'/Upload/Normal/2013/4/24/5d100343-8905-45b7-b836-f5c2ad5d65c1_small.jpg', N'全国站轮播任何城市都可以看到。', N'http://www.dotaeye.com/help-8', 500, 1, 0, 0, 0, 0, CAST(0x0000A1AA0128AB32 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE0101824F AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 0, 0, 1)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (4, 1, N'地方站首页轮播', N'/Upload/Normal/2013/4/24/813357f2-826e-436e-9aa3-af2c4efc415a_small.jpg', N'地方站首页轮播展示', N'http://www.dotaeye.com/help-8', 300, 1, 0, 0, 0, 0, CAST(0x0000A1AA01291D3C AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE01016FCC AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 0, 0, 1)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (5, 1, N'媒体信息全国置顶', N'/Upload/Normal/2013/4/27/8d08d46a-a647-418d-bdc8-5f4667719692_small.jpg', N'媒体信息全国置顶', N'http://www.dotaeye.com/help-7', 60, 1, 0, 0, 0, 0, CAST(0x0000A1AD011C6EFA AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE01019259 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 0, 0, 2)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (6, 1, N'媒体信息地区置顶', N'/Upload/Normal/2013/4/27/9b20b9fe-ddf9-430e-8d8c-007419433d04_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 50, 1, 0, 0, 0, 0, CAST(0x0000A1AD011CD402 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE0101A6FB AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 0, 0, 2)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (7, 1, N'媒体信息全国按类别投放', N'/Upload/Normal/2013/4/27/e92d3fa9-175f-4d2e-8dd9-ee3f68eed43a_small.jpg', N'媒体信息全国按类别投放', N'http://www.doateye.com/help-7', 40, 0, 0, 0, 0, 0, CAST(0x0000A1AD011D4729 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE0101B6A7 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 1, 0, 2)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (8, 1, N'媒体信息地区按类别置顶', N'/Upload/Normal/2013/4/27/681ab51e-4530-4d07-8cab-b2940fc83139_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 30, 0, 0, 0, 0, 0, CAST(0x0000A1AD011DBEAB AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE0101C3C6 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 1, 0, 2)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (9, 1, N'媒体信息全国二级分类置顶', N'/Upload/Normal/2013/4/27/876b2229-2bae-4888-ae89-f0d40206d02f_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 20, 0, 0, 0, 0, 0, CAST(0x0000A1AD011E26E1 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE0101D2DC AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 1, 1, 2)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (10, 1, N'媒体信息地区按二级分类置顶', N'/Upload/Normal/2013/4/27/08804ae4-a612-4f1d-a3f1-fa541ee5b14d_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 10, 0, 0, 0, 0, 0, CAST(0x0000A1AD011E70C6 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AE0101E010 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 1, 1, 2)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (11, 3, N'广知通黄金版三个月', N'/Upload/Normal/2013/4/27/a9815b2e-32ab-47f7-b7e8-3732eeb8cdc8_small.jpg', N'广知通黄金版三个月', N'http://www.dotaeye.com/help-7', 900, 0, 30, 3, 150, 1, CAST(0x0000A1AD01265699 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD01265699 AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (12, 1, N'企业信息全国置顶', N'/Upload/Normal/2013/5/10/75458038-4e2b-45c0-acdd-bafba0dab5a0_small.jpg', N'企业信息全国置顶', N'http://www.dotaeye.com/help-3', 100, 1, 0, 0, 0, 0, CAST(0x0000A1BA00E6519F AS DateTime), CAST(0x0000A41200000000 AS DateTime), 1, CAST(0x0000A1BA00E6519F AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 1, 0, 0, 3)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory], [TopType]) VALUES (13, 1, N'企业信息地方站置顶', N'/Upload/Normal/2013/5/10/c927ab8a-31a3-4766-8dde-3ca38407fb2a_small.jpg', N'企业信息地方站置顶', N'http://www.dotaeye.com/help-3', 80, 0, 0, 0, 0, 0, CAST(0x0000A1BA00E69E37 AS DateTime), CAST(0x0000A41200000000 AS DateTime), 1, CAST(0x0000A1BA00E69E37 AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0, 3)
SET IDENTITY_INSERT [dbo].[ServerItem] OFF
/****** Object:  Table [dbo].[Sys_Message]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[Content] [nvarchar](4000) NULL,
	[MessageType] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[Title] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.Sys_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media_Refresh]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media_Refresh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MediaID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[DayLimit] [int] NOT NULL,
	[CurrentTimes] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Media_Refresh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media_Favorites]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media_Favorites](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[MediaID] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Media_Favorites] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutDoor]    Script Date: 05/27/2013 17:45:29 ******/
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
	[Description] [nvarchar](2000) NOT NULL,
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
	[AuthStatus] [int] NOT NULL,
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
CREATE NONCLUSTERED INDEX [IX_MemberID] ON [dbo].[OutDoor] 
(
	[MemberID] ASC
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
SET IDENTITY_INSERT [dbo].[OutDoor] ON
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (1, CAST(200.00 AS Decimal(18, 2)), N'具体价格面议', N'广州户外广州大道', CAST(23.18 AS Decimal(18, 2)), CAST(113.33 AS Decimal(18, 2)), 0, NULL, NULL, CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 1, 60, 80, 281, 447, 531, 475, 471, CAST(0x0000A46D00000000 AS DateTime), 4, N'广州户外广州大道南广告牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1A900ABA668 AS DateTime), CAST(0x0000A1AC0127562D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'广州户外广州大道南广告牌', N'广州户外广州大道', N'广州户外广州大道南广告牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (2, CAST(100.00 AS Decimal(18, 2)), N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, NULL, CAST(3.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 2, 50, 80, 39, 450, 492, 475, 471, CAST(0x0000A2A500000000 AS DateTime), 4, N'广州户外广州大道南广告牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AC0109A59C AS DateTime), CAST(0x0000A1AC0127562D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (3, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B205BC AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (4, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20611 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (5, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20617 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (6, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2061E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (7, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20624 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (8, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2062A AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (9, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20630 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (10, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20637 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (11, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2063D AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (12, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20643 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (13, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20649 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (14, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20650 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (15, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20656 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (16, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2065E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (17, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20665 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (18, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2066C AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (19, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20677 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (20, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2067E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (21, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20685 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (22, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2068B AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (23, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20697 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (24, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2069E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (25, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206A5 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (26, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206AC AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (27, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206B3 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (28, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206BE AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (29, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206C8 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (30, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206D0 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (31, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206D8 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (32, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌32', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206DF AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (33, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206E7 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (34, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206EE AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (35, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206F6 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (36, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B206FE AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (37, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20706 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (38, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2070E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (39, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20715 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (40, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2071E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (41, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20726 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (42, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2072E AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (43, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2073F AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (44, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20748 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (45, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2074F AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (46, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20758 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (47, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20761 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (48, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20769 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (49, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20773 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (50, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2077C AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (51, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20784 AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (52, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2078F AS DateTime), CAST(0x0000A1AE00B2DE92 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (53, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20798 AS DateTime), CAST(0x0000A1C6010952DA AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (54, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207A1 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (55, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207AA AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (56, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207B4 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (57, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207BD AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (58, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207C9 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (59, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207D3 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (60, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207DC AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (61, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207E4 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (62, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207EE AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (63, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B207F8 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (64, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20801 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (65, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2080A AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (66, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2081A AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (67, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20823 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (68, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2082D AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (69, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20837 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (70, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20841 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (71, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2084C AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (72, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20856 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (73, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20860 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (74, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2086A AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (75, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20875 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (76, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2087F AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (77, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20889 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (78, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20893 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (79, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2089E AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (80, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208A9 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (81, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208B6 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (82, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208C2 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (83, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208CE AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (84, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208D8 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (85, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208E3 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (86, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208EF AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (87, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B208F9 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (88, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20904 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (89, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2090F AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (90, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2091C AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (91, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20928 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (92, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20933 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (93, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2093F AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (94, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2094B AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (95, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20956 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (96, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20962 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (97, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2096E AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (98, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2097B AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (99, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20987 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (100, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B20993 AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (101, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B2099E AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords], [AuthStatus]) VALUES (102, CAST(120.00 AS Decimal(18, 2)), N'大方三大', N'北京丰台区', CAST(39.83 AS Decimal(18, 2)), CAST(116.25 AS Decimal(18, 2)), 1, N'1140', N'390', CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 3, 50, 100, 39, 447, 483, 475, 471, CAST(0x0000A28700000000 AS DateTime), 4, N'萨迪克龙卷风撒娇户外大牌', N'此套餐媒体覆盖王府井商圈、西直门商圈、西单商圈、东单商圈、中关村商圈、亚奥商圈、德胜门商圈等核心商业圈媒体。紧临“鸟巢”、水立方，由写字楼、国际公寓、七星级酒店和商业龙廊组成盘古大观；号称“日进斗金”的寸金之地王府井大街，北京最有名的商业街中的好友世界商场；有“年轻人的购物天堂”之美誉的西单商业街中的西单明珠商场；枢纽集北京北火车站及商场周围的西直门广场；“中国的硅谷”之称的中关村，紧邻的中关村联通；八达岭高速路的起点的德胜门，北桥的工美大厦；连通王府井与CBD的纽带的东单，国庆60周年天安门广场方形显示屏设施东单明珠商场留存。涵盖来北京旅游人群以及北京市本地的主流消费人群，覆盖面极广，另外LED屏高质量的画面显示，宣传效果非常突出，是企业在北京市场做户外推广的黄金媒体。', 0, 0, CAST(0x0000A1AE00B209AA AS DateTime), CAST(0x0000A1AE00B2E12D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'萨迪克龙卷风撒娇户外大牌', N'北京丰台区北京丰台区北京丰台区', N'萨迪克龙卷风撒娇户外大牌', 0)
SET IDENTITY_INSERT [dbo].[OutDoor] OFF
/****** Object:  Table [dbo].[Member_Profile]    Script Date: 05/27/2013 17:45:29 ******/
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
SET IDENTITY_INSERT [dbo].[Member_Profile] ON
INSERT [dbo].[Member_Profile] ([MemberID], [ID], [Sex], [Borthday], [CityCode], [RealName], [Mobile], [Phone], [QQ], [MSN], [Address], [Lat], [Lng], [Description]) VALUES (23, 19, 0, CAST(0x0000A1B700000000 AS DateTime), 547, N'沈先生', NULL, NULL, NULL, NULL, NULL, 0, 0, N'沈先生沈先生沈先生')
SET IDENTITY_INSERT [dbo].[Member_Profile] OFF
/****** Object:  Table [dbo].[Company]    Script Date: 05/27/2013 17:45:29 ******/
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
INSERT [dbo].[Company] ([MemberID], [CompanyID], [Name], [LinkMan], [Sex], [Address], [Phone], [Mobile], [Fax], [QQ], [MSN], [Lat], [Lng], [CityCode], [ScaleCode], [FundCode], [BussinessCode], [LastTime], [LastIP], [AddTime], [AddIP], [Description], [Unapprovedlog], [Status]) VALUES (1, 1, N'海城瑞驰广告传播中心', N'申先生', 0, N'海城市永安路', N'021-25468460', N'18321841288', NULL, NULL, NULL, 122.75682067871094, 40.846649169921875, 46, 435, 429, 424, CAST(0x0000A1A40120A61B AS DateTime), N'127.0.0.1', CAST(0x0000A1A40120A61A AS DateTime), N'127.0.0.1', N' 海城瑞驰广告是一家从事户外媒体开发、代理发布、大型户外广告工程制作、企业外部形象（vi）导入专业广告公司。
    本公司主要经营高速公路单立柱广告媒体。媒体范围在辽宁、吉林、河北等省，辽宁地区有沈阳-大连高速公路、北京-哈尔滨高速公路辽宁段；吉林省境内有四平-长春段及长春环城高速公路。媒体主要分布在：1、北京-沈阳高速公路广告媒体主要分布在辽宁段起点沈阳-万家收费站及葫芦岛、锦州、盘锦、辽中、沈阳等城市附近。2、沈阳-大连高速公路媒体主要分布在沈阳、辽阳、鞍山、营口、大连段沿线。3、其它路段有沈阳绕城高速、沈阳-毛家店、沈阳-丹东等高速公路沿线。吉林境内主要分布在四平-长春段和长春外环高速公路。
    多年来，我们只专注做高速媒体开发、制作、销售与整合，因为专注，所以专业，所以才有专业的品质，且秉承“专心、专业铸就高品质”的企业经营理念，始终贯彻“用心做人做事”的发展观，立足本地，辐射全国，整合全国各地媒体资源，为客户提供一站式服务。
    眼望未来，我们踌躇满志，决心力争打造一个集媒体开发、整合销售、执行于一体的专业户外广告商！', NULL, 3)
SET IDENTITY_INSERT [dbo].[Company] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 05/27/2013 17:45:29 ******/
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
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (475, N'天', NULL, 0, 1, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (476, N'周', NULL, 0, 7, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (477, N'月', NULL, 0, 30, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (478, N'季度', NULL, 0, 90, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (479, N'半年', NULL, 0, 180, N'Period')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (480, N'年', NULL, 0, 365, N'Period')
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
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (558, N'广知通权益', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (559, N'帮助中心', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (560, N'使用指南', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (561, N'了解我们', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (562, N'服务条款', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (563, N'广知币介绍', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (564, N'增值服务', NULL, 0, 0, N'Article')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Member_Money_Type]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Money_Type](
	[Key] [nvarchar](4) NOT NULL,
	[Money] [int] NOT NULL,
	[DayLimit] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL,
	[MoneyLimit] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Member_Money_Type] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0001', 1, 1, 0, 0, N'每日登录奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0002', 2, 0, 0, 0, N'用户注册奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0003', 3, 0, 0, 0, N'绑定邮箱奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0004', 10, 0, 0, 0, N'企业入驻奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0005', 2, 0, 0, 0, N'完善基本信息奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0006', 4, 0, 0, 0, N'企业注册奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0101', 2, 10, 0, 0, N'发布审核通过的户外')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0201', 0, 0, 0, 0, N'开通知识通会员获赠')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0202', 0, 0, 0, 0, N'知识通升级转换')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0203', 0, 0, 0, 0, N'广知通充值')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0204', 0, 0, 0, 0, N'广知通充值赠送')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0205', 0, 0, 0, 0, N'首次开通知识通赠送')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0206', 0, 0, 0, 0, N'续费知识通赠送')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0701', 0, 0, 0, 0, N'首页轮播图置顶消费')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0702', 0, 0, 0, 0, N'媒体信息置顶消费')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0703', 0, 0, 0, 0, N'企业信息置顶消费')
/****** Object:  Table [dbo].[Member_Money_List]    Script Date: 05/27/2013 17:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Money_List](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](4) NULL,
	[MemberID] [int] NOT NULL,
	[Money] [int] NOT NULL,
	[RelateID] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_dbo.Member_Money_List] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_Money_List] ON
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (1, N'0001', 1, 2, 0, CAST(0x0000A1A900A987E8 AS DateTime), N'登录')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (2, N'0002', 1, 2, 0, CAST(0x0000A1A900A9FFD1 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (3, N'0002', 1, 2, 0, CAST(0x0000A1A900AA02EE AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (4, N'0002', 1, 2, 0, CAST(0x0000A1A900AA0443 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (5, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2686 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (6, N'0101', 1, 2, 0, CAST(0x0000A1A900AA27D7 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (7, N'0101', 1, 2, 0, CAST(0x0000A1A900AA288E AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (8, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2951 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (9, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2A03 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (10, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2AAF AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (11, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2B4E AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (12, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2BF1 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (13, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2C82 AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (14, N'0101', 1, 2, 0, CAST(0x0000A1A900AA2D1C AS DateTime), N'login')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (15, N'0101', 1, 30, 0, CAST(0x0000A1AC00A921F6 AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (16, N'0101', 1, 30, 0, CAST(0x0000A1AC00AA463F AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (17, N'0101', 1, 30, 0, CAST(0x0000A1AC00AE50BF AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (18, N'0101', 1, 1, 0, CAST(0x0000A1AC00AE5C4A AS DateTime), N'开通赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (19, N'0101', 1, 60, 0, CAST(0x0000A1AC00B00CA8 AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (20, N'0101', 1, 60, 0, CAST(0x0000A1AC00B1D165 AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (21, N'0101', 1, 60, 0, CAST(0x0000A1AC00B249B0 AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (22, N'0101', 1, 60, 0, CAST(0x0000A1AC00B2A065 AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (23, N'0101', 1, 1, 0, CAST(0x0000A1AC00B2AF08 AS DateTime), N'开通赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (30, N'0101', 2, 30, 0, CAST(0x0000A1AC00B901C1 AS DateTime), N'开通或续费额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (31, N'0101', 2, 1, 0, CAST(0x0000A1AC00B901CB AS DateTime), N'开通赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (32, N'0101', 1, 100, 0, CAST(0x0000A1AC00FA7752 AS DateTime), N'充值额外赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (33, N'0204', 1, 50, 0, CAST(0x0000A1AC00FF3BAB AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (34, N'0203', 1, 500, 0, CAST(0x0000A1AC00FF3BB0 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (35, N'0204', 1, 50, 0, CAST(0x0000A1AC00FF4CE6 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (36, N'0203', 1, 500, 0, CAST(0x0000A1AC00FF4CE6 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (37, N'0204', 1, 100, 0, CAST(0x0000A1AC00FF56E0 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (38, N'0203', 1, 1000, 0, CAST(0x0000A1AC00FF56E9 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (39, N'0206', 1, 60, 0, CAST(0x0000A1AD00E15C13 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (40, N'0201', 1, 200, 0, CAST(0x0000A1AD00E15C2B AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (41, N'0204', 1, 50, 0, CAST(0x0000A1AD00E1798A AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (42, N'0203', 1, 500, 0, CAST(0x0000A1AD00E1798A AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (43, N'0701', 1, -2700, 6, CAST(0x0000A1AD0108AE03 AS DateTime), N'')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (44, N'0204', 1, 100, 0, CAST(0x0000A1AD0110AA2C AS DateTime), N'广知通充值赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (45, N'0203', 1, 1000, 0, CAST(0x0000A1AD0110AA36 AS DateTime), N'广知通充值')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (46, N'0701', 1, -270, 9, CAST(0x0000A1AD0110EB03 AS DateTime), N'置顶消费')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (47, N'0202', 1, 30, 0, CAST(0x0000A1AD01269A23 AS DateTime), N'知识通升级转换')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (48, N'0206', 1, 30, 0, CAST(0x0000A1AD01269A23 AS DateTime), N'续费知识通赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (49, N'0201', 1, 150, 0, CAST(0x0000A1AD01269A2C AS DateTime), N'开通知识通会员获赠')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (50, N'0204', 2, 100, 0, CAST(0x0000A1AD0128580B AS DateTime), N'广知通充值赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (51, N'0203', 2, 1000, 0, CAST(0x0000A1AD01285810 AS DateTime), N'广知通充值')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (52, N'0203', 2, 1000, 0, CAST(0x0000A1AD01297043 AS DateTime), N'广知通充值')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (53, N'0206', 2, 30, 0, CAST(0x0000A1AD012983C4 AS DateTime), N'续费知识通赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (54, N'0201', 2, 150, 0, CAST(0x0000A1AD012983C8 AS DateTime), N'开通知识通会员获赠')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (55, N'0204', 2, 200, 0, CAST(0x0000A1AD01299C30 AS DateTime), N'广知通充值赠送')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (56, N'0203', 2, 1000, 0, CAST(0x0000A1AD01299C30 AS DateTime), N'广知通充值')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (57, N'0702', 1, -240, 1, CAST(0x0000A1AE01034E77 AS DateTime), N'媒体信息置顶消费')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (58, N'0702', 1, -8, 2, CAST(0x0000A1B20124C224 AS DateTime), N'媒体信息置顶消费')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (59, N'0002', 23, 2, 0, CAST(0x0000A1B70110A90E AS DateTime), N'用户注册奖励')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (60, N'0005', 23, 2, 0, CAST(0x0000A1B70110CE15 AS DateTime), N'完善基本信息奖励')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (61, N'0003', 23, 3, 0, CAST(0x0000A1B70110E065 AS DateTime), N'绑定邮箱奖励')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (62, N'0702', 1, -480, 3, CAST(0x0000A1BA00BA6078 AS DateTime), N'媒体信息置顶消费')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (63, N'0702', 1, -144, 4, CAST(0x0000A1BA00BC1E85 AS DateTime), N'媒体信息置顶消费')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (64, N'0702', 1, -240, 5, CAST(0x0000A1BA00BD33B6 AS DateTime), N'媒体信息置顶消费')
INSERT [dbo].[Member_Money_List] ([ID], [Key], [MemberID], [Money], [RelateID], [AddTime], [Description]) VALUES (65, N'0703', 1, -300, 1, CAST(0x0000A1BA00ECF9B5 AS DateTime), N'企业信息置顶消费')
SET IDENTITY_INSERT [dbo].[Member_Money_List] OFF
/****** Object:  StoredProcedure [dbo].[P_AddMoney]    Script Date: 05/27/2013 17:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Freic
-- Create date: 2008-9-25
-- Description:	获得(扣除)决策币  -1 地产币类型不匹配,0 已达每次上限 1 地产币增加成功
-- =============================================
CREATE PROCEDURE [dbo].[P_AddMoney]
	@memberId int --会员的UID
   ,@type Nvarchar(4)--币值的类型，对应表：M_T_WinMoney_List_Type
   ,@money int--本次加减的币值, 为0时按币值类型的默认值记录
   ,@description Nvarchar(250)--原因，可以为空
   ,@relateId int=0--对应各频道的相关信息主键，可以为0
AS
BEGIN
    DECLARE @DayLimit int--每日上限
    DECLARE @TimeLimit int--同一会员同一信息的操作上限
    DECLARE @MoneyLimit int --当前主键ID的可得到的币值总上限
    DECLARE @WinMoney int --本次类型的币值默认值
    DECLARE @WinDescription Nvarchar(250)--本次类型的币值默认值
    
    SELECT @DayLimit=DayLimit,@TimeLimit=TimeLimit,@WinDescription=Name,
    @WinMoney=Money,@MoneyLimit=MoneyLimit FROM Member_Money_Type WHERE [Key]=@type
    
    IF @TimeLimit IS NULL BEGIN SELECT -1;RETURN; END--没有此类型的奖励
    
    --如果原因为空，让其等于类型的名称
    IF @description IS NULL SET @description=@WinDescription
    IF @description ='' SET @description=@WinDescription
    

    --如果按传来的币值不为0,则按传来的币计算
    IF (@money <> 0 ) SET @WinMoney=@money
    --如果值为0　不处理
    IF (@WinMoney = 0 ) 
    begin
    select 0;return;
    end

    DECLARE @C INT
--判断次数上限
    IF @TimeLimit>0 
    BEGIN
        SELECT @C=COUNT(0) FROM Member_Money_List WHERE MemberID=@memberId
        AND [Key]=@type
        AND RelateID=@relateId
        PRINT 1
        IF @C>=@TimeLimit  BEGIN SELECT -2;RETURN; END --超出上限
    END

--判断每日上限
    IF @DayLimit>0 
    BEGIN
        SELECT @C=COUNT(0) FROM Member_Money_List WHERE
        AddTime BETWEEN CONVERT(VARCHAR(10),GETDATE(),20) AND CONVERT(VARCHAR(10),GETDATE(),20)+' 23:59:59'
        AND MemberID=@memberId
        AND [Key]=@type
        PRINT 2
        IF @C>=@DayLimit  BEGIN SELECT 0;RETURN; END --超出上限
    END
--判断币总上限
    if @MoneyLimit>0
    BEGIN
        SELECT @C=SUM(Money) FROM Member_Money_List WHERE
        MemberID=@memberId
        AND RelateID=@relateId 
        AND [Key]=@type
        PRINT 3
        IF @C>=@MoneyLimit BEGIN SELECT 0;RETURN; END --超出上限
    END

    
    --记录决策币日志 
	INSERT INTO Member_Money_List 
   (AddTime,MemberID,[Money],[Key],Description,RelateID)
    VALUES (GETDATE(),@memberId,@WinMoney,@type,@description,@relateId)
    
    --如果没有会员记录，则新增
    IF (SELECT TOP 1 1 FROM Member_Money WHERE MemberID=@memberId) IS NULL
    BEGIN
    INSERT INTO Member_Money (
			MemberID,
			TotalMoney,
			Money00,
			Money01,
			Money02,
			Money03,
			Money04,
			Money05,
			Money06,
			Money07,
			Money08,
			Money09) 
			VALUES (
			@memberId,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0)
    END

    PRINT @WinMoney
    --更新会员的总币值
    DECLARE @SQL NVARCHAR(2000)
    SET @SQL='UPDATE Member_Money SET TotalMoney=TotalMoney+'+CAST(@WinMoney AS VARCHAR(10))+',Money'+LEFT(@type,2)+'=Money'+LEFT(@type,2)+'+'+CAST(@WinMoney AS VARCHAR(10))+' WHERE MemberID='+CAST(@memberId as Varchar(10))
    PRINT @SQL
    EXEC(@SQL)
    SELECT 1

END
GO
/****** Object:  Table [dbo].[Member]    Script Date: 05/27/2013 17:45:33 ******/
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
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (1, NULL, N'shenhaijunmail@163.com', N'夜幕流浪', N'954a8069343989ba', N'/Content/noimages.gif', 4, CAST(0x0000A1C800BE8DBF AS DateTime), N'127.0.0.1', CAST(0x0000A1A4011C0496 AS DateTime), 2, N'2.007Gt8CC0J5WSa06a8ba417eWyoIlD', N'127.0.0.1', 26, 5)
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (2, NULL, N'56404908@qq.com', N'鹏飞', N'954a8069343989ba', NULL, 1, CAST(0x0000A1B300F492B9 AS DateTime), N'127.0.0.1', CAST(0x0000A1A40124861D AS DateTime), 1, N'867500BB0033503199D9DC514C44A18D', N'127.0.0.1', 4, 1)
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (23, NULL, N'dotaeye@yeah.net', N'dotaeye', N'954a8069343989ba', NULL, 1, CAST(0x0000A1B8010EA85B AS DateTime), N'192.168.0.141', CAST(0x0000A1B70110A8D8 AS DateTime), 0, NULL, N'127.0.0.1', 3, 2)
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[Group]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  Table [dbo].[Member_CreditIndex_Type]    Script Date: 05/27/2013 17:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_CreditIndex_Type](
	[Key] [nvarchar](4) NOT NULL,
	[CreditIndex] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL,
	[DayLimit] [int] NOT NULL,
	[CreditIndexLimit] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Member_CreditIndex_Type] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member_CreditIndex_Type] ([Key], [CreditIndex], [TimeLimit], [DayLimit], [CreditIndexLimit], [Name]) VALUES (N'0001', 3, 0, 0, 0, N'用户激活邮箱')
INSERT [dbo].[Member_CreditIndex_Type] ([Key], [CreditIndex], [TimeLimit], [DayLimit], [CreditIndexLimit], [Name]) VALUES (N'0101', 25, 0, 0, 0, N'广知通普通版开通')
INSERT [dbo].[Member_CreditIndex_Type] ([Key], [CreditIndex], [TimeLimit], [DayLimit], [CreditIndexLimit], [Name]) VALUES (N'0102', 35, 0, 0, 0, N'广知通黄金版开通')
INSERT [dbo].[Member_CreditIndex_Type] ([Key], [CreditIndex], [TimeLimit], [DayLimit], [CreditIndexLimit], [Name]) VALUES (N'0201', 2, 0, 0, 0, N'广知通普通版每月增加')
INSERT [dbo].[Member_CreditIndex_Type] ([Key], [CreditIndex], [TimeLimit], [DayLimit], [CreditIndexLimit], [Name]) VALUES (N'0202', 3, 0, 0, 0, N'广知通黄金版每月增加')
/****** Object:  Table [dbo].[Member_CreditIndex_List]    Script Date: 05/27/2013 17:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_CreditIndex_List](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](4) NULL,
	[MemberID] [int] NOT NULL,
	[CreditIndex] [int] NOT NULL,
	[RelateID] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_dbo.Member_CreditIndex_List] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_CreditIndex_List] ON
INSERT [dbo].[Member_CreditIndex_List] ([ID], [Key], [MemberID], [CreditIndex], [RelateID], [AddTime], [Description]) VALUES (1, N'0001', 23, 3, 0, CAST(0x0000A1B70110E074 AS DateTime), N'用户激活邮箱')
INSERT [dbo].[Member_CreditIndex_List] ([ID], [Key], [MemberID], [CreditIndex], [RelateID], [AddTime], [Description]) VALUES (2, N'0001', 1, 10, 0, CAST(0x0000A1BA00B2418D AS DateTime), N'用户激活邮箱')
SET IDENTITY_INSERT [dbo].[Member_CreditIndex_List] OFF
/****** Object:  StoredProcedure [dbo].[P_AddCreditIndex]    Script Date: 05/27/2013 17:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		navy
-- Create date: 2013-4-25
-- Description:	获得(扣除)决策币  -1 广知币类型不匹配,0 已达每次上限 1 广知币增加成功
-- =============================================
Create PROCEDURE [dbo].[P_AddCreditIndex]
	@memberId int --会员的UID
   ,@type Nvarchar(4)--币值的类型，对应表：Member_CreditIndex_Type
   ,@creditIndex int--本次加减的币值, 为0时按币值类型的默认值记录
   ,@description Nvarchar(250)--原因，可以为空
   ,@relateId int=0--对应各频道的相关信息主键，可以为0
AS
BEGIN
    DECLARE @DayLimit int--每日上限
    DECLARE @TimeLimit int--同一会员同一信息的操作上限
    DECLARE @CreditIndexLimit int --当前主键ID的可得到的币值总上限
    DECLARE @WinCreditIndex int --本次类型的币值默认值
    DECLARE @WinDescription Nvarchar(250)--本次类型的币值默认值
    
    SELECT @DayLimit=DayLimit,@TimeLimit=TimeLimit,@WinDescription=Name,
    @WinCreditIndex=CreditIndex,@CreditIndexLimit=CreditIndexLimit FROM Member_CreditIndex_Type WHERE [Key]=@type
    
    IF @TimeLimit IS NULL BEGIN SELECT -1;RETURN; END--没有此类型的奖励
    
    --如果原因为空，让其等于类型的名称
    IF @description IS NULL SET @description=@WinDescription
    IF @description ='' SET @description=@WinDescription
    

    --如果按传来的币值不为0,则按传来的币计算
    IF (@creditIndex <> 0 ) SET @WinCreditIndex=@creditIndex
    --如果值为0　不处理
    IF (@WinCreditIndex = 0 ) 
    begin
    select 0;return;
    end

    DECLARE @C INT
--判断次数上限
    IF @TimeLimit>0 
    BEGIN
        SELECT @C=COUNT(0) FROM Member_CreditIndex_List WHERE MemberID=@memberId
        AND [Key]=@type
        AND RelateID=@relateId
        PRINT 1
        IF @C>=@TimeLimit  BEGIN SELECT -2;RETURN; END --超出上限
    END

--判断每日上限
    IF @DayLimit>0 
    BEGIN
        SELECT @C=COUNT(0) FROM Member_CreditIndex_List WHERE
        AddTime BETWEEN CONVERT(VARCHAR(10),GETDATE(),20) AND CONVERT(VARCHAR(10),GETDATE(),20)+' 23:59:59'
        AND MemberID=@memberId
        AND [Key]=@type
        PRINT 2
        IF @C>=@DayLimit  BEGIN SELECT 0;RETURN; END --超出上限
    END
--判断币总上限
    if @CreditIndexLimit>0
    BEGIN
        SELECT @C=SUM(CreditIndex) FROM Member_CreditIndex_List WHERE
        MemberID=@memberId
        AND RelateID=@relateId 
        AND [Key]=@type
        PRINT 3
        IF @C>=@CreditIndexLimit BEGIN SELECT 0;RETURN; END --超出上限
    END

    
    --记录决策币日志 
	INSERT INTO Member_CreditIndex_List 
   (AddTime,MemberID,[CreditIndex],[Key],Description,RelateID)
    VALUES (GETDATE(),@memberId,@WinCreditIndex,@type,@description,@relateId)
    
    --如果没有会员记录，则新增
    IF (SELECT TOP 1 1 FROM Member_CreditIndex WHERE MemberID=@memberId) IS NULL
    BEGIN
    INSERT INTO Member_CreditIndex (
			MemberID,
			TotalCreditIndex,
			CreditIndex00,
			CreditIndex01,
			CreditIndex02,
			CreditIndex03,
			CreditIndex04,
			CreditIndex05,
			CreditIndex06,
			CreditIndex07,
			CreditIndex08,
			CreditIndex09) 
			VALUES (
			@memberId,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0)
    END

    PRINT @WinCreditIndex
    --更新会员的总币值
    DECLARE @SQL NVARCHAR(2000)
    SET @SQL='UPDATE Member_CreditIndex SET TotalCreditIndex=TotalCreditIndex+'+CAST(@WinCreditIndex AS VARCHAR(10))+',CreditIndex'+LEFT(@type,2)+'=CreditIndex'+LEFT(@type,2)+'+'+CAST(@WinCreditIndex AS VARCHAR(10))+' WHERE MemberID='+CAST(@memberId as Varchar(10))
    PRINT @SQL
    EXEC(@SQL)
    SELECT 1

END
GO
/****** Object:  Table [dbo].[OutDoor_AreaAtt]    Script Date: 05/27/2013 17:45:33 ******/
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
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (3, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (4, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (5, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (6, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (7, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (8, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (9, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (10, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (11, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (12, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (13, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (14, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (15, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (16, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (17, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (18, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (19, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (20, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (21, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (22, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (23, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (24, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (25, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (26, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (27, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (28, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (29, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (30, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (31, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (32, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (33, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (34, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (35, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (36, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (37, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (38, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (39, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (40, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (41, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (42, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (43, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (44, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (45, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (46, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (47, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (48, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (49, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (50, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (51, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (52, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (53, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (54, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (55, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (56, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (57, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (58, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (59, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (60, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (61, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (62, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (63, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (64, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (65, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (66, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (67, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (68, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (69, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (70, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (71, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (72, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (73, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (74, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (75, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (76, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (77, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (78, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (79, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (80, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (81, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (82, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (83, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (84, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (85, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (86, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (87, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (88, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (89, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (90, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (91, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (92, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (93, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (94, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (95, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (96, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (97, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (98, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (99, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (100, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (101, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (102, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (3, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (4, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (5, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (6, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (7, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (8, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (9, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (10, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (11, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (12, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (13, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (14, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (15, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (16, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (17, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (18, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (19, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (20, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (21, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (22, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (23, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (24, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (25, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (26, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (27, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (28, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (29, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (30, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (31, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (32, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (33, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (34, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (35, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (36, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (37, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (38, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (39, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (40, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (41, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (42, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (43, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (44, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (45, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (46, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (47, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (48, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (49, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (50, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (51, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (52, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (53, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (54, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (55, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (56, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (57, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (58, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (59, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (60, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (61, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (62, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (63, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (64, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (65, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (66, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (67, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (68, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (69, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (70, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (71, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (72, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (73, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (74, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (75, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (76, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (77, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (78, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (79, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (80, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (81, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (82, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (83, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (84, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (85, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (86, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (87, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (88, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (89, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (90, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (91, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (92, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (93, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (94, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (95, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (96, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (97, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (98, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (99, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (100, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (101, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (102, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 5)
GO
print 'Processed 200 total records'
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (3, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (4, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (5, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (6, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (7, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (8, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (9, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (10, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (11, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (12, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (13, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (14, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (15, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (16, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (17, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (18, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (19, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (20, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (21, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (22, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (23, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (24, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (25, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (26, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (27, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (28, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (29, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (30, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (31, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (32, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (33, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (34, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (35, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (36, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (37, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (38, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (39, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (40, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (41, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (42, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (43, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (44, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (45, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (46, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (47, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (48, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (49, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (50, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (51, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (52, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (53, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (54, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (55, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (56, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (57, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (58, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (59, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (60, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (61, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (62, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (63, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (64, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (65, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (66, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (67, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (68, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (69, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (70, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (71, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (72, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (73, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (74, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (75, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (76, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (77, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (78, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (79, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (80, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (81, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (82, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (83, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (84, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (85, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (86, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (87, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (88, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (89, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (90, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (91, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (92, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (93, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (94, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (95, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (96, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (97, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (98, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (99, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (100, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (101, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (102, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 6)
GO
print 'Processed 300 total records'
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 6)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (3, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (4, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (5, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (6, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (7, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (8, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (9, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (10, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (11, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (12, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (13, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (14, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (15, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (16, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (17, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (18, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (19, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (20, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (21, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (22, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (23, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (24, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (25, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (26, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (27, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (28, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (29, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (30, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (31, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (32, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (33, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (34, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (35, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (36, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (37, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (38, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (39, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (40, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (41, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (42, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (43, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (44, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (45, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (46, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (47, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (48, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (49, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (50, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (51, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (52, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (53, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (54, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (55, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (56, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (57, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (58, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (59, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (60, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (61, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (62, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (63, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (64, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (65, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (66, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (67, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (68, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (69, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (70, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (71, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (72, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (73, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (74, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (75, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (76, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (77, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (78, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (79, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (80, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (81, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (82, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (83, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (84, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (85, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (86, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (87, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (88, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (89, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (90, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (91, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (92, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (93, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (94, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (95, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (96, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (97, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (98, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (99, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (100, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (101, 7)
GO
print 'Processed 400 total records'
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (102, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (3, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (4, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (5, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (6, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (7, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (8, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (9, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (10, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (11, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (12, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (13, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (14, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (15, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (16, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (17, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (18, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (19, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (20, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (21, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (22, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (23, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (24, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (25, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (26, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (27, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (28, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (29, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (30, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (31, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (32, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (33, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (34, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (35, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (36, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (37, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (38, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (39, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (40, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (41, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (42, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (43, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (44, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (45, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (46, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (47, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (48, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (49, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (50, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (51, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (52, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (53, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (54, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (55, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (56, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (57, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (58, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (59, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (60, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (61, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (62, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (63, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (64, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (65, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (66, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (67, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (68, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (69, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (70, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (71, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (72, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (73, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (74, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (75, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (76, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (77, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (78, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (79, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (80, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (81, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (82, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (83, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (84, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (85, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (86, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (87, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (88, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (89, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (90, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (91, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (92, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (93, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (94, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (95, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (96, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (97, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (98, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (99, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (100, 8)
GO
print 'Processed 500 total records'
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (101, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (102, 8)
/****** Object:  Table [dbo].[AreaAtt]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  Table [dbo].[AddressBook]    Script Date: 05/27/2013 17:45:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ContactorID] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AddressBook] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 05/27/2013 17:45:33 ******/
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
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (6, N'广知币定义', N'&lt;style type="text/css"&gt;.content-intro { line-height: 24px; color: #4c5f77; font-family: 宋体; line-height: 24px; } .content-title { margin: 20px 0 0 0; padding: 0px 0px 0px 27px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #99b2cf; font-size: 16px; background-image: url(/content/images/gzbhelp.gif); background-color: #f4f7fc; line-height: 30px; font-family: 宋体, arial; background-position: 0px 4px; background-repeat: no-repeat no-repeat; } .content-title2 { margin: 20px 0 0 0; padding: 0px 0px 0px 27px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-style: none; font-size: 14px; background-image: url(/content/images/gzbhelp.gif); line-height: 30px; color: #515151; font-family: 宋体, arial; background-position: 0px -19px; background-repeat: no-repeat no-repeat; } .content-block { margin: 10px 0px 0px; padding: 7px 0px; border: 1px solid rgb(227, 230, 209); background-color: #f9f9f9; line-height: 24px; font-family: 宋体, arial; } .content-desc { margin: 5px 9px 0px 9px; } .content-details { margin: 5px 9px 0px 9px; } .content-order { font-weight: bold; color: #086632; } .content-font { color: #666666; } .content-footer { margin: 5px 9px 0px 9px; } .content-footer a { color: #004ecc; } &lt;/style&gt; &lt;p class="content-intro"&gt;广知币是广知网的站内虚拟货币，可以用来推广资源，广告服务以及其他增值服务。无须购买，只要在广知网进行简单操作即可获取！查看如何获得广知币。 &lt;/p&gt;&lt;h2 class="content-title" name="menu"&gt;如何获得广知币&lt;/h2&gt;&lt;h2 class="content-title2"&gt;登录获取广知币&lt;/h2&gt;&lt;div class="content-block"&gt;&lt;p class="content-desc"&gt;新浪地产网新闻频道汇集国内房地产行业各类最新资讯，房企动态，城市市场分析，频道每天推出500多篇重要实时资讯，每周30余套精品房产专题报道。用户可在该频道对所有新闻及专题内容发表观点或对他人观点进行评论。&lt;/p&gt;&lt;p class="content-details"&gt;&lt;span class="content-order"&gt;1.&lt;/span&gt;&amp;nbsp;&lt;span class="content-font"&gt;每日登录一次即可获得广知币1个，广知通会员2个，每日限1次。&lt;/span&gt;&lt;br /&gt;&lt;/p&gt;&lt;p class="content-footer"&gt;&lt;a href="#menu"&gt;返回头部&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;h2 class="content-title2"&gt;邀朋友获取广知币&lt;/h2&gt;&lt;div class="content-block"&gt;&lt;p class="content-desc"&gt;新浪地产网新闻频道汇集国内房地产行业各类最新资讯，房企动态，城市市场分析，频道每天推出500多篇重要实时资讯，每周30余套精品房产专题报道。用户可在该频道对所有新闻及专题内容发表观点或对他人观点进行评论。&lt;/p&gt;&lt;p class="content-details"&gt;&lt;span class="content-order"&gt;1.&lt;/span&gt;&amp;nbsp;&lt;span class="content-font"&gt;无需登录，只要输入新浪地产网的用户名和您朋友的邮箱，就可以了。&lt;/span&gt;&lt;br /&gt;&lt;span class="content-order"&gt;2.&lt;/span&gt;&amp;nbsp;&lt;span class="content-font"&gt;受邀人成功注册后，您将获得5个地产币奖励。每天奖励上限为50个地产币。&lt;/span&gt;&lt;br /&gt;&lt;/p&gt;&lt;p class="content-footer"&gt;&lt;a href="#menu"&gt;返回头部&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;', 563, CAST(0x0000A1A901123963 AS DateTime), CAST(0x0000A1A90120440B AS DateTime))
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (7, N'广知通特权与服务', N'&lt;div class="fuwutk" style="margin:0px;padding:0px;border:0px;font-family:Simsun;"&gt;&lt;table cellpadding="0" cellspacing="0" style="border-top-width:1px;border-top-style:solid;border-top-color:#b1dae8;border-left-width:1px;border-left-style:solid;border-left-color:#b1dae8;" width="100%"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;th height="30" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:2px 5px;font-size:14px;color:#ffffff;background-color:#3f79cb;background-position:initial initial;background-repeat:initial initial;" width="13%"&gt;服务类别&lt;/th&gt;&lt;th style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:2px 5px;font-size:14px;color:#ffffff;background-color:#3f79cb;background-position:initial initial;background-repeat:initial initial;" width="30%"&gt;服务内容&lt;/th&gt;&lt;th colspan="3" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:2px 5px;font-size:14px;color:#ffffff;background-color:#3f79cb;background-position:initial initial;background-repeat:initial initial;"&gt;服务比较&lt;/th&gt;&lt;/tr&gt;&lt;tr style="background-color:#f2f2f2;background-position:initial initial;background-repeat:initial initial;"&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&amp;nbsp;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&amp;nbsp;&lt;/td&gt;&lt;td align="center" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;" valign="top" width="21%"&gt;&lt;strong&gt;知识通个人会员&lt;/strong&gt;&lt;/td&gt;&lt;td align="center" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;" valign="top" width="21%"&gt;&lt;strong&gt;知识通企业会员&lt;/strong&gt;&lt;/td&gt;&lt;td align="center" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;" valign="top" width="15%"&gt;&lt;strong&gt;普通会员&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic10" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/ico10.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:32px 10px;background-repeat:no-repeat no-repeat;"&gt;获赠地产币&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;开通知识通vip会员获赠地产币&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://zst.dichan.com/vip/payNewZst.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;马上开通&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;季卡会员获赠100地产币，半年卡会员获赠200地产币，年卡会员获赠400地产币&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;黄金版会员获赠3880个地产币，白金版会员获赠10800个地产币&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;无&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic0" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-242px -376px;background-repeat:no-repeat no-repeat;"&gt;VIP专区&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;可下载VIP专区任意资料，不受等级积分限制&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://xiazai.dichan.com/list.aspx?type=1&amp;px=7" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;立即进入VIP专区下载资料&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;下载VIP专区资料&lt;br /&gt;不受等级积分限制&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;下载VIP专区资料&lt;br /&gt;不受等级积分限制&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;下载VIP专区资料&lt;br /&gt;需要积分 &amp;gt; 3000&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic3" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-243px -478px;background-repeat:no-repeat no-repeat;"&gt;折扣专享&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;下载地产智库所有资料，享受价格折扣。&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://xiazai.dichan.com/list.aspx?type=1&amp;px=4&amp;pn=1" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;查看精品资源&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;下载地产智库所有资料均可9折优惠下载。下载地产智库&lt;a class="blue" href="http://xiazai.dichan.com/zhe.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;限时折扣专区&lt;/a&gt;资料，在原有9折优惠的基础上再享受5折优惠。&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;下载地产智库所有资料均可9折优惠下载。下载地产智库&lt;a class="blue" href="http://xiazai.dichan.com/zhe.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;限时折扣专区&lt;/a&gt;资料，在原有9折优惠的基础上再享受5折优惠。&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;以资料原价下载资料&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic2" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-632px -374px;background-repeat:no-repeat no-repeat;"&gt;充地产币&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;知识通VIP会员独享地产币充值权限&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://zst.dichan.com/vip/PayDCB.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;现在就充地产币&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;服务期内可无限次充值地产币，200个地产币起充，服务到期后所充值的剩余地产币依然可以照常使用。&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;服务期内可无限次充值地产币，200个地产币起充，服务到期后所充值的剩余地产币依然可以照常使用。&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;不能充值地产币&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic4" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-447px -482px;background-repeat:no-repeat no-repeat;"&gt;上传有奖&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;知识通VIP会员上传资料，将获得比普通会员更多的初始奖励&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://my.dichan.com/Knowledge/IdcFileUp.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;马上上传资料，赚取更多地产币&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;知识通VIP会员比普通会员上传资料获得的奖励上限高出50个地产币。&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;知识通VIP会员比普通会员上传资料获得的奖励上限高出50个地产币。&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;标准赚币额度&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic8" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-640px -590px;background-repeat:no-repeat no-repeat;"&gt;下载限额升级&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;无限资料畅享下载，每日下载上限提升。&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://xiazai.dichan.com/list.aspx?type=1&amp;px=7" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;查看最新热门下载资料&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;每天最多下载50份智库专业资料&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;每天最多下载100份智库专业资料&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;每天最多下载20份专业资料&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic9" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-442px -377px;background-repeat:no-repeat no-repeat;"&gt;冻结时间&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;下载任意资料时，无下载冻结时间限制，可随意下载需要的资料&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://xiazai.dichan.com/" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;立即体验，下载两份资料&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;无下载冻结时间&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;无下载冻结时间&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;两次下载资料&lt;br /&gt;需间隔10分钟&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic6" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-247px -592px;background-repeat:no-repeat no-repeat;"&gt;绿色通道&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;简化上传流程，快速赚取地产币&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://my.dichan.com/Knowledge/IdcFileUp.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;现在就上传一份资料，体验绿色通道&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;优先审核&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;优先审核&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;按一般审核周期&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic7" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-447px -590px;background-repeat:no-repeat no-repeat;"&gt;地产币转送&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;成为知识通会员可向其他新浪地产网会员（包括知识通会员，普通会员，及企业会员）转赠地产币&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://zst.dichan.com/vip/transfer.aspx" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;现在就转送地产币&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;可赠送，每次最低赠送额为200个地产币，并向送出方收取10%赠送额的地产币手续费，受赠一方不收取任何费用。&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;可赠送，每次最低赠送额为200个地产币，并向送出方收取5%赠送额的地产币手续费，受赠一方不收取任何费用。&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;不可赠送&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;&lt;span class="pic5" style="display:block;width:114px;background-image:url(http://zst.dichan.com/vip/images/mainbg2011.png);padding-top:63px;font-size:14px;font-weight:bold;text-align:center;background-position:-636px -482px;background-repeat:no-repeat no-repeat;"&gt;图书业务&lt;/span&gt;&lt;/td&gt;&lt;td style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:4px 6px;"&gt;知识通VIP会员享受书城折上折优惠&lt;br /&gt;&lt;br /&gt;&lt;a class="blue" href="http://book.dichan.com/" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;我要去书城购书&lt;/a&gt;&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;知识通会员折上折：93折&lt;/td&gt;&lt;td class="viphave" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:20px 6px 4px;text-align:center;vertical-align:top;color:#222222;"&gt;知识通会员折上折：93折&lt;br /&gt;知识通企业版用户在服务期内每月获赠&lt;a class="blue" href="http://dichanjie.dichan.com/" style="color:#004ecc;text-decoration:none;" target="_blank"&gt;《地产界》&lt;/a&gt;杂志月刊。&lt;/td&gt;&lt;td class="vipnone" style="border-right-width:1px;border-right-style:solid;border-right-color:#b1dae8;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#b1dae8;padding:40px 6px 4px;background-image:url(http://zst.dichan.com/vip/images/pic_none.gif);text-align:center;vertical-align:top;color:#222222;background-position:50% 20px;background-repeat:no-repeat no-repeat;"&gt;不享受折上折&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p style="margin:20px auto;padding-right:0px;padding-left:0px;border:0px;text-align:center;"&gt;&lt;a href="http://zst.dichan.com/vip/payNewZst.aspx" style="color:#222222;text-decoration:none;"&gt;&lt;img alt="马上开通房商知识通" height="31" src="http://zst.dichan.com/vip/images/kaitongbtn.gif" style="margin:0px;padding:0px;border:0px;" width="146" /&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;/div&gt;&lt;/div&gt;', 558, CAST(0x0000A1A901299964 AS DateTime), CAST(0x0000A1AB00FF7958 AS DateTime))
INSERT [dbo].[Article] ([ID], [Name], [Content], [ArticleCode], [AddTime], [LastTime]) VALUES (8, N'置顶服务', N'&lt;div id="focus" style="margin-bottom:10px;width:743px;height:250px;overflow:hidden;position:relative;font-family:tahoma, arial, 宋体;"&gt;&lt;ul style="margin:0px;padding:0px;list-style:none;height:380px;position:absolute;"&gt;&lt;li style="margin:0px;padding:0px;list-style:none;float:left;width:743px;height:250px;overflow:hidden;position:relative;background-color:#000000;background-position:initial initial;background-repeat:initial initial;"&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/zhiding/" style="text-decoration:none;color:#2244dd;" target="_blank"&gt;&lt;img alt="" class="banner-img743" height="250" src="http://sta.ganjistatic1.com/att/promotion/v2/ban_index.jpg" style="border:none;margin:0px 0px 11px;" width="744" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class="listbox bluelist clearfix" style="border-width:0px 1px 1px;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-right-color:#949599;border-bottom-color:#949599;border-left-color:#949599;margin-bottom:11px;position:relative;padding-bottom:15px;font-family:tahoma, arial, 宋体;"&gt;&lt;div class="list-tit" style="background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/spread2.png);height:39px;margin:0px 0px 18px;border-top-width:2px;border-top-style:solid;border-top-color:#35b5e6;background-position:0px -535px;background-repeat:repeat no-repeat;"&gt;&lt;h4 style="margin:0px;background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/v2_titbg.png);width:155px;height:40px;padding-top:10px;position:absolute;left:-1px;top:-1px;text-align:center;font-size:20px;font-family:''Microsoft YaHei'';color:#ffffff;font-weight:100;letter-spacing:3px;background-position:0px -53px;background-repeat:initial initial;"&gt;置&amp;nbsp;&amp;nbsp;&amp;nbsp;顶&lt;/h4&gt;&lt;div class="list-other" style="padding:10px 0px 0px 170px;"&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/zhiding/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;招聘版&lt;/a&gt;&amp;nbsp;&lt;a href="http://www.ganji.com/tuiguang/fang/zhiding/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;房产版&lt;/a&gt;&amp;nbsp;&lt;a href="http://www.ganji.com/tuiguang/fuwu/zhiding/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;服务版&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style="margin-right:27px;margin-bottom:15px;margin-left:27px;font-family:SimHei;padding-right:0px;padding-bottom:18px;padding-left:0px;border-bottom-width:1px;border-bottom-style:dashed;border-bottom-color:#909090;font-size:16px;color:#0086be;"&gt;&lt;em style="font-style:normal;font-size:25px;font-weight:bold;"&gt;将重要信息置顶推广，快速获得推广效果&lt;/em&gt;&amp;nbsp;10-60元/天&lt;/p&gt;&lt;div class="list-con" style="margin:0px 27px;"&gt;&lt;ul class="fl clearfix" style="margin:0px;padding:0px 0px 0px 30px;list-style:none;float:left;width:385px;"&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;推广效果是免费信息的6倍&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;30万客户之选&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;展示在列表页前列&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;位置醒目，排在免费信息前&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;尊享“顶”标签&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;让信息备受关注，适合紧急推广&lt;/em&gt;&lt;/li&gt;&lt;/ul&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/zhiding/" style="text-decoration:none;color:#2244dd;"&gt;&lt;img alt="" class="right-img" height="154" src="http://sta.ganjistatic1.com/att/promotion/v2/pd_index02.jpg" style="border:none;" width="265" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="listbox redlist clearfix" style="border-width:0px 1px 1px;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-right-color:#949599;border-bottom-color:#949599;border-left-color:#949599;margin-bottom:11px;position:relative;padding-bottom:15px;font-family:tahoma, arial, 宋体;"&gt;&lt;div class="list-tit" style="background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/spread2.png);height:39px;margin:0px 0px 18px;border-top-width:2px;border-top-style:solid;border-top-color:#ff4948;background-position:0px -535px;background-repeat:repeat no-repeat;"&gt;&lt;h4 style="margin:0px;background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/v2_titbg.png);width:155px;height:40px;padding-top:10px;position:absolute;left:-1px;top:-1px;text-align:center;font-size:20px;font-family:''Microsoft YaHei'';color:#ffffff;font-weight:100;letter-spacing:3px;background-position:initial initial;background-repeat:initial initial;"&gt;小类推广&lt;/h4&gt;&lt;div class="list-other" style="padding:10px 0px 0px 170px;"&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/xiaoleituiguang/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;招聘版&lt;/a&gt;&amp;nbsp;&lt;a href="http://www.ganji.com/tuiguang/fuwu/xiaoleituiguang/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;服务版&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style="margin-right:27px;margin-bottom:15px;margin-left:27px;font-family:SimHei;padding-right:0px;padding-bottom:18px;padding-left:0px;border-bottom-width:1px;border-bottom-style:dashed;border-bottom-color:#909090;font-size:16px;color:#df0100;"&gt;&lt;em style="font-style:normal;font-size:25px;font-weight:bold;"&gt;二级小类下推广，精准锁定目标客户&lt;/em&gt;&amp;nbsp;59元/月封顶&lt;/p&gt;&lt;div class="list-con" style="margin:0px 27px;"&gt;&lt;ul class="fl clearfix" style="margin:0px;padding:0px 0px 0px 30px;list-style:none;float:left;width:385px;"&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;优先展示在小类页面&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;适合有长期招聘需求、预算有限的客户&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;精准锁定目标客户&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;使推广更精准、更有效&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;任意调整推广类别和内容&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;根据推广需要随时调整，更自由&lt;/em&gt;&lt;/li&gt;&lt;/ul&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/xiaoleituiguang/" style="text-decoration:none;color:#2244dd;"&gt;&lt;img alt="" class="right-img" height="154" src="http://sta.ganjistatic1.com/att/promotion/v2/pd_index01.jpg" style="border:none;" width="265" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="listbox purplelist clearfix" style="border-width:0px 1px 1px;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-right-color:#949599;border-bottom-color:#949599;border-left-color:#949599;margin-bottom:11px;position:relative;padding-bottom:15px;font-family:tahoma, arial, 宋体;"&gt;&lt;div class="list-tit" style="background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/spread2.png);height:39px;margin:0px 0px 18px;border-top-width:2px;border-top-style:solid;border-top-color:#f5457b;background-position:0px -535px;background-repeat:repeat no-repeat;"&gt;&lt;h4 style="margin:0px;background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/v2_titbg.png);width:155px;height:40px;padding-top:10px;position:absolute;left:-1px;top:-1px;text-align:center;font-size:20px;font-family:''Microsoft YaHei'';color:#ffffff;font-weight:100;letter-spacing:3px;background-position:0px -107px;background-repeat:initial initial;"&gt;推广套餐&lt;/h4&gt;&lt;div class="list-other" style="padding:10px 0px 0px 170px;"&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/duankou/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;招聘版&lt;/a&gt;&amp;nbsp;&lt;a href="http://www.ganji.com/tuiguang/fang/duankou/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;房产版&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style="margin-right:27px;margin-bottom:15px;margin-left:27px;font-family:SimHei;padding-right:0px;padding-bottom:18px;padding-left:0px;border-bottom-width:1px;border-bottom-style:dashed;border-bottom-color:#909090;font-size:16px;color:#d40046;"&gt;&lt;em style="font-style:normal;font-size:25px;font-weight:bold;"&gt;将多条信息同时、长期推广，超高性价比&lt;/em&gt;&amp;nbsp;199元/月起&lt;/p&gt;&lt;div class="list-con" style="margin:0px 27px;"&gt;&lt;ul class="fl clearfix" style="margin:0px;padding:0px 0px 0px 30px;list-style:none;float:left;width:385px;"&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;一站式服务&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;提供从信息发布、信息推广、刷新等一系列增值服务&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;多信息推广&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;根据推广需求，多条信息可同时在线推广&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;超高性价比，多版本可选&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;满足不同时长、内容、区域的个性化需求&lt;/em&gt;&lt;/li&gt;&lt;/ul&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/duankou/" style="text-decoration:none;color:#2244dd;"&gt;&lt;img alt="" class="right-img" height="154" src="http://sta.ganjistatic1.com/att/promotion/v2/pd_index03.jpg" style="border:none;" width="265" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="listbox greenlist clearfix" style="border-width:0px 1px 1px;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-right-color:#949599;border-bottom-color:#949599;border-left-color:#949599;margin-bottom:11px;position:relative;padding-bottom:15px;font-family:tahoma, arial, 宋体;"&gt;&lt;div class="list-tit" style="background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/spread2.png);height:39px;margin:0px 0px 18px;border-top-width:2px;border-top-style:solid;border-top-color:#7fb744;background-position:0px -535px;background-repeat:repeat no-repeat;"&gt;&lt;h4 style="margin:0px;background-image:url(http://stacdn201.ganjistatic1.com/src/image/promotion/global/v2_titbg.png);width:155px;height:40px;padding-top:10px;position:absolute;left:-1px;top:-1px;text-align:center;font-size:20px;font-family:''Microsoft YaHei'';color:#ffffff;font-weight:100;letter-spacing:3px;background-position:0px -160px;background-repeat:initial initial;"&gt;定向推广&lt;/h4&gt;&lt;div class="list-other" style="padding:10px 0px 0px 170px;"&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/dingxiang/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;招聘版&lt;/a&gt;&amp;nbsp;&lt;a href="http://www.ganji.com/tuiguang/fang/dingxiang/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;房产版&lt;/a&gt;&amp;nbsp;&lt;a href="http://www.ganji.com/tuiguang/fuwu/dingxiang/" style="color:#000000;padding:0px 10px 0px 0px;font-size:14px;"&gt;服务版&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style="margin-right:27px;margin-bottom:15px;margin-left:27px;font-family:SimHei;padding-right:0px;padding-bottom:18px;padding-left:0px;border-bottom-width:1px;border-bottom-style:dashed;border-bottom-color:#909090;font-size:16px;color:#004812;"&gt;&lt;em style="font-style:normal;font-size:25px;font-weight:bold;"&gt;信息免费展示，按点击付费&lt;/em&gt;&amp;nbsp;0.28元/点击起&lt;/p&gt;&lt;div class="list-con" style="margin:0px 27px;"&gt;&lt;ul class="fl clearfix" style="margin:0px;padding:0px 0px 0px 30px;list-style:none;float:left;width:385px;"&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;信息免费展示，曝光度高&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;列表页和详情页右侧和底部“热点推荐”专区显示，不受其他帖影响&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;只需为点击付费，无点击不计费&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;多20点击起售，买得越多送的越多&lt;/em&gt;&lt;/li&gt;&lt;li style="margin:0px;padding:0px 0px 5px;list-style:disc;line-height:22px;"&gt;&lt;span style="font-size:16px;font-family:''Microsoft YaHei'';"&gt;精准覆盖更多目标客户&lt;/span&gt;&lt;br /&gt;&lt;em style="font-style:normal;color:#6d6e71;"&gt;信息定向投放在相关类别，效果更好&lt;/em&gt;&lt;/li&gt;&lt;/ul&gt;&lt;a href="http://www.ganji.com/tuiguang/zhaopin/dingxiang/" style="text-decoration:none;color:#2244dd;"&gt;&lt;img alt="" class="right-img" height="154" src="http://sta.ganjistatic1.com/att/promotion/v2/pd_index04.jpg" style="border:none;" width="265" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;', 564, CAST(0x0000A1AA012420D1 AS DateTime), CAST(0x0000A1AA012420D1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF
/****** Object:  Table [dbo].[StaticTemplate]    Script Date: 05/27/2013 17:45:33 ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 05/27/2013 17:45:33 ******/
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
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (32, N'广知币消费类型', N'广知币消费类型', N'moneytypesetting', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (33, N'增值服务产品管理', N'增值服务产品管理', N'serveritem', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (34, N'首页轮播管理', N'首页轮播管理', N'sliderimg', N'controller', N'default', 3)
INSERT [dbo].[Permissions] ([ID], [Name], [Description], [Controller], [Action], [Namespace], [DepartmentID]) VALUES (35, N'用户信誉值类型管理', N'用户信誉值类型管理', N'creditindextypesetting', N'controller', N'default', 3)
SET IDENTITY_INSERT [dbo].[Permissions] OFF
/****** Object:  Table [dbo].[Group_Roles]    Script Date: 05/27/2013 17:45:33 ******/
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
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 13)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 14)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 15)
INSERT [dbo].[Group_Roles] ([GroupID], [RoleID]) VALUES (4, 16)
/****** Object:  Table [dbo].[Role_Permissions]    Script Date: 05/27/2013 17:45:33 ******/
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
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (13, 32)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (14, 33)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (15, 34)
INSERT [dbo].[Role_Permissions] ([RoleID], [PermissionID]) VALUES (16, 35)
/****** Object:  Default [DF__Member_Fa__AddTi__40F9A68C]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Favorite] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [AddTime]
GO
/****** Object:  Default [DF__Member_Fa__Statu__41EDCAC5]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Favorite] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__TopMedia__IsByCh__09A971A2]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[TopMedia] ADD  DEFAULT ((0)) FOR [IsByChildCategory]
GO
/****** Object:  Default [DF__TopCompan__IsByC__08B54D69]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[TopCompany] ADD  DEFAULT ((0)) FOR [IsByChildCategory]
GO
/****** Object:  Default [DF__PayList__EndTime__797309D9]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[PayList] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [EndTime]
GO
/****** Object:  Default [DF__PayList__ServerI__02084FDA]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[PayList] ADD  DEFAULT ((0)) FOR [ServerID]
GO
/****** Object:  Default [DF__Member_Me__Sende__778AC167]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Message] ADD  DEFAULT ((0)) FOR [SenderStatus]
GO
/****** Object:  Default [DF__Member_Me__Recip__787EE5A0]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Message] ADD  DEFAULT ((0)) FOR [RecipienterStatus]
GO
/****** Object:  Default [DF__SliderImg__Start__04E4BC85]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[SliderImg] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [StartTime]
GO
/****** Object:  Default [DF__ServerIte__IsQua__05D8E0BE]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[ServerItem] ADD  DEFAULT ((0)) FOR [IsQuanGuo]
GO
/****** Object:  Default [DF__ServerIte__IsByC__06CD04F7]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[ServerItem] ADD  DEFAULT ((0)) FOR [IsByCategory]
GO
/****** Object:  Default [DF__ServerIte__IsByC__07C12930]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[ServerItem] ADD  DEFAULT ((0)) FOR [IsByChildCategory]
GO
/****** Object:  Default [DF__ServerIte__TopTy__0A9D95DB]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[ServerItem] ADD  DEFAULT ((0)) FOR [TopType]
GO
/****** Object:  Default [DF__OutDoor__AuthSta__489AC854]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor] ADD  DEFAULT ((0)) FOR [AuthStatus]
GO
/****** Object:  ForeignKey [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[AuctionCalendar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuctionCalendar] CHECK CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[CredentialsImg] CHECK CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyNotice_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyNotice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyNotice_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyNotice] CHECK CONSTRAINT [FK_dbo.CompanyNotice_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyLogoImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyLogoImg] CHECK CONSTRAINT [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyImg_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyImg] CHECK CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyCredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyCredentialsImg] CHECK CONSTRAINT [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyBannerImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyBannerImg] CHECK CONSTRAINT [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_VIP_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_VIP]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_VIP_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_VIP] CHECK CONSTRAINT [FK_dbo.Member_VIP_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Scheme_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Scheme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Scheme_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Scheme] CHECK CONSTRAINT [FK_dbo.Member_Scheme_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Favorite_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Favorite]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Favorite_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Favorite] CHECK CONSTRAINT [FK_dbo.Member_Favorite_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_CreditIndex_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_CreditIndex]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_CreditIndex_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_CreditIndex] CHECK CONSTRAINT [FK_dbo.Member_CreditIndex_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Action_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Action]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Action] CHECK CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyMessage_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyMessage_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyMessage] CHECK CONSTRAINT [FK_dbo.CompanyMessage_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyMessage_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[CompanyMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyMessage_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyMessage] CHECK CONSTRAINT [FK_dbo.CompanyMessage_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.MediaImg_dbo.OutDoor_MediaID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[MediaImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MediaImg] CHECK CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.TopMedia_dbo.OutDoor_MediaID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[TopMedia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TopMedia_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TopMedia] CHECK CONSTRAINT [FK_dbo.TopMedia_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.TopCompany_dbo.Company_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[TopCompany]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TopCompany_dbo.Company_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TopCompany] CHECK CONSTRAINT [FK_dbo.TopCompany_dbo.Company_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.MapImg_dbo.OutDoor_MediaID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[MapImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MapImg] CHECK CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.LinkManImg_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[LinkManImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[LinkManImg] CHECK CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Money_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Money]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Money_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_Money] CHECK CONSTRAINT [FK_dbo.Member_Money_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Scheme_Media_dbo.Member_Scheme_SchemeID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Scheme_Media]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Scheme_Media_dbo.Member_Scheme_SchemeID] FOREIGN KEY([SchemeID])
REFERENCES [dbo].[Member_Scheme] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Scheme_Media] CHECK CONSTRAINT [FK_dbo.Scheme_Media_dbo.Member_Scheme_SchemeID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_CityCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_FormatCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode] FOREIGN KEY([FormatCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_MeidaCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode] FOREIGN KEY([MeidaCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_OwnerCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode] FOREIGN KEY([OwnerCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_PeriodCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode] FOREIGN KEY([PeriodCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Category_CityCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_BussinessCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode] FOREIGN KEY([BussinessCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_CityCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_FundCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode] FOREIGN KEY([FundCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_ScaleCode]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode] FOREIGN KEY([ScaleCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Member_MemberID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Category_dbo.Category_PID]    Script Date: 05/27/2013 17:45:29 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Category_dbo.Category_PID] FOREIGN KEY([PID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_dbo.Category_dbo.Category_PID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Company_CompanyID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Group_GroupID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID] FOREIGN KEY([AreaAttID])
REFERENCES [dbo].[AreaAtt] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID] FOREIGN KEY([OutDoorID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]
GO
/****** Object:  ForeignKey [FK_dbo.Article_dbo.Category_ArticleCode]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Article_dbo.Category_ArticleCode] FOREIGN KEY([ArticleCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_dbo.Article_dbo.Category_ArticleCode]
GO
/****** Object:  ForeignKey [FK_dbo.StaticTemplate_dbo.Category_ProvinceCode]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[StaticTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StaticTemplate_dbo.Category_ProvinceCode] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[StaticTemplate] CHECK CONSTRAINT [FK_dbo.StaticTemplate_dbo.Category_ProvinceCode]
GO
/****** Object:  ForeignKey [FK_dbo.Permissions_dbo.Department_DepartmentID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Group_GroupID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Roles_RoleID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Roles_RoleID]    Script Date: 05/27/2013 17:45:33 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID]
GO
