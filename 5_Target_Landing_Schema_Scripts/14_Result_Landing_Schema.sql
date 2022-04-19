use FormulaOne;

if object_id('dbo.Result', 'U') is null
begin
    create table dbo.Result (
        id int not null,
		race_id int references dbo.Race(id),
		driver_id int references dbo.Driver(id),
		constructor_id int references dbo.Constructor(id),
		number int,
		grid int not null,
		position int,
		position_order int,
		points int not null,
		laps int not null,
		time varchar(15),
		milliseconds int,
		fastest_lap int,
		rank int, 
		fastest_lap_time time,
		fastest_lap_speed decimal(10, 3) null,
		status_id int references dbo.Status(id)

        constraint pk_result primary key clustered (
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