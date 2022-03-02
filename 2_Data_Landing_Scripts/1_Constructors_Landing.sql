use FormulaOneLanding

if object_id('dbo.Constructors') is not null
	drop table dbo.Constructors
go

create table dbo.Constructors (
 ConstructorId int,
 ConstructorRef varchar(max),
 Name varchar(max),
 Nationality varchar(max),
 Url varchar(max)
)
go

bulk insert dbo.Constructors
from 'C:\Projects\formula-one\0_original_dataset\constructors.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go