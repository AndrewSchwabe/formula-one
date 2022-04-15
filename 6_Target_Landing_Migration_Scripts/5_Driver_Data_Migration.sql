use FormulaOne

insert into dbo.Driver (id, reference_name, number, code, forename, surname, date_of_birth, nationality_id, url)
select 
	DriverId
	, DriverRef
	, number
	, code
	, Forename
	, surname
	, DateOfBirth
	, n.id
	, Url
from FormulaOneAnalysis.dbo.DriverTypeAnalysis dta
join dbo.Nationality n on dta.Nationality = n.nationality
    