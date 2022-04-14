if db_id('FormulaOne') is not null
begin
	use master
	alter database FormulaOne set single_user with rollback immediate
	drop database FormulaOne
end
go

create database FormulaOne
go