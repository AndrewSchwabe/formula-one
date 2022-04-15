use FormulaOne;

if object_id('dbo.Driver', 'U') is null
begin
    create table dbo.Driver (
        id int not null,
        reference_name varchar(25) not null, 
        number int, 
		code varchar(5) null,
		forename nvarchar(25) not null,
		surname nvarchar(50) not null,
		date_of_birth varchar(10) not null,
		nationality_id int references dbo.Nationality(id),
		url varchar(100)

        constraint pk_driver primary key clustered (
            id asc
        ) with (
            pad_index = off, 
            statistics_norecompute = off,
            ignore_dup_key = off,
            allow_row_locks = on,
            allow_page_locks = on,
            optimize_for_sequential_key = off
            ) on [primary]
    ) on [primary]
end