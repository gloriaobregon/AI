Select a.* from 
(Select 
'N/A' as [Fault or Recovery or Claimant or Metric Name],
'N/A' as [Age or Active Repairer],
CASE WHEN  [Salvage appointed] IS NOT NULL THEN 'Salvage' ELSE 'Recovery' END as [Claim Status or Recovery Type or Assessment Type],
'Recovery Rate' as [Data Point],
[Consolidator] as [Consolidator],
[Client] as [Client],
[Claim Number] as [Claim Number],
[Claim Sign Off] as [Date],
[Recovered] as [Payment or Recovered Amount or Metric Value or Estimate],
[Demand Amount] as [Demand Amount or Client Cost or Repairs Invoiced]



from [CDS.E13 #14]

where [Claim Sign Off] IS NOT NULL
AND DATEDIFF(month,[Claim Sign Off],EOMONTH(dateadd(m,-1,getdate()))) <=11
AND DATEDIFF(month,[Claim Sign Off],EOMONTH(dateadd(m,-1,getdate()))) >= 0 ) a

where a.[Claim Status or Recovery Type or Assessment Type] = 'Recovery'



