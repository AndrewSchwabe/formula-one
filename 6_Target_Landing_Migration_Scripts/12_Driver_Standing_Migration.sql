use FormulaOne

insert into dbo.DriverStanding (id, race_id, driver_id, points, position, wins)
select 
	DriverStandingsId
	, RaceId
	, DriverId
	, points
	, Position
	, wins
from FormulaOneAnalysis.dbo.DriverStandingsTypeAnalysis
