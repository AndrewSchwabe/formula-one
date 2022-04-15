use FormulaOne;

if object_id('dbo.Constructor', 'U') is null
begin
    create table dbo.Constructor (
        id int not null,
        reference_name varchar(25) not null, 
        name varchar(50) not null, 
		nationality_id int references dbo.Nationality(id),
		url varchar(100)

        constraint pk_constructor primary key clustered (
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