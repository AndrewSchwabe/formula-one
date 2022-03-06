use FormulaOneLanding

if object_id( 'dbo.RemoveDoubleQuotes', 'P' ) is not null  
    drop procedure dbo.RemoveDoubleQuotes  
go

create procedure dbo.RemoveDoubleQuotes 
	@tableName varchar(50)
as
	declare @sqlStatement varchar(max)

	select @sqlStatement = coalesce(@sqlStatement + ', ', '') + concat(column_name, ' = replace(', column_name, ', ''"'', '''')')
	from INFORMATION_SCHEMA.COLUMNS
	where table_name = @tableName and data_type = 'varchar'

	set @sqlStatement = concat('update ', @tableName, ' set ', @sqlStatement)

	exec(@sqlStatement)
go
