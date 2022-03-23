if db_id('FormulaOneAnalysis') is not null
begin
	use master
	alter database FormulaOneAnalysis set single_user with rollback immediate
	drop database FormulaOneAnalysis
end
go

create database FormulaOneAnalysis
go