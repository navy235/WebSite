USE [Maitonn]
GO
/****** Object:  Table [dbo].[Member_Action]    Script Date: 04/12/2013 18:03:47 ******/
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
/****** Object:  Table [dbo].[LinkManImg]    Script Date: 04/12/2013 18:03:47 ******/
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
/****** Object:  Table [dbo].[CompanyNotice]    Script Date: 04/12/2013 18:03:47 ******/
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
/****** Object:  Table [dbo].[CompanyMessage]    Script Date: 04/12/2013 18:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[Content] [nvarchar](2000) NULL,
	[Title] [nvarchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
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
/****** Object:  Table [dbo].[CompanyLogoImg]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[CompanyImg]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[CompanyCredentialsImg]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[CompanyBannerImg]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[Member_Profile]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[Company]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 04/12/2013 18:03:49 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[WorkItem]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[AreaAtt]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[OutDoor]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[Group_Roles]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[TopBase]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[SaleBase]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[OutDoor_AreaAtt]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[Role_Permissions]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[MediaImg]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[MapImg]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[CredentialsImg]    Script Date: 04/12/2013 18:03:53 ******/
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
/****** Object:  Table [dbo].[AuctionCalendar]    Script Date: 04/12/2013 18:03:54 ******/
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
/****** Object:  Default [DF__CompanyNo__AddTi__6754599E]    Script Date: 04/12/2013 18:03:47 ******/
ALTER TABLE [dbo].[CompanyNotice] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [AddTime]
GO
/****** Object:  Default [DF__CompanyNo__Statu__693CA210]    Script Date: 04/12/2013 18:03:47 ******/
ALTER TABLE [dbo].[CompanyNotice] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__CompanyMe__AddTi__66603565]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyMessage] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [AddTime]
GO
/****** Object:  Default [DF__CompanyMe__Statu__68487DD7]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyMessage] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Action_dbo.Member_MemberID]    Script Date: 04/12/2013 18:03:47 ******/
ALTER TABLE [dbo].[Member_Action]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Action] CHECK CONSTRAINT [FK_dbo.Member_Action_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.LinkManImg_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:47 ******/
ALTER TABLE [dbo].[LinkManImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[LinkManImg] CHECK CONSTRAINT [FK_dbo.LinkManImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyNotice_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:47 ******/
ALTER TABLE [dbo].[CompanyNotice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyNotice_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyNotice] CHECK CONSTRAINT [FK_dbo.CompanyNotice_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyMessage_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyMessage_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyMessage] CHECK CONSTRAINT [FK_dbo.CompanyMessage_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyMessage_dbo.Member_MemberID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyMessage_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyMessage] CHECK CONSTRAINT [FK_dbo.CompanyMessage_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyLogoImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyLogoImg] CHECK CONSTRAINT [FK_dbo.CompanyLogoImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyImg_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyImg] CHECK CONSTRAINT [FK_dbo.CompanyImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyCredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyCredentialsImg] CHECK CONSTRAINT [FK_dbo.CompanyCredentialsImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[CompanyBannerImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[CompanyBannerImg] CHECK CONSTRAINT [FK_dbo.CompanyBannerImg_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Category_CityCode]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Member_Profile_dbo.Member_MemberID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Member_Profile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Member_Profile] CHECK CONSTRAINT [FK_dbo.Member_Profile_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_BussinessCode]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode] FOREIGN KEY([BussinessCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_BussinessCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_CityCode]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_FundCode]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode] FOREIGN KEY([FundCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_FundCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Category_ScaleCode]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode] FOREIGN KEY([ScaleCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Category_ScaleCode]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Member_MemberID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Member_MemberID]
GO
/****** Object:  ForeignKey [FK_dbo.Category_dbo.Category_PID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Category_dbo.Category_PID] FOREIGN KEY([PID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_dbo.Category_dbo.Category_PID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Company_CompanyID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([MemberID])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Member_dbo.Group_GroupID]    Script Date: 04/12/2013 18:03:49 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_dbo.Member_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_CityCode]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_CityCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_FormatCode]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode] FOREIGN KEY([FormatCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_FormatCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_MeidaCode]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode] FOREIGN KEY([MeidaCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_MeidaCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_OwnerCode]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode] FOREIGN KEY([OwnerCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_OwnerCode]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_dbo.Category_PeriodCode]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode] FOREIGN KEY([PeriodCode])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[OutDoor] CHECK CONSTRAINT [FK_dbo.OutDoor_dbo.Category_PeriodCode]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Group_GroupID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Group_GroupID]
GO
/****** Object:  ForeignKey [FK_dbo.Group_Roles_dbo.Roles_RoleID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[Group_Roles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Roles] CHECK CONSTRAINT [FK_dbo.Group_Roles_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.Permissions_dbo.Department_DepartmentID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.Department_DepartmentID]
GO
/****** Object:  ForeignKey [FK_dbo.TopBase_dbo.OutDoor_MediaID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[TopBase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TopBase_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TopBase] CHECK CONSTRAINT [FK_dbo.TopBase_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.SaleBase_dbo.OutDoor_MediaID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[SaleBase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SaleBase_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleBase] CHECK CONSTRAINT [FK_dbo.SaleBase_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID] FOREIGN KEY([AreaAttID])
REFERENCES [dbo].[AreaAtt] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.AreaAtt_AreaAttID]
GO
/****** Object:  ForeignKey [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[OutDoor_AreaAtt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID] FOREIGN KEY([OutDoorID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutDoor_AreaAtt] CHECK CONSTRAINT [FK_dbo.OutDoor_AreaAtt_dbo.OutDoor_OutDoorID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Permissions_PermissionID]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Permissions_dbo.Roles_RoleID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[Role_Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Role_Permissions] CHECK CONSTRAINT [FK_dbo.Role_Permissions_dbo.Roles_RoleID]
GO
/****** Object:  ForeignKey [FK_dbo.MediaImg_dbo.OutDoor_MediaID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[MediaImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MediaImg] CHECK CONSTRAINT [FK_dbo.MediaImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.MapImg_dbo.OutDoor_MediaID]    Script Date: 04/12/2013 18:03:53 ******/
ALTER TABLE [dbo].[MapImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[MapImg] CHECK CONSTRAINT [FK_dbo.MapImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]    Script Date: 04/12/2013 18:03:54 ******/
ALTER TABLE [dbo].[CredentialsImg]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
GO
ALTER TABLE [dbo].[CredentialsImg] CHECK CONSTRAINT [FK_dbo.CredentialsImg_dbo.OutDoor_MediaID]
GO
/****** Object:  ForeignKey [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]    Script Date: 04/12/2013 18:03:54 ******/
ALTER TABLE [dbo].[AuctionCalendar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[OutDoor] ([MediaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuctionCalendar] CHECK CONSTRAINT [FK_dbo.AuctionCalendar_dbo.OutDoor_MediaID]
GO
