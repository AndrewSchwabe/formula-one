use FormulaOneAnalysis

drop procedure if exists dbo.CreateDataTypeAnalysisColumns
go

create procedure dbo.CreateDataTypeAnalysisColumns 
	@tableName varchar(50)
as
	declare @sqlStatement varchar(max)

	select @sqlStatement = coalesce(@sqlStatement + ', ', ' ') + concat(
		COLUMN_NAME
		, 'TypeAnalysis varchar(50)')
	from INFORMATION_SCHEMA.COLUMNS
	where 
		TABLE_NAME = @tableName
		and COLUMN_NAME NOT LIKE '%Id'
		and DATA_TYPE in ('varchar', 'nvarchar')

	set @sqlStatement = concat(
		'alter table '
		, @tableName
		, ' add '
		, @sqlStatement)

	exec(@sqlStatement)
go
