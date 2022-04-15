use FormulaOne

insert into dbo.Qualifying (id, race_id, driver_id, constructor_id, number, position, q1, q2, q3)
select 
	QualifyId
	, RaceId
	, DriverId
	, ConstructorId
	, Number
	, Position
	, Q1
	, Q2
	, Q3
from FormulaOneAnalysis.dbo.QualifyingTypeAnalysis 
