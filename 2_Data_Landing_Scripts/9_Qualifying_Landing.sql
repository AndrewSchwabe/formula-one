use FormulaOneLanding

if object_id('dbo.Qualifying') is not null
	drop table dbo.Qualifying
go

create table dbo.Qualifying (
 QualifyId int,
 RaceId int,
 DriverId int,
 ConstructorId int,
 Number int,
 Position int,
 Q1 varchar(25),
 Q2 varchar(25),
 Q3 varchar(25)
)
go

bulk insert dbo.Qualifying
from 'C:\Projects\formula-one\0_original_dataset\qualifying.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go