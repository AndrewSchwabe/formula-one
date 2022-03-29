use FormulaOneAnalysis

if object_id( 'dbo.CreateDataTypeAnalysisTable', 'P' ) is not null  
    drop procedure dbo.CreateDataTypeAnalysisTable  
go

create procedure dbo.CreateDataTypeAnalysisTable 
	@tableName varchar(50)
as
	declare @sqlStatement varchar(max)

	select @sqlStatement = coalesce(@sqlStatement + ', ', '') + 
		concat(column_name
			, ' '
			, case 
				when DATA_TYPE = 'varchar' 
				then 
					case 
						when CHARACTER_MAXIMUM_LENGTH = -1 
						then 'varchar(max)' 
						else concat('varchar(', CHARACTER_MAXIMUM_LENGTH, ')' ) 
						end 
				else DATA_TYPE 
				end
			, ',  '
			, column_name
			, 'Type varchar(50)')
	from FormulaOneLanding.INFORMATION_SCHEMA.COLUMNS
	where table_name = @tableName 

	set @sqlStatement = concat('use FormulaOneAnalysis ; create table dbo.', @tableName, 'TypeAnalysis (  ', @sqlStatement, ')')

	exec (@sqlStatement)
go