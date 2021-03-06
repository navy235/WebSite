USE [Maitonn]
GO
/****** Object:  StoredProcedure [dbo].[P_AddMoney]    Script Date: 04/28/2013 16:42:35 ******/
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
/****** Object:  StoredProcedure [dbo].[P_AddCreditIndex]    Script Date: 04/28/2013 16:42:35 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 04/28/2013 16:42:35 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 04/28/2013 16:42:35 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 04/28/2013 16:42:35 ******/
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
