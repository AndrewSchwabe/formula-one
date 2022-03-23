if db_id('FormulaOneLanding') is not null
begin
	use master
	alter database FormulaOneLanding set single_user with rollback immediate
	drop database FormulaOneLanding
end
go

create database FormulaOneLanding
go