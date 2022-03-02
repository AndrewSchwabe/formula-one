use FormulaOneLanding

if object_id('dbo.Seasons') is not null
	drop table dbo.Seasons
go

create table dbo.Seasons (
 Year int,
 Url varchar(max)
)
go

bulk insert dbo.Seasons
from 'C:\Projects\formula-one\0_original_dataset\seasons.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go