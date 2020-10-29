Select 
CASE WHEN
[Salvage appointed] IS NOT NULL
OR [INVOICE CODE]='C4'
THEN 'Salvage'
ELSE 'Recovery'
END as [Claim Status or Recovery Type or Assessment Type],

CASE WHEN
[Solicitor] IS NOT NULL THEN 'Solicitor'
WHEN [Debt Recovery] IS NOT NULL THEN 'Ext Debt Rec'
WHEN [Time Payer] IS NOT NULL THEN 'Time Payer'
ELSE 'IG Recovery'
END as [Fault or Recovery or Claimant or Metric Name],

'Recovered Money' as [Data Point],
[INVOICE DATE] as [Date],
[RECOVERY (* if applic#)] as [Payment or Recovered Amount or Metric Value or Estimate],
0 as [Demand Amount or Client Cost or Repairs Invoiced],
'N/A' as [Age or Active Repairer],
[Claim Number],
[Client],
[Consolidator] as [Consolidator]






from 

(Select * from [CDS.E13 #13b] a

Left JOIN

(Select [Claim Number] as [Claim Number1] ,[Claim Sign Off],
[Closed Date],
[Recovered],
[All Payments],
[All Payments inc tax],
[Demand Amount],
[Debt Recovery],
[Solicitor],
[Time Payer],
[Salvage appointed]

FROM [CDS.E13 #14]) b

on
a.[Claim Number] = b.[Claim Number1]


where 
([RECOVERY (* if applic#)] != -132402.0 
AND [RECOVERY (* if applic#)] != -433438.0 
AND [RECOVERY (* if applic#)] != -425282.0 
AND [RECOVERY (* if applic#)] != -421788.0 
AND [RECOVERY (* if applic#)] != -417316.0 
AND [RECOVERY (* if applic#)] != -374368.0 
AND [RECOVERY (* if applic#)] != -356284.0 
AND [RECOVERY (* if applic#)] != -314971.0 
AND [RECOVERY (* if applic#)] != -132402.0 
AND [RECOVERY (* if applic#)] != -390206.0 
AND [RECOVERY (* if applic#)] != -451447.0
AND [RECOVERY (* if applic#)] != 132402.0 
AND [RECOVERY (* if applic#)] != 433438.0 
AND [RECOVERY (* if applic#)] != 425282.0 
AND [RECOVERY (* if applic#)] != 421788.0 
AND [RECOVERY (* if applic#)] != 417316.0 
AND [RECOVERY (* if applic#)] != 374368.0 
AND [RECOVERY (* if applic#)] != 356284.0 
AND [RECOVERY (* if applic#)] != 314971.0 
AND [RECOVERY (* if applic#)] != 132402.0 
AND [RECOVERY (* if applic#)] != 390206.0 
AND [RECOVERY (* if applic#)] != 451447.0
AND [RECOVERY (* if applic#)] IS NOT NULL
AND [INVOICE CODE] NOT IN ('E0','E1','E2','E3','E4','E5') 
AND [INVOICE CODE] IS NOT NULL
AND DATEDIFF(month,[INVOICE DATE],EOMONTH(dateadd(m,-1,getdate()))) <=11
AND DATEDIFF(month,[INVOICE DATE],EOMONTH(dateadd(m,-1,getdate()))) >=0  ) ) c
where [Consolidator] IS NOT NULL and [Client] IS NOT NULL

