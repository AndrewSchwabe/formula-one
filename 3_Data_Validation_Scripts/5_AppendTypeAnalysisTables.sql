use FormulaOneAnalysis

declare @sqlStatement varchar(max)

select @sqlStatement = coalesce(@sqlStatement + '; ', '') + concat(
    'exec dbo.CreateDataTypeAnalysisColumns '''
    , TABLE_NAME
    , '''')
from INFORMATION_SCHEMA.TABLES

exec(@sqlStatement)