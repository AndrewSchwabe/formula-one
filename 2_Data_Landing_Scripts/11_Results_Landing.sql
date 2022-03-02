use FormulaOneLanding

if object_id('dbo.Results') is not null
	drop table dbo.Results
go

create table dbo.Results (
 ResultId int,
 RaceId int,
 DriverId int,
 ConstructorId int,
 Number varchar(25),
 Grid int,
 Position varchar(25),
 PositionText varchar(10),
 PositionOrder int,
 Points decimal,
 Laps int,
 Time varchar(25),
 Milliseconds varchar(25),
 FastestLap varchar(25),
 Rank varchar(25),
 FastestLapTime varchar(25),
 FastestLapSpeed varchar(25),
 StatusId int
)
go

bulk insert dbo.Results
from 'C:\Projects\formula-one\0_original_dataset\results.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go