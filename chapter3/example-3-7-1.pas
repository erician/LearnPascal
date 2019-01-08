program exam371(input, output);
label 10, 20, 30;
var i, j, n : integer;
    term, sum : real;
begin
    writeln('input n ');
    readln(n);
    sum := 0;
    for i:=1 to n do
    begin
        term := 1;
        for j:=1 to i do
            if term < 1E37/i then
                term := term*i
            else
                goto 10;
        sum := sum + term;
        goto 20;
    10: writeln('calculation termilated i = ', i);
    writeln('part term = ', sum);
    goto 30;
    20: ;
    end;
    
    writeln('sum = ', sum);
    30:
end.