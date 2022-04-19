ause FormulaOne

insert into dbo.Race (id, year, round, circuit_id, name, date, time, url)
select 
	racesId
	, s.year
	, Round
	, CircuitId
	, name
	, date
	, time
	, rta.Url
from FormulaOneAnalysis.dbo.RacesTypeAnalysis rta
join dbo.Season s on rta.year = s.year
