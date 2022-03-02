use FormulaOneLanding

if object_id('dbo.LapTimes') is not null
	drop table dbo.LapTimes
go

create table dbo.LapTimes (
 RaceId int,
 DriverId int,
 Lap int,
 Position int,
 Time varchar(max),
 Milliseconds int
)
go

bulk insert dbo.LapTimes
from 'C:\Projects\formula-one\0_original_dataset\lap_times.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go