use FormulaOne

insert into dbo.ConstructorResult (id, race_id, constructor_id, points, status)
select 
	ConstructorResultsId
	, RaceId
	, ConstructorId
	, points
	, status
from FormulaOneAnalysis.dbo.ConstructorResultsTypeAnalysis
