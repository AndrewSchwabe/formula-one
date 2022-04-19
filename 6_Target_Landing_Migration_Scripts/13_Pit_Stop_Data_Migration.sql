use FormulaOne

insert into dbo.PitStop (race_id, driver_id, stop, lap, time, duration, milliseconds)
select 
	RaceId
	, DriverId
	, Stop
	, Lap
	, CAST(Time as time)
	, CAST(CONCAT('00:', Duration) as time)
	, Milliseconds
from FormulaOneAnalysis.dbo.PitStopsTypeAnalysis
where DurationTypeAnalysis like 'varchar:11'

insert into dbo.PitStop (race_id, driver_id, stop, lap, time, duration, milliseconds)
select 
	RaceId
	, DriverId
	, Stop
	, Lap
	, CAST(Time as time)
	, CAST(CONCAT('00:0', Duration) as time)
	, Milliseconds
from FormulaOneAnalysis.dbo.PitStopsTypeAnalysis
where DurationTypeAnalysis like 'varchar:10'

insert into dbo.PitStop (race_id, driver_id, stop, lap, time, duration, milliseconds)
select 
	RaceId
	, DriverId
	, Stop
	, Lap
	, CAST(Time as time)
	, CAST(CONCAT('00:00:', Duration) as time)
	, Milliseconds
from FormulaOneAnalysis.dbo.PitStopsTypeAnalysis
where DurationTypeAnalysis like 'varchar:8'
