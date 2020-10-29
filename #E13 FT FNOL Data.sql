Select 
CASE WHEN  CHARINDEX('animal', lower([Incident Code])) > 0 THEN 'Animal Strike'

WHEN  CHARINDEX('hail', lower([Incident Code])) > 0 
OR CHARINDEX('storm', lower([Incident Code])) > 0
OR CHARINDEX('flood', lower([Incident Code])) > 0
THEN 'Hail/Storm/Flood'

WHEN  CHARINDEX('hit and run', lower([Incident Code])) > 0 
OR CHARINDEX('- attempted', lower([Incident Code])) > 0
OR CHARINDEX('vandal', lower([Incident Code])) > 0
OR CHARINDEX('unrecovered', lower([Incident Code])) > 0
OR CHARINDEX('stolen', lower([Incident Code])) > 0
OR CHARINDEX('personal items', lower([Incident Code])) > 0
OR CHARINDEX('theft', lower([Incident Code])) > 0
OR CHARINDEX('fire', lower([Incident Code])) > 0
OR CHARINDEX('by pedestrian', lower([Incident Code])) > 0
THEN 'Fire / Vandalism / Theft / Hit & Run'

WHEN  CHARINDEX('load lost', lower([Incident Code])) > 0 
OR CHARINDEX('hit by object', lower([Incident Code])) > 0
THEN 'Hit by Object'

WHEN  CHARINDEX('rear', lower([Incident Code])) > 0 
THEN 'Hit Rear'

WHEN  CHARINDEX('reversing', lower([Incident Code])) > 0 
THEN 'Reversing'

WHEN  CHARINDEX('parked', lower([Incident Code])) > 0 
OR CHARINDEX('stationary', lower([Incident Code])) > 0
THEN 'Hit Stationary / Parked Vehicle'

WHEN  CHARINDEX('left road', lower([Incident Code])) > 0 
THEN 'Lost Control'

WHEN  CHARINDEX('multiple collision', lower([Incident Code])) > 0 
THEN 'Multiple Vehicle'

WHEN  CHARINDEX('diverge', lower([Incident Code])) > 0
OR CHARINDEX('fails to giveway', lower([Incident Code])) > 0
OR CHARINDEX('lanes', lower([Incident Code])) > 0 
OR CHARINDEX('kerb', lower([Incident Code])) > 0 
OR CHARINDEX('turning vehicle', lower([Incident Code])) > 0 
OR CHARINDEX('from driveway', lower([Incident Code])) > 0 
OR CHARINDEX('car door', lower([Incident Code])) > 0 
OR CHARINDEX('fails to giveway', lower([Incident Code])) > 0
OR CHARINDEX('roundabout', lower([Incident Code])) > 0 
OR CHARINDEX('red light', lower([Incident Code])) > 0 
OR CHARINDEX('right hand turn', lower([Incident Code])) > 0
OR CHARINDEX('u turn', lower([Incident Code])) > 0
OR CHARINDEX('hit pedestrian', lower([Incident Code])) > 0
THEN 'Right of Way'

WHEN  CHARINDEX('windscreen', lower([Incident Code])) > 0 
THEN 'Windscreen'

WHEN  CHARINDEX('breach', lower([Incident Code])) > 0 
THEN 'Contract Breach'

WHEN  CHARINDEX('coles trailer recovery', lower([Incident Code])) > 0 
THEN 'Client SpecWHEN ic Trailer Recovery'

WHEN  [Incident Code] = 'L3L - Miscellaneous Incident - Client at Fault' 
THEN 'Other Driver Error'

WHEN  CHARINDEX('alleged incident', lower([Incident Code])) > 0
OR CHARINDEX('tyre blowout', lower([Incident Code])) > 0 
OR CHARINDEX('old damage', lower([Incident Code])) > 0 
OR CHARINDEX('equipment fault', lower([Incident Code])) > 0
OR CHARINDEX('w4l - other', lower([Incident Code])) > 0 
OR CHARINDEX('miscellaneous', lower([Incident Code])) > 0 
OR CHARINDEX('incident details unknown', lower([Incident Code])) > 0 
OR CHARINDEX('separation', lower([Incident Code])) > 0 
OR CHARINDEX('pre-sale rect', lower([Incident Code])) > 0
OR CHARINDEX('road rage', lower([Incident Code])) > 0
OR CHARINDEX('fuel', lower([Incident Code])) > 0
OR CHARINDEX('jack-knWHEN e', lower([Incident Code])) > 0
OR CHARINDEX('rental', lower([Incident Code])) > 0
OR [Incident Code] IS NULL
THEN 'All Other Incidents'

ELSE '**Error Please Check **'
END as [Incident Code Group],


[Client Cost inc tax] as [Demand Amount or Client Cost or Repairs Invoiced],
[Incident State] as [Incident State],
[Consolidator] as [Consolidator],
[Client] as [Client],
[Claim Number] as [Claim Number],
[Report Date] as [Date],
[Status] as [Open Claim Flag],
[Cost Centre 1] as [Cost Centre 1],
[Cost Centre 2] as [Cost Centre 2],
[Business Unit] as [Business Unit],
[Incident Code] as [Incident Code],
CASE WHEN [Fault] = 'Liable' THEN 'L'
WHEN [Fault] = 'Recoverable' THEN 'R'
WHEN [Fault] = 'Undetermined' THEN 'U' ELSE 'Undetermined' END as [Fault],
[Vehicle Registration] as [Vehicle Registration],
[All Receipts] as [All Receipts],

CASE WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 180 THEN '180+ days'

WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 120 THEN '120-180 days'

WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 90 THEN '90-120 days'

WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 60 THEN '60-90 days'

ELSE '< 60 days'

END as [Age or Active Repairer],

DATEDIFF(day, [Incident Date], [Report Date]) as [Calc_Days to Lodge]



FROM [FT.FT]

where [Client] IS NOT NULL
AND CHARINDEX('white fleet',[Client]) > 0 OR CHARINDEX('green fleet',[Client]) > 0 OR [Consolidator] = 'ADICA'
AND DATEDIFF(month,[Report Date],EOMONTH(dateadd(m,-1,getdate()))) <=35
AND DATEDIFF(month,[Report Date],EOMONTH(dateadd(m,-1,getdate()))) >=0

