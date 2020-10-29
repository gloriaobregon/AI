Drop table if exists [General.RepairerListForReporting];
Create table [General.RepairerListForReporting](
[Repairer Name] nvarchar(255),
[Preferred Name] nvarchar(255),
[Network] nvarchar(255),
[Insurance] nvarchar(255),
[Fleet] nvarchar(255),
[Warriewood] nvarchar(255),
[Standard] nvarchar(255),
[Prestige] nvarchar(255),
[Heavy Vehicle] nvarchar(255),
[Motorbike] nvarchar(255),
[Suburb] nvarchar(255),
[State] nvarchar(255),
[Active] nvarchar(255),
[Duplicate] nvarchar(255),
[Date joined] date,
[Date terminated] date,
[Paint Brand] nvarchar(255),
[PPG Start] date,
[PPG End] date,
[Suburb&State] nvarchar(255),
[Postcode] nvarchar(255)
);
