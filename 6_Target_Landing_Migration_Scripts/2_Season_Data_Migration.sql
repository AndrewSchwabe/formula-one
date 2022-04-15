use FormulaOne

insert into dbo.Season (year, url)
select 
	year
	, url
from FormulaOneAnalysis.dbo.SeasonsTypeAnalysis