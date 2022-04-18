use FormulaOne

insert into dbo.ConstructorStanding (id, race_id, constructor_id, points, position, wins)
select 
	ConstructorStandingsId
	, RaceId
	, ConstructorId
	, points
	, Position
	, wins
from FormulaOneAnalysis.dbo.ConstructorStandingsTypeAnalysis
