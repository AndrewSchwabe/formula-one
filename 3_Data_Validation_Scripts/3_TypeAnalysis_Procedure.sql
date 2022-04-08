use FormulaOneAnalysis

drop procedure if exists dbo.TableTypeAnalysis
go

create procedure dbo.TableTypeAnalysis 
	@tableName varchar(50)
as
	declare @sqlStatement varchar(max)

	select @sqlStatement = coalesce(@sqlStatement + ', ', ' ') + concat(
		COLUMN_NAME
		, 'TypeAnalysis = dbo.TypeCheck('
		, COLUMN_NAME
		, ')')
	from INFORMATION_SCHEMA.COLUMNS
	where 
		TABLE_NAME = @tableName
		and COLUMN_NAME NOT LIKE '%Id'
		and COLUMN_NAME not like '%TypeAnalysis'
		and DATA_TYPE in ('varchar', 'nvarchar')

	set @sqlStatement = concat(
		'update '
		, @tableName
		, ' set '
		, @sqlStatement)

	exec(@sqlStatement)
go