use FormulaOneAnalysis

declare @sqlStatement varchar(max)

select @sqlStatement = coalesce(@sqlStatement + ';', '') + 
	concat('exec dbo.CreateDataTypeAnalysisTable '''
		, table_name
		, '''')
from FormulaOneLanding.INFORMATION_SCHEMA.TABLES

set @sqlStatement = concat('use FormulaOneAnalysis ; ', @sqlStatement)

execute(@sqlStatement)