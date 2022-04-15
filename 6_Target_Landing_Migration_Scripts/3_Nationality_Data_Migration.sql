use FormulaOne

insert into dbo.Seasons (year, url)
select 
	year
	, url
from FormulaOneAnalysis.dbo.SeasonsTypeAnalysis