USE [Maitonn]
GO
/****** Object:  Table [dbo].[Member_Action]    Script Date: 04/01/2013 18:16:17 ******/
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
INSERT [dbo].[Member_Action] ([ID], [ActionType], [MemberID], [Description], [IP], [AddTime]) VALUES (1, 6, 1, N'e1b834fa-cf30-4d31-adfd-248a0f8dbee0', N'127.0.0.1', CAST(0x0000A19000A1F4E1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Member_Action] OFF
/****** Object:  Table [dbo].[CompanyImg]    Script Date: 04/01/2013 18:16:17 ******/
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
/****** Object:  Table [dbo].[LinkManImg]    Script Date: 04/01/2013 18:16:17 ******/
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
/****** Object:  Table [dbo].[WorkItem]    Script Date: 04/01/2013 18:16:17 ******/
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
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (1, N'Lucene', N'4c60ab25-9484-4ce8-ba00-6a2762298e35', CAST(0x0000A18F0097B2D2 AS DateTime), CAST(0x0000A18F009A722E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (2, N'Lucene', N'4c60ab25-9484-4ce8-ba00-6a2762298e35', CAST(0x0000A18F009A7241 AS DateTime), CAST(0x0000A18F009CB858 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (3, N'Lucene', N'9c276ffd-d926-4f42-bc9f-4fd52490daba', CAST(0x0000A18F009CB8AE AS DateTime), CAST(0x0000A18F009FA3DE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (4, N'Lucene', N'7ce7b95f-3cf5-4eee-bf4e-e9b1550a2e7a', CAST(0x0000A18F009FA404 AS DateTime), CAST(0x0000A18F00A0CB50 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (5, N'Lucene', N'aecc19ab-391f-4bca-8b37-8fb18c6ed7a3', CAST(0x0000A18F00A0CB71 AS DateTime), CAST(0x0000A18F00A190C9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (6, N'Lucene', N'6023ecc2-c663-443a-9439-3e94efd6bbec', CAST(0x0000A18F00A190ED AS DateTime), CAST(0x0000A18F00A191C5 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (7, N'Lucene', N'fe93e144-4c74-4455-a9e3-00f7b30a1cf7', CAST(0x0000A18F00A1CBE5 AS DateTime), CAST(0x0000A18F00A1CC0D AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (8, N'Lucene', N'e3dafd53-c4d2-4213-a5bd-fe00dd3f1983', CAST(0x0000A18F00A24BA6 AS DateTime), CAST(0x0000A18F00A3F74B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (9, N'Lucene', N'e89eb19c-fc38-446f-a078-4b5763400719', CAST(0x0000A18F00A3F771 AS DateTime), CAST(0x0000A190001D5F25 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (10, N'Lucene', N'7ed39c10-77c6-4225-ae61-64e6cc4b5a82', CAST(0x0000A190001D5FDE AS DateTime), CAST(0x0000A19000201F1D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (11, N'Lucene', N'7ed39c10-77c6-4225-ae61-64e6cc4b5a82', CAST(0x0000A19000201F1D AS DateTime), CAST(0x0000A1900022DE3F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (12, N'Lucene', N'7ed39c10-77c6-4225-ae61-64e6cc4b5a82', CAST(0x0000A1900022DE3F AS DateTime), CAST(0x0000A1900024C5BA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (13, N'Lucene', N'29316657-698a-48de-b06c-db6c869798ec', CAST(0x0000A1900024C5FC AS DateTime), CAST(0x0000A190002785EB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (14, N'Lucene', N'29316657-698a-48de-b06c-db6c869798ec', CAST(0x0000A190002785EB AS DateTime), CAST(0x0000A190002A450C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (15, N'Lucene', N'29316657-698a-48de-b06c-db6c869798ec', CAST(0x0000A190002A450C AS DateTime), CAST(0x0000A190002A456D AS DateTime), N'“Lucene.Net.China.WordTree”的类型初始值设定项引发异常。
   在 Lucene.Net.China.WordTree..ctor()
   在 Lucene.Net.China.ChineseTokenizer.IncrementToken()
   在 Lucene.Net.Analysis.Standard.StandardFilter.IncrementToken() 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Analysis\Standard\StandardFilter.cs:行号 53
   在 Lucene.Net.Analysis.StopFilter.IncrementToken() 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Analysis\StopFilter.cs:行号 132
   在 Lucene.Net.Index.DocInverterPerField.ProcessFields(IFieldable[] fields, Int32 count) 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Index\DocInverterPerField.cs:行号 149
   在 Lucene.Net.Index.DocFieldProcessorPerThread.ProcessDocument() 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Index\DocFieldProcessorPerThread.cs:行号 275
   在 Lucene.Net.Index.DocumentsWriter.UpdateDocument(Document doc, Analyzer analyzer, Term delTerm) 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Index\DocumentsWriter.cs:行号 1031
   在 Lucene.Net.Index.IndexWriter.AddDocument(Document doc, Analyzer analyzer) 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Index\IndexWriter.cs:行号 2331
   在 Lucene.Net.Index.IndexWriter.AddDocument(Document doc) 位置 d:\Lucene.Net\FullRepo\trunk\src\core\Index\IndexWriter.cs:行号 2303
   在 Maitonn.Web.LuceneIndexingService.AddOutDoor(OutDoorIndexEntity OutDoor) 位置 d:\GitProject\WebSite\Maitonn.Web\Lucene\LuceneIndexingService.cs:行号 201
   在 Maitonn.Web.LuceneIndexingService.AddOutDoors(List`1 OutDoors, Boolean creatingIndex) 位置 d:\GitProject\WebSite\Maitonn.Web\Lucene\LuceneIndexingService.cs:行号 135
   在 Maitonn.Web.LuceneIndexingService.UpdateIndex() 位置 d:\GitProject\WebSite\Maitonn.Web\Lucene\LuceneIndexingService.cs:行号 71
   在 System.Threading.Tasks.Task.InnerInvoke()
   在 System.Threading.Tasks.Task.Execute()')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (16, N'Lucene', N'bee7d43e-06a3-4e75-b7f6-ffc3b85055e0', CAST(0x0000A190002A9972 AS DateTime), CAST(0x0000A190002D5923 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (17, N'Lucene', N'bee7d43e-06a3-4e75-b7f6-ffc3b85055e0', CAST(0x0000A190002D5926 AS DateTime), CAST(0x0000A19000301885 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (18, N'Lucene', N'bee7d43e-06a3-4e75-b7f6-ffc3b85055e0', CAST(0x0000A19000301886 AS DateTime), CAST(0x0000A1900032D827 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (19, N'Lucene', N'bee7d43e-06a3-4e75-b7f6-ffc3b85055e0', CAST(0x0000A1900032D828 AS DateTime), CAST(0x0000A190003805E3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (20, N'Lucene', N'0eea86dc-c6a0-449a-87b6-c5f00f9ada19', CAST(0x0000A1900038071A AS DateTime), CAST(0x0000A190003AC66C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (21, N'Lucene', N'0eea86dc-c6a0-449a-87b6-c5f00f9ada19', CAST(0x0000A190003AC673 AS DateTime), CAST(0x0000A190003D86B3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (22, N'Lucene', N'0eea86dc-c6a0-449a-87b6-c5f00f9ada19', CAST(0x0000A190003D86B5 AS DateTime), CAST(0x0000A19000404618 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (23, N'Lucene', N'0eea86dc-c6a0-449a-87b6-c5f00f9ada19', CAST(0x0000A1900040461C AS DateTime), CAST(0x0000A19000430565 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (24, N'Lucene', N'0eea86dc-c6a0-449a-87b6-c5f00f9ada19', CAST(0x0000A19000430580 AS DateTime), CAST(0x0000A19000513A69 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (25, N'Lucene', N'bcbad43d-8e46-46de-a20d-72f79d156853', CAST(0x0000A19000513E03 AS DateTime), CAST(0x0000A19000543FAA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (26, N'Lucene', N'a458c1cc-da0c-40fa-8633-f2714870723a', CAST(0x0000A19000543FDB AS DateTime), CAST(0x0000A1900054414B AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (27, N'Lucene', N'2073c1c2-2d1e-410f-941e-c1bf3df92cc7', CAST(0x0000A1900054A60C AS DateTime), CAST(0x0000A1900057659F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (28, N'Lucene', N'2073c1c2-2d1e-410f-941e-c1bf3df92cc7', CAST(0x0000A1900057659F AS DateTime), CAST(0x0000A190005A24F7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (29, N'Lucene', N'2073c1c2-2d1e-410f-941e-c1bf3df92cc7', CAST(0x0000A190005A24F8 AS DateTime), CAST(0x0000A190005FB7A7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (30, N'Lucene', N'425557fd-dab0-4a59-89eb-96b3ccb41bd0', CAST(0x0000A190005FB943 AS DateTime), CAST(0x0000A190005FB99A AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (31, N'Lucene', N'b51875df-e5c2-46bf-9619-155ad9fd5a5c', CAST(0x0000A190005FF155 AS DateTime), CAST(0x0000A1900062B0B9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (32, N'Lucene', N'b51875df-e5c2-46bf-9619-155ad9fd5a5c', CAST(0x0000A1900062B0C6 AS DateTime), CAST(0x0000A19000657035 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (33, N'Lucene', N'b51875df-e5c2-46bf-9619-155ad9fd5a5c', CAST(0x0000A1900065703C AS DateTime), CAST(0x0000A19000682F72 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (34, N'Lucene', N'b51875df-e5c2-46bf-9619-155ad9fd5a5c', CAST(0x0000A19000682F75 AS DateTime), CAST(0x0000A190006AAF08 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (35, N'Lucene', N'fabccdad-4fe3-4d0c-bbb4-de88411bd02d', CAST(0x0000A190006AAF77 AS DateTime), CAST(0x0000A190006CC4AF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (36, N'Lucene', N'aa867397-d147-4f38-bec3-c3c97054f059', CAST(0x0000A190006CC4EA AS DateTime), CAST(0x0000A190006DF7D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (37, N'Lucene', N'284f7428-8241-4ff7-96ba-e0dbb6378247', CAST(0x0000A190006DF7FD AS DateTime), CAST(0x0000A190006DF81E AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (38, N'Lucene', N'a4efb15c-ae89-4a59-ad6c-339aeca39e0a', CAST(0x0000A190006E6083 AS DateTime), CAST(0x0000A190006E6124 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (39, N'Lucene', N'684f74d1-515d-4ad7-a8fb-973e284ffdac', CAST(0x0000A190006ECE40 AS DateTime), CAST(0x0000A190006FC361 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (40, N'Lucene', N'b30ecc06-cbb8-4a36-9673-48f420200d0e', CAST(0x0000A190006FC3AA AS DateTime), CAST(0x0000A190006FC60B AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (41, N'Lucene', N'ed897650-8cda-448d-a3cf-607be657e29c', CAST(0x0000A19000701FA6 AS DateTime), CAST(0x0000A19000713908 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (42, N'Lucene', N'effcf51d-6443-4563-8608-ce90a9627fe2', CAST(0x0000A19000713933 AS DateTime), CAST(0x0000A1900072CF3D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (43, N'Lucene', N'23becb13-43fd-4127-9735-df18f4816310', CAST(0x0000A1900072CF53 AS DateTime), CAST(0x0000A19000749410 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (44, N'Lucene', N'047e051d-7b92-412f-b80d-6104d0dfc06e', CAST(0x0000A1900074942F AS DateTime), CAST(0x0000A19000756F42 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (45, N'Lucene', N'1e13188b-019b-4dba-bbc8-abd3859383bd', CAST(0x0000A19000756F5A AS DateTime), CAST(0x0000A19000762FF1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (46, N'Lucene', N'b347fac2-9c15-4951-87a1-4691308dafda', CAST(0x0000A19000763025 AS DateTime), CAST(0x0000A1900077768B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (47, N'Lucene', N'f0e0ddfe-ef0a-4b23-bef1-06c9d1d8e74a', CAST(0x0000A190007776A1 AS DateTime), CAST(0x0000A190007809B8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (48, N'Lucene', N'20d4a36b-3a35-4645-990b-54e78de6d031', CAST(0x0000A190007809CE AS DateTime), CAST(0x0000A190007AC91B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (49, N'Lucene', N'20d4a36b-3a35-4645-990b-54e78de6d031', CAST(0x0000A190007AC91B AS DateTime), CAST(0x0000A190007C7E45 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (50, N'Lucene', N'4e20e701-efa0-44f3-9758-b55e167f968a', CAST(0x0000A190007C7E6E AS DateTime), CAST(0x0000A190007F3F77 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (51, N'Lucene', N'4e20e701-efa0-44f3-9758-b55e167f968a', CAST(0x0000A190007F3F78 AS DateTime), CAST(0x0000A1900081FEA2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (52, N'Lucene', N'4e20e701-efa0-44f3-9758-b55e167f968a', CAST(0x0000A1900081FEA2 AS DateTime), CAST(0x0000A1900084B5A9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (53, N'Lucene', N'9a702d2f-baf3-44fe-af60-c49a7026e297', CAST(0x0000A1900084B5C8 AS DateTime), CAST(0x0000A190008774FE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (54, N'Lucene', N'9a702d2f-baf3-44fe-af60-c49a7026e297', CAST(0x0000A19000877500 AS DateTime), CAST(0x0000A1900087750F AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (55, N'Lucene', N'b81c4d4c-f88c-4071-9251-61806c77bab3', CAST(0x0000A1900087989E AS DateTime), CAST(0x0000A19000889219 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (56, N'Lucene', N'275b88a7-3ec6-416b-8545-960dc6e94ec7', CAST(0x0000A19000889233 AS DateTime), CAST(0x0000A190008B5274 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (57, N'Lucene', N'275b88a7-3ec6-416b-8545-960dc6e94ec7', CAST(0x0000A190008B5275 AS DateTime), CAST(0x0000A190008D8F35 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (58, N'Lucene', N'5af925b5-e483-4d1c-a98e-05919179f33d', CAST(0x0000A190008D8F4D AS DateTime), CAST(0x0000A19000904E9A AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (59, N'Lucene', N'5af925b5-e483-4d1c-a98e-05919179f33d', CAST(0x0000A19000904E9A AS DateTime), CAST(0x0000A19000930DCF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (60, N'Lucene', N'5af925b5-e483-4d1c-a98e-05919179f33d', CAST(0x0000A19000930DD5 AS DateTime), CAST(0x0000A19000940BA4 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (61, N'Lucene', N'7140bc6d-37c6-4a63-8542-fba568f4cfe8', CAST(0x0000A19000940BE9 AS DateTime), CAST(0x0000A1900096CCCD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (62, N'Lucene', N'7140bc6d-37c6-4a63-8542-fba568f4cfe8', CAST(0x0000A1900096CCCE AS DateTime), CAST(0x0000A19000998BFF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (63, N'Lucene', N'7140bc6d-37c6-4a63-8542-fba568f4cfe8', CAST(0x0000A19000998C00 AS DateTime), CAST(0x0000A190009A8C04 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (64, N'Lucene', N'3c67bd60-820e-4e2c-b837-36970a23e263', CAST(0x0000A190009A8C71 AS DateTime), CAST(0x0000A190009DF079 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (65, N'Lucene', N'45e78483-5005-42e0-b0ea-f8172e77cd9a', CAST(0x0000A190009DF094 AS DateTime), CAST(0x0000A19000A0AFCB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (66, N'Lucene', N'45e78483-5005-42e0-b0ea-f8172e77cd9a', CAST(0x0000A19000A0AFCC AS DateTime), CAST(0x0000A19000A36FCA AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (67, N'Lucene', N'45e78483-5005-42e0-b0ea-f8172e77cd9a', CAST(0x0000A19000A36FCB AS DateTime), CAST(0x0000A1930021BB84 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (68, N'Lucene', N'd9032562-4318-4061-a3f7-a6c78689eaef', CAST(0x0000A1930021BC53 AS DateTime), CAST(0x0000A19300281BD5 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (69, N'Lucene', N'27c01a1f-dba8-4d2d-b09f-dc91b9ebd932', CAST(0x0000A19300281BF2 AS DateTime), CAST(0x0000A193002ADB40 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (70, N'Lucene', N'27c01a1f-dba8-4d2d-b09f-dc91b9ebd932', CAST(0x0000A193002ADB4A AS DateTime), CAST(0x0000A193002D1F9C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (71, N'Lucene', N'8352afd2-f1c2-4dc1-8914-acd22a5c8376', CAST(0x0000A193002D1FBF AS DateTime), CAST(0x0000A193002FDF17 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (72, N'Lucene', N'8352afd2-f1c2-4dc1-8914-acd22a5c8376', CAST(0x0000A193002FDF18 AS DateTime), CAST(0x0000A19300329E4B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (73, N'Lucene', N'8352afd2-f1c2-4dc1-8914-acd22a5c8376', CAST(0x0000A19300329E4C AS DateTime), CAST(0x0000A1930035EACD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (74, N'Lucene', N'6a402d28-d6e5-43bc-9935-0546d194dd82', CAST(0x0000A1930035EB0E AS DateTime), CAST(0x0000A1930036806F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (75, N'Lucene', N'fcb0217f-be6b-479e-a9df-bcaf4a59545e', CAST(0x0000A19300368090 AS DateTime), CAST(0x0000A19300377CBC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (76, N'Lucene', N'e1f55834-4d0d-44fa-ae46-a4db2fbb9104', CAST(0x0000A19300377CD3 AS DateTime), CAST(0x0000A1930038DCA3 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (77, N'Lucene', N'b001847b-0cf4-4eb4-b930-f53b9b5bbc71', CAST(0x0000A1930038DCBF AS DateTime), CAST(0x0000A193003AFE40 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (78, N'Lucene', N'8bf79ba4-7bea-4b3f-afa1-cc2efe664621', CAST(0x0000A193003AFE56 AS DateTime), CAST(0x0000A193003DBD86 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (79, N'Lucene', N'8bf79ba4-7bea-4b3f-afa1-cc2efe664621', CAST(0x0000A193003DBD8C AS DateTime), CAST(0x0000A19300407CB8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (80, N'Lucene', N'8bf79ba4-7bea-4b3f-afa1-cc2efe664621', CAST(0x0000A19300407CC0 AS DateTime), CAST(0x0000A19300433BE7 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (81, N'Lucene', N'8bf79ba4-7bea-4b3f-afa1-cc2efe664621', CAST(0x0000A19300433BE7 AS DateTime), CAST(0x0000A1930057F4F6 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (82, N'Lucene', N'c427e3de-84eb-4814-ba1f-8e45ce8c1dfa', CAST(0x0000A1930057F638 AS DateTime), CAST(0x0000A193005AB57C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (83, N'Lucene', N'c427e3de-84eb-4814-ba1f-8e45ce8c1dfa', CAST(0x0000A193005AB583 AS DateTime), CAST(0x0000A193005DFFF1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (84, N'Lucene', N'aec82b50-0207-4599-93cc-5a4e5bb7b88a', CAST(0x0000A193005E000E AS DateTime), CAST(0x0000A1930060BF43 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (85, N'Lucene', N'aec82b50-0207-4599-93cc-5a4e5bb7b88a', CAST(0x0000A1930060BF44 AS DateTime), CAST(0x0000A19300637E6B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (86, N'Lucene', N'aec82b50-0207-4599-93cc-5a4e5bb7b88a', CAST(0x0000A19300637E6C AS DateTime), CAST(0x0000A1930065890B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (87, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A19300658925 AS DateTime), CAST(0x0000A1930068484B AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (88, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A1930068484C AS DateTime), CAST(0x0000A193006B0777 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (89, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A193006B0777 AS DateTime), CAST(0x0000A193006DC69C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (90, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A193006DC69D AS DateTime), CAST(0x0000A193007085CF AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (91, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A193007085D0 AS DateTime), CAST(0x0000A193007344FD AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (92, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A193007344FE AS DateTime), CAST(0x0000A1930076042E AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (93, N'Lucene', N'298615af-9a34-4f92-bc58-a958fdb06199', CAST(0x0000A1930076042F AS DateTime), CAST(0x0000A1930078E37F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (94, N'Lucene', N'5a6c1999-bc81-4d61-aaaa-e0eb6e7be1cd', CAST(0x0000A1930078E3B8 AS DateTime), CAST(0x0000A1930079B4D8 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (95, N'Lucene', N'3201a8d3-7fca-4eff-953e-b76a92b5c378', CAST(0x0000A1930079B4FC AS DateTime), CAST(0x0000A193007FFD29 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (96, N'Lucene', N'17b3cba8-5c13-40ed-80d6-9600c6cc3d55', CAST(0x0000A193007FFD9F AS DateTime), CAST(0x0000A193007FFE67 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (97, N'Lucene', N'96e9cbf0-195f-4278-a063-b5a6a87e93bf', CAST(0x0000A19300808430 AS DateTime), CAST(0x0000A193008359DE AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (98, N'Lucene', N'c7ca5841-f1a1-44ab-bd72-1d54ae2550bc', CAST(0x0000A19300835A04 AS DateTime), CAST(0x0000A19300835B13 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (99, N'Lucene', N'8ac31222-44f1-4daa-b315-41f80c40cddc', CAST(0x0000A19300838796 AS DateTime), CAST(0x0000A19300858DC1 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (100, N'Lucene', N'e183fef9-edb5-4c6a-b5b7-db58b75ed677', CAST(0x0000A19300858DD5 AS DateTime), CAST(0x0000A19300858EC6 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (101, N'Lucene', N'7b8775e9-9ab6-4a78-a1f5-f019b8fd4878', CAST(0x0000A1930085FF52 AS DateTime), CAST(0x0000A1930087044C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (102, N'Lucene', N'36d1698f-31bb-4bd6-916a-6436210725df', CAST(0x0000A19300870480 AS DateTime), CAST(0x0000A1930089C4A2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (103, N'Lucene', N'36d1698f-31bb-4bd6-916a-6436210725df', CAST(0x0000A1930089C4AD AS DateTime), CAST(0x0000A193008C83E9 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (104, N'Lucene', N'36d1698f-31bb-4bd6-916a-6436210725df', CAST(0x0000A193008C83EB AS DateTime), CAST(0x0000A193008F431D AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (105, N'Lucene', N'36d1698f-31bb-4bd6-916a-6436210725df', CAST(0x0000A193008F431F AS DateTime), CAST(0x0000A1930092026C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (106, N'Lucene', N'36d1698f-31bb-4bd6-916a-6436210725df', CAST(0x0000A1930092026D AS DateTime), CAST(0x0000A19300970092 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (107, N'Lucene', N'f460a112-455d-426a-87bd-6e3e9046266f', CAST(0x0000A193009700F8 AS DateTime), CAST(0x0000A1930099C043 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (108, N'Lucene', N'f460a112-455d-426a-87bd-6e3e9046266f', CAST(0x0000A1930099C049 AS DateTime), CAST(0x0000A1930099C050 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (109, N'Lucene', N'3f18fc9e-dcf0-4239-9862-a9853c81ce5f', CAST(0x0000A1930099E12F AS DateTime), CAST(0x0000A193009DCDD2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (110, N'Lucene', N'4f0880b8-c41b-43bc-80eb-f9dbbb4837d4', CAST(0x0000A193009DCE0E AS DateTime), CAST(0x0000A19300A08DAB AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (111, N'Lucene', N'4f0880b8-c41b-43bc-80eb-f9dbbb4837d4', CAST(0x0000A19300A08DBD AS DateTime), CAST(0x0000A19300A17296 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (112, N'Lucene', N'6a62f5c2-ab2b-42c0-9def-305355ff809f', CAST(0x0000A19300A172B3 AS DateTime), CAST(0x0000A19300A343CC AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (113, N'Lucene', N'1baedcb9-51dd-4383-9331-bdac72896652', CAST(0x0000A19300A343E8 AS DateTime), CAST(0x0000A19300A46C5C AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (114, N'Lucene', N'59a60e11-b9ed-480e-9a1e-a1b93a98e42b', CAST(0x0000A19300A46C73 AS DateTime), CAST(0x0000A19300A46C7E AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (115, N'Lucene', N'35387ace-c5c8-4978-979b-ecc715b4b6ea', CAST(0x0000A19300A4D316 AS DateTime), CAST(0x0000A19300A5DE2F AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (116, N'Lucene', N'34537ad4-e1a6-455a-9abb-e6b2bb2fa586', CAST(0x0000A19300A5DE4A AS DateTime), CAST(0x0000A19300A5DE6B AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (117, N'Lucene', N'c01c8182-ef54-44da-b9e3-47a12382389c', CAST(0x0000A19300A61691 AS DateTime), CAST(0x0000A19300A616E6 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (118, N'Lucene', N'74f9d479-60e0-4a7f-9cd5-b9efde2c7dff', CAST(0x0000A19300A68281 AS DateTime), CAST(0x0000A19300A79FE2 AS DateTime), N'Workitem expired. Job timeout was 00:02:00
')
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (119, N'Lucene', N'903cea55-06db-4c52-a839-9d63ac0070c9', CAST(0x0000A19300A79FFC AS DateTime), CAST(0x0000A19300A7A006 AS DateTime), NULL)
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (120, N'Lucene', N'dd88dc4e-67f8-4ba7-965f-82281f306840', CAST(0x0000A19300A82A5E AS DateTime), CAST(0x0000A19300A82A80 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[WorkItem] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 04/01/2013 18:16:17 ******/
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
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[AreaAtt]    Script Date: 04/01/2013 18:16:17 ******/
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
/****** Object:  Table [dbo].[Member_Profile]    Script Date: 04/01/2013 18:16:17 ******/
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
INSERT [dbo].[Member_Profile] ([MemberID], [ID], [Sex], [Borthday], [CityCode], [RealName], [Mobile], [Phone], [QQ], [MSN], [Address], [Lat], [Lng], [Description]) VALUES (1, 1, 0, CAST(0x0000A17000000000 AS DateTime), 38, N'dasdasd', N'18321841288', N'021-88845662', N'56404908', N'56404980@qq.com', N'上海市浦东新区灵验南路', 121.499907, 31.160079, N'萨的房价快速的哈法刷卡时间的分化')
SET IDENTITY_INSERT [dbo].[Member_Profile] OFF
/****** Object:  Table [dbo].[Company]    Script Date: 04/01/2013 18:16:17 ******/
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
	[Description] [nvarchar](500) NULL,
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
/****** Object:  Table [dbo].[Category]    Script Date: 04/01/2013 18:16:17 ******/
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
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 04/01/2013 18:16:17 ******/
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
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (1, NULL, N'shenhaijunmail@163.com', N'夜幕流浪', N'954a8069343989ba', N'/Upload/Normal/2013/3/29/761aa510-8b04-4b44-8629-8be57f4906c2_small.jpg', 4, CAST(0x0000A18F0120CB8A AS DateTime), N'127.0.0.1', CAST(0x0000A18F0120CB8A AS DateTime), 2, N'2.007Gt8CC0J5WSa06a8ba417eWyoIlD', N'127.0.0.1', 1, 2)
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[Group]    Script Date: 04/01/2013 18:16:17 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[OutDoor]    Script Date: 04/01/2013 18:16:24 ******/
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
SET IDENTITY_INSERT [dbo].[OutDoor] ON
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords]) VALUES (1, CAST(80.00 AS Decimal(18, 2)), N'上海市浦东新区灵岩南路333号超市', N'上海市浦东新区灵岩南路333号', CAST(31.15 AS Decimal(18, 2)), CAST(121.50 AS Decimal(18, 2)), 1, N'1170', N'390', CAST(5.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 1, 30, 80, 547, 447, 487, 478, 470, CAST(0x0000A19000000000 AS DateTime), 4, N'上海市浦东新区灵岩南路333号超市', N'上海市浦东新区灵岩南路333号超市', 0, 0, CAST(0x0000A19000ABB948 AS DateTime), CAST(0x0000A19000ABB948 AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'上海市浦东新区灵岩南路333号超市', N'上海市浦东新区灵岩南路333号超市', N'上海市浦东新区灵岩南路333号超市')
SET IDENTITY_INSERT [dbo].[OutDoor] OFF
/****** Object:  Table [dbo].[Group_Roles]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 04/01/2013 18:16:24 ******/
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
SET IDENTITY_INSERT [dbo].[Permissions] OFF
/****** Object:  Table [dbo].[TopBase]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[SaleBase]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[OutDoor_AreaAtt]    Script Date: 04/01/2013 18:16:24 ******/
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
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 1)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 4)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 8)
/****** Object:  Table [dbo].[Role_Permissions]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[MediaImg]    Script Date: 04/01/2013 18:16:24 ******/
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
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/3/29/11a93a97-3a15-4c64-b2f5-02b4037651da_120.JPG', N'/Upload/Normal/2013/3/29/11a93a97-3a15-4c64-b2f5-02b4037651da_120.JPG')
SET IDENTITY_INSERT [dbo].[MediaImg] OFF
/****** Object:  Table [dbo].[MapImg]    Script Date: 04/01/2013 18:16:24 ******/
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
/****** Object:  Table [dbo].[CredentialsImg]    Script Date: 04/01/2013 18:16:24 ******/
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
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/3/29/6a9ee915-cca1-4205-856c-20b77a84fd1c_120.JPG', N'/Upload/Normal/2013/3/29/6a9ee915-cca1-4205-856c-20b77a84fd1c_120.JPG')
SET IDENTITY_INSERT [dbo].[CredentialsImg] OFF
/****** Object:  Table [dbo].[AuctionCalendar]    Script Date: 04/01/2013 18:16:24 ******/
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
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (1, CAST(0x0000A19000000000 AS DateTime), CAST(0x0000A20C00000000 AS DateTime), 1)
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (2, CAST(0x0000A28700000000 AS DateTime), CAST(0x0000A33D00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[AuctionCalendar] OFF
/****** Object:  ForeignKey [FK_dbo.Member_Action_dbo.Member_MemberID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Member_Action]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Action] CHECK CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyImg_dbo.Company_CompanyID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[CompanyImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyImg] CHECK CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.LinkManImg_dbo.Company_CompanyID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[LinkManImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[LinkManImg] CHECK CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Category_CityCode]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Member_MemberID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_BussinessCode]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode] FOREIGN KEY([BussinessCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_CityCode]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_FundCode]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode] FOREIGN KEY([FundCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_ScaleCode]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode] FOREIGN KEY([ScaleCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Member_MemberID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Category_dbo.Category_PID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Category_dbo.Category_PID] FOREIGN KEY([PID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_dbo.Category_dbo.Category_PID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Company_CompanyID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Group_GroupID]    Script Date: 04/01/2013 18:16:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_CityCode]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_FormatCode]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode] FOREIGN KEY([FormatCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_MeidaCode]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode] FOREIGN KEY([MeidaCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_OwnerCode]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode] FOREIGN KEY([OwnerCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_PeriodCode]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode] FOREIGN KEY([PeriodCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Group_GroupID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Roles_RoleID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.Permissions_dbo.Department_DepartmentID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID]
GO
/****** Object:  ForeignKey [FK_dbo.TopBase_dbo.OutDoor_MediaID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[TopBase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TopBase_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TopBase] CHECK CONSTRAINT [FK_dbo.TopBase_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.SaleBase_dbo.OutDoor_MediaID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[SaleBase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleBase_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleBase] CHECK CONSTRAINT [FK_dbo.SaleBase_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID] FOREIGN KEY([AreaAttID])
REFERENCES [dbo].[AreaAtt] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID] FOREIGN KEY([OutDoorID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Roles_RoleID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.MediaImg_dbo.OutDoor_MediaID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[MediaImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MediaImg] CHECK CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.MapImg_dbo.OutDoor_MediaID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[MapImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MapImg] CHECK CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[CredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[CredentialsImg] CHECK CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]    Script Date: 04/01/2013 18:16:24 ******/
ALTER TABLE [dbo].[AuctionCalendar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuctionCalendar] CHECK CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]
GO
