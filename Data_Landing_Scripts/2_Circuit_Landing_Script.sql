if object_id('dbo.Circuits') is not null
	drop table dbo.circuits
go

create table dbo.Circuits (
 CircuitId int,
 CircuitReference varchar(max),
 Name varchar(max),
 Location varchar(max),
 Country varchar(max),
 Latitude varchar(max),
 Longitude varchar(max),
 Alt varchar(4),
 Url varchar(max)
)
go

bulk insert dbo.Circuits
from 'C:\Projects\formula-one\original_dataset\circuits.csv'
with (
	fieldterminator = ',',
	ROWTERMINATOR = '0x0a',
	firstrow = 2
)
go