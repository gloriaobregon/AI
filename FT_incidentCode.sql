UPDATE [FT.FT] SET [Incident Code Group] =  CASE WHEN CHARINDEX(LOWER('animal'), lower([Incident Code])) > 0  THEN 'Animal Strike'

		WHEN CHARINDEX(LOWER('hail'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('storm'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('flood'), lower([Incident Code])) > 0 
		THEN 'Hail/Storm/Flood'

		WHEN CHARINDEX(LOWER('hit and run'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('- attempted'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('vandal'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('unrecovered'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('stolen'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('personal items'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('theft'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('fire'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('by pedestrian'), lower([Incident Code])) > 0 
		THEN 'Fire / Vandalism / Theft / Hit & Run'

		WHEN CHARINDEX(LOWER('load lost'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('hit by object'), lower([Incident Code])) > 0 
		THEN 'Hit by Object'

		WHEN CHARINDEX(LOWER('rear'), lower([Incident Code])) > 0  
		THEN 'Hit Rear'

		WHEN CHARINDEX(LOWER('reversing'), lower([Incident Code])) > 0  
		THEN 'Reversing'

		WHEN CHARINDEX(LOWER('parked'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('stationary'), lower([Incident Code])) > 0 
		THEN 'Hit Stationary / Parked Vehicle'

		WHEN CHARINDEX(LOWER('left road'), lower([Incident Code])) > 0  
		THEN 'Lost Control'

		WHEN CHARINDEX(LOWER('multiple collision'), lower([Incident Code])) > 0  
		THEN 'Multiple Vehicle'

		WHEN CHARINDEX(LOWER('diverge'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('fails to giveway'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('lanes'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('kerb'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('turning vehicle'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('from driveway'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('car door'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('fails to giveway'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('roundabout'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('red light'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('right hand turn'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('u turn'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('hit pedestrian'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('fails to give way'), lower([Incident Code])) > 0 
		THEN 'Right of Way'

		WHEN CHARINDEX(LOWER('windscreen'), lower([Incident Code])) > 0  
		THEN 'Windscreen'

		WHEN CHARINDEX(LOWER('breach'), lower([Incident Code])) > 0  
		THEN 'Contract Breach'

		WHEN CHARINDEX(LOWER('coles trailer recovery'), lower([Incident Code])) > 0  
		THEN 'Client Specific Trailer Recovery'

		WHEN [Incident Code] = 'L3L - Miscellaneous Incident - Client at Fault' 
		THEN 'Other Driver Error'
		 
		WHEN CHARINDEX(LOWER('alleged incident'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('tyre blowout'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('old damage'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('equipment fault'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('w4l - other'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('miscellaneous'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('incident details unknown'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('separation'), lower([Incident Code])) > 0  
		OR CHARINDEX(LOWER('pre-sale rect'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('R5L - Jack-Knife'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('V4R - Road Rage TP Initiated'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('V3L - Road Rage Client Initiated'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('A5L - Star Track Rental Vehicle'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('A5L - OC''s Rental Vehicle Damage/Excess'), lower([Incident Code])) > 0 
		OR CHARINDEX(LOWER('V3L - Road Rage Client Initiated'), lower([Incident Code])) > 0 
		OR CHARINDEX(lower('incident details unknown'), lower([Incident Code])) > 0 
		OR CHARINDEX(lower('separation'), lower([Incident Code])) > 0 
		OR CHARINDEX(lower('pre-sale rect'), lower([Incident Code])) > 0
		OR CHARINDEX(lower('road rage'), lower([Incident Code])) > 0
		OR CHARINDEX(lower('fuel'), lower([Incident Code])) > 0
		OR CHARINDEX(lower('jack-knife'), lower([Incident Code])) > 0
		OR CHARINDEX(lower('rental'), lower([Incident Code])) > 0
		OR CHARINDEX(lower('C6R - Contractor Recovery'), lower([Incident Code])) > 0
		OR [Incident Code] IS NULL 

		THEN 'All Other Incidents'

		ELSE '**Error Please Check **' END

		FROM [FT.FT];


UPDATE [FT.FT] set [Incident State] = CASE WHEN [Incident State] =  'Q;D' THEN 'QLD'

WHEN [Incident State] =  '' THEN NULL

WHEN [Incident State] =  'Victoria' THEN 'VIC'
ELSE [Incident State] END;




UPDATE [FT.FT] SET [Driver Inattention Flag] = 
CASE WHEN 
CHARINDEX('client reversing', lower([Incident Code])) > 0 OR
CHARINDEX('both reversing', lower([Incident Code])) > 0 OR
CHARINDEX('client hits third party in rear', lower([Incident Code])) > 0 OR
CHARINDEX('multiple collision - client at fault', lower([Incident Code])) > 0 OR
CHARINDEX('client diverges', lower([Incident Code])) > 0 OR
CHARINDEX('client fails to giveway', lower([Incident Code])) > 0 OR
CHARINDEX('client changes lanes', lower([Incident Code])) > 0 OR
CHARINDEX('client entering traffic from kerb', lower([Incident Code])) > 0 OR
CHARINDEX('client entering traffic from driveway', lower([Incident Code])) > 0 OR
CHARINDEX('client hits parked third party', lower([Incident Code])) > 0 OR 
CHARINDEX('client opens car door', lower([Incident Code])) > 0 OR
CHARINDEX('hit stationary object', lower([Incident Code])) > 0 OR
CHARINDEX('client disobeys red light', lower([Incident Code])) > 0 OR
CHARINDEX('client makes u turn', lower([Incident Code])) > 0 OR
CHARINDEX('client overtaking r/h turning vehicle', lower([Incident Code])) > 0 OR
CHARINDEX('both change lanes', lower([Incident Code])) > 0 OR
CHARINDEX('left road or roll over', lower([Incident Code])) > 0 OR
CHARINDEX('both diverge', lower([Incident Code])) > 0 OR
CHARINDEX('t2l', lower([Incident Code])) > 0 
THEN 'Y'

ELSE 'N'
END;