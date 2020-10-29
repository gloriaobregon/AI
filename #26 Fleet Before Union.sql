--------------- FT assessment up to 'fleet' (before union) --------


select 
[Assessor],
[Key],
[Assessment Type],
[Claim No],
[Job Status] as [Status],
[Job Type] as [Claimant],
[CONSOLIDATOR],
[CLIENT],
[CREATION DATE],
[FAULT],
[TP SEQ],
[MARKET SEGMENT],
[REPORT DATE],
[CLAIM STATUS],
[COMPANY NAME],
MAX([Assessment Completed Date]) as [Assessment Completed Date],
[CONFIRM TYPE],
[REGO] as [Vehicle Rego],
[TOTAL LOSS],
AVG([ESTIMATE (+ Tax)]) as [ESTIMATE (+ Tax)] ,
AVG([ASSESSMENT (+ Tax)]) as [ASSESSMENT (+ Tax)] ,
AVG([REPAIRS INVOICED (+GST)]) as [REPAIRS INVOICED (+GST)],
[Vehicle State],
AVG([Assessing Fee]) as [Assessing Fee]

from 
(
Select 
[CLAIM NUMBER],
[CONSOLIDATOR],
[CLIENT],
[CREATION DATE],
[FAULT],
[TP SEQ],
[MARKET SEGMENT],
[REPORT DATE],
[CLAIM STATUS],
[COMPANY NAME],
[APPOINTED DATE],
[DATE ASSESSED] as [Assessment Completed Date],
[ESTIMATED DAYS],
[ASSESSED DAYS],
[CONFIRM TYPE],
[REGO],
[TOTAL LOSS],
[ESTIMATE (+ Tax)],
[ASSESSMENT (+ Tax)],
[REPAIRS INVOICED (+GST)],

CASE WHEN LEFT([CLAIM NUMBER],3)='000' THEN SUBSTRING([CLAIM NUMBER],4, 5)
WHEN LEFT([CLAIM NUMBER],2)='00' THEN SUBSTRING([CLAIM NUMBER],3, 6)
WHEN LEFT([CLAIM NUMBER],1)='0' THEN SUBSTRING([CLAIM NUMBER],2, 7)
ELSE SUBSTRING([CLAIM NUMBER],1, 8)
END as [Claim No],

CASE WHEN 
[COMPANY NAME]  = 'Innovation Group Claims Services Motor' THEN 'Onsite'
WHEN [COMPANY NAME]  = 'Value Assessing Services VIC' THEN 'Desktop'
WHEN [COMPANY NAME]  = 'Value Assessing Services Field Assessment' THEN 'Onsite'
WHEN [COMPANY NAME]  = 'ACE ASSESSING' THEN 'External'
WHEN [COMPANY NAME]  = 'John L Mckee' THEN 'External'
WHEN [COMPANY NAME]  = 'Mclarens Toplis' THEN 'External'
WHEN [COMPANY NAME]  = 'Automotive Assessments' THEN 'External'
WHEN [COMPANY NAME]  = 'Turner Assessments PTY.LTD' THEN 'External'
WHEN [COMPANY NAME]  = 'Innovation Group (Motorcare) Pty Ltd' THEN 'Onsite'
WHEN [COMPANY NAME] = 'Quantum Risk Management' THEN 'External'
WHEN [COMPANY NAME] = 'Turner Assessments PTY.LTD' THEN 'External'
ELSE '*** ERROR ***'
END as [Assessment Type],



CASE WHEN  [Incident State] = 'coomNSW' or [Incident State] = '"'  THEN 'NSW'
WHEN [Incident State] = '6167' THEN 'WA' 
ELSE [Incident State] END as [Vehicle State],

[ASSESSING INVOICE AMOUNT *] as [Assessing Fee],

CASE WHEN [TOTAL LOSS] = 'Yes' THEN 'Total Loss'  
WHEN [TP SEQ] = 'Cli' THEN 'Client'
ELSE 'Third Party'
END as [Job Type],

CASE WHEN  [DATE ASSESSED] IS NULL THEN 'Open'
ELSE 'Closed'
END as [Job Status],

CONCAT([Claim Number],[REGO]) as [Key],

CASE WHEN [COMPANY NAME] = 'John L Mckee' THEN [COMPANY NAME]
WHEN [ASSESSED BY] IS NULL THEN 'Unknown IG Assessor'
ELSE [ASSESSED BY]
END  as [Assessor]


from [CDS.26 Fleet Assessment Monthly]

where [CONSOLIDATOR] <> 'Demo' and [CONFIRM TYPE] = 'Confirmed'

)a

GROUP BY 
[Assessor],
[Key],
[Assessment Type],
[Claim No],
[Job Status],
[Job Type],
[CONSOLIDATOR],
[CLIENT],
[CREATION DATE],
[FAULT],
[TP SEQ],
[MARKET SEGMENT],
[REPORT DATE],
[CLAIM STATUS],
[COMPANY NAME],
[CONFIRM TYPE],
[REGO],
[TOTAL LOSS],
[Vehicle State]