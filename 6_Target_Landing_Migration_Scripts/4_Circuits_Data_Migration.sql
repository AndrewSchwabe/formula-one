use FormulaOne
use FormulaOne

insert into dbo.Circuits (id, reference_name, name, location, country, latitude, longitude, alt, url)
select 
	CircuitId
	, CircuitReference
	, Name
	, Location
	, Country
	, Latitude
	, Longitude
	, alt
	, url
from FormulaOneAnalysis.dbo.CircuitsTypeAnalysis