use FormulaOneLanding

if object_id('dbo.PitStops') is not null
	drop table dbo.PitStops
go

create table dbo.PitStops (
 RaceId int,
 DriverId int,
 Stop int,
 Lap int,
 Time varchar(max),
 Duration varchar(max),
 Milliseconds int
)
go

bulk insert dbo.PitStops
from 'C:\Projects\formula-one\0_original_dataset\pit_stops.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go