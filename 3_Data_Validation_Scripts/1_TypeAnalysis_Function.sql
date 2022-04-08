use FormulaOneAnalysis

drop function if exists dbo.TypeCheck
go

create function dbo.TypeCheck(@param varchar(max))
returns varchar(max)
begin
    declare @response varchar(max)
    set @response = ''

    if (isnumeric(@param) = 1) 
        begin 
            set @response = concat(@response, 'numeric')
            if (charindex('.', @param) > 0)
                set @response = concat(@response, ':decimal')
            else
                set @response = concat(@response, ':int')
        end
    else
        begin
            set @response = concat(@response, 'varchar:', len(@param))
        end

    return @response
end;