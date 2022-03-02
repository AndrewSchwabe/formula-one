use FormulaOneLanding

if object_id('dbo.ConstructorStandings') is not null
	drop table dbo.ConstructorStandings
go

create table dbo.ConstructorStandings (
 ConstructorStandingsId int,
 RaceId int,
 ConstructorId int,
 Points decimal,
 Position int,
 PositionText varchar(10),
 Wins int
)
go

bulk insert dbo.ConstructorStandings
from 'C:\Projects\formula-one\0_original_dataset\constructor_standings.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go