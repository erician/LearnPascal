program exam341(input, outpur);
var n, term : integer;
    sum : real;
begin
    writeln('input term number');
    readln(term);
    n := 0;
    sum := 0;
    repeat
        n := n + 1;
        sum := sum + 1/n;
    until (n >= term);
    writeln('n = ', n);
    writeln('sum = ', sum)
end.
