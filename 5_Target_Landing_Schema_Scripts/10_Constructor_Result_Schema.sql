use FormulaOne;

if object_id('dbo.ConstructorResult', 'U') is null
begin
    create table dbo.ConstructorResult (
        id int not null,
		race_id int references dbo.Race(id),
		constructor_id int references dbo.Constructor(id),
		points int not null,
		status varchar(1)

        constraint pk_constructor_result primary key clustered (
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