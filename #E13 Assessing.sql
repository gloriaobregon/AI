Select 
[Preferred Name] as [Incident Code or Repairer Name],
[Assessment Completed Date] as [Date],
[Claimant] as [Fault or Recovery or Claimant or Metric Name],
[Assessment Type] as [Claim Status or Recovery Type or Assessment Type],
[Loss Type Level 2] as [Incident Code Group],
[Network  Flag] as [Business Unit or Network Flag],
[Active] as [Age or Active Repairer],
[Claim No] as [Claim Number],
[Consolidator] as [Consolidator],
[Client] as [Client],
[Vehicle Rego] as [Vehicle Registration],
[ESTIMATE (+ Tax)] as [Payment or Recovered Amount or Metric Value or Estimate],
[REPAIRS INVOICED (+GST)] as [Demand Amount or Client Cost or Repairs Invoiced],
CAST('Assessing & Repair Cost' AS nvarchar(255)) as [Data Point]

FROM [CDS.34]
where
DATEDIFF(month,[Assessment Completed Date],EOMONTH(dateadd(m,-1,getdate()))) <=11 
AND 
DATEDIFF(month,[Assessment Completed Date],EOMONTH(dateadd(m,-1,getdate()))) >=0