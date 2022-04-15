use FormulaOne;

if object_id('dbo.Season', 'U') is null
begin
    create table dbo.Season (
        year int not null,
        url varchar(100) not null

        constraint pk_season primary key clustered (
            year asc
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