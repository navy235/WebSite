USE [Maitonn]
GO
/****** Object:  Table [dbo].[Member_VIP]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[Member_VIP] ON
INSERT [dbo].[Member_VIP] ([MemberID], [ID], [StartTime], [EndTime], [AddTime], [AddMemberID], [VipLevel], [PayTime], [Description]) VALUES (1, 3, CAST(0x0000A1AC00AE53AD AS DateTime), CAST(0x0000A22701269A22 AS DateTime), CAST(0x0000A1AC00AE52EC AS DateTime), 0, 3, 4, N'广知通VIP')
INSERT [dbo].[Member_VIP] ([MemberID], [ID], [StartTime], [EndTime], [AddTime], [AddMemberID], [VipLevel], [PayTime], [Description]) VALUES (2, 7, CAST(0x0000A1AC00B901C5 AS DateTime), CAST(0x0000A227012983C5 AS DateTime), CAST(0x0000A1AC00B901C5 AS DateTime), 0, 3, 2, N'广知通VIP')
SET IDENTITY_INSERT [dbo].[Member_VIP] OFF
/****** Object:  Table [dbo].[Member_Money]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[Member_Money] ON
INSERT [dbo].[Member_Money] ([MemberID], [ID], [TotalMoney], [Money00], [Money01], [Money02], [Money03], [Money04], [Money05], [Money06], [Money07], [Money08], [Money09]) VALUES (1, 1, 1816, 14, 452, 4320, 0, 0, 0, 0, -2970, 0, 0)
INSERT [dbo].[Member_Money] ([MemberID], [ID], [TotalMoney], [Money00], [Money01], [Money02], [Money03], [Money04], [Money05], [Money06], [Money07], [Money08], [Money09]) VALUES (2, 5, 3511, 0, 31, 3480, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Member_Money] OFF
/****** Object:  Table [dbo].[Member_Action]    Script Date: 04/27/2013 18:06:07 ******/
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
SET IDENTITY_INSERT [dbo].[Member_Action] OFF
/****** Object:  Table [dbo].[TopCompany]    Script Date: 04/27/2013 18:06:07 ******/
/****** Object:  Table [dbo].[LinkManImg]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[LinkManImg] ON
INSERT [dbo].[LinkManImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/18/75e0cd37-9db2-44cb-8922-e45d645d4677.JPG,/Upload/Normal/2013/4/18/6bf7e00b-9370-4c8d-ad9f-501fe0daad78.JPG', N'/Upload/Normal/2013/4/18/75e0cd37-9db2-44cb-8922-e45d645d4677.JPG')
SET IDENTITY_INSERT [dbo].[LinkManImg] OFF
/****** Object:  Table [dbo].[CompanyNotice]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[CompanyNotice] ON
INSERT [dbo].[CompanyNotice] ([ID], [MemberID], [CompanyID], [Content], [Title], [AddTime], [Status]) VALUES (1, 1, 1, N'4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测4月23号倩女幽魂2公测', N'4月23号倩女幽魂2公测', CAST(0x0000A1A800B757A1 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[CompanyNotice] OFF
/****** Object:  Table [dbo].[CompanyMessage]    Script Date: 04/27/2013 18:06:07 ******/
/****** Object:  Table [dbo].[CompanyLogoImg]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[CompanyLogoImg] ON
INSERT [dbo].[CompanyLogoImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/18/77708699-4a47-4694-bbdd-bbf38329ca61_small.jpg', N'/Upload/Normal/2013/4/18/77708699-4a47-4694-bbdd-bbf38329ca61_small.jpg')
SET IDENTITY_INSERT [dbo].[CompanyLogoImg] OFF
/****** Object:  Table [dbo].[CompanyImg]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[CompanyImg] ON
INSERT [dbo].[CompanyImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/18/ec9e69ea-0f2d-4015-a416-911e5032eb37.JPG,/Upload/Normal/2013/4/18/f7f6ceca-db3a-40a6-a055-a83f6c592635.JPG', N'/Upload/Normal/2013/4/18/ec9e69ea-0f2d-4015-a416-911e5032eb37.JPG')
SET IDENTITY_INSERT [dbo].[CompanyImg] OFF
/****** Object:  Table [dbo].[CompanyCredentialsImg]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[CompanyCredentialsImg] ON
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/22/9df4e706-d0fc-4b3b-8588-8f71deac275e.JPG', N'营业执照')
INSERT [dbo].[CompanyCredentialsImg] ([ID], [CompanyID], [MemberID], [ImgUrl], [Title]) VALUES (2, 1, 1, N'/Upload/Normal/2013/4/22/bfb2c332-c685-40a7-9559-f073494fe219.JPG', N'组织机构代码证')
SET IDENTITY_INSERT [dbo].[CompanyCredentialsImg] OFF
/****** Object:  Table [dbo].[CompanyBannerImg]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[CompanyBannerImg] ON
INSERT [dbo].[CompanyBannerImg] ([CompanyID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 0, N'/Upload/Normal/2013/4/22/1c6a81a9-2513-47a9-b9e6-c9fe33e352e5.JPG', N'/Upload/Normal/2013/4/22/1c6a81a9-2513-47a9-b9e6-c9fe33e352e5.JPG')
SET IDENTITY_INSERT [dbo].[CompanyBannerImg] OFF
/****** Object:  Table [dbo].[Member_Profile]    Script Date: 04/27/2013 18:06:07 ******/
/****** Object:  Table [dbo].[Company]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[Company] ON
INSERT [dbo].[Company] ([MemberID], [CompanyID], [Name], [LinkMan], [Sex], [Address], [Phone], [Mobile], [Fax], [QQ], [MSN], [Lat], [Lng], [CityCode], [ScaleCode], [FundCode], [BussinessCode], [LastTime], [LastIP], [AddTime], [AddIP], [Description], [Unapprovedlog], [Status]) VALUES (1, 1, N'海城瑞驰广告传播中心', N'申先生', 0, N'海城市永安路', NULL, N'18321841288', NULL, NULL, NULL, 122.75682067871094, 40.846649169921875, 121, 435, 429, 424, CAST(0x0000A1A40120A61B AS DateTime), N'127.0.0.1', CAST(0x0000A1A40120A61A AS DateTime), N'127.0.0.1', N' 海城瑞驰广告是一家从事户外媒体开发、代理发布、大型户外广告工程制作、企业外部形象（vi）导入专业广告公司。
    本公司主要经营高速公路单立柱广告媒体。媒体范围在辽宁、吉林、河北等省，辽宁地区有沈阳-大连高速公路、北京-哈尔滨高速公路辽宁段；吉林省境内有四平-长春段及长春环城高速公路。媒体主要分布在：1、北京-沈阳高速公路广告媒体主要分布在辽宁段起点沈阳-万家收费站及葫芦岛、锦州、盘锦、辽中、沈阳等城市附近。2、沈阳-大连高速公路媒体主要分布在沈阳、辽阳、鞍山、营口、大连段沿线。3、其它路段有沈阳绕城高速、沈阳-毛家店、沈阳-丹东等高速公路沿线。吉林境内主要分布在四平-长春段和长春外环高速公路。
    多年来，我们只专注做高速媒体开发、制作、销售与整合，因为专注，所以专业，所以才有专业的品质，且秉承“专心、专业铸就高品质”的企业经营理念，始终贯彻“用心做人做事”的发展观，立足本地，辐射全国，整合全国各地媒体资源，为客户提供一站式服务。
    眼望未来，我们踌躇满志，决心力争打造一个集媒体开发、整合销售、执行于一体的专业户外广告商！', NULL, 2)
SET IDENTITY_INSERT [dbo].[Company] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 04/27/2013 18:06:07 ******/
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
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (558, N'广知通权益', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (559, N'帮助中心', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (560, N'使用指南', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (561, N'了解我们', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (562, N'服务条款', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (563, N'广知币介绍', NULL, 0, 0, N'Article')
INSERT [dbo].[Category] ([ID], [CateName], [PID], [Length], [OrderIndex], [CategoryType]) VALUES (564, N'增值服务', NULL, 0, 0, N'Article')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[Member] ON
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (1, NULL, N'shenhaijunmail@163.com', N'夜幕流浪', N'954a8069343989ba', N'/Content/noimages.gif', 4, CAST(0x0000A1AD0103A12B AS DateTime), N'127.0.0.1', CAST(0x0000A1A4011C0496 AS DateTime), 2, N'2.007Gt8CC0J5WSa06a8ba417eWyoIlD', N'127.0.0.1', 9, 5)
INSERT [dbo].[Member] ([MemberID], [CompanyID], [Email], [NickName], [Password], [AvtarUrl], [GroupID], [LastTime], [LastIP], [AddTime], [OpenType], [OpenID], [AddIP], [LoginCount], [Status]) VALUES (2, NULL, N'56404908@qq.com', N'鹏飞', N'954a8069343989ba', NULL, 1, CAST(0x0000A1AD0126CE6F AS DateTime), N'127.0.0.1', CAST(0x0000A1A40124861D AS DateTime), 1, N'867500BB0033503199D9DC514C44A18D', N'127.0.0.1', 3, 1)
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[Group]    Script Date: 04/27/2013 18:06:07 ******/
SET IDENTITY_INSERT [dbo].[Group] ON
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (1, N'基本会员', N'基本会员')
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (2, N'Backup Operators', N'备份操作员为了备份或还原文件可以替代安全限制')
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (3, N'Video Manager', N'视频监管,视频审核')
INSERT [dbo].[Group] ([GroupID], [Name], [Description]) VALUES (4, N'超级管理员', N'超级管理员')
SET IDENTITY_INSERT [dbo].[Group] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (2, N'销售部', N'负责软件的销售', N'郭富城')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (3, N'开发部', N'负责程序的开发和部署', N'刘德华')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (4, N'编辑部', N'负责日常新闻的采集，和发布', N'黎明')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (5, N'人力资源部', N'负责公司人员招聘录用', N'张祖贤')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description], [Leader]) VALUES (6, N'测试部', N'负责各种测试任务', N'张学友')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[WorkItem]    Script Date: 04/27/2013 18:06:08 ******/
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
INSERT [dbo].[WorkItem] ([Id], [JobName], [WorkerId], [Started], [Completed], [ExceptionInfo]) VALUES (201, N'Lucene', N'd51180e9-b413-4610-970b-d2e551f03b5a', CAST(0x0000A1AD00A54DAB AS DateTime), CAST(0x0000A1AD00A55150 AS DateTime), NULL)
GO
print 'Processed 200 total records'
SET IDENTITY_INSERT [dbo].[WorkItem] OFF
/****** Object:  Table [dbo].[Sys_Message]    Script Date: 04/27/2013 18:06:08 ******/
/****** Object:  Table [dbo].[SliderImg]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[SliderImg] ON
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (1, N'/Upload/Normal/2013/4/26/7be83740-c845-4934-80ee-a31a809a4eec_small.jpg', N'http://www.baidu.com', N'雅安地震义捐', 5, CAST(0x0000A1AD00E40457 AS DateTime), CAST(0x0000A1B400000000 AS DateTime), 35, 1, 2, CAST(0x0000A1AC00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (3, N'/Upload/Normal/2013/4/26/f5bc7156-9969-4fff-879d-5ba466a22b93_small.jpg', N'http://www.douban.com/', N'测试', 2, CAST(0x0000A1AC01261233 AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 2, 1, 2, CAST(0x0000A1AC00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (4, N'/Upload/Normal/2013/4/26/c8fe212e-e070-42b6-9902-93907a7f6e7d_small.jpg', N'http://www.163.com', N'区域置顶测试', 4, CAST(0x0000A1AC0127DFC0 AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 2, 1, 1, CAST(0x0000A1AC00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (5, N'/Upload/Normal/2013/4/27/23cbbdb9-ce7b-4e3f-a9a2-1ba71261c8bc_small.jpg', N'http://www.baidu.com', N'测试啊', 6, CAST(0x0000A1AD00E51C27 AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 1, 1, 2, CAST(0x0000A1AD00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (6, N'/Upload/Normal/2013/4/27/37d826c8-e2d6-46d4-844e-fd0389b9e270_small.jpg', N'http://www.baidu.com', N'恭喜神州广天有限公司入驻广知网', 0, CAST(0x0000A1AD0108ADCE AS DateTime), CAST(0x0000A1B300000000 AS DateTime), 35, 1, 1, CAST(0x0000A1AD00000000 AS DateTime))
INSERT [dbo].[SliderImg] ([ID], [ImgUrl], [LinkUrl], [Title], [OrderIndex], [AddTime], [EndTime], [ProvinceCode], [MemberID], [Status], [StartTime]) VALUES (9, N'/Upload/Normal/2013/4/27/f9d32fb4-8d2e-4f06-9629-ad8a8afa090d_small.jpg', N'http://www.dotaeye.com/dashboard', N'地方站首页轮播', 0, CAST(0x0000A1AD0110EAFE AS DateTime), CAST(0x0000A1AE00000000 AS DateTime), 35, 1, 1, CAST(0x0000A1AD00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[SliderImg] OFF
/****** Object:  Table [dbo].[ServerItem]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[ServerItem] ON
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (1, 2, N'普通VIP三个月', N'/Upload/Normal/2013/4/24/5fcc6907-6e02-42a7-8cb3-117286cb8fb4_small.jpg', N'5月15日前购买知识通半年卡、年卡可延长一个月VIP会员权限1', N'http://www.dotaeye.com/help-7', 200, 0, 0, 3, 100, 0, CAST(0x0000A1AA01209EBE AS DateTime), CAST(0x0000A41300000000 AS DateTime), 1, CAST(0x0000A1AB01070C42 AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (2, 2, N'普通VIP六个月，5月15日前购买赠送一个月', N'/Upload/Normal/2013/4/24/92669ba7-8ad2-4954-851a-967a3e98b701_small.jpg', N'5月15日前购买知识通半年卡、年卡可延长一个月VIP会员权限', N'http://www.dotaeye.com/help-7', 380, 0, 60, 6, 200, 1, CAST(0x0000A1AA0121DE8F AS DateTime), CAST(0x0000A41300000000 AS DateTime), 1, CAST(0x0000A1AB010E5DBF AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (3, 1, N'全国站首页轮播', N'/Upload/Normal/2013/4/24/5d100343-8905-45b7-b836-f5c2ad5d65c1_small.jpg', N'全国站轮播任何城市都可以看到。', N'http://www.dotaeye.com/help-8', 500, 1, 0, 0, 0, 0, CAST(0x0000A1AA0128AB32 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD011BEB8E AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (4, 1, N'地方站首页轮播', N'/Upload/Normal/2013/4/24/813357f2-826e-436e-9aa3-af2c4efc415a_small.jpg', N'地方站首页轮播展示', N'http://www.dotaeye.com/help-8', 300, 1, 0, 0, 0, 0, CAST(0x0000A1AA01291D3C AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD011BF5F7 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (5, 1, N'媒体信息全国置顶', N'/Upload/Normal/2013/4/27/8d08d46a-a647-418d-bdc8-5f4667719692_small.jpg', N'媒体信息全国置顶', N'http://www.dotaeye.com/help-7', 60, 1, 0, 0, 0, 0, CAST(0x0000A1AD011C6EFA AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD0121A769 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (6, 1, N'媒体信息地区置顶', N'/Upload/Normal/2013/4/27/9b20b9fe-ddf9-430e-8d8c-007419433d04_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 50, 0, 0, 0, 0, 0, CAST(0x0000A1AD011CD402 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD0124BF2C AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 0, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (7, 1, N'媒体信息全国按类别投放', N'/Upload/Normal/2013/4/27/e92d3fa9-175f-4d2e-8dd9-ee3f68eed43a_small.jpg', N'媒体信息全国按类别投放', N'http://www.doateye.com/help-7', 40, 0, 0, 0, 0, 0, CAST(0x0000A1AD011D4729 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD0124CE6F AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 1, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (8, 1, N'媒体信息地区按类别置顶', N'/Upload/Normal/2013/4/27/681ab51e-4530-4d07-8cab-b2940fc83139_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 30, 0, 0, 0, 0, 0, CAST(0x0000A1AD011DBEAB AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD0124E2E2 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 1, 0)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (9, 1, N'媒体信息全国二级分类置顶', N'/Upload/Normal/2013/4/27/876b2229-2bae-4888-ae89-f0d40206d02f_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 20, 0, 0, 0, 0, 0, CAST(0x0000A1AD011E26E1 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD0124F557 AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 0, 1, 1)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (10, 1, N'媒体信息地区按二级分类置顶', N'/Upload/Normal/2013/4/27/08804ae4-a612-4f1d-a3f1-fa541ee5b14d_small.jpg', N'媒体信息地区置顶', N'http://www.dotaeye.com/help-7', 10, 0, 0, 0, 0, 0, CAST(0x0000A1AD011E70C6 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD012501EF AS DateTime), CAST(9.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 1, 1)
INSERT [dbo].[ServerItem] ([ID], [ServerType], [Name], [ImgUrl], [Description], [HelpUrl], [Price], [IsPayByVMoney], [Money], [Month], [GiftMoney], [GiftMonth], [AddTime], [EndTime], [MemberID], [LastTime], [VipDiscount], [VipDiscount2], [IsQuanGuo], [IsByCategory], [IsByChildCategory]) VALUES (11, 3, N'广知通黄金版三个月', N'/Upload/Normal/2013/4/27/a9815b2e-32ab-47f7-b7e8-3732eeb8cdc8_small.jpg', N'广知通黄金版三个月', N'http://www.dotaeye.com/help-7', 900, 0, 30, 3, 150, 1, CAST(0x0000A1AD01265699 AS DateTime), CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A1AD01265699 AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[ServerItem] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 04/27/2013 18:06:08 ******/
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
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[PayList]    Script Date: 04/27/2013 18:06:08 ******/
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
/****** Object:  Table [dbo].[Member_Message]    Script Date: 04/27/2013 18:06:08 ******/
/****** Object:  Table [dbo].[Member_Money_Type]    Script Date: 04/27/2013 18:06:08 ******/
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0001', 1, 1, 0, 0, N'登录奖励币值')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0002', 2, 0, 0, 0, N'用户反馈奖励')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0101', 2, 10, 0, 0, N'发布审核通过的户外')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0201', 0, 0, 0, 0, N'开通知识通会员获赠')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0202', 0, 0, 0, 0, N'知识通升级转换')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0203', 0, 0, 0, 0, N'广知通充值')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0204', 0, 0, 0, 0, N'广知通充值赠送')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0205', 0, 0, 0, 0, N'首次开通知识通赠送')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0206', 0, 0, 0, 0, N'续费知识通赠送')
INSERT [dbo].[Member_Money_Type] ([Key], [Money], [DayLimit], [TimeLimit], [MoneyLimit], [Name]) VALUES (N'0701', 0, 0, 0, 0, N'置顶消费')
/****** Object:  Table [dbo].[Member_Money_List]    Script Date: 04/27/2013 18:06:08 ******/
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
SET IDENTITY_INSERT [dbo].[Member_Money_List] OFF
/****** Object:  Table [dbo].[AreaAtt]    Script Date: 04/27/2013 18:06:08 ******/
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
/****** Object:  Table [dbo].[Group_Roles]    Script Date: 04/27/2013 18:06:08 ******/
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
/****** Object:  Table [dbo].[OutDoor]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[OutDoor] ON
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords]) VALUES (1, CAST(200.00 AS Decimal(18, 2)), N'具体价格面议', N'广州户外广州大道', CAST(23.18 AS Decimal(18, 2)), CAST(113.33 AS Decimal(18, 2)), 0, NULL, NULL, CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 1, 60, 80, 281, 447, 531, 475, 471, CAST(0x0000A46D00000000 AS DateTime), 4, N'广州户外广州大道南广告牌', N'广州户外广州大道', 0, 0, CAST(0x0000A1A900ABA668 AS DateTime), CAST(0x0000A1AC0127562D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'广州户外广州大道南广告牌', N'广州户外广州大道', N'广州户外广州大道南广告牌')
INSERT [dbo].[OutDoor] ([MediaID], [Price], [PriceExten], [Location], [Lng], [Lat], [HasLight], [LightStrat], [LightEnd], [Wdith], [Height], [TotalFaces], [TrafficAuto], [TrafficPerson], [CityCode], [FormatCode], [MeidaCode], [PeriodCode], [OwnerCode], [Deadline], [Status], [Name], [Description], [Integrity], [Hit], [AddTime], [LastTime], [Favorite], [Message], [MemberID], [AddIP], [AdminUser], [LastIP], [Unapprovedlog], [SeoTitle], [SeoDes], [Seokeywords]) VALUES (2, CAST(100.00 AS Decimal(18, 2)), N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, NULL, CAST(3.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 2, 50, 80, 39, 450, 492, 475, 471, CAST(0x0000A2A500000000 AS DateTime), 4, N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌', 0, 0, CAST(0x0000A1AC0109A59C AS DateTime), CAST(0x0000A1AC0127562D AS DateTime), 0, 0, 1, N'127.0.0.1', 0, N'127.0.0.1', N'', N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌', N'广州户外广州大道南广告牌')
SET IDENTITY_INSERT [dbo].[OutDoor] OFF
/****** Object:  Table [dbo].[Permissions]    Script Date: 04/27/2013 18:06:08 ******/
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
SET IDENTITY_INSERT [dbo].[Permissions] OFF
/****** Object:  Table [dbo].[Article]    Script Date: 04/27/2013 18:06:08 ******/
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
/****** Object:  Table [dbo].[StaticTemplate]    Script Date: 04/27/2013 18:06:08 ******/
/****** Object:  Table [dbo].[TopMedia]    Script Date: 04/27/2013 18:06:08 ******/
/****** Object:  Table [dbo].[Role_Permissions]    Script Date: 04/27/2013 18:06:08 ******/
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
/****** Object:  Table [dbo].[OutDoor_AreaAtt]    Script Date: 04/27/2013 18:06:08 ******/
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 3)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 5)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 6)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 6)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 7)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (1, 8)
INSERT [dbo].[OutDoor_AreaAtt] ([OutDoorID], [AreaAttID]) VALUES (2, 8)
/****** Object:  Table [dbo].[MediaImg]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[MediaImg] ON
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/23/24893cfc-ad29-4d64-bc85-c45b6e07967a.JPG,/Upload/Normal/2013/4/23/36b0c178-1915-4bb4-89f0-c812132158d0.JPG,/Upload/Normal/2013/4/23/43905fe4-9b19-4bde-b31c-be7f15917008.JPG,/Upload/Normal/2013/4/23/db2b0a72-10c3-4fed-9726-b959f6232faa.JPG', N'/Upload/Normal/2013/4/23/24893cfc-ad29-4d64-bc85-c45b6e07967a_120.JPG')
INSERT [dbo].[MediaImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (2, 2, 1, N'/Upload/Normal/2013/4/26/b9367ec4-b8ea-45a9-99b3-03fb56996fc0.JPG,/Upload/Normal/2013/4/26/8b7ca749-5281-45d0-86a9-ed69c0ef78c3.JPG,/Upload/Normal/2013/4/26/d102571c-1efb-4f68-8619-3a85fd258340.JPG,/Upload/Normal/2013/4/26/b356ae93-10f9-4594-98a3-f29a9fe464f2.JPG,/Upload/Normal/2013/4/26/b0a54e92-3b0a-47f1-b101-d499190c741b.JPG', N'/Upload/Normal/2013/4/26/b9367ec4-b8ea-45a9-99b3-03fb56996fc0_120.JPG')
SET IDENTITY_INSERT [dbo].[MediaImg] OFF
/****** Object:  Table [dbo].[MapImg]    Script Date: 04/27/2013 18:06:08 ******/
/****** Object:  Table [dbo].[CredentialsImg]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[CredentialsImg] ON
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (1, 1, 1, N'/Upload/Normal/2013/4/23/1fa5fcaa-e583-4c02-a274-db9a1e33256d.JPG,/Upload/Normal/2013/4/23/cf0b54de-1913-4992-92a1-e1db09d7f2de.JPG', N'/Upload/Normal/2013/4/23/1fa5fcaa-e583-4c02-a274-db9a1e33256d_120.JPG')
INSERT [dbo].[CredentialsImg] ([MediaID], [ID], [MemberID], [ImgUrls], [FocusImgUrl]) VALUES (2, 2, 1, N'/Upload/Normal/2013/4/26/77f2bf2e-d918-4428-9c3c-d385bb90cd4a.JPG', N'/Upload/Normal/2013/4/26/77f2bf2e-d918-4428-9c3c-d385bb90cd4a_120.JPG')
SET IDENTITY_INSERT [dbo].[CredentialsImg] OFF
/****** Object:  Table [dbo].[AuctionCalendar]    Script Date: 04/27/2013 18:06:08 ******/
SET IDENTITY_INSERT [dbo].[AuctionCalendar] ON
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (3, CAST(0x0000A1AC00000000 AS DateTime), CAST(0x0000A20C00000000 AS DateTime), 1)
INSERT [dbo].[AuctionCalendar] ([ID], [StartTime], [EndTime], [MediaID]) VALUES (5, CAST(0x0000A25400000000 AS DateTime), CAST(0x0000A26800000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[AuctionCalendar] OFF
