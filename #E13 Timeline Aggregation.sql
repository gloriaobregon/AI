
Select [Claim Number],
[Vehicle Registration],
      [Consolidator]
      ,[Client]
      ,[Date]
      ,[Closed Date]
      ,[Incident Code or Repairer Name]
      ,[Repairer Appointed]
      ,[Estimate Received]
      ,[Assessor Appointed]
      ,[Assessment Received],
        u.[Metric Name],NULLIF(u.[# days],-1) AS [# days]
from

(select [Claim Number],
[Vehicle Registration]
        ,[Consolidator]
      ,[Client]
      ,[Date]
      ,[Closed Date]
      ,[Incident Code or Repairer Name]
      ,[Repairer Appointed]
      ,[Estimate Received]
      ,[Assessor Appointed]
      ,[Assessment Received],

coalesce([# days 1. Incident to Lodgement],-1) as [# days 1. Incident to Lodgement],
coalesce([# days 2. Lodge to Repairer Appointed],-1) as [# days 2. Lodge to Repairer Appointed],
coalesce([# days 3. Repairer Appointed to Quote Received],-1) as [# days 3. Repairer Appointed to Quote Received],
coalesce([# days 4. Quote to Assessment],-1) as [# days 4. Quote to Assessment],
coalesce([Days without Estimate],-1) as [Days without Estimate]
from  [CDS.E13 Agg]) s

unpivot(

[# days]
  for [Metric Name] in ([# days 1. Incident to Lodgement], [# days 2. Lodge to Repairer Appointed], [# days 3. Repairer Appointed to Quote Received],[# days 4. Quote to Assessment],[Days without Estimate])
)u


