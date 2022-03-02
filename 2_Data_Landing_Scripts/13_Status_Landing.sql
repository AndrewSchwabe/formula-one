use FormulaOneLanding

if object_id('dbo.Status') is not null
	drop table dbo.Status
go

create table dbo.Status (
 StatusId int,
 Status varchar(max)
)
go

bulk insert dbo.Status
from 'C:\Projects\formula-one\0_original_dataset\status.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go