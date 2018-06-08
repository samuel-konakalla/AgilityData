
---CR 303
update DATAPROFILECLASSMEMBERS set VALUEDATAPROFILECLASSID='CustomStations',VALUEDATAPROFILECLASSIDAS='ManCustomStationsrecords' where DATAPROFILECLASSID='manifests' and NAME='OwnerCSId'
/****** Object:  Sequence [dbo].[SEQ__JourneyCSRemarksHistory]    Script Date: 5/15/2018 2:35:55 PM ******/
CREATE SEQUENCE [dbo].[SEQ__JourneyCSRemarksHistoryId] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO


-----JourneyCSRemarksHistory table
CREATE TABLE [dbo].[JourneyCSRemarksHistory](
	[JourneyCSRemarksHistoryID] [bigint] NOT NULL,
	[JourneyId] [bigint] NULL,
	[EntryCustomStationId] [int] NULL,
	[ExitCustomsStationId] [int] NULL,
	[PersonalId] [INT] NULL,
	[CustomStationId] [int] NULL,
	[JourneyStateId] [varchar](50) NULL,
	[Remarks] [varchar](512) NULL,
	[DateCreated] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[StateId] [varchar](50) NULL	
 CONSTRAINT [PK_JourneyCSRemarksHistory] PRIMARY KEY CLUSTERED 
(
	[JourneyCSRemarksHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]




-----JourneyCSRemarksHistory Dataprofileclasses
 INSERT INTO [DATAPROFILECLASSES] ([DATAPROFILECLASSID],[NAME],[DESCRIPTION],[DATASOURCE],[DATASOURCETYPE],[PRIMARYDATAPROFILECLASSID],[ISSYSTEM],[STATEID],[CREATEDBY],[AUDITTRAIL],[DATECREATED],[DATEMODIFIED],[MODIFIEDBY],[ISCOMMONINFO],[ISAPPLYROWLEVELSECURITY],[APPLYCEILINGLIMIT],[ISINBOXENABLED],[ISCHAINOWNERSHIPFORUPDATE],[ISLOCATIONENABLED],[OWNERLOCID],[MONITORFORESCALATION],[PROFILELEVELDELEGATION],[ISDEPARTMENTSECURITY],[ROWLEVELDELEGATION],[PROFILECEILINGLIMIT],[CEILINGLIMITVALUE],[INBOXOVERRIDE],[ENABLECACHE],[DIRECTUPDATETOWORKFLOW],[ISEVENTENABLED])
VALUES('JourneyCSRemarksHistory','JourneyCSRemarksHistory','JourneyCSRemarksHistory','JourneyCSRemarksHistory','T',NULL,'N',NULL,NULL,0,GetDate(),GetDate(),NULL,'n',0,'n',0,0,0,NULL,'n','n','n','n','N',0,'n',1,0,'N')


------==========================DataProfileClassMembers----------------==============================

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('JourneyCSRemarksHistoryID','JourneyCSRemarksHistoryID','JourneyCSRemarksHistory','JourneyCSRemarksHistoryID','N',NULL,'Y','Y','I','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('JourneyId','JourneyId','JourneyCSRemarksHistory','JourneyId','N',NULL,'N','N','I',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('EntryCustomStationId','EntryCustomStationId','JourneyCSRemarksHistory','EntryCustomStationId','N',NULL,'N','N','I',NULL,NULL,'CustomStations','EntryCustomStations',NULL,NULL,NULL,NULL,NULL,NULL,NULL)

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('ExitCustomsStationId','ExitCustomsStationId','JourneyCSRemarksHistory','ExitCustomsStationId','N',NULL,'N','N','I',NULL,NULL,'CustomStations','ExitCustomStations',NULL,NULL,NULL,NULL,NULL,NULL,NULL)
INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('PersonalId','PersonalId','JourneyCSRemarksHistory','PersonalId','N',NULL,'N','N','I',NULL,NULL,'PeopleProfile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('StateId','StateId','JourneyCSRemarksHistory','StateId','S',NULL,'N','N','I',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)																																																																																																														
INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('CustomStationId','CustomStationId','JourneyCSRemarksHistory','CustomStationId','N',NULL,'N','N','I',NULL,NULL,'CustomStations','AirRailCustomStations',NULL,NULL,NULL,NULL,NULL,NULL,NULL)

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('JourneyStateId','JourneyStateId','JourneyCSRemarksHistory','JourneyStateId','S',NULL,'N','N','I',NULL,NULL,'WorkflowItemStates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('Remarks','Remarks','JourneyCSRemarksHistory','Remarks','S',NULL,'N','N','I',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)																																																																																																														

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[DATECREATED],[CREATEDBY],[DATEMODIFIED],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('DateCreated','DateCreated','JourneyCSRemarksHistory','DateCreated','D',NULL,'N','N','I','N',NULL,'',NULL,NULL,NULL,GETDATE(),NULL,GETDATE(),NULL,NULL,NULL,NULL)



---ServiceActions&Steps


INSERT INTO [SERVICEACTIONS] ([SERVICEACTIONID],[NAME],[DESCRIPTION],[SERVICEID],[DATAPROFILEID],[DATAPROFILETYPE],[SEQUENCE],[TRANSACTIONSUPPORT],[ASYNCHRONOUSACTION],[STATEID],[CREATEDBY],[HASSTEPS],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[SERVICEACTIONTYPE],[COMPLUSOPTION],[ISOLATIONLEVEL],[IMPLEMENTATIONTYPE])
VALUES('ListJourneyCSRemarksHistory','ListJourneyCSRemarksHistory','ListJourneyCSRemarksHistory','29','JourneyCSRemarksHistory','p',0,'N','N',NULL,NULL,'yes',NULL,NULL,NULL,'update','RN','S','X')
INSERT INTO [SERVICEACTIONSTEPS] ([SERVICEACTIONSTEPID],[SERVICEACTIONID],[ACTORSTEPID],[Sequence],[ASYNCHRONOUSSTEP],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[CONDITIONIMPLEMENTATION])
VALUES('ListJourneyCSRemarksHistory','ListJourneyCSRemarksHistory','ListJourneyCSRemarksHistory',0,'N',NULL,NULL,NULL,NULL,NULL)
INSERT INTO [ACTORSTEPS] ([ACTORSTEPID],[ACTORID],[NAME],[DESCRIPTION],[RETURNDATATYPE],[IMPLEMENTATION],[SIMPLIFIEDIMPLEMENTATION],[DATAPROFILEID],[STATEID],[MODIFIEDBY],[CREATEDBY],[OWNERLOCID],[ISENABLED],[APPLYFORSELFTRANSITIONS])
VALUES('ListJourneyCSRemarksHistory','Journey','ListJourneyCSRemarksHistory','ListJourneyCSRemarksHistory','01','','','','',NULL,'MicroClear',NULL,'Y','Y')


---WFStates
Declare @DATAPROFILECLASSWFSTATEIDSCName Bigint = (Select Countervalue from counters  where name = 'WF_WorkflowStates')
set @DATAPROFILECLASSWFSTATEIDSCName = @DATAPROFILECLASSWFSTATEIDSCName +1;

INSERT INTO [DATAPROFILECLASSWFSTATES] ([DATAPROFILECLASSWFSTATEID],[DATAPROFILECLASSID],[STATEID],[STATENAME],[DATECREATED],[CREATEDBY],[DATEMODIFIED],[MODIFIEDBY],[STATEDESCRIPTION],[OWNERLOCID],[OWNERORGID])
VALUES(@DATAPROFILECLASSWFSTATEIDSCName+1,'JourneyCSRemarksHistory','JourneyCSRemarksHistoryCreatedtate','Created',GetDate(),NULL,GetDate(),NULL,'JourneyCSRemarksHistoryCreatedtate',NULL,NULL)


Update Counters Set Countervalue = (Select max(DATAPROFILECLASSWFSTATEID) From DATAPROFILECLASSWFSTATES) where name = 'WF_WorkflowStates'

--Transitions & Permissions
Update Counters Set Countervalue = (Select max([TRANSITIONID]) From [WORKFLOWTRANSITIONS]) where name = 'WF_Transition'

Declare @TransitionIdSCName Bigint = (Select Countervalue from counters  where name = 'WF_Transition')
set @TransitionIdSCName = @TransitionIdSCName +1;
INSERT INTO [WORKFLOWTRANSITIONS] ([TRANSITIONID],[TRANSITIONIDOLD],[DATAPROFILECLASSID],[FROMSTATEID],[TOSTATEID],[SERVICEACTIONID],[SERVICEACTIONTYPE],[DESCRIPTION],[SEQUENCE],[STATEID],[CREATEDBY],[PERMISSIONTOKEN],[DATECREATED],[DATEMODIFIED],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[TEMPLATEID],[CONDITIONDESCRIPTION],[TRANSITIONTYPE],[LINKEDPARENTID],[LINKEDPARENTIDOLD],[CONDITIONPARENTID],[RETURNVALUE],[HASPREEVENT],[HASPOSTEVENT],[ALLOWEDROLES],[DENIEDROLES],[ALLOWEDUSERS],[DENIEDUSERS])
VALUES(@TransitionIdSCName,NULL,'JourneyCSRemarksHistory','JourneyCSRemarksHistoryCreatedtate','JourneyCSRemarksHistoryCreatedtate','System','select',NULL,NULL,NULL,NULL,NULL,GetDate(),GetDate(),NULL,NULL,NULL,NULL,NULL,'NT',NULL,NULL,NULL,-2,NULL,NULL,',MCMAdmin,,SiteAdminMCM,',NULL,NULL,NULL)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'ShippingAgent',1)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'PrincipalShippingAgent',1)


--==========Cr 301----=================================
ALTER TABLE HBVehicleItems
ADD ShipmentOrderId BIGINT

ALTER TABLE HBContainerItems
ADD ShipmentOrderId BIGINT

ALTER TABLE Vehicles
ADD ShipmentOrderId BIGINT 
INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('ShipmentOrderId','ShipmentOrderId','HBVehicleItems','ShipmentOrderId','N',NULL,'N','N','I','N',NULL,'ShipmentOrders',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('ShipmentOrderId','ShipmentOrderId','HBContainerItems','ShipmentOrderId','N',NULL,'N','N','I','N',NULL,'ShipmentOrders',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
update DATAPROFILECLASSMEMBERS set VALUEDATAPROFILECLASSID='HouseBills' where dataprofileclassid='HBShipmentOrders' and Name='HouseBillId'

INSERT INTO [DATAPROFILECLASSMEMBERS] ([NAME],[DESCRIPTION],[DATAPROFILECLASSID],[DATASOURCE],[DATASOURCETYPE],[ISDATASOURCECONDITIONAL],[ISPRIMARYKEY],[ISREQUIRED],[ISLANGUAGEDEPENDENT],[ISAUTONUMBER],[ISAPPLYSECURITY],[VALUEDATAPROFILECLASSID],[VALUEDATAPROFILECLASSIDAS],[RELATIONSHIPEXPRESSION],[ISVALUEDATAPROFILECONDITIONAL],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[ISDEFAULT])
VALUES('ShipmentOrderId','ShipmentOrderId','Vehicles','ShipmentOrderId','N',NULL,'N','N','I','N',NULL,'ShipmentOrders',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

INSERT INTO [SERVICEACTIONS] ([SERVICEACTIONID],[NAME],[DESCRIPTION],[SERVICEID],[DATAPROFILEID],[DATAPROFILETYPE],[SEQUENCE],[TRANSACTIONSUPPORT],[ASYNCHRONOUSACTION],[STATEID],[CREATEDBY],[HASSTEPS],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[SERVICEACTIONTYPE],[COMPLUSOPTION],[ISOLATIONLEVEL],[IMPLEMENTATIONTYPE])
VALUES('ListAssHouseBillsinShipment','ListAssHouseBillsinShipment','ListAssHouseBillsinShipment','29','HBShipmentOrders','p',0,'N','N',NULL,NULL,'yes',NULL,NULL,NULL,'update','RN','S','X')
INSERT INTO [SERVICEACTIONSTEPS] ([SERVICEACTIONSTEPID],[SERVICEACTIONID],[ACTORSTEPID],[Sequence],[ASYNCHRONOUSSTEP],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[CONDITIONIMPLEMENTATION])
VALUES('ListAssHouseBillsinShipment','ListAssHouseBillsinShipment','ListAssHouseBillsinShipment',0,'N',NULL,NULL,NULL,NULL,NULL)
INSERT INTO [ACTORSTEPS] ([ACTORSTEPID],[ACTORID],[NAME],[DESCRIPTION],[RETURNDATATYPE],[IMPLEMENTATION],[SIMPLIFIEDIMPLEMENTATION],[DATAPROFILEID],[STATEID],[MODIFIEDBY],[CREATEDBY],[OWNERLOCID],[ISENABLED],[APPLYFORSELFTRANSITIONS])
VALUES('ListAssHouseBillsinShipment','HouseBill','ListAssHouseBillsinShipment','ListAssHouseBillsinShipment','01','','','','',NULL,'MicroClear',NULL,'Y','Y')

INSERT INTO [SERVICEACTIONS] ([SERVICEACTIONID],[NAME],[DESCRIPTION],[SERVICEID],[DATAPROFILEID],[DATAPROFILETYPE],[SEQUENCE],[TRANSACTIONSUPPORT],[ASYNCHRONOUSACTION],[STATEID],[CREATEDBY],[HASSTEPS],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[SERVICEACTIONTYPE],[COMPLUSOPTION],[ISOLATIONLEVEL],[IMPLEMENTATIONTYPE])
VALUES('SaveAssHouseBillsinShipment','SaveAssHouseBillsinShipment','SaveAssHouseBillsinShipment','29','HBShipmentOrders','p',0,'N','N',NULL,NULL,'yes',NULL,NULL,NULL,'update','RN','S','X')
INSERT INTO [SERVICEACTIONSTEPS] ([SERVICEACTIONSTEPID],[SERVICEACTIONID],[ACTORSTEPID],[Sequence],[ASYNCHRONOUSSTEP],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[CONDITIONIMPLEMENTATION])
VALUES('SaveAssHouseBillsinShipment','SaveAssHouseBillsinShipment','SaveAssHouseBillsinShipment',0,'N',NULL,NULL,NULL,NULL,NULL)
INSERT INTO [ACTORSTEPS] ([ACTORSTEPID],[ACTORID],[NAME],[DESCRIPTION],[RETURNDATATYPE],[IMPLEMENTATION],[SIMPLIFIEDIMPLEMENTATION],[DATAPROFILEID],[STATEID],[MODIFIEDBY],[CREATEDBY],[OWNERLOCID],[ISENABLED],[APPLYFORSELFTRANSITIONS])
VALUES('SaveAssHouseBillsinShipment','HouseBill','SaveAssHouseBillsinShipment','SaveAssHouseBillsinShipment','01','','','','',NULL,'MicroClear',NULL,'Y','Y')

INSERT INTO [SERVICEACTIONS] ([SERVICEACTIONID],[NAME],[DESCRIPTION],[SERVICEID],[DATAPROFILEID],[DATAPROFILETYPE],[SEQUENCE],[TRANSACTIONSUPPORT],[ASYNCHRONOUSACTION],[STATEID],[CREATEDBY],[HASSTEPS],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[SERVICEACTIONTYPE],[COMPLUSOPTION],[ISOLATIONLEVEL],[IMPLEMENTATIONTYPE])
VALUES('DisHouseBillsinShipment','DisHouseBillsinShipment','DisHouseBillsinShipment','29','HBShipmentOrders','p',0,'N','N',NULL,NULL,'yes',NULL,NULL,NULL,'delete','RN','S','X')
INSERT INTO [SERVICEACTIONSTEPS] ([SERVICEACTIONSTEPID],[SERVICEACTIONID],[ACTORSTEPID],[Sequence],[ASYNCHRONOUSSTEP],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[CONDITIONIMPLEMENTATION])
VALUES('DisHouseBillsinShipment','DisHouseBillsinShipment','DisHouseBillsinShipment',0,'N',NULL,NULL,NULL,NULL,NULL)
INSERT INTO [ACTORSTEPS] ([ACTORSTEPID],[ACTORID],[NAME],[DESCRIPTION],[RETURNDATATYPE],[IMPLEMENTATION],[SIMPLIFIEDIMPLEMENTATION],[DATAPROFILEID],[STATEID],[MODIFIEDBY],[CREATEDBY],[OWNERLOCID],[ISENABLED],[APPLYFORSELFTRANSITIONS])
VALUES('DisHouseBillsinShipment','HouseBill','DisHouseBillsinShipment','DisHouseBillsinShipment','01','','','','',NULL,'MicroClear',NULL,'Y','Y')

INSERT INTO [SERVICEACTIONS] ([SERVICEACTIONID],[NAME],[DESCRIPTION],[SERVICEID],[DATAPROFILEID],[DATAPROFILETYPE],[SEQUENCE],[TRANSACTIONSUPPORT],[ASYNCHRONOUSACTION],[STATEID],[CREATEDBY],[HASSTEPS],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[SERVICEACTIONTYPE],[COMPLUSOPTION],[ISOLATIONLEVEL],[IMPLEMENTATIONTYPE])
VALUES('ListHouseBillsinShipment','ListHouseBillsinShipment','ListHouseBillsinShipment','29','HouseBills','p',0,'N','N',NULL,NULL,'yes',NULL,NULL,NULL,'update','RN','S','X')
INSERT INTO [SERVICEACTIONSTEPS] ([SERVICEACTIONSTEPID],[SERVICEACTIONID],[ACTORSTEPID],[Sequence],[ASYNCHRONOUSSTEP],[CREATEDBY],[MODIFIEDBY],[STATEID],[OWNERLOCID],[CONDITIONIMPLEMENTATION])
VALUES('ListHouseBillsinShipment','ListHouseBillsinShipment','ListAssHouseBillsinShipment',0,'N',NULL,NULL,NULL,NULL,NULL)

---Transitions&Permissions

Update Counters Set Countervalue = (Select max([TRANSITIONID]) From [WORKFLOWTRANSITIONS]) where name = 'WF_Transition'

Declare @TransitionIdSCName Bigint = (Select Countervalue from counters  where name = 'WF_Transition')
set @TransitionIdSCName = @TransitionIdSCName +1;
INSERT INTO [WORKFLOWTRANSITIONS] ([TRANSITIONID],[TRANSITIONIDOLD],[DATAPROFILECLASSID],[FROMSTATEID],[TOSTATEID],[SERVICEACTIONID],[SERVICEACTIONTYPE],[DESCRIPTION],[SEQUENCE],[STATEID],[CREATEDBY],[PERMISSIONTOKEN],[DATECREATED],[DATEMODIFIED],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[TEMPLATEID],[CONDITIONDESCRIPTION],[TRANSITIONTYPE],[LINKEDPARENTID],[LINKEDPARENTIDOLD],[CONDITIONPARENTID],[RETURNVALUE],[HASPREEVENT],[HASPOSTEVENT],[ALLOWEDROLES],[DENIEDROLES],[ALLOWEDUSERS],[DENIEDUSERS])
VALUES(@TransitionIdSCName,NULL,'HBShipmentOrders','HBShipmentOrdersCreatedState','HBShipmentOrdersCreatedState','ListAssHouseBillsinShipment','select',NULL,NULL,NULL,NULL,NULL,GetDate(),GetDate(),NULL,NULL,NULL,NULL,NULL,'NT',NULL,NULL,NULL,-2,NULL,NULL,',MCMAdmin,,SiteAdminMCM,',NULL,NULL,NULL)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'ShippingAgent',1)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'PrincipalShippingAgent',1)

set @TransitionIdSCName = @TransitionIdSCName +1;
INSERT INTO [WORKFLOWTRANSITIONS] ([TRANSITIONID],[TRANSITIONIDOLD],[DATAPROFILECLASSID],[FROMSTATEID],[TOSTATEID],[SERVICEACTIONID],[SERVICEACTIONTYPE],[DESCRIPTION],[SEQUENCE],[STATEID],[CREATEDBY],[PERMISSIONTOKEN],[DATECREATED],[DATEMODIFIED],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[TEMPLATEID],[CONDITIONDESCRIPTION],[TRANSITIONTYPE],[LINKEDPARENTID],[LINKEDPARENTIDOLD],[CONDITIONPARENTID],[RETURNVALUE],[HASPREEVENT],[HASPOSTEVENT],[ALLOWEDROLES],[DENIEDROLES],[ALLOWEDUSERS],[DENIEDUSERS])
VALUES(@TransitionIdSCName,NULL,'HBShipmentOrders','HBShipmentOrdersCreatedState','HBShipmentOrdersCreatedState','SaveAssHouseBillsinShipment','select',NULL,NULL,NULL,NULL,NULL,GetDate(),GetDate(),NULL,NULL,NULL,NULL,NULL,'NT',NULL,NULL,NULL,-2,NULL,NULL,',MCMAdmin,,SiteAdminMCM,',NULL,NULL,NULL)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'ShippingAgent',1)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'PrincipalShippingAgent',1)

set @TransitionIdSCName = @TransitionIdSCName +1;
INSERT INTO [WORKFLOWTRANSITIONS] ([TRANSITIONID],[TRANSITIONIDOLD],[DATAPROFILECLASSID],[FROMSTATEID],[TOSTATEID],[SERVICEACTIONID],[SERVICEACTIONTYPE],[DESCRIPTION],[SEQUENCE],[STATEID],[CREATEDBY],[PERMISSIONTOKEN],[DATECREATED],[DATEMODIFIED],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[TEMPLATEID],[CONDITIONDESCRIPTION],[TRANSITIONTYPE],[LINKEDPARENTID],[LINKEDPARENTIDOLD],[CONDITIONPARENTID],[RETURNVALUE],[HASPREEVENT],[HASPOSTEVENT],[ALLOWEDROLES],[DENIEDROLES],[ALLOWEDUSERS],[DENIEDUSERS])
VALUES(@TransitionIdSCName,NULL,'HBShipmentOrders','HBShipmentOrdersCreatedState','HBShipmentOrdersCreatedState','DisHouseBillsinShipment','select',NULL,NULL,NULL,NULL,NULL,GetDate(),GetDate(),NULL,NULL,NULL,NULL,NULL,'NT',NULL,NULL,NULL,-2,NULL,NULL,',MCMAdmin,,SiteAdminMCM,',NULL,NULL,NULL)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'ShippingAgent',1)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'PrincipalShippingAgent',1)

set @TransitionIdSCName = @TransitionIdSCName +1;
INSERT INTO [WORKFLOWTRANSITIONS] ([TRANSITIONID],[TRANSITIONIDOLD],[DATAPROFILECLASSID],[FROMSTATEID],[TOSTATEID],[SERVICEACTIONID],[SERVICEACTIONTYPE],[DESCRIPTION],[SEQUENCE],[STATEID],[CREATEDBY],[PERMISSIONTOKEN],[DATECREATED],[DATEMODIFIED],[MODIFIEDBY],[OWNERORGID],[OWNERLOCID],[TEMPLATEID],[CONDITIONDESCRIPTION],[TRANSITIONTYPE],[LINKEDPARENTID],[LINKEDPARENTIDOLD],[CONDITIONPARENTID],[RETURNVALUE],[HASPREEVENT],[HASPOSTEVENT],[ALLOWEDROLES],[DENIEDROLES],[ALLOWEDUSERS],[DENIEDUSERS])
VALUES(@TransitionIdSCName,NULL,'HBShipmentOrders','HBShipmentOrdersCreatedState','HBShipmentOrdersCreatedState','ListHouseBillsinShipment','select',NULL,NULL,NULL,NULL,NULL,GetDate(),GetDate(),NULL,NULL,NULL,NULL,NULL,'NT',NULL,NULL,NULL,-2,NULL,NULL,',MCMAdmin,,SiteAdminMCM,',NULL,NULL,NULL)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'ShippingAgent',1)
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@TransitionIdSCName,'PrincipalShippingAgent',1)



---SP's

---Created on 15/05/2017 --To insert Journeyoutes and remarks hoistory ---CR No.303 and as well as in export journey insertion in ammend action 
CREATE PROCEDURE SP_JourneyRouteRemarks(@JourneyId BIGINT,@ECSID INT=NULL,@EXCSID INT=NULL,@CSID INT=NULL,@USerID varchar(50),@PersonalId INT,@JStateId varchar(50),@Remarks varchar(512),@OrgID INT,@ActionId Varchar(50)=null)
AS BEGIN 
Declare @ExpJrnId BIGINT
--INSERT INTO JourneyRoutes values ( NEXT VALUE FOR SEQ_JourneyRouteId,@JourneyId,@CSID,GETDATE(),@USerID,null,null,null,@OrgID,'JourneyRoutesCreatedState',NULL,@ECSID,@EXCSID)
if @JStateId<>'NOT'
INSERT INTO JourneyCSRemarksHistory values ( NEXT VALUE FOR SEQ__JourneyCSRemarksHistoryId,@JourneyId,@ECSID,@EXCSID,@PersonalId,@CSID,@JStateId,@Remarks,GETDATE(),@USerID,'JourneyCSRemarksHistoryCreatedtate')
IF @ActionId='AmendJourney'
BEGIN
IF((select COUNT(JourneyId) from Journeys where RefJourneyId=@JourneyId)>0)
set @ExpJrnId=(select JourneyId from Journeys where RefJourneyId=@JourneyId)
BEGIN
---1 updating in export jounreys
UPDATE Journeys set OwnerCSId=@EXCSID,EntryCustomsStationId=@ECSID,ExitCustomsStationId=@EXCSID,CustomStationId=@CSID where JourneyId=@ExpJrnId
IF @CSID IS NOT NULL
UPDATE Journeys set OwnerCSId=@CSID where JourneyId=@ExpJrnId
---2 updaing in journey routes
--IF @CSID IS NULL
--BEGIN 
--IF((SELECT COUNT(JourneyRouteId) FROM JourneyRoutes where JourneyId=@ExpJrnId and EntryCSId=@ECSID and ExitCSId=@EXCSID)=0)
--INSERT INTO JourneyRoutes VALUES ( NEXT VALUE FOR SEQ_JourneyRouteId,@ExpJrnId,@CSID,GETDATE(),@USerID,null,null,null,@OrgID,'JourneyRoutesCreatedState',NULL,@ECSID,@EXCSID)
--END
--ELSE 
--BEGIN
--IF((SELECT COUNT(JourneyRouteId) FROM JourneyRoutes where JourneyId=@ExpJrnId and CSId=12)=0)
--INSERT INTO JourneyRoutes VALUES ( NEXT VALUE FOR SEQ_JourneyRouteId,@ExpJrnId,@CSID,GETDATE(),@USerID,null,null,null,@OrgID,'JourneyRoutesCreatedState',NULL,@ECSID,@EXCSID)
--END
---3&4 updating in containers and vehicles
UPDate Containers set OwnerCSId=@EXCSID WHERE  RefType='Journeys' AND RefId=@ExpJrnId AND ContainerId NOT IN(SELECT ContainerId from HBContainerItems)
UPDate Vehicles set OwnerCSId=@EXCSID WHERE JourneyId=@ExpJrnId  AND VehicleId NOT IN(SELECT VehicleId FROM HBVehicleItems)
END
END
END

---Permissions for KTM in shipmentorder export BL
declare @transitionid int 
select @transitionid=TRANSITIONID from [WORKFLOWTRANSITIONS] where serviceActionid='ListAssHouseBillsinShipment'
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@transitionid,'KTM',1)
select @transitionid=TRANSITIONID from [WORKFLOWTRANSITIONS] where serviceActionid='SaveAssHouseBillsinShipment'
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@transitionid,'KTM',1)
select @transitionid=TRANSITIONID from [WORKFLOWTRANSITIONS] where serviceActionid='DisHouseBillsinShipment'
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@transitionid,'KTM',1)
select @transitionid=TRANSITIONID from [WORKFLOWTRANSITIONS] where serviceActionid='ListHouseBillsinShipment'
INSERT INTO [WorkflowRolesPermissions] ([TRANSITIONID],[ROLEID],[ALLOWED])VALUES(@transitionid,'KTM',1)
