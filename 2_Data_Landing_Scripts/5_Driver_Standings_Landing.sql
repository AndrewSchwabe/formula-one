use FormulaOneLanding

if object_id('dbo.DriverStandings') is not null
	drop table dbo.DriverStandings
go

create table dbo.DriverStandings (
 DriverStandingsId int,
 RaceId int,
 DriverId int,
 Points decimal,
 Position int,
 PositionText varchar(10),
 Wins int
)
go

bulk insert dbo.DriverStandings
from 'C:\Projects\formula-one\0_original_dataset\driver_standings.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go