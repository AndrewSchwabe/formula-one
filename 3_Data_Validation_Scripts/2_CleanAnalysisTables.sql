use FormulaOneAnalysis

declare @sqlStatement varchar(max)

select @sqlStatement = coalesce(@sqlStatement + ';', '') + 
	concat('drop table dbo.'
		, table_name)
from INFORMATION_SCHEMA.TABLES
where table_name like '%TypeAnalysis'

set @sqlStatement = concat('use FormulaOneAnalysis ; ', @sqlStatement)

execute(@sqlStatement)