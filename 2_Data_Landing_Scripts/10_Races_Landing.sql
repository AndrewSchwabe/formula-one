use FormulaOneLanding

if object_id('dbo.Races') is not null
	drop table dbo.Races
go

create table dbo.Races (
 RacesId int,
 Year int,
 Round int,
 CircuitId int,
 Name varchar(max),
 Date varchar(25),
 Time varchar(25),
 Url varchar(max)
)
go

bulk insert dbo.Races
from 'C:\Projects\formula-one\0_original_dataset\races.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go