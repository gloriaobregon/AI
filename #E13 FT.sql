Select 
[Incident Code Group],
[Client Cost inc tax] as [Demand Amount or Client Cost or Repairs Invoiced],
[Consolidator] as [Consolidator],
[Client] as [Client],
[Claim Number] as [Claim Number],
[Report Date] as [Date],
[Status] as [Claim Status or Recovery Type or Assessment Type],
[Incident Code] as [Incident Code or Repairer Name],
CASE WHEN [Fault] =  'L' THEN  'Liable'
WHEN [Fault] =  'R' THEN 'Recoverable'
WHEN [Fault] = 'U' THEN  'Undetermined' ELSE 'Undetermined' END as [Fault or Recovery or Claimant or Metric Name],
[Vehicle Registration] as [Vehicle Registration],
[All Payments inc tax] as [Payment or Recovered Amount or Metric Value or Estimate],

CASE WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 180 THEN '180+ days'

WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 120 THEN '120-180 days'

WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 90 THEN '90-120 days'

WHEN datediff(day, [Report Date], EOMONTH(GETDATE(), -1)) > 60 THEN '60-90 days'

ELSE '< 60 days'

END as [Age or Active Repairer],

CAST('Claims' AS nvarchar(255)) as [Data Point],


CASE WHEN CHARINDEX('Cleanaway', [Consolidator]) > 0 AND
    (CHARINDEX('liquids', lower([Cost Centre 1])) > 0 
    OR CHARINDEX('industrial', lower([Cost Centre 1])) > 0)
THEN 'Liquids & Industrial Services'

WHEN CHARINDEX('Cleanaway', [Consolidator]) > 0 AND
    CHARINDEX('solids', lower([Cost Centre 1])) > 0
THEN 'Solids'

WHEN [Business Unit] IS NULL AND
CHARINDEX('heavy vehicles', [Client]) > 0
THEN 'Other Heavy'

WHEN CHARINDEX('Cleanaway', [Consolidator]) > 0 AND
    CHARINDEX('solids', lower([Business Unit])) > 0
THEN 'Solids'

WHEN CHARINDEX('Cleanaway', [Consolidator]) > 0 AND
CHARINDEX('vic metro', lower([Cost Centre 1])) > 0
THEN 'VIC Metro Municipal Services'

WHEN CHARINDEX('Abbott Australasia', [Business Unit]) > 0 AND
CHARINDEX('novated', [Business Unit]) > 0
THEN 'Novated'

WHEN CHARINDEX('Abbott Australasia', [Business Unit]) > 0 AND
CHARINDEX('tool of trade', [Business Unit]) > 0
THEN 'Tool of Trade'

WHEN CHARINDEX('Coles Online', [Client]) > 0 AND
(CHARINDEX('Coles', [Consolidator]) > 0 OR
CHARINDEX('Wesfarmers', [Consolidator]) > 0)
THEN 'Coles Online'

WHEN CHARINDEX('Coles Trailers', [Client]) > 0 AND
(CHARINDEX('Coles', [Consolidator]) > 0 OR
CHARINDEX('Wesfarmers', [Consolidator]) > 0)
THEN 'Coles Trailers'

WHEN CHARINDEX('Coles/Bilo', [Client]) > 0
THEN 'Coles Supermarkets'

WHEN (CHARINDEX('Wesfarmers', [Consolidator]) > 0 OR 
CHARINDEX('Coles', [Consolidator]) > 0)
AND (CHARINDEX('Liquor Group', [Client]) > 0 OR 
    CHARINDEX('Coles Express', [Client]) > 0)
THEN 'Coles Supermarkets'

WHEN CHARINDEX('Coles', [Consolidator]) > 0 OR
CHARINDEX('Wesfarmers', [Consolidator]) > 0
THEN [Client]

WHEN CHARINDEX('Ausnet Electricity', [Business Unit]) > 0 
THEN 'Electricity Services'

WHEN CHARINDEX('Ausnet Transmission', [Business Unit]) > 0 
THEN 'Transmission'

WHEN CHARINDEX('Australia Post', [Consolidator]) > 0
THEN [Client]

WHEN [Business Unit] IS NULL
THEN 'Unknown'

ELSE [Business Unit]


END as [Business Unit or Network Flag]


FROM [FT.FT]

where  [Client] IS NOT NULL