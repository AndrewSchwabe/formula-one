use FormulaOne

insert into dbo.Nationality (nationality)
select 
	distinct *
from (
	select nationality 
	from FormulaOneAnalysis.dbo.ConstructorsTypeAnalysis
	
	union
	
	select nationality
	from FormulaOneAnalysis.dbo.DriverTypeAnalysis) as nationalities