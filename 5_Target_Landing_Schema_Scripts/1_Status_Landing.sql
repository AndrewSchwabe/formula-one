use FormulaOne;

if object_id('dbo.Status') is not null
    create table dbo.Status (
        id int not null,
        status varchar(25) not null

        constraint pk_status primary key clustered (
            id asc
        ) 
    )
go