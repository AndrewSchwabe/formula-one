if db_id('FormulaOneLanding') is not null
	use master
	alter database FormulaOneLanding set single_user with rollback immediate
	drop database FormulaOneLanding
go

create database FormulaOneLanding
go