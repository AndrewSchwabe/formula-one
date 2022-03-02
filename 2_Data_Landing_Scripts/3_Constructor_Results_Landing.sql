use FormulaOneLanding

if object_id('dbo.ConstructorResults') is not null
	drop table dbo.ConstructorResults
go

create table dbo.ConstructorResults (
 ConstructorResultsId int,
 RaceId int,
 ConstructorId int,
 Points decimal,
 status varchar(10)
)
go

bulk insert dbo.ConstructorResults
from 'C:\Projects\formula-one\0_original_dataset\constructor_results.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go