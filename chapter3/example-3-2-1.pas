program exam321(input, output);
var weekday : integer;
begin
    writeln('input weekdat in integer');
    read(weekday);
    case weekday of
        0 : writeln('Sunday');
        1 : writeln('Monday');
        2 : writeln('Tuesday');
        3 : writeln('Wednesday');
        4 : writeln('Thursday');
        5 : writeln('Friday');
        6 : writeln('Saturday');
    end;
end.