use FormulaOneLanding

if object_id( 'dbo.TablesContainingVarCharColumns', 'P' ) is not null  
    drop procedure dbo.TablesContainingVarCharColumns  
go

create procedure dbo.TablesContainingVarCharColumns 
as

	select distinct table_name
	from INFORMATION_SCHEMA.COLUMNS
	where data_type = 'varchar'

go
