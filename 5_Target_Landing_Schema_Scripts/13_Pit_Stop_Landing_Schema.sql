use FormulaOne;

if object_id('dbo.PitStop', 'U') is null
begin
    create table dbo.PitStop (
        id int identity(1,1),
		race_id int references dbo.Race(id),
		driver_id int references dbo.Driver(id),
		stop int not null,
		lap int not null,
		time time not null,
		duration time not null,
		milliseconds int not null

        constraint pk_pit_stop primary key clustered (
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