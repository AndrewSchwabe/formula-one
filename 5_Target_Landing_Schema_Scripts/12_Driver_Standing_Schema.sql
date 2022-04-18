use FormulaOne;

if object_id('dbo.DriverStanding', 'U') is null
begin
    create table dbo.DriverStanding (
        id int not null,
		race_id int references dbo.Race(id),
		driver_id int references dbo.Driver(id),
		points int not null,
		position int not null,
		wins int not null

        constraint pk_driver_standing primary key clustered (
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