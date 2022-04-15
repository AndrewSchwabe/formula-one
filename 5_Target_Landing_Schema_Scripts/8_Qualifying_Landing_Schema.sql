use FormulaOne;

if object_id('dbo.Qualifying', 'U') is null
begin
    create table dbo.Qualifying (
        id int not null,
		race_id int references dbo.Race(id),
		driver_id int references dbo.Driver(id),
		constructor_id int references dbo.Constructor(id),
		number int not null,
		position int not null,
		q1 varchar(9),
		q2 varchar(9),
		q3 varchar(9)

        constraint pk_qualifying primary key clustered (
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