Drop table if exists [CDS.E13 Agg] 
Select * INTO [CDS.E13 Agg] from
(
Select 
[Consolidator] as [Consolidator],
[Client] as [Client],
[Claim Number] as [Claim Number],
[Report Date] as [Date],
[Closed Date] as [Closed Date],
[Incident Code] as [Incident Code or Repairer Name],
[Repairer Appointed] as [Repairer Appointed],
[Estimate Received] as [Estimate Received],
[Assessor Appointed] as [Assessor Appointed],
[Assessment Received] as [Assessment Received],
[Vehicle Registration] as [Vehicle Registration],





DATEDIFF(day, CASE WHEN DATEPART(weekday, [Incident Date]) = 1
THEN DATEADD(day, -2, [Incident Date])
WHEN DATEPART(weekday, [Incident Date]) = 7
THEN DATEADD(day, -1, [Incident Date])
ELSE [Incident Date]
END, CASE WHEN DATEPART(weekday, [Report Date]) = 1
THEN DATEADD(day, -2, [Report Date])
WHEN DATEPART(weekday, [Report Date]) = 7
THEN DATEADD(day, -1, [Report Date])
ELSE [Report Date]
END)
+ 1
- 2 * DATEDIFF(week, CASE WHEN DATEPART(weekday, [Incident Date]) = 1
THEN DATEADD(day, -2, [Incident Date])
WHEN DATEPART(weekday, [Incident Date]) = 7
THEN DATEADD(day, -1, [Incident Date])
ELSE [Incident Date]
END, CASE WHEN DATEPART(weekday, [Report Date]) = 1
THEN DATEADD(day, -2, [Report Date])
WHEN DATEPART(weekday, [Report Date]) = 7
THEN DATEADD(day, -1, [Report Date])
ELSE [Report Date]
END) as [# days 1. Incident to Lodgement],

DATEDIFF(day, CASE WHEN DATEPART(weekday, [Report Date]) = 1
THEN DATEADD(day, 1, [Report Date])
WHEN DATEPART(weekday, [Report Date]) = 7
THEN DATEADD(day, 2, [Report Date])
ELSE [Report Date]
END, CASE WHEN DATEPART(weekday, [Repairer Appointed]) = 1
THEN DATEADD(day, -2, [Repairer Appointed])
WHEN DATEPART(weekday, [Repairer Appointed]) = 7
THEN DATEADD(day, -1, [Repairer Appointed])
ELSE [Repairer Appointed]
END)
+ 1
- 2 * DATEDIFF(week, CASE WHEN DATEPART(weekday, [Report Date]) = 1
THEN DATEADD(day, 1, [Report Date])
WHEN DATEPART(weekday, [Report Date]) = 7
THEN DATEADD(day, 2, [Report Date])
ELSE [Report Date]
END, CASE WHEN DATEPART(weekday, [Repairer Appointed]) = 1
THEN DATEADD(day, -2, [Repairer Appointed])
WHEN DATEPART(weekday, [Repairer Appointed]) = 7
THEN DATEADD(day, -1, [Repairer Appointed])
ELSE [Repairer Appointed]
END) as [# days 2. Lodge to Repairer Appointed],


DATEDIFF(day, CASE WHEN DATEPART(weekday, [Repairer Appointed]) = 1
THEN DATEADD(day, 1, [Repairer Appointed])
WHEN DATEPART(weekday, [Repairer Appointed]) = 7
THEN DATEADD(day, 2, [Repairer Appointed])
ELSE [Repairer Appointed]
END, CASE WHEN DATEPART(weekday, [Estimate Received]) = 1
THEN DATEADD(day, -2, [Estimate Received])
WHEN DATEPART(weekday, [Estimate Received]) = 7
THEN DATEADD(day, -1, [Estimate Received])
ELSE [Estimate Received]
END)
+ 1
- 2 * DATEDIFF(week, CASE WHEN DATEPART(weekday, [Repairer Appointed]) = 1
THEN DATEADD(day, 1, [Repairer Appointed])
WHEN DATEPART(weekday, [Repairer Appointed]) = 7
THEN DATEADD(day, 2, [Repairer Appointed])
ELSE [Repairer Appointed]
END, CASE WHEN DATEPART(weekday, [Estimate Received]) = 1
THEN DATEADD(day, -2, [Estimate Received])
WHEN DATEPART(weekday, [Estimate Received]) = 7
THEN DATEADD(day, -1, [Estimate Received])
ELSE [Estimate Received]
END)
as [# days 3. Repairer Appointed to Quote Received],


DATEDIFF(day, CASE WHEN DATEPART(weekday, [Estimate Received]) = 1
THEN DATEADD(day, 1, [Estimate Received])
WHEN DATEPART(weekday, [Estimate Received]) = 7
THEN DATEADD(day, 2, [Estimate Received])
ELSE [Estimate Received]
END, [Assessment Received])
+ 1
- 2 * DATEDIFF(week, CASE WHEN DATEPART(weekday, [Estimate Received]) = 1
THEN DATEADD(day, 1, [Estimate Received])
WHEN DATEPART(weekday, [Estimate Received]) = 7
THEN DATEADD(day, 2, [Estimate Received])
ELSE [Estimate Received]
END, [Assessment Received]) as [# days 4. Quote to Assessment],

CASE WHEN [Estimate Received]  IS NULL
AND ([Status] = 'OPEN' OR [Closed Date] IS NULL) THEN datediff(day, [Report Date], EOMONTH(GETDATE(),-1))
END as [Days without Estimate]



from [CDS.E13 Timeline]

where 
([Incident Code] <> 'Z1L - Windscreen'  OR [Incident Code] IS NULL)
AND [Glass Only] IS NULL
AND [Record Only] IS NULL 
AND [Repairs N/R] IS NULL
AND [Total Loss] IS NULL
AND [Client] <> 'Reported but not-handled'
AND [Claim Lodged] IS NULL
AND (([Damage Code] <> 'N0 - No Damage Reported' AND [Damage Code] <> 'G0 - Glass Only - Windscreen' AND [Damage Code] <> 'G1 - Glass Only - Other Glass' AND [Damage Code] <> 'G2 - Glass Only - Multiple Glass') OR [Damage Code] IS NULL)
AND DATEDIFF(month,[Report Date],EOMONTH(dateadd(m,-1,getdate()))) <= 11 AND  DATEDIFF(month,[Report Date],EOMONTH(dateadd(m,-1,getdate()))) >= 0
AND [Consolidator] <> 'Europcar' AND [Consolidator] <> 'Demo' AND [Consolidator] <> 'SG Fleet Australia Pty Limited' AND [Consolidator] <> 'ADICA' AND [Consolidator] <> 'AB Group'
AND [Claim Number] <> '453853') a