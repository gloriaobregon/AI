

---------------------- AI up to Aggregation (before union) -------------------

Select 
[Assessment Type],
[Key],
AVG([Finance Transaction Header (Total Amount - GST Excluded)]) as [Finance Transaction Header (Total Amount - GST Excluded)],
[Claim No],
[Scheme Name],
[Assessor],
[Assessment Completed Date],
[Vehicle State],
[Claimant],
[Vehicle Rego],
[AssessorFirm]

from(



Select 

CASE WHEN
[Claim Number] is null THEN 
'NoClaim'+[VehicleRegoNo]
WHEN [VehicleRegoNo] is null THEN 
[Claim Number]+'NoRego'
ELSE [Claim Number]+[VehicleRegoNo]
END as [Key],

CASE WHEN 
lower([Assessment Sub Type]) like 'fraser%' or lower([Assessment Sub Type]) like 'tim%' 
THEN 'External'
WHEN charindex(lower('re-'),lower([Assessment Sub Type])) > 0 OR
charindex(lower('rectication'),lower([Assessment Sub Type])) > 0 OR
charindex(lower('Rectification'),lower([Assessment Sub Type])) > 0
THEN 'Quality'
WHEN CHARINDEX(lower('desktop'), lower([Assessment Sub Type])) > 0  
OR CHARINDEX(lower('fair and reason'), lower([Assessment Sub Type])) > 0  
THEN 'Desktop'
WHEN CHARINDEX(lower('onsite'), lower([Assessment Sub Type])) > 0  
OR CHARINDEX(lower('on site'), lower([Assessment Sub Type])) > 0  
THEN 'Onsite'
WHEN [Assessment Sub Type] IS NULL THEN 'Unknown'
ELSE '***Error Please Check'
END [Assessment Type],

[Finance Transaction Header (Total Amount - GST Excluded)],
[Claim Number] as [Claim No],
[Scheme Name],
[Assessor],
[Assessment Completed Date],
[RepairerState] as [Vehicle State],
[JobType] as [Claimant],
[VehicleRegoNo] as [Vehicle Rego],
[AssessorFirm]

from [AI]

where ([Claim Number] is not null) and ([VehicleRegoNo] is not null) 
and ([Assessor] <> 'AI Test' or [Assessor] <> 'AITest1' or [Assessor] <> 'Rishi Dawar - Test do not allocate') and [Assessor] is not null 
and [Job Status] <> 'Cancel'
and [JobType] IS NOT NULL) a

group by [Assessment Type],
[Key],
[Finance Transaction Header (Total Amount - GST Excluded)],
[Claim No],
[Scheme Name],
[Assessor],
[Assessment Completed Date],
[Vehicle State],
[Claimant],
[Vehicle Rego],
[AssessorFirm]

