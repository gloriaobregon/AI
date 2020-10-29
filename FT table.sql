DROP table if exists [FT.FT]
CREATE TABLE [FT.FT] (
    [Consolidator] nvarchar(255),
    [Client] nvarchar(255),
    [Claim Number] nvarchar(255),
    [Client Cost inc tax] decimal(14,2),
    [Report Date] datetime,
    [Status] nvarchar(255),
    [Tech Sign Off] datetime,
    [Last Reopen Date] nvarchar(255),
    [Reopen Reason] nvarchar(255),
    [Excess] decimal(14,2),
    [SentTo Insurer] nvarchar(255),
    [Cost Centre 1] nvarchar(255),
    [Cost Centre 2] nvarchar(255),
    [Business Unit] nvarchar(255),
    [PIN] nvarchar(255),
    [Driver PIN] nvarchar(255),
    [Employee ID] nvarchar(255),
    [Operating Arm] nvarchar(255),
    [Department] nvarchar(255),
    [Catastrophe Date] datetime,
    [Incident Date] datetime,
    [Incident Time] nvarchar(255),
    [Incident State] nvarchar(255),
    [Incident PostCode] nvarchar(255),
    [Incident Code] nvarchar(255),
    [Fault] nvarchar(255),
    [Damage Code] nvarchar(255),
    [Damage Description] nvarchar(255),
    [Purpose of Trip] nvarchar(255),
    [Vehicle Registration] nvarchar(255),
    [Vehicle Make] nvarchar(255),
    [Vehicle Model] nvarchar(255),
    [Lease Type] nvarchar(255),
    [Drivable] nvarchar(255),
    [Driver First Name] nvarchar(255),
    [Driver Last Name] nvarchar(255),
    [Insurer Cost] decimal(14,2),
    [Recovered] decimal(14,2),
    [Recovered inc tax] decimal(14,2),
    [Client Cost] decimal(14,2),
    [All Payments] decimal(14,2),
    [All Payments inc tax] decimal(14,2),
    [All Receipts] decimal(14,2),
    [Client Outstanding] decimal(14,2),
    [TP Involvement] nvarchar(255),
    [Injuries] nvarchar(255),
    [Total Loss] nvarchar(255),
    [Client Repairer] nvarchar(255),
    [Repairs Authorised inc tax] decimal(14,2),
    [Repairs Invoiced inc tax] decimal(14,2),
    [Estimate inc tax] decimal(14,2),
    [Client Vehicle Assessor] nvarchar(255),
    [Assessed inc tax] decimal(14,2),
    [LOD Sent] nvarchar(255),
    [Initial LOD Date] nvarchar(255),
    [Demand Amount] decimal(14,2),
    [Recovery Status] nvarchar(255),
    [Repairs N/R] nvarchar(255),
    [Closed Date] nvarchar(255),
    [Incident Code Group] nvarchar(255),
    [Driver Inattention Flag] nvarchar(255)
)


----------------------- [FT.Claim] create
DROP TABLE IF exists [FT.Claim];
Create table [FT.Claim](
[Business Unit] nvarchar(255),
[Catastrophe Date] DATE,
[Cost Centre 1] nvarchar(255),
[Cost Centre 2] nvarchar(255),
[Claim Number] nvarchar(255),
[Client] nvarchar(255),
[Closed Date] DATE,
[Department] nvarchar(255),
[Employee ID] nvarchar(255),
[Excess] decimal(14,2),
[Last Reopen Date] DATE,
[Reopen Reason] nvarchar(255),
[Report Date] DATE,
[SentTo Insurer] DATE,
[Status] nvarchar(255),
[Tech Signoff] DATE,
[Operating Arm] nvarchar(255),
[PIN] nvarchar(255)
)

----------------- [FT.Incident] create
DROP TABLE IF exists [FT.Incident];

Create table [FT.Incident](
[Damage Code] nvarchar(255),
[Damage Description] nvarchar(255),
[Fault] nvarchar(255),
[Incident Code] nvarchar(255),
[Incident Date] DATE,
[Incident PostCode] nvarchar(255),
[Incident State] nvarchar(255),
[Incident Time] nvarchar(255),
[Purpose of Trip] nvarchar(255),
[Injuries] nvarchar(255),
[TP Involvement] nvarchar(255)
)


----------------- [FT.Vehicle] create
DROP TABLE IF exists [FT.Vehicle];

Create table [FT.Vehicle](
[Lease Type] nvarchar(255),
[Vehicle Make] nvarchar(255),
[Vehicle Model] nvarchar(255),
[Vehicle Registration] nvarchar(255),
[Drivable] nvarchar(255),


)


----------------- [FT.Driver] create
DROP TABLE IF exists [FT.Driver];

Create table [FT.Driver](
[Driver First Name] nvarchar(255),
[Driver Last Name] nvarchar(255),
[Driver PIN] nvarchar(255)


)



----------------- [FT.Financial] create
DROP TABLE IF exists [FT.Financial];

Create table [FT.Financial](
[All Payments inc tax] decimal(14,2),
[All Payments] decimal(14,2),
[Client Cost] decimal(14,2),
[Client Outstanding] decimal(14,2),
[Insurer Cost] decimal(14,2),
[Recovered] decimal(14,2),
[Recovered inc tax] decimal(14,2),

)



----------------- [FT.Recoveries] create
DROP TABLE IF exists [FT.Recoveries];

Create table [FT.Recoveries](
[Demand Amount] decimal(14,2),
[Initial LOD Date] nvarchar(255),
[LOD Sent] nvarchar(255),
[Recovery Status] nvarchar(255)

)

----------------- [FT.Repairs] create
DROP TABLE IF exists [FT.Repairs];

Create table [FT.Repairs](
[Repairs N/R] nvarchar(255),
[Client Repairer] nvarchar(255),
[Estimate inc tax] decimal(14,2),
[Repairs Authorised inc tax] decimal(14,2),
[Repairs Invoiced inc tax] decimal(14,2)

)



----------------- [FT.Assessment] create
DROP TABLE IF exists [FT.Assessment];

Create table [FT.Assessment](
[Assessed inc tax] decimal (10,2),
[Client Vehicle Assessor] nvarchar(255),
[Total Loss] nvarchar(255)
)
--------------------------------------- Exceute SQL task -----------------------------------------------------------

--- Update the [Incident State]
--- Truncate the sub tables

Truncate table [FT.Claim];
Truncate table [FT.Incident]; 
Truncate table [FT.Vehicle];
Truncate table [FT.Driver];
Truncate table [FT.Financial];
Truncate table [FT.Recoveries];
Truncate table [FT.Repairs];
Truncate table [FT.Assessment];


Update [FT.FT]
SET [Incident State] = 
CASE WHEN [Incident State]= '6167'
OR [Incident State]= '6147'
THEN 'WA'
WHEN [Incident State]= 'coomNSW'
THEN 'NSW'
WHEN [Incident State]= 'Perth'
THEN 'WA'
WHEN [Incident State]= 'TASMANIA'
THEN 'TAS'
WHEN [Incident State]= 'VICTORIA'
THEN 'VIC'
WHEN [Incident State]= 'WESTERN AUSTRALIA'
THEN 'WA'
WHEN [Incident State]= 'UNKNOWN'
THEN NULL
ELSE [Incident State]
END


-----------------------------------------Data flow task 2 ------------------------------------------------





-------------------- [FT.Claim] select
SELECT
[Business Unit] as  [Business Unit] ,
[Catastrophe Date] as  [Catastrophe Date] ,
[Cost Centre 1] as  [Cost Centre 1] ,
[Cost Centre 2] as  [Cost Centre 2] ,
[Claim Number] as  [Claim Number] ,
[Client] as  [Client] ,
[Closed Date] as  [Closed Date] ,
[Department] as  [Department] ,
[Employee ID] as  [Employee ID] ,
[Excess] as  [Excess] ,
[Last Reopen Date] as  [Last Reopen Date] ,
[Reopen Reason] as  [Reopen Reason] ,
[Report Date] as  [Report Date] ,
[SentTo Insurer] as  [SentTo Insurer] ,
[Status] as  [Status] ,
[Tech Signoff] as  [Tech Signoff] ,
[Operating Arm] as  [Operating Arm] ,
[PIN] as  [PIN]

FROM [FT.FT]

----------------------- [FT.Incident] select
SELECT
[Damage Code] as  [Damage Code] ,
[Damage Description] as  [Damage Description] ,
[Fault] as  [Fault] ,
[Incident Code] as  [Incident Code] ,
[Incident Date] as  [Incident Date] ,
[Incident PostCode] as  [Incident PostCode] ,
[Incident State] as  [Incident State] ,
[Incident Time] as  [Incident Time] ,
[Purpose of Trip] as  [Purpose of Trip] ,
[Injuries] as  [Injuries] ,
[TP Involvement] as  [TP Involvement] 

FROM [FT.FT]


----------------- [FT.Vehicle] select
SELECT
[Lease Type] as  [Lease Type] ,
[Vehicle Make] as  [Vehicle Make] ,
[Vehicle Model] as  [Vehicle Model] ,
[Vehicle Registration] as  [Vehicle Registration] ,
[Drivable] as  [Drivable] 
FROM [FT.FT]


----------------- [FT.Driver] select
SELECT
[Driver First Name] as  [Driver First Name] ,
[Driver Last Name] as  [Driver Last Name] ,
[Driver PIN] as  [Driver PIN] 
FROM [FT.FT]



----------------- [FT.Financial] select
SELECT
[All Payments inc tax] as  [All Pay Inc Tax] ,
[All Payments] as  [All Payments] ,
[Client Cost] as  [Client Cost] ,
[Client Outstanding] as  [Client Outstanding] ,
[Insurer Cost] as  [Ins Costs] ,
[Recovered] as  [Recoveries] ,
[Recovered inc tax] as  [Recoveries Inc Tax]
FROM [FT.FT]



----------------- [FT.Recoveries] select
SELECT
[Demand Amount] as  [Demand Amount] ,
[Initial LOD Date] as  [Initial LOD Date] ,
[LOD Sent] as  [LOD Sent] ,
[Recovery Status] as  [Recovery Status]

FROM [FT.FT]

----------------- [FT.Repairs] select
SELECT
[Repairs N/R] as  [Repairs N/R] ,
[Client Repairer] as  [Client Repairer] ,
[Estimate inc tax] as  [Estimate inc tax] ,
[Repairs Authorised inc tax] as  [Repairs Authorised inc tax] ,
[Repairs Invoiced inc tax] as  [Repairs Invoiced inc tax]

FROM [FT.FT]

----------------- [FT.Assessment] select
SELECT
[Assessed inc tax] as  [Assessed inc tax] ,
[Client Vehicle Assessor] as  [Client Vehicle Assessor] ,
[Total Loss] as  [Total Loss] 

FROM [FT.FT]




TRUNCATE TABLE 