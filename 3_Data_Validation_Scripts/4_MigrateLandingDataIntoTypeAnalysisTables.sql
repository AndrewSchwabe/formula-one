use FormulaOneAnalysis

declare @sqlStatement varchar(max)

select @sqlStatement = coalesce(@sqlStatement + '; ', '') + 
	concat(
		'select * into '
		, TABLE_NAME
		, 'TypeAnalysis from FormulaOneLanding.dbo.'
		, TABLE_NAME)
from FormulaOneLanding.INFORMATION_SCHEMA.TABLES

exec (@sqlStatement)