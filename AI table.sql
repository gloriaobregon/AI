CREATE TABLE [AI] (
[Addition $]  decimal(14,2),
[AgreedValue]  decimal(14,2),
[Allow$]  decimal(14,2),
[ARPDate]  datetime,
[Assessment Completed Date]  datetime,
[Assessment Sub Type]  nvarchar(255),
[Assessor]  nvarchar(255),
[Assessor Header (Appr Net Total GST Included) ]  decimal(14,2),
[Assessor Header (QTE Net Total GST Included) ]  decimal(14,2),
[Assessor Instructed Date]  datetime,
[AssessorFirm]  nvarchar(255),
[Auth_Inc_Tax_$]  decimal(14,2),
[AuthorityDate]  datetime,
[businessUnit]  nvarchar(255),
[CAT]  nvarchar(255),
[Claim Number]  nvarchar(255),
[Conversion Fee-InvoiceAmount Exc GST]  int,
[CoverageType]  nvarchar(255),
[CreatedBy]  nvarchar(255),
[DateCreated]  datetime,
[DetailAssessmentDate]  datetime,
[DetailAssessmentDateDateTime]  datetime,
[DetailCircumstanceCombo]  nvarchar(255),
[DetailInspectAt]  nvarchar(255),
[DetailInspectAtPostcode]  nvarchar(255),
[DriverName]  nvarchar(255),
[Fin Adj %]  decimal(14,2),
[FinalCost $]  decimal(14,2),
[Finance Trans Date]  datetime,
[Finance Transaction (Conversion Fee) Created By]  nvarchar(255),
[Finance Transaction (Conversion Fee) Created Date]  nvarchar(255),
[Finance Transaction Header (Total Amount - GST Excluded)]  decimal(14,2),
[Generic Part]  decimal(14,2),
[Genuine Parts]  decimal(14,2),
[Init Adj %]  decimal(14,2),
[InitAsses $]  decimal(14,2),
[InsuranceClaimNo]  nvarchar(255),
[Invoiced Amount (GST Included) ]  decimal(14,2),
[InvoiceGreenDate]  datetime,
[Job Status]  nvarchar(255),
[JobInProgressDate]  datetime,
[JobInvoiceDate]  datetime,
[JobRequestQuoteDate]  datetime,
[JobType]  nvarchar(255),
[MarketValue]  decimal(14,2),
[Miscl $]  decimal(14,2),
[No of Job]  decimal(14,2),
[OurReference]  nvarchar(255),
[Owner]  nvarchar(255),
[OwnerExcessBasic]  decimal(14,2),
[Paint Labour]  decimal(14,2),
[Part Total $]  decimal(14,2),
[Parts Exch]  decimal(14,2),
[Quoted $]  decimal(14,2),
[Quoted Generic Part]  decimal(14,2),
[Quoted Genuine Parts]  decimal(14,2),
[Quoted Miscl $]  decimal(14,2),
[Quoted Paint Labour]  decimal(14,2),
[Quoted Part Total $]  decimal(14,2),
[Quoted Parts Exch]  decimal(14,2),
[Quoted Recylced Parts]  decimal(14,2),
[Quoted Repair Labour]  decimal(14,2),
[Quoted RR Labour]  decimal(14,2),
[Quoted SubLetEstimate $]  decimal(14,2),
[Quoted Supp Generic Parts]  decimal(14,2),
[Quoted Supp Genuine Parts]  decimal(14,2),
[Quoted Supp Miscl $]  decimal(14,2),
[Quoted Supp Paint Labour]  decimal(14,2),
[Quoted Supp Parts Exch]  decimal(14,2),
[Quoted Supp Recylced Parts]  decimal(14,2),
[Quoted Supp Repair Labour]  decimal(14,2),
[Quoted Supp RR Labour]  decimal(14,2),
[Quoted Supp SubLetEstimate $]  decimal(14,2),
[Quoted Supp Total Labour]  decimal(14,2),
[Quoted Total Labour]  decimal(14,2),
[Quoted Towing $]  decimal(14,2),
[Quoted Variations/Discounts]  decimal(14,2),
[R&R Labour]  decimal(14,2),
[Recommended]  nvarchar(255),
[Recylced Parts]  decimal(14,2),
[Repair Labour]  decimal(14,2),
[Repairer]  nvarchar(255),
[RepairerBooked]  nvarchar(255),
[RepairerCity]  nvarchar(255),
[RepairerDays]  nvarchar(255),
[RepairerPostcode]  decimal(14,2),
[RepairerQuoteDate]  datetime,
[RepairerQuoteNo]  nvarchar(255),
[RepairerState]  nvarchar(255),
[Scheme Name]  nvarchar(255),
[SubLetEstimate $]  decimal(14,2),
[SubletInvoice $]  decimal(14,2),
[SubScheme Name]  nvarchar(255),
[SumInsured]  decimal(14,2),
[Supp Generic Parts]  decimal(14,2),
[Supp Genuine Parts]  decimal(14,2),
[Supp Miscl $]  decimal(14,2),
[Supp Paint Labour]  decimal(14,2),
[Supp Parts Exch]  decimal(14,2),
[Supp Recylced Parts]  decimal(14,2),
[Supp Repair Labour]  decimal(14,2),
[Supp RR Labour]  decimal(14,2),
[Supp SubLetEstimate $]  decimal(14,2),
[Supp Total Labour]  decimal(14,2),
[Total Labour]  decimal(14,2),
[TotalLossPaid]  decimal(14,2),
[Towing $]  decimal(14,2),
[TypeOfVehicle]  nvarchar(255),
[Variations/Discounts]  decimal(14,2),
[VehicleBody]  nvarchar(255),
[VehicleColour]  nvarchar(255),
[VehicleDrivable]  nvarchar(255),
[VehicleMake]  nvarchar(255),
[VehicleModel]  nvarchar(255),
[VehicleReceived]  nvarchar(255),
[VehicleRegoNo]  nvarchar(255),
[VehicleVinNo]  nvarchar(255)
)
-------------------------------------------
Drop table if exists [AI.Catastrophe];
CREATE TABLE [AI.Catastrophe] (
    [OurReference] nvarchar(255),
    [Finance Transaction Header (Total Amount - GST Excluded)] decimal(14,2),
    [Conversion Fee-InvoiceAmount Exc GST] int,
    [Finance Transaction (Conversion Fee) Created By] nvarchar(255),
    [Finance Transaction (Conversion Fee) Created Date] nvarchar(255),
    [Claim Number] nvarchar(255),
    [Scheme Name] nvarchar(255),
    [SubScheme Name] nvarchar(255),
    [Assessor] nvarchar(255),
    [Assessment Sub Type] nvarchar(255),
    [Assessor Instructed Date] datetime,
    [Assessment Completed Date] datetime,
    [Assessor Header (QTE Net Total GST Included) ] decimal(14,2),
    [Assessor Header (Appr Net Total GST Included) ] decimal(14,2),
    [Invoiced Amount (GST Included) ] decimal(14,2),
    [RepairerCity] nvarchar(255),
    [RepairerPostcode] decimal(14,2),
    [CAT] nvarchar(255),
    [DateCreated] datetime,
    [CreatedBy] nvarchar(255),
    [DetailCircumstanceCombo] nvarchar(255),
    [Repairer] nvarchar(255),
    [Recommended] nvarchar(255),
    [JobType] nvarchar(255),
    [No of Job] decimal(14,2),
    [Quoted $] decimal(14,2),
    [InitAsses $] decimal(14,2),
    [FinalCost $] decimal(14,2),
    [Init Adj %] decimal(14,2),
    [Fin Adj %] decimal(14,2),
    [Quoted RR Labour] decimal(14,2),
    [Quoted Repair Labour] decimal(14,2),
    [Quoted Paint Labour] decimal(14,2),
    [Quoted Total Labour] decimal(14,2),
    [Quoted Genuine Parts] decimal(14,2),
    [Quoted Generic Part] decimal(14,2),
    [Quoted Recylced Parts] decimal(14,2),
    [Quoted Parts Exch] decimal(14,2),
    [Quoted Towing $] decimal(14,2),
    [Quoted Variations/Discounts] decimal(14,2),
    [Quoted Part Total $] decimal(14,2),
    [Quoted Miscl $] decimal(14,2),
    [Quoted SubLetEstimate $] decimal(14,2),
    [Quoted Supp RR Labour] decimal(14,2),
    [Quoted Supp Repair Labour] decimal(14,2),
    [Quoted Supp Paint Labour] decimal(14,2),
    [Quoted Supp Total Labour] decimal(14,2),
    [Quoted Supp Genuine Parts] decimal(14,2),
    [Quoted Supp Generic Parts] decimal(14,2),
    [Quoted Supp Recylced Parts] decimal(14,2),
    [Quoted Supp Parts Exch] decimal(14,2),
    [Quoted Supp Miscl $] decimal(14,2),
    [Quoted Supp SubLetEstimate $] decimal(14,2),
    [R&R Labour] decimal(14,2),
    [Repair Labour] decimal(14,2),
    [Paint Labour] decimal(14,2),
    [Total Labour] decimal(14,2),
    [Genuine Parts] decimal(14,2),
    [Generic Part] decimal(14,2),
    [Recylced Parts] decimal(14,2),
    [Parts Exch] decimal(14,2),
    [Towing $] decimal(14,2),
    [Variations/Discounts] decimal(14,2),
    [Part Total $] decimal(14,2),
    [Miscl $] decimal(14,2),
    [SubLetEstimate $] decimal(14,2),
    [Supp RR Labour] decimal(14,2),
    [Supp Repair Labour] decimal(14,2),
    [Supp Paint Labour] decimal(14,2),
    [Supp Total Labour] decimal(14,2),
    [Supp Genuine Parts] decimal(14,2),
    [Supp Generic Parts] decimal(14,2),
    [Supp Recylced Parts] decimal(14,2),
    [Supp Parts Exch] decimal(14,2),
    [Supp Miscl $] decimal(14,2),
    [Supp SubLetEstimate $] decimal(14,2),
    [Allow$] decimal(14,2),
    [Addition $] decimal(14,2),
    [SubletInvoice $] decimal(14,2),
    [SumInsured] decimal(14,2),
    [AgreedValue] decimal(14,2),
    [MarketValue] decimal(14,2),
    [TotalLossPaid] decimal(14,2),
    [VehicleMake] nvarchar(255),
    [VehicleModel] nvarchar(255),
    [TypeOfVehicle] nvarchar(255),
    [VehicleBody] nvarchar(255),
    [Owner] nvarchar(255),
    [DriverName] nvarchar(255),
    [businessUnit] nvarchar(255),
    [VehicleRegoNo] nvarchar(255),
    [InsuranceClaimNo] nvarchar(255),
    [OwnerExcessBasic] decimal(14,2),
    [VehicleVinNo] nvarchar(255),
    [VehicleColour] nvarchar(255),
    [RepairerQuoteDate] datetime,
    [RepairerQuoteNo] decimal(14,2),
    [RepairerDays] nvarchar(255),
    [VehicleDrivable] nvarchar(255),
    [DetailAssessmentDateDateTime] datetime,
    [CoverageType] nvarchar(255),
    [DetailInspectAt] nvarchar(255),
    [DetailInspectAtPostcode] nvarchar(255),
    [AssessorFirm] nvarchar(255),
    [RepairerBooked] nvarchar(255),
    [VehicleReceived] nvarchar(255),
    [ARPDate] datetime,
    [AuthorityDate] datetime,
    [Job Status] nvarchar(255),
    [RepairerState] nvarchar(255),
    [Finance Trans Date] datetime,
    [Auth_Inc_Tax_$] decimal(14,2)
)


---------------------------------------- AI.header Create table
DROP TABLE IF EXISTS [AI.header];
Create table [AI.header](
[OurReference] nvarchar(255) PRIMARY KEY NOT NULL,
[Claim Number] nvarchar(255),
[VehicleRegoNo] nvarchar(255),
[Assessment Completed Date] date,
[AuthorityDate] date,
[DateCreated] date,
[FinalCost $] decimal(14,2),
[Finance Trans Date] date,
[Finance Transaction Header (Total Amount - GST Excluded)] decimal(14,2),
[Invoiced Amount (GST Included)  ] decimal(14,2),
[Job Status] nvarchar(255),
[JobType] nvarchar(255),
[Quoted $] decimal(14,2),
[Repairer] varchar(255),
[RepairerQuoteDate] date,
[Scheme Name] nvarchar(255),
[SubScheme Name] nvarchar(255),
[TotalLossPaid] decimal(14,2),
[Auth_Inc_Tax_$] decimal(14,2),
[Assessed_inc_tax_$] decimal(14,2)

);

------------------------------- AI.header selection

Select 
[OurReference] as [OurReference],
[Claim Number] as [Claim Number],
[VehicleRegoNo] as [VehicleRegoNo],
[Assessment Completed Date] as [Assessment Completed Date],
[AuthorityDate] as [AuthorityDate],
[DateCreated] as [DateCreated],
[FinalCost $] as [FinalCost $],
[Finance Trans Date] as [Finance Trans Date],
[Finance Transaction Header (Total Amount - GST Excluded)] as [Finance Transaction Header (Total Amount - GST Excluded)],
[Invoiced Amount (GST Included)  ] as [Invoiced Amount (GST Included)  ],
[Job Status] as [Job Status],
[JobType] as [JobType],
[Quoted $] as [Quoted $],
[Repairer] as [Repairer],
[RepairerQuoteDate] as [RepairerQuoteDate],
[Scheme Name] as [Scheme Name],
[SubScheme Name] as [SubScheme Name],
[TotalLossPaid] as [TotalLossPaid],
[Auth_Inc_Tax_$] as [Auth_Inc_Tax_$],
[Assessor Header (Appr Net Total GST Included)] as [Assessed_inc_tax_$],
[Conversion Fee-InvoiceAmount Exc GST] as [Conversion Fee-InvoiceAmount Exc GST]
from AI


--------------------------------------------------------- AI.suppinformation Create table
DROP TABLE IF EXISTS [AI.suppinformation];
Create table [AI.suppinformation](
OurReference nvarchar(255)  PRIMARY KEY NOT NULL,
[Addition $] decimal(14,2),
[Allow$] decimal(14,2),
[Generic Part] decimal(14,2),
[Genuine Parts] decimal(14,2),
[Miscl $] decimal(14,2),
[Paint Labour] decimal(14,2),
[Parts Exch] decimal(14,2),
[R&R Labour] decimal(14,2),
[Recylced Parts] decimal(14,2),
[Repair Labour] decimal(14,2),
[SubLetEstimate $] decimal(14,2),
[SubletInvoice $] decimal(14,2),
[Supp Generic Parts] decimal(14,2),
[Supp Genuine Parts] decimal(14,2),
[Supp Miscl $] decimal(14,2),
[Supp Paint Labour] decimal(14,2),
[Supp Parts Exch] decimal(14,2),
[Supp Recylced Parts] decimal(14,2),
[Supp Repair Labour] decimal(14,2),
[Supp RR Labour] decimal(14,2),
[Supp SubLetEstimate $] decimal(14,2),
[Towing $] decimal(14,2),
[Variations/Discounts] decimal(14,2)
);

--------------------------------------------------------- AI.suppinformation selection
select 
[Addition $] as [Addition $],
[Allow$] as [Allow$],
[Generic Part] as [Generic Part],
[Genuine Parts] as [Genuine Parts],
[Miscl $] as [Miscl $],
[Paint Labour] as [Paint Labour],
[Parts Exch] as [Parts Exch],
[R&R Labour] as [R&R Labour],
[Recylced Parts] as [Recylced Parts],
[Repair Labour] as [Repair Labour],
[SubLetEstimate $] as [SubLetEstimate $],
[SubletInvoice $] as [SubletInvoice $],
[Supp Generic Parts] as [Supp Generic Parts],
[Supp Genuine Parts] as [Supp Genuine Parts],
[Supp Miscl $] as [Supp Miscl $],
[Supp Paint Labour] as [Supp Paint Labour],
[Supp Parts Exch] as [Supp Parts Exch],
[Supp Recylced Parts] as [Supp Recylced Parts],
[Supp Repair Labour] as [Supp Repair Labour],
[Supp RR Labour] as [Supp RR Labour],
[Supp SubLetEstimate $] as [Supp SubLetEstimate $],
[Towing $] as [Towing $],
[Variations/Discounts] as [Variations/Discounts],
[OurReference] as [OurReference],
[Conversion Fee-InvoiceAmount Exc GST] as [Conversion Fee-InvoiceAmount Exc GST]
from AI


--------------------------------------------------------- AI.quoteinformation Create table
DROP TABLE IF EXISTS [AI.quoteinformation];
Create table [AI.quoteinformation](
[OurReference] nvarchar(255) Primary key not null,
[Conversion Fee-InvoiceAmount Exc GST] decimal(14,2),
[Quoted Generic Part] decimal(14,2),
[Quoted Genuine Parts] decimal(14,2),
[Quoted Miscl $] decimal(14,2),
[Quoted Paint Labour] decimal(14,2),
[Quoted Parts Exch] decimal(14,2),
[Quoted Recylced Parts] decimal(14,2),
[Quoted Repair Labour] decimal(14,2),
[Quoted RR Labour] decimal(14,2),
[Quoted SubLetEstimate $] decimal(14,2),
[Quoted Supp Generic Parts] decimal(14,2),
[Quoted Supp Genuine Parts] decimal(14,2),
[Quoted Supp Miscl $] decimal(14,2),
[Quoted Supp Paint Labour] decimal(14,2),
[Quoted Supp Parts Exch] decimal(14,2),
[Quoted Supp Recylced Parts] decimal(14,2),
[Quoted Supp Repair Labour] decimal(14,2),
[Quoted Supp RR Labour] decimal(14,2),
[Quoted Supp SubLetEstimate $] decimal(14,2),
[Quoted Towing $] decimal(14,2),
[Quoted Variations/Discounts] decimal(14,2),
);

--------------------------------------------------------- AI.quoteinformation selection
select
[OurReference] as [OurReference],
[Conversion Fee-InvoiceAmount Exc GST] as [Conversion Fee-InvoiceAmount Exc GST],
[Quoted Generic Part] as [Quoted Generic Part],
[Quoted Genuine Parts] as [Quoted Genuine Parts],
[Quoted Miscl $] as [Quoted Miscl $],
[Quoted Paint Labour] as [Quoted Paint Labour],
[Quoted Parts Exch] as [Quoted Parts Exch],
[Quoted Recylced Parts] as [Quoted Recylced Parts],
[Quoted Repair Labour] as [Quoted Repair Labour],
[Quoted RR Labour] as [Quoted RR Labour],
[Quoted SubLetEstimate $] as [Quoted SubLetEstimate $],
[Quoted Supp Generic Parts] as [Quoted Supp Generic Parts],
[Quoted Supp Genuine Parts] as [Quoted Supp Genuine Parts],
[Quoted Supp Miscl $] as [Quoted Supp Miscl $],
[Quoted Supp Paint Labour] as [Quoted Supp Paint Labour],
[Quoted Supp Parts Exch] as [Quoted Supp Parts Exch],
[Quoted Supp Recylced Parts] as [Quoted Supp Recylced Parts],
[Quoted Supp Repair Labour] as [Quoted Supp Repair Labour],
[Quoted Supp RR Labour] as [Quoted Supp RR Labour],
[Quoted Supp SubLetEstimate $] as [Quoted Supp SubLetEstimate $],
[Quoted Towing $] as [Quoted Towing $],
[Quoted Variations/Discounts] as [Quoted Variations/Discounts]
from AI


--------------------------------------------------------- AI.vehicleinformation Create table
DROP TABLE IF EXISTS [AI.vehicleinformation];
Create table [AI.vehicleinformation](
OurReference nvarchar(255)  PRIMARY KEY NOT NULL,
VehicleRegoNo nvarchar(255),
AgreedValue decimal(14,2),
MarketValue decimal(14,2),
TypeOfVehicle nvarchar(255),
VehicleBody nvarchar(255),
VehicleColour nvarchar(255),
VehicleDrivable nvarchar(255),
VehicleMake nvarchar(255),
VehicleModel nvarchar(255),
VehicleVinNo nvarchar(255)
);


--------------------------------------------------------- AI.vehicleinformation selection
select
[OurReference] as [OurReference],
[Conversion Fee-InvoiceAmount Exc GST] as [Conversion Fee-InvoiceAmount Exc GST],
[AgreedValue] as [AgreedValue],
[MarketValue] as [MarketValue],
[TypeOfVehicle] as [TypeOfVehicle],
[VehicleBody] as [VehicleBody],
[VehicleColour] as [VehicleColour],
[VehicleDrivable] as [VehicleDrivable],
[VehicleMake] as [VehicleMake],
[VehicleModel] as [VehicleModel],
[VehicleRegoNo] as [VehicleRegoNo],
[VehicleVinNo] as [VehicleVinNo]
from AI


--------------------------------------------------------- AI.assessmentinformation Create table
DROP TABLE IF EXISTS [AI.assessmentinformation];
Create table [AI.assessmentinformation](
OurReference nvarchar(255) Primary Key NOT NULL,
[Assessment Sub Type] nvarchar(255),
Assessor nvarchar(255),
Assessed_inc_tax_$ decimal(14,2),
Estimate_inc_tax_$ decimal(14,2),
AssessorFirm nvarchar(255),
DetailCircumstanceCombo nvarchar(512),
AuthorityDate datetime,
);


--------------------------------------------------------- AI.assessmentinformation selection
select
[OurReference] as [OurReference],
[Conversion Fee-InvoiceAmount Exc GST] as [Conversion Fee-InvoiceAmount Exc GST],
[Assessment Sub Type] as [Assessment Sub Type],
[Assessor] as [Assessor],
[Assessor Header (Appr Net Total GST Included)] as [Assessed_inc_tax_$],
[Assessor Header (QTE Net Total GST Included)] as [Estimate_inc_tax_$],
[AssessorFirm] as [AssessorFirm],
[DetailCircumstanceCombo] as [DetailCircumstanceCombo]
from AI


