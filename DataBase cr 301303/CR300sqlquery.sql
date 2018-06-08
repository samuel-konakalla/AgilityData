--Dev
ALter table HouseBills Add	 BLSecurityCode varchar(50)	
INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('BLSecurityCode','BLSecurityCode','HouseBills','BLSecurityCode','S',NULL,'N','N','I',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)


--Audit
-- ALter table [$HouseBills] Add	 BLSecurityCode varchar(50)

----Script for messaging
--UPDATE MsgSYsActionConfig SET MsgType = 'I' WHERE ActionId = 'SubmitManifest' AND ActionType = 'SubmitmanifestforBlseccode' 
declare @seq varchar(max),@sqry varchar(max)
SET  @seq = (select ISNULL(Max(ActionConfigId),0)+1 FROM [MsSEQ_MsgSysActionConfiggSysActionConfig])
SET @sqry ='ALTER SEQUENCE dbo.  RESTART WITH ' + CAST(@seq AS VARCHAR (10));
EXEC (@sqry)
GO

DECLARE @MsgId INT
INSERT INTO [dbo].[MsgSysActionTypes] VALUES (NEXT Value FOR SEQ_MsgSysActionTypes,'Cargo','SubmitmanifestforBlseccode','BL/AWB/WB Submitted with Security Code')

                 INSERT INTO msgsyscontent VALUES('BSubmitmanifestforBlseccode','BL/AWB/WB @0 is Submitted with Security Code @1')
				INSERT INTO msgsyscontent VALUES('sSubmitmanifestforBlseccode','BL/AWB/WB @0 is Submitted with Security Code @1')
set @MsgId = Next Value for SEQ_MsgSysActionConfig
INSERT INTO [dbo].[MsgSysActionConfig]
           ([ActionConfigId],[MsgCode],[ModuleName],[ActionType],[ActionId],[Profile],[ProfileMemberPrimaryKey]
           ,[RefKeyDatamember],[SelectorActionId],[PageId] ,[IsRoleBased],[IsLocationBase],[IsArchive]
           ,[Role],[ArchivedPeriod],[Status],[MsgSubject],[MsgBody],[Priority],[IsCustStnBased],[MsgType])
VALUES
           (@MsgId,'MSG-'+ Convert(varchar(10),@MsgId),'Cargo'
           ,'SubmitmanifestforBlseccode','SubmitManifest','HouseBills','HouseBillId','HouseBillId'
           ,'OpenHouseBill','HouseBillsFrPg',1,1,0,'PrincipalShippingAgent,ShippingAgent,KTM,FreightForwarder'
           ,0,1,'sSubmitmanifestforBlseccode','BSubmitmanifestforBlseccode','N','0','I')


CREATE PROCEDURE SP_BLSecurityCode(@ManifestId Bigint,@Type CHAR(1))
AS BEGIN
DECLARE @NotifyQuery NVARCHAR(MAX) = '';
---For manifest case
IF @Type='M'
BEGIN
Select @NotifyQuery = @NotifyQuery +' exec SP_MsgSysInsertModules @ModuleName=''Cargo'',@ActionId=''SubmitManifest'',@RefActionId=NULL,
@ActionCriteria=''[HouseBills].[HouseBillId]='+ CONVERT(VARCHAR(30),HB.HouseBillId) +''',
@RefNo='''+HB.HouseBillNumber+''',@ToOrg='''+ CONVERT(VARCHAR(30),HB.OwnerOrgId) +''',
@Messagesubject='''+HB.HouseBillNumber+'#'+HB.BLSecurityCode+''',
@MessageBody='''+HB.HouseBillNumber+'#'+HB.BLSecurityCode+''',
@ToLoationId='''',@ToRoleId=NULL,@CreatedBy='''+HB.CreatedBy+''',@ToUserId='''',
@PageId=NULL,@GroupBy=''SubmitmanifestforBlseccode'',@TOCustStationId='''',@ToStateId=NULL '+ CHAR(13)
FROM 
Manifests M INNER JOIN HouseBills HB ON M.ManifestId = HB.ManifestId
WHERE M.ManifestId = @ManifestId AND HB.StateId NOT IN('HouseBillCancelledState','HouseBillCancellationRequestState','HBConfiscated')
END
----Suppmanifest
ELSE IF @Type='S'
BEGIN
Select @NotifyQuery = @NotifyQuery +' exec SP_MsgSysInsertModules @ModuleName=''Cargo'',@ActionId=''SubmitManifest'',@RefActionId=NULL,
@ActionCriteria=''[HouseBills].[HouseBillId]='+ CONVERT(VARCHAR(30),HB.HouseBillId) +''',
@RefNo='''+HB.HouseBillNumber+''',@ToOrg='''+ CONVERT(VARCHAR(30),HB.OwnerOrgId) +''',
@Messagesubject='''+HB.HouseBillNumber+'#'+HB.BLSecurityCode+''',
@MessageBody='''+HB.HouseBillNumber+'#'+HB.BLSecurityCode+''',
@ToLoationId='''',@ToRoleId=NULL,@CreatedBy='''+HB.CreatedBy+''',@ToUserId='''',
@PageId=NULL,@GroupBy=''SubmitmanifestforBlseccode'',@TOCustStationId='''',@ToStateId=NULL '+ CHAR(13)
FROM 
SuppManifests M INNER JOIN HouseBills HB ON M.SuppManifestId = HB.SuppManifestId
WHERE M.SuppManifestId = @ManifestId
AND HB.StateId NOT IN('HouseBillCancelledState','HouseBillCancellationRequestState','HBConfiscated')
END
---Fro HosueBill submission
ELSE IF @Type='H'
BEGIN
Select @NotifyQuery = @NotifyQuery +' exec SP_MsgSysInsertModules @ModuleName=''Cargo'',@ActionId=''SubmitManifest'',@RefActionId=NULL,
@ActionCriteria=''[HouseBills].[HouseBillId]='+ CONVERT(VARCHAR(30),HB.HouseBillId) +''',
@RefNo='''+HB.HouseBillNumber+''',@ToOrg='''+ CONVERT(VARCHAR(30),HB.OwnerOrgId) +''',
@Messagesubject='''+HB.HouseBillNumber+'#'+HB.BLSecurityCode+''',
@MessageBody='''+HB.HouseBillNumber+'#'+HB.BLSecurityCode+''',
@ToLoationId='''',@ToRoleId=NULL,@CreatedBy='''+HB.CreatedBy+''',@ToUserId='''',
@PageId=NULL,@GroupBy=''SubmitmanifestforBlseccode'',@TOCustStationId='''',@ToStateId=NULL '+ CHAR(13)
FROM 
 HouseBills HB WHERE HB.HouseBillId= @ManifestId
END
---Final execution
EXEC sp_executesql @NotifyQuery 
END

--select * from dataprofileclassmembers where DATAPROFILECLASSID='housebills' and name='BLSecurityCode'

--UPDATE MsgSYsActionConfig SET MsgType = 'I' WHERE ActionId = 'SubmitManifest' AND ActionType = 'SubmitmanifestforBlseccode'
--UPDATE MsgSysContent SET Entry = 'BL/AWB/WB @0 is Submitted with Security Code @1' Where EntryId IN ('sSubmitmanifestforBlseccode'	,'BSubmitmanifestforBlseccode')
--UPDATE MsgSysActionConfig SET Role = 'PrincipalShippingAgent,ShippingAgent,KTM' WHERE ActionId = 'SubmitManifest' AND ActionType = 'SubmitmanifestforBlseccode'  






CREATE VIEW dbo.vw_GenerateNEWID
AS
SELECT NEWID() AS val

/********************************************************************** 
Function Name	:  fnGetTableColumns
Author			:  Rahul Nawalkar   
Purpose			:  The purpose of this functon is to get eight digit unique number.
Created Date	:  June 04 , 2018
Reviewed By		:  -- (Internal Use) --      
Reviewed On		:      
Tables Referred : 
Input Parameters: 
Output Parameters:        
**********************************************************************/   
CREATE Function [dbo].[fnGetBLSecurityCode] () 
Returns VARCHAR(50)
BEGIN
DECLARE @NewId NVARCHAR(50) = (Select val from vw_GenerateNEWID)
DECLARE @BLSecurityCode VARCHAR(50) = (Select SUBSTRING(CONVERT (VARCHAR(10),ABS(CHECKSUM(@NewId))),1,8))
IF EXISTS(Select HouseBillId From dbo.HouseBills(nolock) WHERE BLSecurityCode = @BLSecurityCode)
RETURN [dbo].fnGetBLSecurityCode()
RETURN @BLSecurityCode
END