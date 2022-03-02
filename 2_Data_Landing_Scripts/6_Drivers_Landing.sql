use FormulaOneLanding

if object_id('dbo.Driver') is not null
	drop table dbo.Driver
go

create table dbo.Driver (
 DriverId int,
 DriverRef varchar(max),
 Number varchar(10),
 Code varchar(max),
 Forename varchar(max),
 Surname varchar(max),
 DateOfBirth varchar(max),
 Nationality varchar(max),
 Url varchar(max)
)
go

bulk insert dbo.Driver
from 'C:\Projects\formula-one\0_original_dataset\drivers.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go