use FormulaOne;

if object_id('dbo.Race', 'U') is null
begin
    create table dbo.Race (
        id int not null,
		year int references dbo.Season(year),
		round int,
		circuit_id int references dbo.Circuit(id),
		name varchar(50) not null,
		date varchar(10) not null,
		time varchar(8) null,
		url varchar(100)

        constraint pk_race primary key clustered (
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