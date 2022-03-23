use FormulaOneLanding

declare @sqlStatement varchar(max)

select @sqlStatement = coalesce(@sqlStatement + ';', '') + 
	concat('exec dbo.CreateDataTypeAnalysisTable '''
		, table_name
		, '''')
from INFORMATION_SCHEMA.TABLES

set @sqlStatement = concat('use FormulaOneLanding ; ', @sqlStatement)

execute(@sqlStatement)