CREATE TABLE [CDS.38 Sick leave Table] (
    [Emp Code] nvarchar(255),
    [Name] nvarchar(255),
    [Preceded by P/H] nvarchar(255),
    [Preceded by W/E] nvarchar(255),
    [From Date] datetime,
    [From Day] nvarchar(255),
    [To Date] datetime,
    [To Day] nvarchar(255),
    [Cert] nvarchar(255),
    [Followed by P/H] nvarchar(255),
    [Followed by W/E] nvarchar(255),
    [Total] float,
    [Unit] nvarchar(255),
    [Leave Type] nvarchar(255),
    [Manager Name] nvarchar(255)
)



CREATE TABLE [CDS.38 Payroll Table] (
    [Report Date] datetime,
    [EMP_CODE] nvarchar(255),
    [Employee Name] nvarchar(255),
    [normal hours] float,
    [Date of Birth] datetime,
    [Sex] nvarchar(255),
    [Hire Date] datetime,
    [Location] nvarchar(255),
    [Term Date] datetime,
    [SL_TOTAL] float,
    [LS_TOTAL] float,
    [AL_TOTAL] float,
    [Manager Name] nvarchar(255),
    [Cost Centre(s)] nvarchar(255),
    [Emp Cat] nvarchar(255),
    [Emp Category Desc] nvarchar(255),
    [Term Rsn] nvarchar(255)
)

CREATE TABLE [CDS.38 Legacy Sick Leave Table] (
    [Business Area] nvarchar(255),
    [Business Area Detail] nvarchar(255),
    [Termination Date] datetime,
    [Report Date] datetime,
    [Unknown Leave] float,
    [Planned - Unpaid] float,
    [Planned - Paid] float,
    [Unplanned - Unpaid] float,
    [Unplanned - Paid] float,
    [Unpaid] nvarchar(255),
    [Normal Hours Paid] float,
    [Unplanned] nvarchar(255),
    [Gender] nvarchar(255),
    [Date Hired] datetime,
    [Employment Type] nvarchar(255),
    [Date of Birth] datetime,
    [Surname] nvarchar(255),
    [First Name] nvarchar(255),
    [Leave Type] nvarchar(255),
    [From Date] datetime,
    [To Date] datetime,
    [Preceded by P/H] nvarchar(255),
    [Preceded by W/E] nvarchar(255),
    [Followed by W/E] nvarchar(255),
    [Followed by P/H] nvarchar(255)
)



CREATE TABLE [CDS.38 Final Sick Leave Table] (
    [Report Date] datetime,
    [Unknown Leave] float,
    [Planned - Unpaid] float,
    [Planned - Paid] float,
    [Unplanned - Unpaid] float,
    [Unplanned - Paid] float,
    [Unpaid] nvarchar(255),
    [Normal Hours Paid] float,
    [Unplanned] nvarchar(255),
    [Date Hired] datetime,
    [Employment Type] nvarchar(255),
    [Date of Birth] datetime,
    [Surname] nvarchar(255),
    [First Name] nvarchar(255),
    [Leave Type] nvarchar(255),
    [From Date] datetime,
    [To Date] datetime,
    [Preceded by P/H] nvarchar(255),
    [Preceded by W/E] nvarchar(255),
    [Followed by W/E] nvarchar(255),
    [Followed by P/H] nvarchar(255),
    [Termination Date] datetime,
    [Gender] nvarchar(255),
    [Business Area] nvarchar(255),
    [Business Area Detail] nvarchar(255)
)