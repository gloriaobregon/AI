-- [ADP Sick leave] ------
Select 
[First Name],
[Surname],
[Date Hired],
[Date of Birth],
--[Emp Cat],
---[Employee Name],
[Employment Type],
[Location],
[Gender],
[Normal Hours Paid],
[ADP Leave Balance].[Report Date],
[Termination Date],
[Leave Type],
[Unknown Leave],
[Unplanned - Unpaid],
[Planned - Paid],
[Planned - Unpaid],
[Unplanned - Paid],
[Unpaid],
[Unplanned],
[Preceded by P/H],
[Preceded by W/E],
[From Date],
[To Date],
[Followed by P/H],
[Followed by W/E],
[Manager Name],
[Business Area Detail],


CASE WHEN CHARINDEX('Assessing', [Business Area Detail]) > 0 
THEN 'Assessing'

WHEN [Business Area Detail] = 'Reporting' 
OR [Business Area Detail] = 'Finance' THEN 'Finance'

WHEN CHARINDEX('Supply Chain', [Business Area Detail]) > 0 THEN 'Other Operations'

ELSE [Business Area Detail]

END
as [Business Area]

from
(

    
    Select * from

(SELECT  ROW_NUMBER() OVER(PARTITION BY 
    [First Name],
    [Surname],
    [Full Name],
    [Report Date]
 ORDER BY 
    [Report Date]) as [rn],

[Full Name],
[First Name],
[Surname],
[Date Hired],
[Date of Birth],
--[Emp Cat],
[EMP_CODE] as [Code],
---[Employee Name],
[Employment Type],
[Gender],
[Line Manager],
[Location],
[Normal Hours Paid],
[Report Date],
[Termination Date],
[Termination Reason],
MAX([Annual Leave Balance]) as [Annual Leave Balance],
MAX([Sick Leave Balance]) as [Sick Leave Balance],
MAX([Long Service Leave Balance]) as [Long Service Leave Balance], 
[Termination Type],
---- [Business Area Detail] from  ADP Leave Balance STEP ---
CASE WHEN CHARINDEX('AMEDURI, Alicia', [Line Manager]) > 0
THEN 'HR'
WHEN CHARINDEX('SOMERTON, Therese', [Line Manager]) > 0
THEN 'MTP'
WHEN CHARINDEX('DI CESARE, Raffaella', [Line Manager]) > 0
OR [Full Name] = 'Raffaella Di Cesare'
THEN 'Supply Chain / Builders Warranty'

WHEN CHARINDEX('BACHORZ, Pavla', [Line Manager]) > 0
OR CHARINDEX('NGUYEN, Khoa', [Line Manager]) > 0
OR CHARINDEX('MIHAILIDIS, Georgia', [Line Manager]) > 0
OR CHARINDEX('MIRABITO, Gabriella', [Line Manager]) > 0
OR CHARINDEX('HARMER, Kylie', [Line Manager]) > 0
OR CHARINDEX('RICHARDSON, Luke', [Line Manager]) > 0
OR CHARINDEX('VAIDYA, Maun', [Line Manager]) > 0
OR [Full Name] = 'Stavroula Kalantzis'
THEN 'Claims'

WHEN [Full Name]= 'Awad Dabit'
    OR [Full Name] = 'Darryl Beasley'
THEN 'Assessing Suncorp'

WHEN [Full Name]= 'Fady Tadros'
    OR [Full Name] = 'Michael Berka'
    OR [Full Name] = 'Peter Armstrong'
    OR [Full Name] = 'Michael Berka'
    OR [Full Name] = 'Brian Morris'
    OR [Full Name] = 'Steve Kouis'
    OR [Full Name] = 'Sokha Yean'
    OR [Full Name] = 'Katrina Zaki'
    OR [Full Name] = 'Bradley Henniker'
THEN 'Assessing Fleet & Insurance'

WHEN CHARINDEX('MONTGOMERY, Peter', [Line Manager]) > 0 
    OR [Full Name] = 'Peter Montgomery' 
THEN 'Assessing Suncorp'

WHEN CHARINDEX('BURKE, Steven', [Line Manager]) > 0
OR CHARINDEX('SMITH, David', [Line Manager]) > 0
THEN 'Business Systems'

WHEN CHARINDEX('GRAY, Simon', [Line Manager]) > 0
OR CHARINDEX('READ, Neville', [Line Manager]) > 0
THEN 'Finance'

WHEN CHARINDEX('KAPADIA, Tushar', [Line Manager]) > 0
THEN 'Reporting'

WHEN [Full Name] = 'James White'
OR [Full Name] = 'Sandy Ho'
OR [Full Name] = 'Jeremy Wilson'
THEN 'Business Development'

WHEN CHARINDEX('SCHNEHAGE, Drew', [Line Manager]) > 0
OR [Full Name] = 'Drew Schnehage'
THEN 'Executive Team'

ELSE '***Error Please Check'

END as [Business Area Detail]




 ---------- **ADP Payroll** + **Clean 1** -------------
 -- New Columns: [Surname],[Full Name],[First Name] (from **ADP Leave Balance**)
 --              [Termination Type] (from **Clean 1**)
FROM
(SELECT 
[AL_TOTAL] as [Annual Leave Balance],
[Cost Centre(s)] as [Cost Centre(s)],
[Hire Date] as [Date Hired],
[Date of Birth] as [Date of Birth],
--[Emp Cat] as [Emp Cat],
[EMP_CODE] as [EMP_CODE],
[Employee Name] as [Employee Name],
[Emp Category Desc] as [Employment Type],
CASE WHEN [Sex] ='F' THEN 'Female' ELSE 'Male' END as [Gender],
[Manager Name] as [Line Manager],
[Location] as [Location],
[LS_TOTAL] as [Long Service Leave Balance],
[normal hours] as [Normal Hours Paid],
[Report Date] as [Report Date],
[SL_TOTAL] as [Sick Leave Balance],
[Term Date] as [Termination Date],
--- [Termination Reason] from [Term Rsn]---
CASE WHEN [Term Rsn] = 'B'
OR [Term Rsn] = 'Redundancy' 
    THEN 'Redundancy'
WHEN [Term Rsn] = 'R'
OR [Term Rsn] = 'Resigned' 
    THEN 'Resigned'
WHEN [Term Rsn] = 'D' 
    THEN 'Deceased'
WHEN [Term Rsn] = 'E' 
    THEN 'End of Contract'
WHEN [Term Rsn] =  'M' 
    THEN 'Misconduct'
WHEN [Term Rsn] = 'N' 
    THEN 'Reinstate'
WHEN [Term Rsn] = 'T' 
    THEN 'Transferred to another company'
WHEN [Term Rsn] = 'Dismissal' 
    THEN 'Dismissal'
WHEN [Term Rsn] IS NULL
    THEN ''
ELSE '**** New Code ****'
END  as [Termination Reason],
--- [Termination Type] from [Term Rsn]---
CASE WHEN [Term Rsn] = 'R'
OR [Term Rsn] = 'Resigned' THEN 'Voluntary'
WHEN [Term Rsn] IS NULL THEN ''
ELSE 'Involuntary' END 
as [Termination Type],
-------- First Name and Last Name ------
LEFT([Employee Name],CHARINDEX (',',[Employee Name])-1) as [Surname] ,
-- MR or MRS --
CASE WHEN RIGHT([Employee Name],2) = 'MR' OR RIGHT([Employee Name],2) = 'RS' THEN
TRIM(substring([Employee Name], CHARINDEX (',',[Employee Name])+ 2,CHARINDEX ('MR',[Employee Name]) - CHARINDEX (',',[Employee Name]) - 2))
-- MISS --
WHEN RIGHT([Employee Name],2) = 'SS' THEN
TRIM(substring([Employee Name], CHARINDEX (',',[Employee Name])+ 2,CHARINDEX ('MISS',[Employee Name]) - CHARINDEX (',',[Employee Name]) - 2))
-- MS -- 
WHEN RIGHT([Employee Name],2) = 'MS'  THEN
TRIM(substring([Employee Name], CHARINDEX (',',[Employee Name])+ 2,CHARINDEX ('MS',[Employee Name]) - CHARINDEX (',',[Employee Name]) - 2))
-- Else (Split by ',') --
ELSE
TRIM(SUBSTRING([Employee Name], CHARINDEX (',',[Employee Name])+ 2,LEN([Employee Name]))) END as [First Name],

--- FULL Name -- 
CASE WHEN RIGHT([Employee Name],2) = 'MR' OR RIGHT([Employee Name],2) = 'RS' THEN

CONCAT(TRIM(substring([Employee Name], CHARINDEX (',',[Employee Name])+ 2,CHARINDEX ('MR',[Employee Name]) - CHARINDEX (',',[Employee Name]) - 2)), ' ', LEFT([Employee Name],CHARINDEX (',',[Employee Name])-1)  )

WHEN RIGHT([Employee Name],2) = 'SS' THEN
CONCAT(TRIM(substring([Employee Name], CHARINDEX (',',[Employee Name])+ 2,CHARINDEX ('MISS',[Employee Name]) - CHARINDEX (',',[Employee Name]) - 2)), ' ', LEFT([Employee Name],CHARINDEX (',',[Employee Name])-1)  )

WHEN RIGHT([Employee Name],2) = 'MS'  THEN
CONCAT(TRIM(substring([Employee Name], CHARINDEX (',',[Employee Name])+ 2,CHARINDEX ('MS',[Employee Name]) - CHARINDEX (',',[Employee Name]) - 2)), ' ', LEFT([Employee Name],CHARINDEX (',',[Employee Name])-1)  )


ELSE CONCAT( TRIM(SUBSTRING([Employee Name], CHARINDEX (',',[Employee Name])+ 2,LEN([Employee Name]))),' ', LEFT([Employee Name],CHARINDEX (',',[Employee Name])-1)  )

END as [Full Name]


FROM [CDS.38 Payroll Table]


) clean1



GROUP BY 
[Annual Leave Balance],
[Cost Centre(s)],
[Date Hired],
[Date of Birth],
--[Emp Cat],
[Employee Name],
[EMP_CODE],
[Employment Type],
[Gender],
[Line Manager],
[Location],
[Long Service Leave Balance],
[Normal Hours Paid],
[Report Date],
[Sick Leave Balance],
[Termination Date],
[Termination Reason],
[Full Name],
[First Name],
[Surname],
[Termination Type],
--[Business Area Detail]-- 
CASE WHEN CHARINDEX('AMEDURI, Alicia', [Line Manager]) > 0
THEN 'HR'
WHEN CHARINDEX('SOMERTON, Therese', [Line Manager]) > 0
THEN 'MTP'
WHEN CHARINDEX('DI CESARE, Raffaella', [Line Manager]) > 0
OR [Full Name] = 'Raffaella Di Cesare'
THEN 'Supply Chain / Builders Warranty'

WHEN CHARINDEX('BACHORZ, Pavla', [Line Manager]) > 0
OR CHARINDEX('NGUYEN, Khoa', [Line Manager]) > 0
OR CHARINDEX('MIHAILIDIS, Georgia', [Line Manager]) > 0
OR CHARINDEX('MIRABITO, Gabriella', [Line Manager]) > 0
OR CHARINDEX('HARMER, Kylie', [Line Manager]) > 0
OR CHARINDEX('RICHARDSON, Luke', [Line Manager]) > 0
OR CHARINDEX('VAIDYA, Maun', [Line Manager]) > 0
OR [Full Name] = 'Stavroula Kalantzis'
THEN 'Claims'

WHEN [Full Name]= 'Awad Dabit'
    OR [Full Name] = 'Darryl Beasley'
THEN 'Assessing Suncorp'

WHEN [Full Name]= 'Fady Tadros'
    OR [Full Name] = 'Michael Berka'
    OR [Full Name] = 'Peter Armstrong'
    OR [Full Name] = 'Michael Berka'
    OR [Full Name] = 'Brian Morris'
    OR [Full Name] = 'Steve Kouis'
    OR [Full Name] = 'Sokha Yean'
    OR [Full Name] = 'Katrina Zaki'
    OR [Full Name] = 'Bradley Henniker'
THEN 'Assessing Fleet & Insurance'

WHEN CHARINDEX('MONTGOMERY, Peter', [Line Manager]) > 0 
    OR [Full Name] = 'Peter Montgomery' 
THEN 'Assessing Suncorp'

WHEN CHARINDEX('BURKE, Steven', [Line Manager]) > 0
OR CHARINDEX('SMITH, David', [Line Manager]) > 0
THEN 'Business Systems'

WHEN CHARINDEX('GRAY, Simon', [Line Manager]) > 0
OR CHARINDEX('READ, Neville', [Line Manager]) > 0
THEN 'Finance'

WHEN CHARINDEX('KAPADIA, Tushar', [Line Manager]) > 0
THEN 'Reporting'

WHEN [Full Name] = 'James White'
OR [Full Name] = 'Sandy Ho'
OR [Full Name] = 'Jeremy Wilson'
THEN 'Business Development'

WHEN CHARINDEX('SCHNEHAGE, Drew', [Line Manager]) > 0
OR [Full Name] = 'Drew Schnehage'
THEN 'Executive Team'

ELSE '***Error Please Check'

END) b

where [rn] = 1

) as [ADP Leave Balance]
--[First Name],
--[Surname],



INNER JOIN
(
SELECT 
[Report Date] as [Report Date],
[Unpaid] as [Unpaid],
[Unplanned] as [Unplanned],
[Leave Type] as [Leave Type],
[Emp Code] as [Emp Code],
[Name] as [Name],
[Preceded by P/H] as [Preceded by P/H],
[Preceded by W/E] as [Preceded by W/E],
[From Date] as [From Date],
[To Date] as [To Date],
[Followed by P/H] as [Followed by P/H],
[Followed by W/E] as [Followed by W/E],
[Manager Name] as [Manager Name],

CASE WHEN [Unplanned] ='Y' AND [Unpaid] ='Y' THEN [Total]
ELSE 0 END as [Unplanned - Unpaid],

CASE WHEN [Unplanned] ='Y' AND [Unpaid] ='N' THEN [Total]
ELSE 0 END as [Unplanned - Paid],

CASE WHEN [Unplanned] ='N' AND [Unpaid] ='Y' THEN [Total]
ELSE 0 END as [Planned - Unpaid],

CASE WHEN [Unplanned] ='N' AND [Unpaid] ='N' THEN [Total]
ELSE 0 END as [Planned - Paid],

CASE WHEN [Unplanned] IS NULL AND [Unpaid] IS NULL THEN [Total]
ELSE 0 END as [Unknown Leave]

from
(SELECT *,
CASE WHEN 
CHARINDEX('Sick', [Leave Type]) > 0 
	OR CHARINDEX('Bereavement', [Leave Type]) > 0
    OR CHARINDEX('Compassion', [Leave Type]) > 0
	OR CHARINDEX('Carers', [Leave Type]) > 0
    OR CHARINDEX('WorkCover', [Leave Type]) > 0 THEN 'Y' ELSE 'N' END as [Unplanned],
CASE WHEN 
CHARINDEX('unpaid', lower([Leave Type])) > 0 OR
CHARINDEX('no pay', lower([Leave Type])) > 0 OR
CHARINDEX('lwop', lower([Leave Type])) > 0 THEN 'Y' ELSE 'N' END as [Unpaid],
DATEADD(MONTH, DATEDIFF(MONTH, -1, [From Date]), -1) as [Report Date]
from [CDS.38 Sick leave Table]) as a 
) [ADP Sick Leave]

on [ADP Sick Leave].[Report Date] = [ADP Leave Balance].[Report Date]
and  [ADP Sick Leave].[Emp Code] = [ADP Leave Balance].[Code]








