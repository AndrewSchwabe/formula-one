use FormulaOne

insert into dbo.Status (id, status)
select 
	statusId
	, status
from FormulaOneAnalysis.dbo.StatusTypeAnalysis