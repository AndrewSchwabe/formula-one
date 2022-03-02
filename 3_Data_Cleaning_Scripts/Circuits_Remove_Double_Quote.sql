declare @sqlStatement varchar(max)

select @sqlStatement = coalesce(@sqlStatement + ', ', '') + concat(column_name, ' = replace(', column_name, ', ''"'', '''')')
from INFORMATION_SCHEMA.COLUMNS
where table_name = 'circuits' and data_type = 'varchar'

set @sqlStatement = concat('update dbo.circuits set ', @sqlStatement)

print @sqlStatement
exec(@sqlStatement)
