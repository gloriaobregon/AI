Select 
[Age or Active Repairer] as [Age or Active Repairer],
0 as [Demand Amount or Client Cost or Repairs Invoiced],
CASE WHEN  [Salvage appointed] IS NULL THEN 'Salvage' ELSE 'Recovery' END as [Claim Status or Recovery Type or Assessment Type],
CASE WHEN
[Solicitor] IS NOT NULL THEN 'Solicitor'
WHEN [Debt Recovery] IS NOT NULL THEN 'Ext Debt Rec'
WHEN [Time Payer] IS NOT NULL THEN 'Time Payer'
ELSE 'IG Recovery'
END as [Fault or Recovery or Claimant or Metric Name],

[Data Point] as [Data Point],
[Calc_Outstanding Recovery Reserve] as [Payment or Recovered Amount or Metric Value or Estimate],
[Consolidator] as [Consolidator],
[Client] as [Client],
[Claim Number] as [Claim Number],
[Report Date] as [Date]






from [CDS.E13 #14]

where [Status] = 'OPEN'
