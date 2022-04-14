use FormulaOneAnalysis

drop procedure if exists dbo.NullCleanup  
go

create procedure dbo.NullCleanup 
	@tableName varchar(50)
as
	declare @sqlStatement varchar(max)

	select @sqlStatement = coalesce(@sqlStatement + ', ', '') + concat(column_name, ' =  case when ', column_name, ' = ''\N'' then null else ', column_name, ' end')
	from INFORMATION_SCHEMA.COLUMNS
	where table_name = @tableName and data_type = 'varchar'

	set @sqlStatement = concat('update ', @tableName, ' set ', @sqlStatement)

	exec(@sqlStatement)
go
