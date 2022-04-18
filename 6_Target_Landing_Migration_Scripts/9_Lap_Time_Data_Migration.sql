use FormulaOne

insert into dbo.LapTime (race_id, driver_id, lap, position, lap_time, milliseconds)
select 
	RaceId
	, DriverId
	, Lap
	, Position
	, CAST(CONCAT('00:0', Time) as time)
	, Milliseconds
from FormulaOneAnalysis.dbo.LapTimesTypeAnalysis
where TimeTypeAnalysis like 'varchar:10'

insert into dbo.LapTime (race_id, driver_id, lap, position, lap_time, milliseconds)
select 
	RaceId
	, DriverId
	, Lap
	, Position
	, CAST(CONCAT('00:', Time) as time)
	, Milliseconds
from FormulaOneAnalysis.dbo.LapTimesTypeAnalysis
where TimeTypeAnalysis like 'varchar:11'

insert into dbo.LapTime (race_id, driver_id, lap, position, lap_time, milliseconds)
select 
	RaceId
	, DriverId
	, Lap
	, Position
	, CAST(CONCAT('0', Time) as time)
	, Milliseconds
from FormulaOneAnalysis.dbo.LapTimesTypeAnalysis
where TimeTypeAnalysis like 'varchar:13'