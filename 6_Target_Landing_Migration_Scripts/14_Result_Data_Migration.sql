use FormulaOne

insert into dbo.Result (id, race_id, driver_id, constructor_id, number, grid, position, position_order, points, laps, time, milliseconds, fastest_lap, rank, fastest_lap_time, fastest_lap_speed, status_id)
select 
	ResultId
	, RaceId
	, DriverId
	, ConstructorId
	, Number
	, Grid
	, position
	, PositionOrder
	, points
	, laps
	, time
	, Milliseconds
	, FastestLap
	, rank
	, CAST(CONCAT('00:0', FastestLapTime) as time)
	, FastestLapSpeed
	, statusId
from FormulaOneAnalysis.dbo.ResultsTypeAnalysis
where FastestLapTime is not null

insert into dbo.Result (id, race_id, driver_id, constructor_id, number, grid, position, position_order, points, laps, time, milliseconds, fastest_lap, rank, fastest_lap_speed, status_id)
select 
	ResultId
	, RaceId
	, DriverId
	, ConstructorId
	, Number
	, Grid
	, position
	, PositionOrder
	, points
	, laps
	, time
	, Milliseconds
	, FastestLap
	, rank
	, FastestLapSpeed
	, statusId
from FormulaOneAnalysis.dbo.ResultsTypeAnalysis
where FastestLapTime is null