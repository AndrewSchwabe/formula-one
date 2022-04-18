use FormulaOne;

if object_id('dbo.LapTime', 'U') is null
begin
    create table dbo.LapTime (
        id int identity(1,1),
		race_id int references dbo.Race(id),
		driver_id int references dbo.Driver(id),
		lap int not null,
		position int not null,
		lap_time time not null,
		milliseconds int

        constraint pk_lap_time primary key clustered (
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