use FormulaOne

insert into dbo.Constructor (id, reference_name, name, nationality_id, url)
select 
	ConstructorId
	, ConstructorRef
	, Name
	, n.id
	, Url
from FormulaOneAnalysis.dbo.ConstructorsTypeAnalysis dta
join dbo.Nationality n on dta.Nationality = n.nationality