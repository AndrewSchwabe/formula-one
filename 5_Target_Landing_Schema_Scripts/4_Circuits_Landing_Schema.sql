use FormulaOne;

if object_id('dbo.Circuits', 'U') is null
begin
    create table dbo.Circuits (
        id int not null,
        reference_name varchar(25) not null, 
		name nvarchar(75) not null,
		location nvarchar(50) not null,
		country varchar(25) not null,
		latitude numeric(10, 6) not null,
		longitude numeric(10, 6) not null,
		alt int,
		url varchar(100)

        constraint pk_circuits primary key clustered (
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