use FormulaOne;

if object_id('dbo.Status', 'U') is null
begin
    create table dbo.Status (
        id int not null,
        status varchar(25) not null

        constraint pk_status primary key clustered (
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